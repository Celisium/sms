#ifndef JSYSTEM_J3D_J3DMATERIAL_H
#define JSYSTEM_J3D_J3DMATERIAL_H

#include "dolphin/types.h"
#include "JSystem/J3D/J3DGXColor.hpp"
#include "JSystem/J3D/J3DTevBlock.hpp"
#include "JSystem/J3D/J3DInd.hpp"
#include "JSystem/JGeometry.hpp"

class J3DPEBlock;
class J3DShape;
class J3DTexMtx;

struct J3DColorChanInfo {
	u8 unknown_00;
	u8 unknown_01;
	u8 unknown_02;
	u8 unknown_03;
	u8 unknown_04;
	u8 unknown_05;
	u8 unknown_06;
	u8 unknown_07;

	u8 getUnknown05() const {
		if (this->unknown_05 == 0xFFFF) {
			return 0;
		}
		return this->unknown_05;
	}

};

// TODO: This can probably be written more clearly.
inline u16 calcColorChanID(u16 arg_0, u8 arg_1, u8 arg_2, u8 arg_3, u8 arg_4, u8 arg_5) {

	u32 result = ((arg_0 << 1) | arg_1);
	result = (result & ~(1 << 6))  | (arg_5 << 6);
	result = (result & ~(1 << 2))  | (!!(arg_2 & 1) << 2);
	result = (result & ~(1 << 3))  | (!!(arg_2 & 2) << 3);
	result = (result & ~(1 << 4))  | (!!(arg_2 & 4) << 4);
	result = (result & ~(1 << 5))  | (!!(arg_2 & 8) << 5);
	result = (result & ~(1 << 11)) | (!!(arg_2 & 16) << 11);
	result = (result & ~(1 << 12)) | (!!(arg_2 & 32) << 12);
	result = (result & ~(1 << 13)) | (!!(arg_2 & 64) << 13);
	result = (result & ~(1 << 14)) | (!!(arg_2 & 128) << 14);
	result = (result & ~(3 << 7))  | ((arg_4 == 0 ? 0 : arg_3) << 7);
	result = (result & ~(1 << 9))  | (!!(arg_4 != 2) << 9);
	result = (result & ~(1 << 10)) | (!!arg_4 << 10);

	return (u16)result;

}

extern const J3DColorChanInfo j3dDefaultColorChanInfo;

struct J3DColorChan {

	J3DColorChan() {
		this->unknown_00 = calcColorChanID(
			j3dDefaultColorChanInfo.unknown_00,
			j3dDefaultColorChanInfo.unknown_01,
			j3dDefaultColorChanInfo.unknown_02,
			j3dDefaultColorChanInfo.unknown_03,
			j3dDefaultColorChanInfo.unknown_04,
			j3dDefaultColorChanInfo.getUnknown05()
		);  
	}

	u16 unknown_00;
};

struct J3DLightObj {
	JGeometry::TVec3<f32> position;
	JGeometry::TVec3<f32> direction;
	GXColor unknown_18;
	f32 unknown_1C;
	f32 unknown_20;
	f32 unknown_24;
	f32 unknown_28;
	f32 unknown_2C;
	f32 unknown_30;

	void load(u32) const;
};

struct J3DTexCoordInfo {
	u8 tex_gen_type;
	u8 tex_gen_src;
	u8 tex_gen_mtx;
};

extern const J3DTexCoordInfo j3dDefaultTexCoordInfo[8];

struct J3DTexCoord {
	J3DTexCoord()
		: unknown_00(j3dDefaultTexCoordInfo[0].tex_gen_type),
		unknown_01(j3dDefaultTexCoordInfo[0].tex_gen_src),
		unknown_02(j3dDefaultTexCoordInfo[0].tex_gen_mtx) {}

	J3DTexCoord(const J3DTexCoordInfo& info)
		: unknown_00(info.tex_gen_type),
		unknown_01(info.tex_gen_src),
		unknown_02(info.tex_gen_mtx) {}

	u8 unknown_00;
	u8 unknown_01;
	u8 unknown_02;
	u8 unknown_03;
};

