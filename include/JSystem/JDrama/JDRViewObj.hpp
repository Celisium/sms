#ifndef JDRVIEWOBJ_HPP
#define JDRVIEWOBJ_HPP

#include "dolphin.h"
#include "types.h"

#include "JSystem/JDrama/JDRNameRef.hpp"
#include "JSystem/JDrama/JDRGraphics.hpp"

namespace JDrama {

class TViewObj : public TNameRef {
	
	public:

	TViewObj(const char* name);

	virtual ~TViewObj() {}
	virtual void perform(u32, TGraphics*) = 0;

	void testPerform(u32, TGraphics*);

	u16 unknown_0C;

};

}

#endif
