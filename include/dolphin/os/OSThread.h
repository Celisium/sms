#ifndef DOLPHIN_OS_OSTHREAD_H
#define DOLPHIN_OS_OSTHREAD_H

#include "dolphin/os/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSThread OSThread;
typedef struct OSThreadQueue OSThreadQueue;
typedef struct OSThreadLink OSThreadLink;
typedef s32 OSPriority; //  0 highest, 31 lowest

typedef struct OSMutex OSMutex;
typedef struct OSMutexQueue OSMutexQueue;
typedef struct OSMutexLink OSMutexLink;
typedef struct OSCond OSCond;

typedef void (*OSIdleFunction)(void* param);
typedef void* (*OSThreadStartFunction)(void*);

struct OSThreadQueue {
	OSThread* head;
	OSThread* tail;
};

struct OSThreadLink {
	OSThread* next;
	OSThread* prev;
};

struct OSMutexQueue {
	OSMutex* head;
	OSMutex* tail;
};

struct OSMutexLink {
	OSMutex* next;
	OSMutex* prev;
};

struct OSThread {
	OSContext context; // register context

	u16 state;           // OS_THREAD_STATE_*
	u16 attr;            // OS_THREAD_ATTR_*
	s32 suspend;         // suspended if the count is greater than zero
	OSPriority priority; // effective scheduling priority
	OSPriority base;     // base scheduling priority
	void* val;           // exit value

	OSThreadQueue* queue; // queue thread is on
	OSThreadLink link;    // queue link

	OSThreadQueue queueJoin; // list of threads waiting for termination (join)

	OSMutex* mutex;          // mutex trying to lock
	OSMutexQueue queueMutex; // list of mutexes owned

	OSThreadLink linkActive; // link of all threads for debugging

	u8* stackBase; // the thread's designated stack (high address)
	u32* stackEnd; // last word of stack (low address)
};

// Thread states
enum OS_THREAD_STATE {
	OS_THREAD_STATE_READY    = 1,
	OS_THREAD_STATE_RUNNING  = 2,
	OS_THREAD_STATE_WAITING  = 4,
	OS_THREAD_STATE_MORIBUND = 8
};

// Thread priorities
#define OS_PRIORITY_MIN  0  // highest
#define OS_PRIORITY_MAX  31 // lowest
#define OS_PRIORITY_IDLE OS_PRIORITY_MAX

// Thread attributes
#define OS_THREAD_ATTR_DETACH 0x0001u

// Stack magic value
#define OS_THREAD_STACK_MAGIC 0xDEADBABE

void OSInitThreadQueue(OSThreadQueue* queue);
OSThread* OSGetCurrentThread(void);
BOOL OSIsThreadSuspended(OSThread* thread);
BOOL OSIsThreadTerminated(OSThread* thread);
s32 OSDisableScheduler(void);
s32 OSEnableScheduler(void);
void OSYieldThread(void);
BOOL OSCreateThread(OSThread* thread, OSThreadStartFunction func, void* param,
                    void* stack, u32 stackSize, OSPriority priority, u16 attr);
void OSExitThread(void* val);
void OSCancelThread(OSThread* thread);
BOOL OSJoinThread(OSThread* thread, void** val);
void OSDetachThread(OSThread* thread);
s32 OSResumeThread(OSThread* thread);
s32 OSSuspendThread(OSThread* thread);
BOOL OSSetThreadPriority(OSThread* thread, OSPriority priority);
OSPriority OSGetThreadPriority(OSThread* thread);
void OSSleepThread(OSThreadQueue* queue);
void OSWakeupThread(OSThreadQueue* queue);

long OSCheckActiveThreads(void);

void __OSUnlockSramEx(int);
u8* __OSLockSramEx(void);

int OSDisableInterrupts(void);
void OSRestoreInterrupts(int);

u32 OSGetSoundMode();
void OSSetSoundMode(u32);

#ifdef __cplusplus
}
#endif

#endif /* OSTHREAD_H */
