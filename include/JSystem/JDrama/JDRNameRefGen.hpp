#ifndef JSYSTEM_JDRNAMEREFGEN_H
#define JSYSTEM_JDRNAMEREFGEN_H

#include "JSystem/JSupport/JSUMemoryStream.hpp"
#include "JSystem/JDrama/JDRNameRef.hpp"

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

	TNameRef* unknown_04;

};

template <typename T, typename U>
class TNameRefPtrListT : public TNameRef {

	public:

	virtual ~TNameRefPtrListT();

	virtual void load(JSUMemoryInputStream& stream);
	virtual void loadAfter();
	virtual TNameRef* searchF(u16 arg_0, const char* arg_1);

};

}

#endif
