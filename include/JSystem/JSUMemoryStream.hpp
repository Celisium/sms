#ifndef JSUMEMORYSTREAM_HPP
#define JSUMEMORYSTREAM_HPP

#include "JSystem/JSUInputStream.hpp"
#include "JSystem/JSUOutputStream.hpp"

class JSUMemoryInputStream : public JSURandomInputStream {
	
	public:

	void* buffer;
	s32 length;
	s32 position;

	void setBuffer(const void*, s32);

};

class JSUMemoryOutputStream: public JSURandomOutputStream {};

#endif
