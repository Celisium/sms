#ifndef DOLPHIN_GD_H
#define DOLPHIN_GD_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GDLObj {
	u8* start;
	u32 length;
	u8* ptr;
	u8* top;
} GDLObj;

extern GDLObj* __GDCurrentDL;

void GDOverflowed(void);

inline void __GDWrite(u8 value) {
	*(__GDCurrentDL->ptr++) = value;
}

inline void GDOverflowCheck(u32 size) {
	if (__GDCurrentDL->ptr + size > __GDCurrentDL->top) {
		GDOverflowed();
	}
}

#ifdef __cplusplus
}
#endif

#endif
