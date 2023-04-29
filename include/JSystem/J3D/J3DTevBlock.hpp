#ifndef JSYSTEM_J3D_J3DTEVBLOCK_H
#define JSYSTEM_J3D_J3DTEVBLOCK_H

#include "JSystem/J3D/J3DGXColor.hpp"

struct J3DTevOrderInfo {
	u8 unknown_00[4];
};

extern const J3DTevOrderInfo j3dDefaultTevOrderInfoNull;

struct J3DTevOrder {
	J3DTevOrder() {
		const J3DTevOrderInfo& info = j3dDefaultTevOrderInfoNull;
		this->tex_coord_id = info.unknown_00[0];
		this->tex_map_id = info.unknown_00[1];
		this->channel_id = info.unknown_00[2];
	}

	J3DTevOrder(const J3DTevOrderInfo& info)
		: tex_coord_id(info.unknown_00[0]),
		tex_map_id(info.unknown_00[1]),
		channel_id(info.unknown_00[2]) {}

	J3DTevOrder& operator=(const J3DTevOrder& other) {
		this->tex_coord_id = other.tex_coord_id;
		this->tex_map_id = other.tex_map_id;
		this->channel_id = other.channel_id;
		return *this;
	}

	void setTexCoordID(GXTexCoordID id) { this->tex_coord_id = id; }
	void setTexMapID(GXTexMapID id) { this->tex_map_id = id; }
	void setChannelID(u8 id) { this->channel_id = id; }

	/* 0x00 */ u8 tex_coord_id;
	/* 0x01 */ u8 tex_map_id;
	/* 0x02 */ u8 channel_id;
	/* 0x03 */ u8 unknown_03;

};

struct J3DTevStageInfo {
	u8 unknown_00;
	u8 unknown_01;
	u8 unknown_02;
	u8 unknown_03;
	u8 unknown_04;
	u8 unknown_05;
	u8 unknown_06;
	u8 unknown_07;
	u8 unknown_08;
	u8 unknown_09;
	u8 unknown_0A;
	u8 unknown_0B;
	u8 unknown_0C;
	u8 unknown_0D;
	u8 unknown_0E;
	u8 unknown_0F;
	u8 unknown_10;
	u8 unknown_11;
	u8 unknown_12;
	u8 unknown_13;
};

struct J3DTevStage {
	J3DTevStage();
	J3DTevStage(const struct J3DTevStageInfo&);

	inline J3DTevStage& operator=(const J3DTevStage& other) {
		unknown_01 = other.unknown_01;
		unknown_02 = other.unknown_02;
		unknown_03 = other.unknown_03;
		unknown_05 = other.unknown_05;
		unknown_06 = other.unknown_06;
		unknown_07 = other.unknown_07;
		return *this;
	}

	void setTevColorOp(u8, u8, u8, u8, u8);
	void setTevAlphaOp(u8, u8, u8, u8, u8);

	u8 unknown_00;
	u8 unknown_01;
	u8 unknown_02;
	u8 unknown_03;
	u8 unknown_04;
	u8 unknown_05;
	u8 unknown_06;
	u8 unknown_07;
};

struct J3DTevSwapModeInfo {
	u8 unknown_00;
	u8 unknown_01;
};

extern const u8 j3dDefaultTevSwapTableID;

struct J3DTevSwapModeTable {
	J3DTevSwapModeTable() : id(j3dDefaultTevSwapTableID) {}
	u8 id;
};

struct J3DIndTevStageInfo {
	u8 unknown_00;
};

extern const J3DIndTevStageInfo j3dDefaultIndTevStageInfo[12];

struct J3DIndTevStage {
	J3DIndTevStage()
	: unknown_00(j3dDefaultIndTevStageInfo[0].unknown_00),
	  unknown_01(j3dDefaultIndTevStageInfo[1].unknown_00),
	  unknown_02(j3dDefaultIndTevStageInfo[2].unknown_00),
	  unknown_03(j3dDefaultIndTevStageInfo[3].unknown_00),
	  unknown_04(j3dDefaultIndTevStageInfo[4].unknown_00),
	  unknown_05(j3dDefaultIndTevStageInfo[5].unknown_00),
	  unknown_06(j3dDefaultIndTevStageInfo[6].unknown_00),
	  unknown_07(j3dDefaultIndTevStageInfo[7].unknown_00),
	  unknown_08(j3dDefaultIndTevStageInfo[8].unknown_00) {}

