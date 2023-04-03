#ifndef JSUMEMORYSTREAM_HPP
#define JSUMEMORYSTREAM_HPP

#include "JSystem/JSUInputStream.hpp"
#include "JSystem/JSUOutputStream.hpp"

class JSUMemoryInputStream : public JSURandomInputStream {
	
	public:

	void* buffer;
	s32 length;
	s32 position;

	virtual ~JSUMemoryInputStream() {}

	void setBuffer(const void*, s32);

	JSUMemoryInputStream(const void* buffer, s32 size) {
		this->setBuffer(buffer, size);
	}

};

class JSUMemoryOutputStream: public JSURandomOutputStream {};

#endif
