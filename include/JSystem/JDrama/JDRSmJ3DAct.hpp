#ifndef JSYSTEM_JDRAMA_JDRSMJ3DACT_H
#define JSYSTEM_JDRAMA_JDRSMJ3DACT_H

#include "JSystem/JDrama/JDRActor.hpp"

namespace JDrama {

class TSmJ3DAct : public TActor {

	public:

	TSmJ3DAct(const char* name) : TActor(name), unknown_44(0), unknown_48(0), unknown_4C(0), unknown_50(0), unknown_54(0) {}
	
	virtual ~TSmJ3DAct();

	virtual void load(JSUMemoryInputStream& stream);
	virtual void perform(u32, TGraphics*);

	s32 unknown_44;
	s32 unknown_48;
	s32 unknown_4C;
	s32 unknown_50;
	s32 unknown_54;

};

}

#endif