	u8 unknown_00;
	u8 unknown_01;
	u8 unknown_02;
	u8 unknown_03;
	u8 unknown_04;
	u8 unknown_05;
	u8 unknown_06;
	u8 unknown_07;
	u8 unknown_08;
	u8 unknown_09;
	u8 unknown_0A;
	u8 unknown_0B;
};

class J3DTevBlock {

	public:

	virtual void reset(J3DTevBlock*);
	virtual s32 getType() = 0;
	virtual s32 countDLSize() = 0;
	virtual void setTexNo(u32, const u16*) = 0;
	virtual void setTexNo(u32, u16) = 0;
	virtual u16 getTexNo(u32) const = 0;
	virtual void setTevOrder(u32, const J3DTevOrder*) = 0;
	virtual void setTevOrder(u32, J3DTevOrder) = 0;
	virtual J3DTevOrder getTevOrder(u32) = 0;
	virtual void setTevColor(u32, const J3DGXColorS10*) = 0;
	virtual void setTevColor(u32, J3DGXColorS10) = 0;
	virtual J3DGXColorS10 getTevColor(u32) = 0;
	virtual void setTevKColor(u32, const J3DGXColor*) = 0;
	virtual void setTevKColor(u32, J3DGXColor) = 0;
	virtual J3DGXColor getTevKColor(u32) = 0;
	virtual void setTevKColorSel(u32, const u8*) = 0;
	virtual void setTevKColorSel(u32, u8) = 0;
	virtual u8 getTevKColorSel(u32) = 0;
	virtual void setTevKAlphaSel(u32, const u8*) = 0;
	virtual void setTevKAlphaSel(u32, u8) = 0;
	virtual u8 getTevKAlphaSel(u32) = 0;
	virtual void setTevStageNum(const u8*) = 0;
	virtual void setTevStageNum(u8) = 0;
	virtual u8 getTevStageNum() const = 0;
	virtual void setTevStage(u32, const J3DTevStage*) = 0;
	virtual void setTevStage(u32, J3DTevStage) = 0;
	virtual J3DTevStage getTevStage(u32) = 0;
	virtual void setTevSwapModeInfo(u32, const J3DTevSwapModeInfo*) = 0;
	virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo) = 0;
	virtual void setTevSwapModeTable(u32, const J3DTevSwapModeTable*) = 0;
	virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable) = 0;
	virtual J3DTevSwapModeTable getTevSwapModeTable(u32) = 0;
	virtual void setIndTevStage(u32, const J3DIndTevStage*) = 0;
	virtual void setIndTevStage(u32, J3DIndTevStage) = 0;
	virtual J3DIndTevStage getIndTevStage(u32) = 0;
	virtual ~J3DTevBlock();
	virtual void load() = 0;

};

class J3DTevBlock1 : public J3DTevBlock {

	public:

	J3DTevBlock1() {
		this->initialize();	
	}

	virtual void reset(J3DTevBlock*);
	virtual s32 getType();
	virtual s32 countDLSize();
	virtual void setTexNo(u32, const u16*);
	virtual void setTexNo(u32, u16);
	virtual u16 getTexNo(u32) const;
	virtual void setTevOrder(u32, const J3DTevOrder*);
	virtual void setTevOrder(u32, J3DTevOrder);
	virtual J3DTevOrder getTevOrder(u32);
	virtual void setTevColor(u32, const J3DGXColorS10*);
	virtual void setTevColor(u32, J3DGXColorS10);
	virtual J3DGXColorS10 getTevColor(u32);
	virtual void setTevKColor(u32, const J3DGXColor*);
	virtual void setTevKColor(u32, J3DGXColor);
	virtual J3DGXColor getTevKColor(u32);
	virtual void setTevKColorSel(u32, const u8*);
	virtual void setTevKColorSel(u32, u8);
	virtual u8 getTevKColorSel(u32);
	virtual void setTevKAlphaSel(u32, const u8*);
	virtual void setTevKAlphaSel(u32, u8);
	virtual u8 getTevKAlphaSel(u32);
	virtual void setTevStageNum(const u8*);
	virtual void setTevStageNum(u8);
	virtual u8 getTevStageNum() const;
	virtual void setTevStage(u32, const J3DTevStage*);
	virtual void setTevStage(u32, J3DTevStage);
	virtual J3DTevStage getTevStage(u32);
	virtual void setTevSwapModeInfo(u32, const J3DTevSwapModeInfo*);
	virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo);
	virtual void setTevSwapModeTable(u32, const J3DTevSwapModeTable*);
	virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable);
	virtual J3DTevSwapModeTable getTevSwapModeTable(u32);
	virtual void setIndTevStage(u32, const J3DIndTevStage*);
	virtual void setIndTevStage(u32, J3DIndTevStage);
	virtual J3DIndTevStage getIndTevStage(u32);
	virtual ~J3DTevBlock1();
	virtual void load();

	void initialize() {
		this->tex_indices[0] = 0xFFFF;
		this->stages[0].unknown_00 = 0xC0;
		this->stages[0].unknown_04 = 0xC1;
	}

	u16 tex_indices[1];
	J3DTevOrder orders[1];
	J3DTevStage stages[1];
	u8 unknown_16[2];
	J3DIndTevStage ind_stages[1];

};

