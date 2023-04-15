#ifndef JSYSTEM_JSUPPORT_JSUIOSBASE_H
#define JSYSTEM_JSUPPORT_JSUISOBASE_H

#include "dolphin/types.h"

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
