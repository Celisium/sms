#ifndef JSYSTEM_JKERNEL_JKRMEMARCHIVE_H
#define JSYSTEM_JKERNEL_JKRMEMARCHIVE_H

#include "JSystem/JKernel/JKRArchive.hpp"

enum JKRMemBreakFlag {};

class JKRMemArchive : public JKRArchive {

	public:

	JKRMemArchive() {}
	JKRMemArchive(s32, JKRArchive::EMountDirection);
	JKRMemArchive(void*, u32, JKRMemBreakFlag);

	bool mountFixed(void*, JKRMemBreakFlag);
	void unmountFixed();
	bool open(s32, JKRArchive::EMountDirection);
	bool open(void*, u32, JKRMemBreakFlag);

	virtual ~JKRMemArchive();

	virtual void removeResourceAll();
	virtual bool removeResource(void*);

	virtual void* fetchResource(SDIFileEntry*, u32*);
	virtual void* fetchResource(void*, u32, SDIFileEntry*, u32*);

	int compression;
	EMountDirection mount_direction;
	SArcHeader* arc_header;
	u8* archive_data;
	bool is_open;

};

#endif
