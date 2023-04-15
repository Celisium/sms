#ifndef JSYSTEM_JSUPPORT_JSUOUTPUTSTREAM_H
#define JSYSTEM_JSUPPORT_JSUOUTPUTSTREAM_H

#include "JSystem/JSupport/JSUIosBase.hpp"

class JSUOutputStream : public JSUIosBase {

	public:

	virtual ~JSUOutputStream();

	virtual s32 skip(s32 length, s8 fill);
	virtual s32 writeData(const void* buffer, s32 length) = 0;

	s32 write(const void* buffer, s32 length);

};

class JSURandomOutputStream: public JSUOutputStream {

	public:

	virtual ~JSURandomOutputStream() {}

	virtual s32 getLength() const = 0;
	virtual s32 getPosition() const = 0;
	virtual void seek(s32 pos, JSUStreamSeekFrom whence);
	virtual s32 getAvailable() const { return this->getLength() - this->getPosition(); }
	virtual void seekPos(s32 pos, JSUStreamSeekFrom whence) = 0;

};

#endif
