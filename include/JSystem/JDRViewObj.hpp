#ifndef JDRVIEWOBJ_HPP
#define JDRVIEWOBJ_HPP

#include "dolphin.h"
#include "types.h"

#include "JSystem/JDRNameRef.hpp"

namespace JDrama {

class TGraphics;

class TViewObj : public TNameRef {
	
	public:

	void testPerform(u32, TGraphics*);
	virtual void perform(u32, TGraphics*);

	u16 unknown_0C;

};

};

#endif
