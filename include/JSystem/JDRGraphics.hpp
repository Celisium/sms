#ifndef JSYSTEM_JDRGRAPHICS_H
#define JSYSTEM_JDRGRAPHICS_H

#include "dolphin.h"

namespace JDrama {

struct TRect {
	s32 left;
	s32 top;
	s32 right;
	s32 bottom;

	s32 getWidth() const { return this->right - this->left; }
	s32 getHeight() const { return this->bottom - this->top; }

};           

class TGraphics {

	public:
	
	char unknown_00[0x20];
	bool unknown_20; // Probably an interlaced rendering flag.
	char unknown_21[0x33];
	TRect viewport;
	char unknown_64[0x50];
	Mtx unknown_B4;
	GXLightID unknown_E4;

	void setViewport(const TRect& viewport, f32 near_z, f32 far_z);
};

}

#endif
