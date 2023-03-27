#ifndef JSYSTEM_JDRNAMEREFGEN_H
#define JSYSTEM_JDRNAMEREFGEN_H

#include "JSystem/JSUMemoryStream.hpp"

namespace JDrama {

class TNameRefGen {

	public:

	static TNameRefGen* instance;

	virtual void load(JSUMemoryInputStream&);
	virtual void getRefName(const char*) const;

};

}

#endif
