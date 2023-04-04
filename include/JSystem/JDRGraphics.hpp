#ifndef JSYSTEM_JDRGRAPHICS_H
#define JSYSTEM_JDRGRAPHICS_H

#include "dolphin.h"

#include "JSystem/JUtility/JUTRect.hpp"

namespace JDrama {

struct TRect : public JUTRect {

	TRect() {}
	TRect(const TRect& other) {
		this->copy(other);
	}

	s32 getWidth() const { return this->right - this->left; }
	s32 getHeight() const { return this->bottom - this->top; }

};

class TGraphics {

	public:
	
	char unknown_00[0x20];
	bool unknown_20; // Probably an interlaced rendering flag.
	char unknown_21[0x23];
	TRect unknown_44;
	TRect viewport;
	TRect unknown_64;
	char unknown_74[0x40];
	Mtx unknown_B4;
	GXLightID unknown_E4;

	void setViewport(const TRect& viewport, f32 near_z, f32 far_z);

	TRect& getUnknown44() {
		return this->unknown_44;
	}

};

}

#endif
