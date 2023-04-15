#ifndef JSYSTEM_JSUPPORT_JSUMEMORYSTREAM_H
#define JSYSTEM_JSUPPORT_JSUMEMORYSTREAM_H

#include "JSystem/JSupport/JSUInputStream.hpp"
#include "JSystem/JSupport/JSUOutputStream.hpp"

class JSUMemoryInputStream : public JSURandomInputStream {
	
	public:

	void* buffer;
	s32 length;
	s32 position;

	virtual ~JSUMemoryInputStream() {}

	virtual s32 readData(void*, s32);

	virtual s32 getLength() const;
	virtual s32 getPosition() const;
	virtual s32 seekPos(s32, JSUStreamSeekFrom);

	void setBuffer(const void*, s32);

	JSUMemoryInputStream(const void* buffer, s32 size) {
		this->setBuffer(buffer, size);
	}

};

class JSUMemoryOutputStream : public JSURandomOutputStream {};

#endif
