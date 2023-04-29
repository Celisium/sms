#include "JSystem/JMath.hpp"

#include "dolphin/mtx.h"

extern "C" f32 sinf(f32);

u16 jmaSinTableSize;
u32 jmaSinShift;
f32* jmaSinTable;
f32* jmaCosTable;

#define TWO_PI 6.2831854820251465f

#pragma opt_strength_reduction off

bool JMANewSinTable(u8 arg_0) {
    
	jmaSinShift = 0x10 - arg_0;
	jmaSinTableSize = 1;

	for (u8 i = 0; i < arg_0; i++) {
		jmaSinTableSize *= 2;
	}

	jmaSinTable = new f32[jmaSinTableSize + (jmaSinTableSize / 4)];
	if (!jmaSinTable) {
		return false;
	}

	for (u16 i = 0; i < jmaSinTableSize + (jmaSinTableSize / 4); i++) {
		jmaSinTable[i] = sinf((TWO_PI / jmaSinTableSize) * i);
	}

	jmaCosTable = jmaSinTable + (jmaSinTableSize / 4);
	return true;
}

inline f32 quat_dot(Quaternion* b, Quaternion* a) {
	return (b->x * a->x) + (b->y * a->y) + (b->z * a->z) + (b->w * a->w);
}

inline f32 my_sin(u16 angle) {
	return jmaSinTable[angle >> jmaSinShift];
}

inline f32 my_cos(u16 angle) {
	return jmaCosTable[angle >> jmaSinShift];
}

void JMAEulerToQuat(s16 arg_0, s16 arg_1, s16 arg_2, Quaternion* out) {

	s16 half_arg_0 = arg_0 / 2;
	s16 half_arg_1 = arg_1 / 2;
	s16 half_arg_2 = arg_2 / 2;

	f32 cos_0 = my_cos(half_arg_0);
	f32 cos_1 = my_cos(half_arg_1);
	f32 cos_2 = my_cos(half_arg_2);
	f32 sin_0 = my_sin(half_arg_0);
	f32 sin_1 = my_sin(half_arg_1);
	f32 sin_2 = my_sin(half_arg_2);

	f32 s1_s2 = sin_1 * sin_2;
	f32 c1_c2 = cos_1 * cos_2;

	out->w = (cos_0 * c1_c2) + (sin_0 * s1_s2);
	out->x = (sin_0 * c1_c2) - (cos_0 * s1_s2);
	out->y = (cos_2 * (cos_0 * sin_1)) + (sin_2 * (sin_0 * cos_1));
	out->z = (sin_2 * (cos_0 * cos_1)) - (cos_2 * (sin_0 * sin_1));
}

void JMAQuatLerp(Quaternion* a, Quaternion* b, f32 t, Quaternion* out) {

	Quaternion temp;

	if (quat_dot(a, b) < 0.0) {
		temp.x = -b->x;
		temp.y = -b->y;
		temp.z = -b->z;
		temp.w = -b->w;
	} else {
		temp.x = b->x;
		temp.y = b->y;
		temp.z = b->z;
		temp.w = b->w;  
	}

	out->x = (1.0 - t) * a->x + (f64)t * temp.x;
	out->y = (1.0 - t) * a->y + (f64)t * temp.y;
	out->z = (1.0 - t) * a->z + (f64)t * temp.z;
	out->w = (1.0 - t) * a->w + (f64)t * temp.w;
}