struct J3DNBTScaleInfo {
	u8 unknown_00;
	JGeometry::TVec3<f32> unknown_04;
};

extern const J3DNBTScaleInfo j3dDefaultNBTScaleInfo;

struct J3DNBTScale {
	J3DNBTScale() : unknown_00(j3dDefaultNBTScaleInfo.unknown_00), unknown_04(j3dDefaultNBTScaleInfo.unknown_04) {}

	u8 unknown_00;
	JGeometry::TVec3<f32> unknown_04;
};

class J3DTexGenBlock {

	public:

	virtual void reset(J3DTexGenBlock*);
	virtual void calc(f32(*)[4]) = 0;
	virtual s32 countDLSize() = 0;
	virtual void setTexGenNum(const u32*) = 0;
	virtual void setTexGenNum(u32) = 0;
	virtual u32 getTexGenNum() = 0;
	virtual void setTexCoord(u32, const J3DTexCoord*) = 0;
	virtual J3DTexCoord* getTexCoord(u32) = 0;
	virtual void setTexMtx(u32, J3DTexMtx*) = 0;
	virtual void replaceTexMtx(u32, J3DTexMtx*) = 0;
	virtual J3DTexMtx* getTexMtx(u32) = 0;
	virtual void setNBTScale(const J3DNBTScale*) = 0;
	virtual void setNBTScale(J3DNBTScale) = 0;
	virtual J3DNBTScale getNBTScale() = 0;
	virtual ~J3DTexGenBlock();
	virtual void load() = 0;
	virtual void patch() = 0;

};

class J3DTexGenBlockBasic : public J3DTexGenBlock {

	public:

	J3DTexGenBlockBasic() {
		this->initialize();
	}

	void initialize() {
		this->tex_gen_cnt = 0;

		for (int i = 0; i < 8; i++) {
			this->tex_matrices[i] = nullptr;
		}

		this->d_list_offs = 0;      
	}

	virtual void reset(J3DTexGenBlock*);
	virtual void calc(f32(*)[4]);
	virtual s32 countDLSize();
	virtual void setTexGenNum(const u32*);
	virtual void setTexGenNum(u32);
	virtual u32 getTexGenNum();
	virtual void setTexCoord(u32, const J3DTexCoord*);
	virtual J3DTexCoord* getTexCoord(u32);
	virtual void setTexMtx(u32, J3DTexMtx*);
	virtual void replaceTexMtx(u32, J3DTexMtx*);
	virtual J3DTexMtx* getTexMtx(u32);
	virtual void setNBTScale(const J3DNBTScale*);
	virtual void setNBTScale(J3DNBTScale);
	virtual J3DNBTScale getNBTScale();
	virtual ~J3DTexGenBlockBasic();
	virtual void load();
	virtual void patch();

	u32 tex_gen_cnt;
	J3DTexCoord tex_coords[8];
	J3DTexMtx* tex_matrices[8];
	J3DNBTScale nbt_scale;
	u32 d_list_offs;

};

class J3DColorBlock {

	public:

	virtual void reset(J3DColorBlock*);
	virtual s32 countDLSize() = 0;
	virtual s32 getType() = 0;
	virtual void setMatColor(u32, const J3DGXColor*) = 0;
	virtual void setMatColor(u32, J3DGXColor) = 0;
	virtual J3DGXColor* getMatColor(u32) = 0;
	virtual void setAmbColor(u32, const J3DGXColor*) = 0;
	virtual void setAmbColor(u32, J3DGXColor) = 0;
	virtual J3DGXColor* getAmbColor(u32) = 0;
	virtual void setColorChanNum(u8) = 0;
	virtual void setColorChanNum(const u8*) = 0;
	virtual u8 getColorChanNum() const = 0;
	virtual void setColorChan(u32, const J3DColorChan&) = 0;
	virtual void setColorChan(u32, const J3DColorChan*) = 0;
	virtual J3DColorChan* getColorChan(u32) = 0;
	virtual void setLight(u32, J3DLightObj*) = 0;
	virtual void replaceLight(u32, J3DLightObj*) = 0;
	virtual J3DLightObj* getLight(u32) = 0;
	virtual void setCullMode(const u8*) = 0;
	virtual void setCullMode(u8) = 0;
	virtual u8 getCullMode() const = 0;
	virtual ~J3DColorBlock();
	virtual void load() = 0;

};

