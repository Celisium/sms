#ifndef JSYSTEM_JDRNAMEREFGEN_H
#define JSYSTEM_JDRNAMEREFGEN_H

#include "JSystem/JSUMemoryStream.hpp"
#include "JSystem/JDRNameRef.hpp"

namespace JDrama {

class TNameRefGen {

	public:

	static TNameRefGen* instance;

	virtual void load(JSUMemoryInputStream&);
	virtual void getNameRef(const char*) const;

	TNameRef* getNameRef2(const char* str) const {

		s32 padding[3] = {};
		TNameRef* nameRef = (TNameRef*)this->unknown_04;

		return nameRef->searchF(TNameRef::calcKeyCode(str), str);

	}

	s32 unknown_04;

};

}

#endif
