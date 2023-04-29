#ifndef JSYSTEM_JDRAMA_JDRCHARACTER_H
#define JSYSTEM_JDRAMA_JDRCHARACTER_H

#include "JSystem/JDrama/JDRNameRef.hpp"

namespace JDrama {

class TCharacter : public TNameRef {

	public:

	TCharacter(const char* name) : TNameRef(name) {}

	virtual ~TCharacter() {}
	
	virtual s32 getRes(const char*) const = 0;

};

class TSmplChara : public TCharacter {

	public:

	TSmplChara(const char* name) : TCharacter(name) {}

	virtual ~TSmplChara() {}

	virtual void load(JSUMemoryInputStream&);
	
	virtual s32 getRes(const char*) const;

};

}

#endif
