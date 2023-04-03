#ifndef JSUINPUTSTREAM_HPP
#define JSUINPUTSTREAM_HPP

#include "JSystem/JSUIosBase.hpp"

class JSUInputStream : public JSUIosBase {

	public:
	
	virtual ~JSUInputStream();
	virtual void getAvailable() = 0;
	void read(void*, s32);
	const char* readString();
	void readString(char*, u16);
	virtual void skip(u16);
	
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

	virtual ~JSURandomInputStream() {}

	virtual void getAvailable();

};

#endif
