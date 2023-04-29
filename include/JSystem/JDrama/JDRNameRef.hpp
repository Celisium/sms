#ifndef JDRNAMEREF_HPP
#define JDRNAMEREF_HPP

#include "dolphin.h"

#include "JSystem/JSupport/JSUMemoryStream.hpp"
#include "JSystem/JDrama/JDRGraphics.hpp"

namespace JDrama {

class TNameRef {

	public:

	TNameRef(const char* name);// : name(name), key_code(calcKeyCode(name)) {}

	virtual ~TNameRef();
	virtual s32 getType() const;
	virtual void load(JSUMemoryInputStream&);
	virtual void save(JSUMemoryOutputStream&);
	virtual void loadAfter();
	virtual TNameRef* searchF(u16, const char*);

	static u16 calcKeyCode(const char* str);
	static const char* getType(JSUMemoryInputStream&, JSUMemoryInputStream&);
	static TNameRef* genObject(JSUMemoryInputStream&, JSUMemoryInputStream&);

	const char* name;
	u16 key_code;
};

}

#endif
