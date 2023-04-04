#ifndef JSYSTEM_JDRAMA_JDRVIEWPORT_H
#define JSYSTEM_JDRAMA_JDRVIEWPORT_H

#include "JSystem/JDrama/JDRViewObj.hpp"

namespace JDrama {

class TViewport : public TViewObj {

	public:

	TViewport(const TRect& arg_0, const char* name);
	virtual ~TViewport() {}

	virtual void load(JSUMemoryInputStream&);
	virtual void perform(u32, TGraphics*);

	TRect unknown_10;
	u16 unknown_20;

};

}

#endif
