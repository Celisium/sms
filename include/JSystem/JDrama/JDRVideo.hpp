#ifndef JSYSTEM_JDRAMA_JDRVIDEO_H
#define JSYSTEM_JDRAMA_JDRVIDEO_H

#include "dolphin/types.h"
#include "dolphin/gx.h"

namespace JDrama {

class TVideo {

	public:

	TVideo();

	void setNextXFB(const void*);
	void waitForRetrace(u16);

	/* 0x00 */ GXRenderModeObj unknown_00;
	/* 0x3C */ GXRenderModeObj unknown_3C;
	/* 0x78 */ const void* unknown_78;
	/* 0x7C */ const void* unknown_7C;
	/* 0x80 */ s32 unknown_80;
	/* 0x84 */ s32 unknown_84;

};

}

#endif
