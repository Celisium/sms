#ifndef JDRPLACEMENT_HPP
#define JDRPLACEMENT_HPP

#include "dolphin.h"
#include "types.h"

#include "JSystem/JDrama/JDRViewObj.hpp"
#include "JSystem/JSupport/JSUInputStream.hpp"
#include "JSystem/JGeometry.hpp"

namespace JDrama {

class TPlacement : public TViewObj {

	public:

	TPlacement(const char* name) : TViewObj(name), position(0.0f, 0.0f, 0.0f), _01C(0) {}

	virtual ~TPlacement() {};
	virtual void load(JSUMemoryInputStream&);
	virtual void perform(u32, TGraphics*) = 0;

	JGeometry::TVec3<f32> position;
	u16 _01C;
};

}

#endif