class J3DTevBlock2 : public J3DTevBlock {

	public:

	J3DTevBlock2() {
		this->initialize();	
	}

	virtual void reset(J3DTevBlock*);
	virtual s32 getType();
	virtual s32 countDLSize();
	virtual void setTexNo(u32, const u16*);
	virtual void setTexNo(u32, u16);
	virtual u16 getTexNo(u32) const;
	virtual void setTevOrder(u32, const J3DTevOrder*);
	virtual void setTevOrder(u32, J3DTevOrder);
	virtual J3DTevOrder getTevOrder(u32);
	virtual void setTevColor(u32, const J3DGXColorS10*);
	virtual void setTevColor(u32, J3DGXColorS10);
	virtual J3DGXColorS10 getTevColor(u32);
	virtual void setTevKColor(u32, const J3DGXColor*);
	virtual void setTevKColor(u32, J3DGXColor);
	virtual J3DGXColor getTevKColor(u32);
	virtual void setTevKColorSel(u32, const u8*);
	virtual void setTevKColorSel(u32, u8);
	virtual u8 getTevKColorSel(u32);
	virtual void setTevKAlphaSel(u32, const u8*);
	virtual void setTevKAlphaSel(u32, u8);
	virtual u8 getTevKAlphaSel(u32);
	virtual void setTevStageNum(const u8*);
	virtual void setTevStageNum(u8);
	virtual u8 getTevStageNum() const;
	virtual void setTevStage(u32, const J3DTevStage*);
	virtual void setTevStage(u32, J3DTevStage);
	virtual J3DTevStage getTevStage(u32);
	virtual void setTevSwapModeInfo(u32, const J3DTevSwapModeInfo*);
	virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo);
	virtual void setTevSwapModeTable(u32, const J3DTevSwapModeTable*);
	virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable);
	virtual J3DTevSwapModeTable getTevSwapModeTable(u32);
	virtual void setIndTevStage(u32, const J3DIndTevStage*);
	virtual void setIndTevStage(u32, J3DIndTevStage);
	virtual J3DIndTevStage getIndTevStage(u32);
	virtual ~J3DTevBlock2();
	virtual void load();

	void initialize();

	/* 0x04 */ u16 tex_indices[2];
	/* 0x08 */ J3DTevOrder orders[2];
	/* 0x10 */ J3DGXColorS10 colors[4];
	/* 0x30 */ u8 stage_num;
	/* 0x31 */ J3DTevStage stages[2];
	/* 0x41 */ J3DGXColor k_colors[4];
	/* 0x51 */ u8 k_color_sels[2];
	/* 0x53 */ u8 k_alpha_sels[2];
	/* 0x55 */ J3DTevSwapModeTable swap_mode_tables[4];
	/* 0x58 */ J3DIndTevStage ind_stages[2];

};

class J3DTevBlock4 : public J3DTevBlock {

	public:

	J3DTevBlock4() {
		this->initialize();	
	}

