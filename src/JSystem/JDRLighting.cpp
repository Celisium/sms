#include "JSystem/JDRLighting.hpp"

namespace JDrama {

void TLight::load(JSUMemoryInputStream& arg_0) {

	this->TPlacement::load(arg_0);

}

void TLight::perform(u32 arg_0, JDrama::TGraphics* graphics) {
	if (arg_0 & 0x20) {
		this->correct(graphics);
		GXLoadLightObjImm(&this->unknown_24, (GXLightID)(graphics->unknown_E4 + 1));
	}
}

void TLight::correct(TGraphics* graphics) const {

	Vec out;

	PSMTXMultVec(graphics->unknown_B4, (Vec*)&this->position, &out);
	// The MW compiler is quite lax about casting away const which appears to be the case here.
	GXInitLightPos(const_cast<GXLightObj*>(&this->unknown_24), out.x, out.y, out.z);

}

JStage::TELight TLight::JSGGetLightType() const {
	return this->unknown_64;
}

void TLight::JSGSetLightType(JStage::TELight arg_0) {

	// This seems a bit odd.
	if (arg_0 == 1) {
		this->unknown_64 = arg_0;
	}

}

void TLight::JSGGetPosition(Vec* vec) const {
	*vec = this->position;
}

void TLight::JSGSetPosition(const Vec& vec) {

	if (this->unknown_64 != 2) {
		// Each component has to be assigned separately to match.
		this->position.x = vec.x;
		this->position.y = vec.y;
		this->position.z = vec.z;
	}

}

GXColor TLight::JSGGetColor() const {

	GXColor colour;
	GXGetLightColor(&this->unknown_24, &colour);

	return colour;
    
}

void TLight::JSGSetColor(GXColor colour) {

	GXInitLightColor(&this->unknown_24, colour);

}

void TLightAry::setLightNum(s32 num_lights) {

	s32 padding;

	this->num_lights = num_lights;

	if (num_lights > 0) {
		this->lights = new TIdxLight[this->num_lights];
	}

	for (int i = 0; i < this->num_lights; i++) {
		this->lights[i].index = i;
	}
    
}

}
