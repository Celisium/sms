#include "JSystem/JKernel/JKRAram.hpp"

#include "dolphin/ar/ar.h"
#include "dolphin/ar/arq.h"
#include "JSystem/JKernel/JKRAramHeap.hpp"
#include "JSystem/JKernel/JKRAramStream.hpp"

OSMessage JKRAram::sMessageBuffer[4] = {};
OSMessageQueue JKRAram::sMessageQueue = {};

JKRAram* JKRAram::create(u32 aram_audio_buffer_size, u32 aram_audio_graph_size, s32 stream_priority, s32 decomp_priority, s32 piece_priority) {
	if (!sAramObject) {
		sAramObject = new (JKRHeap::getSystemHeap(), 0) JKRAram(aram_audio_buffer_size, aram_audio_graph_size, piece_priority);
	}

	JKRAramStream::create(stream_priority);
	JKRDecomp::create(decomp_priority);
	OSResumeThread(sAramObject->thread_record);
	return sAramObject;
}

JKRAram::JKRAram(u32 audio_buffer_size, u32 audio_graph_size, s32 priority) : JKRThread(0x4000, 0x10, priority) {
	u32 aram_base = ARInit(this->stack_array, 3);
	ARQInit();

	u32 aram_size = ARGetSize();

	this->audio_memory_size = audio_buffer_size;
	if (audio_graph_size == 0xFFFFFFFF) {
		this->graph_memory_size = (aram_size - audio_buffer_size) - aram_base;
		this->aram_memory_size = 0;
	} else {
		this->graph_memory_size = audio_graph_size;
		this->aram_memory_size = (aram_size - (audio_buffer_size + audio_graph_size)) - aram_base;
	}

	this->audio_memory_ptr = ARAlloc(this->audio_memory_size);
	this->graph_memory_ptr = ARAlloc(this->graph_memory_size);

	if (this->aram_memory_size) {
		this->aram_memory_ptr = ARAlloc(this->aram_memory_size);
	} else {
		this->aram_memory_ptr = nullptr;
	}

	this->aram_heap = new (JKRHeap::getSystemHeap(), 0) JKRAramHeap(this->graph_memory_ptr, this->graph_memory_size);
}

JKRAram::~JKRAram() {
	sAramObject = nullptr;
	if (this->aram_heap) {
		delete this->aram_heap;
	}
}

void* JKRAram::run() {
	int result;
	JKRAMCommand* command;
	JKRAramPiece::Message* message;
	OSInitMessageQueue(&sMessageQueue, sMessageBuffer, 4);
	do {
		OSReceiveMessage(&sMessageQueue, (OSMessage*)&message, OS_MESSAGE_BLOCKING);
		result = message->unknown_00;
		command = message->command;
		delete message;

		switch (result) {
			case 1:
				JKRAramPiece::startDMA(command);
				break;
		}
	} while (true);
}

inline void checkOkAddress(u8* addr, u32 size, JKRAramBlock* block, u32 arg_4) {
	if (arg_4 == 0) {
		if (!IS_ALIGNED((u32)addr, 0x20) && !IS_ALIGNED(size, 0x20)) {
			OSPanic("JKRAram.cpp", 225, ":::address not 32Byte aligned.");
		}
		return;
	}

	if (block && !IS_ALIGNED((u32)(size + block->address), 0x20)) {
		OSPanic("JKRAram.cpp", 227, ":::address not 32Byte aligned.");
	}
}

inline u32 expandSize(u8* buffer) { return (buffer[4] << 0x18) | (buffer[5] << 0x10) | (buffer[6] << 8) | buffer[7]; }

inline u8 getAramHeapGroupID() {
	return JKRAram::getAramHeap()->getGroupID();
}

JKRAramBlock* JKRAram::mainRamToAram(u8* buf, u32 buf_size, u32 aligned_size, JKRExpandSwitch expand_switch, u32 file_size, JKRHeap* heap, int id) {

	JKRAramBlock* block = nullptr;
	s32 padding[6];

	checkOkAddress(buf, buf_size, nullptr, 0);
	if (expand_switch == (JKRExpandSwitch)1) {
		expand_switch = (JKRDecomp::checkCompressed(buf) != COMPRESSION_NONE) ? (JKRExpandSwitch)1 : (JKRExpandSwitch)0;
	}

	if (expand_switch == (JKRExpandSwitch)1) {

		u32 expand_size;
		if (JKRDecomp::checkCompressed(buf) != COMPRESSION_NONE) {
			expand_size = expandSize(buf);
		} else {
			expand_size = 0;
		}
        
		if (file_size == 0 || file_size > expand_size) {
			file_size = expand_size;
		}

		if (buf_size == 0) {
			block = JKRAllocFromAram(file_size, JKRAramHeap::ALLOC_MODE_HEAD);
			if (!block) {
				return nullptr;
			}

			block->group_id = id < 0 ? getAramHeapGroupID() : (u8)id;

			buf_size = block->address;
		}

		if (aligned_size == 0 || aligned_size > expand_size) {
			aligned_size = expand_size;
		}

		if (file_size > aligned_size) {
			file_size = aligned_size;
		}

		u8* allocated_mem = (u8*)JKRAllocFromHeap(heap, file_size, -32);
		if (!allocated_mem) {
			if (block) {
				delete block;
			}
			block = nullptr;
		} else {
			JKRDecomp::orderSync(buf, allocated_mem, file_size, 0);
			JKRAramPiece::orderSync(0, (u32)allocated_mem, buf_size, aligned_size, block);
			JKRHeap::free(allocated_mem, heap);
			block = (!block) ? (JKRAramBlock*)-1 : block;
		}

	} else {

		if (buf_size == 0) {
			block = JKRAllocFromAram(aligned_size, JKRAramHeap::ALLOC_MODE_HEAD);

			block->group_id = id < 0 ? getAramHeapGroupID() : (u8)id;

			if (!block) {
				return nullptr;
			}

			buf_size = block->address;
		}

		JKRAramPiece::orderSync(0, (u32)buf, buf_size, aligned_size, block);
		block = (!block) ? (JKRAramBlock*)-1 : block;

	}
	return block;
}
