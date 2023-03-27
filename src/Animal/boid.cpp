#include "dolphin.h"

#include "JDRViewObj.hpp"

extern "C" s32 rand();

class TBoid {

	public:

	// probably a vector?
	f32 unknown_00;
	f32 unknown_04;
	f32 unknown_08;

	f32 unknown_0C;
	f32 unknown_10;
	f32 unknown_14;

	f32 unknown_18;
	f32 unknown_1C;
	f32 unknown_20;

	char unknown_24[0x10];

	f32 unknown_34;
	f32 unknown_38;
	f32 unknown_3C;

	char unknown_40[4];

	s32 unknown_48;
	f32 unknown_4C;

	TBoid();

};

class TBoidLeader : JDrama::TViewObj {

	public:
	/* 0x10 */ s32 unknown_10;
	/* 0x14 */ TBoid* unknown_14;
	/* 0x18 */ s32 unknown_18;
	/* 0x1C */ s32 unknown_1C;
	/* 0x20 */ f32 unknown_20;
	/* 0x24 */ f32 unknown_24;
	/* 0x28 */ f32 unknown_28;
	/* 0x2C */ f32 unknown_2C;
	/* 0x30 */ f32 unknown_30;
	/* 0x34 */ f32 unknown_34;
	/* 0x38 */ s32 unknown_38;
	/* 0x3C */ Vec unknown_3C;
	/* 0x48 */ f32 unknown_48;
	/* 0x4C */ f32 unknown_4C;
	/* 0x50 */ f32 unknown_50;
	/* 0x54 */ f32 unknown_54;
	/* 0x58 */ s32 unknown_58;
	/* 0x5C */ s32 unknown_5C;
	/* 0x60 */ Vec unknown_60;
	/* 0x6C */ f32 unknown_6C;
	/* 0x70 */ f32 unknown_70;
	/* 0x74 */ f32 unknown_74;
	/* 0x78 */ f32 unknown_78;
	/* 0x7C */ f32 unknown_7C;

	TBoidLeader(s32 arg0, const char* arg1);
	virtual ~TBoidLeader();

	void calcForces(const TBoid* boid) const;

};

TBoidLeader::TBoidLeader(s32 arg_0, const char* arg_1) : JDrama::TViewObj(arg_1) {

	Vec v1;
	Vec v2;
	s32 padding1;
	s32 padding2;

	this->unknown_10 = arg_0;

	this->unknown_14 = new TBoid[arg_0];
	this->unknown_18 = (s32) 0;
	this->unknown_1C = (s32) 0;
	this->unknown_20 = 6.0f;
	this->unknown_24 = 150.0f;
	this->unknown_28 = 2.0f;
	this->unknown_2C = 2.0f;
	this->unknown_30 = 10.0f;
	this->unknown_34 = 0.01f;
	v1.x = 0.0f;
	v1.y = 0.0f;
	v1.z = 0.0f;
	this->unknown_38 = (s32) 0;
	this->unknown_3C = v1;
	this->unknown_48 = 1.0f;
	this->unknown_58 = (s32) 0;
	v2.x = 0.0f;
	v2.y = 0.0f;
	v2.z = 0.0f;
	this->unknown_5C = (s32) 0;
	this->unknown_60 = v2;
	this->unknown_6C = 0.0f;
	this->unknown_70 = 1.0f;
	this->unknown_74 = 0.0f;
	this->unknown_78 = 0.0f;
	this->unknown_7C = 0.0f;
	this->unknown_54 = 0.0f;
	this->unknown_50 = 0.0f;
	this->unknown_4C = 0.0f;
	this->unknown_1C |= 1;
}


TBoidLeader::~TBoidLeader() {}

TBoid::TBoid() {
	this->unknown_48 = 0;
	this->unknown_4C = 0.0f;
	this->unknown_08 =  0.0f;
	this->unknown_04 =  0.0f;
	this->unknown_00 =  0.0f;
	this->unknown_14 =  0.0f;
	this->unknown_10 =  0.0f;
	this->unknown_0C =  0.0f;
	this->unknown_18 =  0.0f;
	this->unknown_1C =  0.0f;
	this->unknown_20 = 1.0f;
	this->unknown_4C = 0.000030517578f * (f32)rand();
}
