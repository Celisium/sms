#ifndef JSYSTEM_JSUPPORT_JSUIOSBASE_H
#define JSYSTEM_JSUPPORT_JSUIOSBASE_H

#include "dolphin/types.h"

enum JSUStreamSeekFrom {
	JSUSTREAM_SEEK_SET,
	JSUSTREAM_SEEK_CUR,
	JSUSTREAM_SEEK_END
};

class JSUIosBase {

	public:

	JSUIosBase() : eof(0) {}
	virtual ~JSUIosBase() {}

	void set_eof() { this->eof |= 1; }
	void clear_eof() { this->eof &= (~1); }

	// For some reason, this has to be a bool to match.
	bool eof;

};

#endif
