#ifndef JSYSTEM_JKERNEL_JKRARAMHEAP_H
#define JSYSTEM_JKERNEL_JKRARAMHEAP_H

#include "dolphin/os/OSMutex.h"
#include "JSystem/JKernel/JKRDisposer.hpp"

class JKRAramBlock;

class JKRAramHeap : public JKRDisposer {

	public:

	enum EAllocMode {
		ALLOC_MODE_HEAD,
		ALLOC_MODE_TAIL
	};

	JKRAramHeap(u32, u32);
	virtual ~JKRAramHeap();

	JKRAramBlock* alloc(u32, EAllocMode);
	JKRAramBlock* allocFromHead(u32);
	JKRAramBlock* allocFromTail(u32);

	OSMutex mutex;
	JKRHeap* heap;
	u32 head_address;
	u32 tail_address;
	u32 size;
	u8 group_id;

	static JSUList<JKRAramBlock> sAramList;

};

#endif
