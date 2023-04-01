#ifndef JSYSTEM_JDRLIGHTING_H
#define JSYSTEM_JDRLIGHTING_H

#include "JSystem/JDRPlacement.hpp"
#include "JSystem/JDRViewObj.hpp"

namespace JStage {
// TODO: Move to proper header and determine values.
enum TELight {};
}

namespace JDrama {

class TLight : public TPlacement {

	public:

	~TLight();

	virtual void load(JSUMemoryInputStream&);
	virtual void perform(u32, TGraphics*);

	void correct(TGraphics*) const;

	JStage::TELight JSGGetLightType() const;
	void JSGSetLightType(JStage::TELight);
	void JSGGetPosition(Vec*) const;
	void JSGSetPosition(const Vec&);
	GXColor JSGGetColor() const;
	void JSGSetColor(GXColor);

	s32 unknown_20;
	GXLightObj unknown_24;
	JStage::TELight unknown_64;

};

class TIdxLight : public TLight {

	public:

	s32 index;

	TIdxLight();
	virtual ~TIdxLight();

};

class TLightAry : public TNameRef {

	public:

	virtual void load(JSUMemoryInputStream&);
	virtual void perform(u32, TGraphics*);

	void setLightNum(s32 num_lights);

	/* 0x0C */ s32 unknown_0C;
	/* 0x10 */ TIdxLight* lights;
	/* 0x14 */ s32 num_lights;

};

class TLightMap : public TViewObj {

};

}

#endif
