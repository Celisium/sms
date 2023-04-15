#ifndef JSYSTEM_JKERNEL_JKRDISPOSER_H
#define JSYSTEM_JKERNEL_JKRDISPOSER_H

#include "JSystem/JSupport/JSUList.hpp"

class JKRHeap;

class JKRDisposer {

	public:

	JKRDisposer();

	virtual ~JKRDisposer();

	JKRHeap* heap;
	JSULink<JKRDisposer> link;

};

#endif
