#ifndef JSYSTEM_J3D_J3DIND_H
#define JSYSTEM_J3D_J3DIND_H

#include "dolphin/types.h"
#include "JSystem/J3D/J3DTevBlock.hpp"

struct J3DIndTexCoordScale {
	J3DIndTexCoordScale();
	~J3DIndTexCoordScale();
	u8 unknown_00;
	u8 unknown_01;
	u8 unknown_02[2];
};

struct J3DIndTexMtxInfo {
	f32 unknown_00;
	f32 unknown_04;
	f32 unknown_08;
	f32 unknown_0C;
	f32 unknown_10;
	f32 unknown_14;
	u8 unknown_18;
};

extern const J3DIndTexMtxInfo j3dDefaultIndTexMtxInfo;

struct J3DIndTexMtx {
	J3DIndTexMtx()
		: unknown_00(j3dDefaultIndTexMtxInfo.unknown_00),
		unknown_04(j3dDefaultIndTexMtxInfo.unknown_04),
		unknown_08(j3dDefaultIndTexMtxInfo.unknown_08), 
		unknown_0C(j3dDefaultIndTexMtxInfo.unknown_0C),
		unknown_10(j3dDefaultIndTexMtxInfo.unknown_10),
		unknown_14(j3dDefaultIndTexMtxInfo.unknown_14),
		unknown_18(j3dDefaultIndTexMtxInfo.unknown_18) {}
	
	~J3DIndTexMtx();

	f32 unknown_00;
	f32 unknown_04;
	f32 unknown_08;
	f32 unknown_0C;
	f32 unknown_10;
	f32 unknown_14;
	u8 unknown_18;
};

struct J3DIndTexOrderInfo {
	u8 tex_coord_id;
	u8 tex_map_id;
	u8 unknown_02;
	u8 unknown_03;
};

extern const J3DIndTexOrderInfo j3dDefaultIndTexOrderNull;

struct J3DIndTexOrder {
	J3DIndTexOrder() : tex_coord_id(j3dDefaultIndTexOrderNull.tex_coord_id), tex_map_id(j3dDefaultIndTexOrderNull.tex_map_id) {}

	u8 tex_coord_id;
	u8 tex_map_id;
	u8 unknown_02;
	u8 unknown_03;
};

class J3DIndBlock {

	public:

	virtual void reset(J3DIndBlock*);
	virtual s32 countDLSize() = 0;
	virtual s32 getType() = 0;
	virtual void setIndTexStageNum(u8) = 0;
	virtual u8 getIndTexStageNum() const = 0;
	virtual void setIndTexOrder(u32, J3DIndTexOrder) = 0;
	virtual void setIndTexOrder(u32, const J3DIndTexOrder*) = 0;
	virtual J3DIndTexOrder getIndTexOrder(u32) = 0;
	virtual void setIndTexMtx(u32, const J3DIndTexMtx*) = 0;
	virtual void setIndTexMtx(u32, J3DIndTexMtx) = 0;
	virtual J3DIndTexMtx getIndTexMtx(u32) = 0;
	virtual void setIndTexCoordScale(u32, const J3DIndTexCoordScale*) = 0;
	virtual void setIndTexCoordScale(u32, J3DIndTexCoordScale) = 0;
	virtual J3DIndTexCoordScale getIndTexCoordScale() = 0;
	virtual ~J3DIndBlock();
	virtual void load(J3DTevBlock*) = 0;

};

class J3DIndBlockNull : public J3DIndBlock {

	public:

	virtual void reset(J3DIndBlock*);
	virtual s32 countDLSize();
	virtual s32 getType();
	virtual void setIndTexStageNum(u8);
	virtual u8 getIndTexStageNum() const;
	virtual void setIndTexOrder(u32, J3DIndTexOrder);
	virtual void setIndTexOrder(u32, const J3DIndTexOrder*);
	virtual J3DIndTexOrder getIndTexOrder(u32);
	virtual void setIndTexMtx(u32, const J3DIndTexMtx*);
	virtual void setIndTexMtx(u32, J3DIndTexMtx);
	virtual J3DIndTexMtx getIndTexMtx(u32);
	virtual void setIndTexCoordScale(u32, const J3DIndTexCoordScale*);
	virtual void setIndTexCoordScale(u32, J3DIndTexCoordScale);
	virtual J3DIndTexCoordScale getIndTexCoordScale();
	virtual ~J3DIndBlockNull();
	virtual void load(J3DTevBlock*);

};

class J3DIndBlockFull : public J3DIndBlock {

	public:

	J3DIndBlockFull() {
		this->ind_tex_stage_num = 0;
	}

	virtual void reset(J3DIndBlock*);
	virtual s32 countDLSize();
	virtual s32 getType();
	virtual void setIndTexStageNum(u8);
	virtual u8 getIndTexStageNum() const;
	virtual void setIndTexOrder(u32, J3DIndTexOrder);
	virtual void setIndTexOrder(u32, const J3DIndTexOrder*);
	virtual J3DIndTexOrder getIndTexOrder(u32);
	virtual void setIndTexMtx(u32, const J3DIndTexMtx*);
	virtual void setIndTexMtx(u32, J3DIndTexMtx);
	virtual J3DIndTexMtx getIndTexMtx(u32);
	virtual void setIndTexCoordScale(u32, const J3DIndTexCoordScale*);
	virtual void setIndTexCoordScale(u32, J3DIndTexCoordScale);
	virtual J3DIndTexCoordScale getIndTexCoordScale();
	virtual ~J3DIndBlockFull();
	virtual void load(J3DTevBlock*);

	u8 ind_tex_stage_num;
	J3DIndTexOrder orders[4];
	J3DIndTexMtx tex_mtxs[3];
	J3DIndTexCoordScale coord_scales[4];
};

#endif