#ifndef JSYSTEM_JSUPPORT_JSUINPUTSTREAM_H
#define JSYSTEM_JSUPPORT_JSUINPUTSTREAM_H

#include "JSystem/JSupport/JSUIosBase.hpp"

enum JSUStreamSeekFrom {
	JSUSTREAM_SEEK_SET,
	JSUSTREAM_SEEK_CUR,
	JSUSTREAM_SEEK_END
};

class JSUInputStream : public JSUIosBase {

	public:
	
	virtual ~JSUInputStream();

	virtual s32 getAvailable() const = 0;
	virtual s32 skip(s32);
	virtual s32 readData(void*, s32) = 0;

	s32 read(void*, s32);
	const char* readString();
	char* readString(char*, u16);
	
	u32 read_u32() {
		u32 value;
		this->read(&value, sizeof(value));
		return value;
	}

	s32 read_s32() {
		s32 value;
		this->read(&value, sizeof(value));
		return value;
	}

};

class JSURandomInputStream: public JSUInputStream {

	public:

	virtual ~JSURandomInputStream() {};

	virtual s32 getAvailable() const { return this->getLength() - this->getPosition(); }
	virtual s32 skip(s32);

	virtual s32 getLength() const = 0;
	virtual s32 getPosition() const = 0;
	virtual s32 seekPos(s32, JSUStreamSeekFrom) = 0;

	s32 align(s32);
	s32 peek(void*, s32);
	s32 seek(s32, JSUStreamSeekFrom);

};

#endif
