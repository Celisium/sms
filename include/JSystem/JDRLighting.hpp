#ifndef JSYSTEM_JDRLIGHTING_H
#define JSYSTEM_JDRLIGHTING_H

#include "JSystem/JDRPlacement.hpp"
#include "JSystem/JDrama/JDRViewObj.hpp"
#include "JSystem/JStage/JSGAmbientLight.hpp"
#include "JSystem/JStage/JSGLight.hpp"
#include "JSystem/JUTColor.hpp"

namespace JDrama {

class TLight : public TPlacement, public JStage::TLight {

	public:

	TLight(const char* name) : TPlacement(name), unknown_64((JStage::TELight)1) {
		GXInitLightAttn(&this->unknown_24, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
		this->setColor(JUtility::TColor(255, 255, 255, 255));
	}

	virtual ~TLight() {}

	virtual void load(JSUMemoryInputStream&);
	virtual void perform(u32, TGraphics*);

	void correct(TGraphics*) const;

	virtual JStage::TELight JSGGetLightType() const;
	virtual void JSGSetLightType(JStage::TELight);
	virtual void JSGGetPosition(Vec*) const;
	virtual void JSGSetPosition(const Vec&);
	virtual GXColor JSGGetColor() const;
	virtual void JSGSetColor(GXColor);

	void setColor(GXColor color) {
		GXInitLightColor(&this->unknown_24, color);
	}

	void setLightPosition(Mtx& mtx) {
		s32 padding[3] = {};
		Vec out;
		// TODO: This is probably UB.
		PSMTXMultVec(mtx, (Vec*)(&this->position), &out);
		GXInitLightPos(&this->unknown_24, out.x, out.y, out.z);
	}

	GXLightObj unknown_24;
	JStage::TELight unknown_64;

};

class TIdxLight : public TLight {

	public:

	TIdxLight() : TLight("<IdxLight>"), index(0) {}
	virtual ~TIdxLight() {}

	s32 index;

};

class TLightAry : public TViewObj {

	public:

	TLightAry(const char* name) : TViewObj(name) {}

	virtual void load(JSUMemoryInputStream&);
	virtual TNameRef* searchF(u16, const char*);
	virtual void perform(u32, TGraphics*);

	void setLightNum(s32 num_lights);

	/* 0x10 */ TIdxLight* lights;
	/* 0x14 */ s32 num_lights;

};

class TAmbColor : public TViewObj, public JStage::TAmbientLight {

	public:

	TAmbColor() : TViewObj("<AmbColor>"), color(0x4C, 0x4C, 0x4C, 0xFF) {
		s32 padding;
	}

	virtual ~TAmbColor() {}
	virtual void load(JSUMemoryInputStream&);
	virtual void perform(u32, TGraphics*);

	virtual GXColor JSGGetColor() const;
	virtual void JSGSetColor(GXColor color);

	JUtility::TColor color;

};

class TAmbAry : public TViewObj {

	public:

	TAmbAry(const char* name) : TViewObj(name) {}

	virtual ~TAmbAry() {}
	virtual void load(JSUMemoryInputStream&);
	virtual TNameRef* searchF(u16, const char*);
	virtual void perform(u32, TGraphics*) {}

	void setAmbNum(s32 num_ambs);

	TAmbColor* ambs;
	s32 num_ambs;

};

class TLightMap : public TViewObj {

	public:

	TLightMap(const char* name) : TViewObj(name) {}

	class TLightInfo {

		public:

		TLightInfo() : unknown_00(0), unknown_04(nullptr) {}

		s32 unknown_00;
		TViewObj* unknown_04;

	};

	virtual ~TLightMap() {}
	virtual void load(JSUMemoryInputStream&);
	virtual void perform(u32, TGraphics*);

	s32 unknown_10;
	TLightInfo* unknown_14;

};

}

#endif
