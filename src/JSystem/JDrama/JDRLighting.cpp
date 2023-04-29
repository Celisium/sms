#include "JSystem/JDrama/JDRLighting.hpp"

#include "JSystem/JDrama/JDRNameRefGen.hpp"
#include "JSystem/JUtility/JUTColor.hpp"

#pragma opt_strength_reduction off

namespace JDrama {

void TLight::load(JSUMemoryInputStream& arg_0) {
	
	this->TPlacement::load(arg_0);
	
	this->setColor(JUtility::TColor(arg_0.read_u32()));

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

	if (arg_0 == 1) {
		this->unknown_64 = arg_0;
	}

}

void TLight::JSGGetPosition(Vec* vec) const {
	// TODO: I'm not sure if this is UB or not.
	*vec = *(Vec*)(&this->position.x);
}

void TLight::JSGSetPosition(const Vec& vec) {

	if (this->unknown_64 != 2) {
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

void TLightAry::load(JSUMemoryInputStream& arg_0) {

	this->TNameRef::load(arg_0);

	this->setLightNum(arg_0.read_s32());

	for (s32 i = 0; i < this->num_lights; i++) {

		JSUMemoryInputStream stream(nullptr, 0);

		TNameRef::getType(arg_0, stream);

		this->lights[i].load(stream);

	}
}

TNameRef* TLightAry::searchF(u16 arg_0, const char* arg_1) {

	TNameRef* name_ref = this->TNameRef::searchF(arg_0, arg_1);

	if (name_ref != nullptr) {
		return name_ref;
	} else {

		for (s32 i = 0; i < this->num_lights; i++) {

			name_ref = this->lights[i].searchF(arg_0, arg_1);
			if (name_ref != nullptr) {
				return name_ref;
			}
				
		}

		return nullptr;
			
	}
    
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

template <typename T> inline TFlagT<T>::TFlagT(T flag) : flag(flag) {}
inline TNameRef::TNameRef(const char* name) { this->name = name; this->key_code = calcKeyCode(name); }
TViewObj::TViewObj(const char* name) : TNameRef(name), unknown_0C(0) {}

void TLightAry::perform(u32 arg_0, TGraphics* arg_1) {

	if (arg_0 & 0x20) {

		Mtx& mtx = arg_1->unknown_B4;

		for (s32 i = 0; i < this->num_lights; i++) {
			this->lights[i].setLightPosition(mtx);
		}

		DCFlushRange(this->lights, this->num_lights * sizeof(TIdxLight));

		GXSetArray(GX_LIGHT_ARRAY, (char*)this->lights + 0x24, sizeof(TIdxLight));

	}

}

void TAmbColor::load(JSUMemoryInputStream& arg_0) {

	this->TViewObj::load(arg_0);

	this->color.set(arg_0.read_u32());

}

void TAmbColor::perform(u32 arg_0, TGraphics* arg_1) {

	if (arg_0 & 0x20) {
		GXSetChanAmbColor(GX_COLOR0A0, this->color);
	}

}

GXColor TAmbColor::JSGGetColor() const {
	return this->color;
}

void TAmbColor::JSGSetColor(GXColor color) {
	s32 padding[2];
	this->color.set(JUtility::TColor(color));
}

void TAmbAry::load(JSUMemoryInputStream& arg_0) {

	this->TNameRef::load(arg_0);

	this->setAmbNum(arg_0.read_s32());

	for (int i = 0; i < this->num_ambs; i++) {

		JSUMemoryInputStream stream(nullptr, 0);

		TNameRef::getType(arg_0, stream);

		this->ambs[i].load(stream);

	}

}

TNameRef* TAmbAry::searchF(u16 arg_0, const char* arg_1) {

	TNameRef* name_ref = this->TNameRef::searchF(arg_0, arg_1);

	if (name_ref != nullptr) {
		return name_ref;
	} else {

		for (s32 i = 0; i < this->num_ambs; i++) {

			name_ref = this->ambs[i].searchF(arg_0, arg_1);
			if (name_ref != nullptr) {
				return name_ref;
			}

		}

		return nullptr;

	}

}

void TAmbAry::setAmbNum(s32 num_ambs) {

	this->num_ambs = num_ambs;

	if (num_ambs > 0) {
		this->ambs = new TAmbColor[this->num_ambs];
	}

}

void TLightMap::load(JSUMemoryInputStream& arg_0) {
    
	this->unknown_10 = arg_0.read_s32();

	this->unknown_14 = new TLightInfo[this->unknown_10];

	for (int i = 0; i < this->unknown_10; i++) {

			char str[0x50];
			this->unknown_14[i].unknown_00 = arg_0.read_s32();

			arg_0.readString(str, sizeof(str));

			this->unknown_14[i].unknown_04 = (TViewObj*)TNameRefGen::instance->getNameRef2(str);
			
	}
    
}

void TLightMap::perform(u32 arg_0, TGraphics* arg_1) {

	if (arg_0 & 0x20) {

		for (int i = 0; i < this->unknown_10; i++) {

			TLightInfo* info = this->unknown_14 + i;

			if (info->unknown_04) {
					arg_1->unknown_E4 = (GXLightID)info->unknown_00;
					this->unknown_14[i].unknown_04->perform(arg_0, arg_1);

			}

		}

	}

}

}
