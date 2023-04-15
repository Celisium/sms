#ifndef JSYSTEM_JSUPPORT_JSUFILESTREAM_H
#define JSYSTEM_JSUPPORT_JSUFILESTREAM_H

#include "JSystem/JKernel/JKRFile.hpp"
#include "JSystem/JSupport/JSUInputStream.hpp"

class JSUFileInputStream : public JSURandomInputStream {

	public:

	JSUFileInputStream(JKRFile* file);

	virtual ~JSUFileInputStream() {}

	virtual s32 readData(void* buffer, s32 length);

	virtual s32 getLength() const { return this->file->getFileSize(); }
	virtual s32 getPosition() const { return this->position; }
	virtual s32 seekPos(s32, JSUStreamSeekFrom);

	JKRFile* file;
	s32 position;

};

#endif
