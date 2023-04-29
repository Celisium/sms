#ifndef DOLPHIN_VEC_H
#define DOLPHIN_VEC_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Vec {
	f32 x;
	f32 y;
	f32 z;
} Vec;

void PSVECAdd(const Vec*, const Vec*, Vec*);
void PSVECSubtract(const Vec*, const Vec*, Vec*);
void PSVECNormalize(const Vec*, Vec*);
f32 PSVECMag(const Vec*);
void PSVECCrossProduct(const Vec*, const Vec*, Vec*);

#ifdef __cplusplus
}
#endif

#endif
