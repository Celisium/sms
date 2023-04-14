#ifndef JSYSTEM_JKERNEL_JKRTHREAD_H
#define JSYSTEM_JKERNEL_JKRTHREAD_H

#include "JSystem/JKernel/JKRHeap.hpp"

class JKRThread : public JKRDisposer {

	public:

	JKRThread(u32, int, int);

	virtual ~JKRThread();

	virtual void* run();

	JSULink<JKRThread> link;
	JKRHeap* heap;
	OSThread* thread_record;
	OSMessageQueue message_queue;
	OSMessage* messages;
	s32 message_count;
	void* stack_memory;
	u32 stack_size;

	static void* start(void*);
	
	static JSUList<JKRThread> sThreadList;

};

#endif
