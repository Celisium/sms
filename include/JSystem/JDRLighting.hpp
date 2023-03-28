#ifndef JSYSTEM_JDRLIGHTING_H
#define JSYSTEM_JDRLIGHTING_H

#include "JSystem/JDRPlacement.hpp"
#include "JSystem/JDRViewObj.hpp"

namespace JDrama {

class TLight : public TPlacement {

	public:

	virtual void load(JSUMemoryInputStream&);
	virtual void perform(u32, TGraphics*);

	void correct(TGraphics*) const;

	void* JSGGetLightType() const;

};

class TLightMap : public TViewObj {

};

}

#endif
