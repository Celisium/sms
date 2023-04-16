#ifndef JSYSTEM_JKERNEL_JKRARAM_H
#define JSYSTEM_JKERNEL_JKRARAM_H

#include "JSystem/JKernel/JKRAramBlock.hpp"
#include "JSystem/JKernel/JKRAramPiece.hpp"
#include "JSystem/JKernel/JKRDvdRipper.hpp"
#include "JSystem/JKernel/JKRThread.hpp"
#include "JSystem/JKernel/JKRAramHeap.hpp"

class JKRAram : public JKRThread {

	public:

	JKRAram(u32, u32, s32);

	virtual ~JKRAram();

	virtual void* run();

	u32 audio_memory_ptr;
	u32 audio_memory_size;
	u32 graph_memory_ptr;
	u32 graph_memory_size;
	u32 aram_memory_ptr;
	u32 aram_memory_size;
	JKRAramHeap* aram_heap;
	u32 stack_array[3];

	static JKRAram* create(u32, u32, s32, s32, s32);
	static JKRAramBlock* mainRamToAram(u8*, u32, u32, JKRExpandSwitch, u32, JKRHeap*, int);
	static void aramToMainRam(u32, u8*, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);
	static void aramToMainRam(JKRAramBlock*, u8*, u32, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);
	static inline JKRAramHeap* getAramHeap() { return sAramObject->aram_heap; }

	static OSMessage sMessageBuffer[4];
	static OSMessageQueue sMessageQueue;
	static JKRAram* sAramObject;
	static u32 sSZSBufferSize;
	static JSUList<JKRAMCommand> sAramCommandList;
};

inline JKRAramBlock* JKRAllocFromAram(u32 size, JKRAramHeap::EAllocMode alloc_mode) {
	return JKRAram::getAramHeap()->alloc(size, alloc_mode);
}

void JKRDecompressFromAramToMainRam(u32, void*, u32, u32, u32);

#endif
