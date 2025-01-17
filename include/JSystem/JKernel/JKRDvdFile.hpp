#ifndef JSYSTEM_JKERNEL_JKRDVDFILE_H
#define JSYSTEM_JKERNEL_JKRDVDFILE_H

#include "dolphin/os/OSMutex.h"
#include "JSystem/JKernel/JKRAramBlock.hpp"
#include "JSystem/JKernel/JKRFile.hpp"
#include "JSystem/JSupport/JSUFileStream.hpp"

class JKRDvdFile : public JKRFile {

	public:

	JKRDvdFile();
	JKRDvdFile(s32);

	virtual ~JKRDvdFile();

	virtual bool open(const char*);
	virtual void close();
	virtual s32 readData(void*, s32, s32);
	virtual s32 writeData(const void*, s32, s32);
	virtual s32 getFileSize() const;
	virtual bool open(s32);

	void initiate();
	s32 sync();

	OSMutex mutex_1;
	OSMutex mutex_2;
	JKRAramBlock* block;
	OSThread* unknown_50;
	JSUFileInputStream* file_stream;
	u32 unknown_58;
	DVDFileInfo file_info;
	JKRDvdFile* dvd_file;
	OSMessageQueue message_queue_1;
	OSMessage message_1;
	OSMessageQueue message_queue_2;
	OSMessage  message_2;
	JSULink<JKRDvdFile> dvd_link;
	OSThread* os_thread;

	static void doneProcess(s32, DVDFileInfo*);

	static JSUList<JKRDvdFile> sDvdList;
};

#endif
