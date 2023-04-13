#ifndef JSYSTEM_JKERNEL_JKRFILE_H
#define JSYSTEM_JKERNEL_JKRFILE_H

#include "JSystem/JKernel/JKRDisposer.hpp"

class JKRFile : public JKRDisposer {

	public:
	
	JKRFile() : is_available(false) {}

	virtual ~JKRFile() {}

	virtual bool open(const char*) = 0;
	virtual void close() = 0;
	virtual s32 readData(void*, s32, s32) = 0;
	virtual s32 writeData(const void*, s32, s32) = 0;
	virtual s32 getFileSize() const = 0;

	bool is_available;

};

#endif
