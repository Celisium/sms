#include "JSystem/JKernel/JKRThread.hpp"

#include "bss_extra.hpp"

JKRThread::JKRThread(u32 stack_size, int message_count, int arg_3) : link(this) {

	s32 padding[4];

	this->heap = JKRHeap::findFromRoot(this);
	if (this->heap == nullptr) {
		this->heap = JKRHeap::sSystemHeap;
	}

	this->stack_size = stack_size & 0xffffffe0;
	this->stack_memory = JKRHeap::alloc(this->stack_size, 0x20, this->heap);
	this->thread_record = (OSThread*)JKRHeap::alloc(sizeof(OSThread), 0x20, this->heap);

	void* stack_base = (void*)((int)this->stack_memory + this->stack_size);
	OSCreateThread(this->thread_record, start, this, stack_base, this->stack_size, arg_3, 1);

	this->message_count = message_count;
	this->messages = (OSMessage*)JKRHeap::alloc(this->message_count * sizeof(void*), 0, this->heap);

	OSInitMessageQueue(&this->message_queue, this->messages, this->message_count);
	sThreadList.append(&link);
    
}

JKRThread::~JKRThread() {
	sThreadList.remove(&this->link);

	if (this->heap) {
		BOOL result = OSIsThreadTerminated(this->thread_record);
		if (result == FALSE) {
			OSDetachThread(this->thread_record);
			OSCancelThread(this->thread_record);
		}
		JKRHeap::free(this->stack_memory, this->heap);
		JKRHeap::free(this->thread_record, this->heap);
	}

	JKRHeap::free(this->messages, nullptr);
}

void* JKRThread::start(void* thread) {
	return ((JKRThread*)thread)->run();
}

void* JKRThread::run() {
	return nullptr;
}

SECTION_BSS_EXTRA JSUList<JKRThread> JKRThread::sThreadList;
