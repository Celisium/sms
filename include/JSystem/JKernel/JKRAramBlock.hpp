#ifndef JSYSTEM_JKERNEL_JKRARAMBLOCK_H
#define JSYSTEM_JKERNEL_JKRARAMBLOCK_H

#include "JSystem/JKernel/JKRArchive.hpp"

class JKRAramHeap;

class JKRAramBlock {

	public:

	JKRAramBlock(u32, u32, u32, u8, bool);
	virtual ~JKRAramBlock();

	JKRAramBlock* allocHead(u32, u8, JKRAramHeap*);
	JKRAramBlock* allocTail(u32, u8, JKRAramHeap*);

	JSULink<JKRAramBlock> link;
	u32 address;
	u32 size;
	u32 free_size;
	u8 group_id;
	bool is_temporary;

};

#endif
