#ifndef DOLPHIN_OS_OSMUTEX_H
#define DOLPHIN_OS_OSMUTEX_H

#include "dolphin/types.h"
#include "dolphin/os/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif

struct OSMutex {
	/* 0x00 */ OSThreadQueue queue;
	/* 0x08 */ OSThread* thread;
	/* 0x0C */ s32 count;
	/* 0x10 */ OSMutexLink link;
};

void OSInitMutex(OSMutex*);
void OSLockMutex(OSMutex*);
BOOL OSUnlockMutex(OSMutex*);
void __OSUnlockAllMutex(OSThread*);
BOOL OSTryLockMutex(OSMutex*);
void OSInitCond(OSThreadQueue*);
u32 OSWaitCond(OSThreadQueue*, OSMutex*);
void OSSignalCond(OSThreadQueue*);

#ifdef __cplusplus
}
#endif

#endif /* OSMUTEX_H */
