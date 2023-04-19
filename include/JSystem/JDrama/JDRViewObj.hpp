#ifndef JDRVIEWOBJ_HPP
#define JDRVIEWOBJ_HPP

#include "dolphin.h"
#include "types.h"

#include "JSystem/JDrama/JDRNameRef.hpp"
#include "JSystem/JDrama/JDRGraphics.hpp"
#include "JSystem/JDrama/JDRFlagT.hpp"

namespace JDrama {

class TViewObj : public TNameRef {

	public:

	TViewObj(const char* name);// : TNameRef(name), unknown_0C(0) {}

	virtual ~TViewObj() {}
	virtual void perform(u32, TGraphics*) = 0;

	void testPerform(u32, TGraphics*);

	TFlagT<u16> unknown_0C;

};

}

#endif
