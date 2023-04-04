#ifndef JSYSTEM_JDRAMA_JDRACTOR_H
#define JSYSTEM_JDRAMA_JDRACTOR_H

#include "JSystem/JDrama/JDRPlacement.hpp"

namespace JDrama {

class TActor : public TPlacement {

	public:
	
	JGeometry::TVec3<f32> unknown_24;
	JGeometry::TVec3<f32> unknown_30;

	s32 padding[3]; // TODO: I'm not sure where this goes.

	virtual void load(JSUMemoryInputStream&);

	TActor();

};

}

#endif
