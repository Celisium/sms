#ifndef JSYSTEM_JDRAMA_JDRCHARACTER_H
#define JSYSTEM_JDRAMA_JDRCHARACTER_H

#include "JSystem/JDrama/JDRNameRef.hpp"

namespace JDrama {

class TCharacter : public TNameRef {

	public:

	virtual ~TCharacter() {}
	
	virtual s32 getRes(const char*) const = 0;

};

class TSmplChara : public TCharacter {

	public:

	virtual ~TSmplChara() {}

	virtual void load(JSUMemoryInputStream&);
	
	virtual s32 getRes(const char*) const;

};


}

#endif
