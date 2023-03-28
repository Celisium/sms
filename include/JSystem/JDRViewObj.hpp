#ifndef JDRVIEWOBJ_HPP
#define JDRVIEWOBJ_HPP

#include "dolphin.h"
#include "types.h"

#include "JSystem/JDRNameRef.hpp"
#include "JSystem/JDRGraphics.hpp"

namespace JDrama {

class TViewObj : public TNameRef {
	
	public:

	void testPerform(u32, TGraphics*);
	virtual void perform(u32, TGraphics*) = 0;

	u16 unknown_0C;

};

};

#endif