	virtual void reset(J3DTevBlock*);
	virtual s32 getType();
	virtual s32 countDLSize();
	virtual void setTexNo(u32, const u16*);
	virtual void setTexNo(u32, u16);
	virtual u16 getTexNo(u32) const;
	virtual void setTevOrder(u32, const J3DTevOrder*);
	virtual void setTevOrder(u32, J3DTevOrder);
	virtual J3DTevOrder getTevOrder(u32);
	virtual void setTevColor(u32, const J3DGXColorS10*);
	virtual void setTevColor(u32, J3DGXColorS10);
	virtual J3DGXColorS10 getTevColor(u32);
	virtual void setTevKColor(u32, const J3DGXColor*);
	virtual void setTevKColor(u32, J3DGXColor);
	virtual J3DGXColor getTevKColor(u32);
	virtual void setTevKColorSel(u32, const u8*);
	virtual void setTevKColorSel(u32, u8);
	virtual u8 getTevKColorSel(u32);
	virtual void setTevKAlphaSel(u32, const u8*);
	virtual void setTevKAlphaSel(u32, u8);
	virtual u8 getTevKAlphaSel(u32);
	virtual void setTevStageNum(const u8*);
	virtual void setTevStageNum(u8);
	virtual u8 getTevStageNum() const;
	virtual void setTevStage(u32, const J3DTevStage*);
	virtual void setTevStage(u32, J3DTevStage);
	virtual J3DTevStage getTevStage(u32);
	virtual void setTevSwapModeInfo(u32, const J3DTevSwapModeInfo*);
	virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo);
	virtual void setTevSwapModeTable(u32, const J3DTevSwapModeTable*);
	virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable);
	virtual J3DTevSwapModeTable getTevSwapModeTable(u32);
	virtual void setIndTevStage(u32, const J3DIndTevStage*);
	virtual void setIndTevStage(u32, J3DIndTevStage);
	virtual J3DIndTevStage getIndTevStage(u32);
	virtual ~J3DTevBlock4();
	virtual void load();

	void initialize();

	/* 0x04 */ u16 tex_indices[4];
	/* 0x0C */ J3DTevOrder orders[4];
	/* 0x1C */ u8 stage_num;
	/* 0x1D */ J3DTevStage stages[4];
	/* 0x3E */ J3DGXColorS10 colors[4];
	/* 0x5E */ J3DGXColor k_colors[4];
	/* 0x6E */ u8 k_color_sels[4];
	/* 0x72 */ u8 k_alpha_sels[4];
	/* 0x76 */ J3DTevSwapModeTable swap_mode_tables[4];
	/* 0x7C */ J3DIndTevStage ind_stages[4];

};

class J3DTevBlock16 : public J3DTevBlock {

	public:

	J3DTevBlock16() {
		this->initialize();	
	}

	virtual void reset(J3DTevBlock*);
	virtual s32 getType();
	virtual s32 countDLSize();
	virtual void setTexNo(u32, const u16*);
	virtual void setTexNo(u32, u16);
	virtual u16 getTexNo(u32) const;
	virtual void setTevOrder(u32, const J3DTevOrder*);
	virtual void setTevOrder(u32, J3DTevOrder);
	virtual J3DTevOrder getTevOrder(u32);
	virtual void setTevColor(u32, const J3DGXColorS10*);
	virtual void setTevColor(u32, J3DGXColorS10);
	virtual J3DGXColorS10 getTevColor(u32);
	virtual void setTevKColor(u32, const J3DGXColor*);
	virtual void setTevKColor(u32, J3DGXColor);
	virtual J3DGXColor getTevKColor(u32);
	virtual void setTevKColorSel(u32, const u8*);
	virtual void setTevKColorSel(u32, u8);
	virtual u8 getTevKColorSel(u32);
	virtual void setTevKAlphaSel(u32, const u8*);
	virtual void setTevKAlphaSel(u32, u8);
	virtual u8 getTevKAlphaSel(u32);
	virtual void setTevStageNum(const u8*);
	virtual void setTevStageNum(u8);
	virtual u8 getTevStageNum() const;
	virtual void setTevStage(u32, const J3DTevStage*);
	virtual void setTevStage(u32, J3DTevStage);
	virtual J3DTevStage getTevStage(u32);
	virtual void setTevSwapModeInfo(u32, const J3DTevSwapModeInfo*);
	virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo);
	virtual void setTevSwapModeTable(u32, const J3DTevSwapModeTable*);
	virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable);
	virtual J3DTevSwapModeTable getTevSwapModeTable(u32);
	virtual void setIndTevStage(u32, const J3DIndTevStage*);
	virtual void setIndTevStage(u32, J3DIndTevStage);
	virtual J3DIndTevStage getIndTevStage(u32);
	virtual ~J3DTevBlock16();
	virtual void load();

	void initialize();

	u16 tex_indices[8];
	J3DTevOrder orders[16];
	u8 stage_num;
	J3DTevStage stages[16];
	J3DGXColorS10 colors[4];
	J3DGXColor k_colors[4];
	u8 k_color_sels[16];
	u8 k_alpha_sels[16];
	J3DTevSwapModeTable swap_mode_tables[4];
	J3DIndTevStage ind_stages[16];

};

#endif
