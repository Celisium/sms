#ifndef JSYSTEM_JSUPPORT_JSUMEMORYSTREAM_H
#define JSYSTEM_JSUPPORT_JSUMEMORYSTREAM_H

#include "JSystem/JSupport/JSUInputStream.hpp"
#include "JSystem/JSupport/JSUOutputStream.hpp"

class JSUMemoryOutputStream : public JSURandomOutputStream {

	public:

	JSUMemoryOutputStream(void* buffer, s32 length) {
		this->setBuffer(buffer, length);
	}

	virtual ~JSUMemoryOutputStream() {}

	virtual s32 writeData(const void*, s32);

	virtual s32 getLength() const { return this->length; }
	virtual s32 getPosition() const { return this->position; }
	virtual s32 seekPos(s32, JSUStreamSeekFrom);

	void setBuffer(void*, s32);

	void* buffer;
	s32 length;
	s32 position;

};

class JSUMemoryInputStream : public JSURandomInputStream {

	public:

	JSUMemoryInputStream(const void* buffer, s32 length) {
		this->setBuffer(buffer, length);
	}

	virtual ~JSUMemoryInputStream() {}

	virtual s32 readData(void*, s32);

	virtual s32 getLength() const { return this->length; }
	virtual s32 getPosition() const { return this->position; }
	virtual s32 seekPos(s32, JSUStreamSeekFrom);

	void setBuffer(const void*, s32);

	const void* buffer;
	s32 length;
	s32 position;

};

#endif
