#include "JSystem/JMath.hpp"

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

