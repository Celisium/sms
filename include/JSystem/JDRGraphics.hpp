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
	
	/* 0x00 */ char unknown_00[0x20];
	/* 0x20 */ bool unknown_20; // Probably an interlaced rendering flag.
	/* 0x21 */ char unknown_21[0x33];
	TRect viewport;
	
	void setViewport(const TRect& viewport, f32 near_z, f32 far_z);
};

}

#endif
