#ifndef JSYSTEM_JDRAMA_JDRACTOR_H
#define JSYSTEM_JDRAMA_JDRACTOR_H

#include "JSystem/JDrama/JDRPlacement.hpp"
#include "JSystem/JStage/JSGActor.hpp"

namespace JDrama {

class TActor : public TPlacement, public JStage::TActor {

	public:
	
	TActor();

	virtual ~TActor() {}

	virtual void* getType() const;
	virtual void load(JSUMemoryInputStream&);
	virtual void perform(u32, TGraphics*);

	virtual void JSGGetTranslation(Vec*) const;
	virtual void JSGSetTranslation(const Vec&);
	virtual void JSGGetScaling(Vec*) const;
	virtual void JSGSetScaling(const Vec&);
	virtual void JSGGetRotation(Vec*) const;
	virtual void JSGSetRotation(const Vec&);

	JGeometry::TVec3<f32> unknown_24;
	JGeometry::TVec3<f32> unknown_30;
	TNameRef* unknown_3C;
	void* unknown_40;


};

}

#endif