class J3DColorBlockLightOff : public J3DColorBlock {

	public:

	J3DColorBlockLightOff() {
		this->initialize();
	}

	virtual void reset(J3DColorBlock*);
	virtual s32 countDLSize();
	virtual s32 getType();
	virtual void setMatColor(u32, const J3DGXColor*);
	virtual void setMatColor(u32, J3DGXColor);
	virtual J3DGXColor* getMatColor(u32);
	virtual void setAmbColor(u32, const J3DGXColor*);
	virtual void setAmbColor(u32, J3DGXColor);
	virtual J3DGXColor* getAmbColor(u32);
	virtual void setColorChanNum(u8);
	virtual void setColorChanNum(const u8*);
	virtual u8 getColorChanNum() const;
	virtual void setColorChan(u32, const J3DColorChan&);
	virtual void setColorChan(u32, const J3DColorChan*);
	virtual J3DColorChan* getColorChan(u32);
	virtual void setLight(u32, J3DLightObj*);
	virtual void replaceLight(u32, J3DLightObj*);
	virtual J3DLightObj* getLight(u32);
	virtual void setCullMode(const u8*);
	virtual void setCullMode(u8);
	virtual u8 getCullMode() const;
	virtual ~J3DColorBlockLightOff();
	virtual void load();

	void initialize();

	J3DGXColor material_colors[2];
	u8 color_channel_num;
	J3DColorChan color_channels[4];
	u8 cull_mode;
	//u32 material_color_offset;
	//u32 color_channel_offset;

};

class J3DColorBlockLightOn : public J3DColorBlock {

	public:

	J3DColorBlockLightOn() {
		this->initialize();
	}

	void initialize();

	virtual void reset(J3DColorBlock*);
	virtual s32 countDLSize();
	virtual s32 getType();
	virtual void setMatColor(u32, const J3DGXColor*);
	virtual void setMatColor(u32, J3DGXColor);
	virtual J3DGXColor* getMatColor(u32);
	virtual void setAmbColor(u32, const J3DGXColor*);
	virtual void setAmbColor(u32, J3DGXColor);
	virtual J3DGXColor* getAmbColor(u32);
	virtual void setColorChanNum(u8);
	virtual void setColorChanNum(const u8*);
	virtual u8 getColorChanNum() const;
	virtual void setColorChan(u32, const J3DColorChan&);
	virtual void setColorChan(u32, const J3DColorChan*);
	virtual J3DColorChan* getColorChan(u32);
	virtual void setLight(u32, J3DLightObj*);
	virtual void replaceLight(u32, J3DLightObj*);
	virtual J3DLightObj* getLight(u32);
	virtual void setCullMode(const u8*);
	virtual void setCullMode(u8);
	virtual u8 getCullMode() const;
	virtual ~J3DColorBlockLightOn();
	virtual void load();

	/* 0x04 */ J3DGXColor material_colors[2];
	/* 0x0C */ J3DGXColor ambient_colors[2];
	/* 0x14 */ u8 color_channel_num;
	/* 0x16 */ J3DColorChan color_channels[4];
	/* 0x20 */ J3DLightObj* lights[8];
	/* 0x24 */ u8 cull_mode;
	///* 0x28 */ u32 material_color_offset;
	///* 0x2C */ u32 color_channel_offset;

};

class J3DMaterial {

	public:

	void initialize();
	void addShape(J3DShape*);
	s32 countDLSize();
	void makeDisplayList();
	void load();
	void safeMakeDisplayList();
	void calc(f32(*)[4]);
	void setCurrentMtx();
	void copy(J3DMaterial*);
	void change();
	void newSharedDisplayList(u32);

	static J3DColorBlock* createColorBlock(int);
	static J3DTexGenBlock* createTexGenBlock(int);
	static J3DTevBlock* createTevBlock(int);
	static J3DIndBlock* createIndBlock(int);
	static J3DPEBlock* createPEBlock(int, u32);

};

#endif
