#include "JSystem/JKernel/JKRDvdFile.hpp"

#include "bss_extra.hpp"

JKRDvdFile::JKRDvdFile() : JKRFile(), dvd_link(this) {
	this->initiate();
}

JKRDvdFile::JKRDvdFile(s32 entry_num) : JKRFile(), dvd_link(this) {
	this->initiate();
	bool result = this->open(entry_num);
	this->is_available = result;
	// weird code. doesn't match without this, maybe remains from assert or something?
	if (this->is_available) {
		return;
	}
}

JKRDvdFile::~JKRDvdFile() {
	this->close();
}

void JKRDvdFile::initiate() {
	this->dvd_file = this;
	OSInitMutex(&this->mutex_1);
	OSInitMutex(&this->mutex_2);
	OSInitMessageQueue(&this->message_queue_2, &this->message_2, 1);
	OSInitMessageQueue(&this->message_queue_1, &this->message_1, 1);
	this->os_thread = nullptr;
	this->unknown_50 = 0;
	this->unknown_58 = 0;
}

bool JKRDvdFile::open(const char* arg_1) {
	if (!this->is_available) {
		this->is_available = DVDOpen(arg_1, &this->file_info);
		if (this->is_available) {
			sDvdList.append(&this->dvd_link);
			DVDGetCommandBlockStatus(&this->file_info.block);
		}
	}
	return this->is_available;
}

bool JKRDvdFile::open(s32 entry_num) {
	if (!this->is_available) {
		this->is_available = DVDFastOpen(entry_num, &this->file_info);
		if (this->is_available) {
			sDvdList.append(&this->dvd_link);
			DVDGetCommandBlockStatus(&this->file_info.block);
		}
	}
	return this->is_available;
}

void JKRDvdFile::close() {
	if (this->is_available) {
		s32 result = DVDClose(&this->file_info);
		if (result != 0) {
			this->is_available = false;
			sDvdList.remove(&this->dvd_link);
		} else {
			OSPanic("JKRDvdFile.cpp", 212, "cannot close DVD file\n");
		}
	}
}

s32 JKRDvdFile::readData(void* arg_0, s32 length, s32 arg_2) {

	length = ALIGN_NEXT(length, 0x20);

	OSLockMutex(&this->mutex_1);
	if (this->os_thread) {
		OSUnlockMutex(&this->mutex_1);
		return -1;
	}

	this->os_thread = OSGetCurrentThread();

	s32 result = -1;
	s32 read_async_result = DVDReadAsyncPrio(&this->file_info, arg_0, length, arg_2, doneProcess, 2);
	if (read_async_result) {
		result = this->sync();
	}

	this->os_thread = nullptr;
	OSUnlockMutex(&this->mutex_1);

	return result;
}

s32 JKRDvdFile::writeData(const void*, s32, s32) {
	return -1;
}

s32 JKRDvdFile::sync() {
	OSMessage message;
	OSLockMutex(&this->mutex_1);
	OSReceiveMessage(&this->message_queue_2, &message, 1);
	this->os_thread = nullptr;
	OSUnlockMutex(&this->mutex_1);
	return (int)message;
}

void JKRDvdFile::doneProcess(s32 id, DVDFileInfo* file_info) {
	// fileInfo->field_0x3c looks like some kind of user pointer?
	JKRDvdFile* dvd_file = *(JKRDvdFile**)((u8*)file_info + 0x3c);
	OSSendMessage(&dvd_file->message_queue_2, (OSMessage)id, OS_MESSAGE_NON_BLOCKING);
}

s32 JKRDvdFile::getFileSize() const {
	return this->file_info.length;
}

SECTION_BSS_EXTRA JSUList<JKRDvdFile> JKRDvdFile::sDvdList;
