#ifndef JSYSTEM_JMATH_H
#define JSYSTEM_JMATH_H

#include "dolphin/types.h"

bool JMANewSinTable(u8);
void JMAEulerToQuat(s16 arg_0, s16 arg_1, s16 arg_2, Quaternion* out);
void JMAQuatLerp(Quaternion* a, Quaternion* b, f32 t, Quaternion* out);


#endif
