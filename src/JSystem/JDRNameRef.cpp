#include "JSystem/JDRNameRef.hpp"

#include "JSystem/JDRNameRefGen.hpp"

#include "types.h"

namespace JDrama {

u16 TNameRef::calcKeyCode(const char* str) {
	u32 accum = 0;

	const u8* as_unsigned = (const u8*)str;

	while (*as_unsigned != '\0') {
			accum = (accum * 3) + *as_unsigned++;
	}
	return accum;
}

const char* TNameRef::getType(JSUMemoryInputStream& arg_0, JSUMemoryInputStream& arg_1) {

	s32 padding2[1];
	s32 var_20;
	s16 var_1C;
	s32 padding[3];

	arg_0.read(&var_20, 4);

	s32 temp = var_20; // needed to match.

	// TODO: I think there's something wrong with how the input buffer's members are named.
	arg_1.setBuffer((void*)(arg_0._004 + arg_0.length) , temp - 4);
	
	arg_0.skip(temp - 4);

	arg_1.read(&var_1C, 2);

	return arg_1.readString();
    
}

void TNameRef::genObject(JSUMemoryInputStream& arg_0, JSUMemoryInputStream& arg_1) {

	s32 padding[1];
	s32 var_20;
	s16 var_1C;
	s32 padding_2[3];

	arg_0.read(&var_20, 4);
	
	s32 temp = var_20;

	arg_1.setBuffer((void*)(arg_0._004 + arg_0.length), temp - 4);

	arg_0.skip(temp - 4);

	arg_1.read(&var_1C, 2);

	const char* temp2 = arg_1.readString();
	TNameRefGen* instance = TNameRefGen::instance;
	instance->getRefName(temp2);

}

TNameRef::~TNameRef() {}

void* TNameRef::getType() const {
	return nullptr;
}

void TNameRef::load(JSUMemoryInputStream& arg_0) {
	u16 sp14;
	s32 padding;

	arg_0.read(&sp14, 2);
	this->mKeyCode = sp14;
	this->mName = arg_0.readString();
}

void TNameRef::save(JSUMemoryOutputStream&) {}
void TNameRef::loadAfter() {}

TNameRef* TNameRef::searchF(u16 arg_0, const char* arg_1) {
	bool var_r31 = false;

	if ((this->mKeyCode == arg_0) && (strcmp(this->mName, arg_1) == 0)) {
		var_r31 = 1;
	}
	if (var_r31) {
		return this;
	}
	return nullptr;
}

}
