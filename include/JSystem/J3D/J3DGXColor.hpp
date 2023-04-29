#ifndef JSYSTEM_J3D_J3DGXCOLOR_H
#define JSYSTEM_J3D_J3DGXCOLOR_H

#include "dolphin/gx.h"

struct J3DGXColor : public GXColor {

	J3DGXColor() {}

	J3DGXColor(u8 _r, u8 _g, u8 _b, u8 _a) {
		this->r = _r;
		this->g = _g;
		this->b = _b;
		this->a = _a;
	}

	J3DGXColor(const J3DGXColor& other) {
		this->r = other.r;
		this->g = other.g;
		this->b = other.b;
		this->a = other.a;
	}

	J3DGXColor(const GXColor& other) {
		this->r = other.r;
		this->g = other.g;
		this->b = other.b;
		this->a = other.a;
	}

	J3DGXColor& operator=(const GXColor& other) {
		this->r = other.r;
		this->g = other.g;
		this->b = other.b;
		this->a = other.a;
		return *this;
	}

	// TODO: Probably UB
	J3DGXColor(const u32& other) {
		GXColor* other_bytes = (GXColor*)&other;
		this->r = other_bytes->r;
		this->g = other_bytes->g;
		this->b = other_bytes->b;
		this->a = other_bytes->a;
	}

	const u8* asBytes() const { return (u8*)this; }
};

struct J3DGXColorS10 : public GXColorS10 {
	
	J3DGXColorS10() {}

	J3DGXColorS10(u16 _r, u16 _g, u16 _b, u16 _a) {
		this->r = _r;
		this->g = _g;
		this->b = _b;
		this->a = _a;
	}

	J3DGXColorS10(f32 _r, f32 _g, f32 _b, u16 _a) {
		this->r = _r;
		this->g = _g;
		this->b = _b;
		this->a = _a;
	}

	J3DGXColorS10(const J3DGXColorS10& other) {
		this->r = other.r;
		this->g = other.g;
		this->b = other.b;
		this->a = other.a;
	}

	J3DGXColorS10(const GXColorS10& other) {
		this->r = other.r;
		this->g = other.g;
		this->b = other.b;
		this->a = other.a;
	}

	J3DGXColorS10& operator=(const GXColorS10& other) {
		this->r = other.r;
		this->g = other.g;
		this->b = other.b;
		this->a = other.a;
		return *this;
	}

	// TODO: Probably UB
	J3DGXColorS10(const u64& other) {
		GXColorS10* other_bytes = (GXColorS10*)&other;
		this->r = other_bytes->r;
		this->g = other_bytes->g;
		this->b = other_bytes->b;
		this->a = other_bytes->a;
	}
};

#endif
