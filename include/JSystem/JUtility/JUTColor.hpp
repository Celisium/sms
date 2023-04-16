#ifndef JSYSTEM_JUTILITY_JUTCOLOR_H
#define JSYSTEM_JUTILITY_JUTCOLOR_H

#include "dolphin/gx.h"

namespace JUtility {

// TODO: This class relies on undefined behaviour

class TColor : public GXColor {

	public:

	TColor(u8 r, u8 g, u8 b, u8 a) { set(r, g, b, a); }
	TColor() { set(0xFFFFFFFF); }
	TColor(u32 u32_color) { set(u32_color); }
	TColor(GXColor gx_color) { set(gx_color); }

	operator u32() const { return to_u32(); }
	u32 to_u32() const { return *(u32*)&r; }

	void set(u8 _r, u8 _g, u8 _b, u8 _a) {
		this->r = _r;
		this->g = _g;
		this->b = _b;
		this->a = _a;
	}

	void set(u32 u32_color) { *(u32*)&r = u32_color; }
	void set(GXColor gx_color) { *(GXColor*)&r = gx_color; }

};

}

#endif
