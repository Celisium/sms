#include "JSystem/JSupport/JSUFileStream.hpp"

JSUFileInputStream::JSUFileInputStream(JKRFile* file) {
	this->file = file;
	this->position = 0;
}

s32 JSUFileInputStream::readData(void* buffer, s32 length) {
	s32 bytes_read = 0;
	if (this->file->is_available) {
		if (this->position + length > (u32)this->file->getFileSize()) {
			length = this->file->getFileSize() - this->position;
		}

		if (length > 0) {
			bytes_read = this->file->readData(buffer, length, this->position);
			this->position += bytes_read;
		}
	}

	return bytes_read;
}

s32 JSUFileInputStream::seekPos(s32 pos, JSUStreamSeekFrom whence) {
	s32 old_pos = this->position;

	switch (whence) {
		case JSUSTREAM_SEEK_SET:
			this->position = pos;
			break;
		case JSUSTREAM_SEEK_END:
			this->position = this->file->getFileSize() - pos;
			break;
		case JSUSTREAM_SEEK_CUR:
			this->position += pos;
			break;
	}

	if (this->position < 0) {
		this->position = 0;
	}

	if (this->position > this->file->getFileSize()) {
		this->position = this->file->getFileSize();
	}

	return this->position - old_pos;
}
