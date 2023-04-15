#include "JSystem/JKernel/JKRAram.hpp"

#include "dolphin/ar/ar.h"
#include "dolphin/ar/arq.h"
#include "JSystem/JKernel/JKRAramHeap.hpp"

JKRAram::JKRAram(u32 audio_buffer_size, u32 audio_graph_size, long priority) : JKRThread(0x4000, 0x10, priority) {
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
