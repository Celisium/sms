#ifndef JDRNAMEREF_HPP
#define JDRNAMEREF_HPP

#include "dolphin.h"

#include "JSystem/JSUMemoryStream.hpp"
#include "JSystem/JDrama/JDRGraphics.hpp"

namespace JDrama {

class TNameRef {

	public:

	static u16 calcKeyCode(const char* str);
	static const char* getType(JSUMemoryInputStream&, JSUMemoryInputStream&);
	// TODO: Determine actual return type.
	static void genObject(JSUMemoryInputStream&, JSUMemoryInputStream&);

	virtual ~TNameRef();
	// TODO: Determine actual return type.
	virtual void* getType() const;
	virtual void load(JSUMemoryInputStream&);
	virtual void save(JSUMemoryOutputStream&);
	virtual void loadAfter();
	virtual TNameRef* searchF(u16, const char*);

	TNameRef() {}
	TNameRef(const char* name) {
		this->mName = name;
		this->mKeyCode = calcKeyCode(name);
	}

	private:

	const char* mName;
	u16 mKeyCode;
};

}

#endif
