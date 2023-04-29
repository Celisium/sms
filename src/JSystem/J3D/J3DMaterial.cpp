#include "JSystem/J3D/J3DMaterial.hpp"

#pragma opt_strength_reduction off

extern const GXColor j3dDefaultColInfo;
extern const GXColor j3dDefaultAmbInfo;

void J3DColorBlockLightOff::initialize() {
	this->color_channel_num = 0;
	
	for (int i = 0; i < 2; i++) {
		this->material_colors[i] = j3dDefaultColInfo;
	}

	for (int i = 0; i < 4; i++) {
		this->color_channels[i].unknown_00 = 0xFFFF;
	}
}

void J3DColorBlockLightOn::initialize() {

	this->color_channel_num = 0;

	for (int i = 0; i < 2; i++) {
		this->material_colors[i] = j3dDefaultColInfo;
	}

	for (int i = 0; i < 2; i++) {
		this->ambient_colors[i] = j3dDefaultAmbInfo;
	}

	for (int i = 0; i < 4; i++) {
		this->color_channels[i].unknown_00 = 0xFFFF;
	}

	for (int i = 0; i < 8; i++) {
		this->lights[i] = nullptr;
	}

}

extern const GXColorS10 j3dDefaultTevColor;
extern const GXColor j3dDefaultTevKColor;

void J3DTevBlock2::initialize() {

	for (int i = 0; i < 2; i++) {
		this->tex_indices[i] = 0xFFFF;
	}

	this->stage_num = 1;

	for (int i = 0; i < 2; i++) {
		this->stages[i].unknown_00 = 0xC0 + i * 2;
		this->stages[i].unknown_04 = 0xC1 + i * 2;
	}

	for (int i = 0; i < 2; i++) {
		this->k_color_sels[i] = 0x0C;
	}

	for (int i = 0; i < 2; i++) {
		this->k_alpha_sels[i] = 0x1C;
	}

	for (int i = 0; i < 3; i++) {
		this->colors[i] = j3dDefaultTevColor;
	}

	for (int i = 0; i < 4; i++) {
		this->k_colors[i] = j3dDefaultTevKColor;
	}

}

// For the stack size to match, I had to manually unroll exactly three of the six loops.
// (I chose to unroll the three simplest ones)
void J3DTevBlock4::initialize() {

	int i;

	this->tex_indices[0] = 0xFFFF;
	this->tex_indices[1] = 0xFFFF;
	this->tex_indices[2] = 0xFFFF;
	this->tex_indices[3] = 0xFFFF;

	this->stage_num = 1;

	for (i = 0; i < 4; i++) {
		this->stages[i].unknown_00 = 0xC0 + i * 2;
		this->stages[i].unknown_04 = 0xC1 + i * 2;
	}

	this->k_color_sels[0] = 0x0C;
	this->k_color_sels[1] = 0x0C;
	this->k_color_sels[2] = 0x0C;
	this->k_color_sels[3] = 0x0C;

	this->k_alpha_sels[0] = 0x1C;
	this->k_alpha_sels[1] = 0x1C;
	this->k_alpha_sels[2] = 0x1C;
	this->k_alpha_sels[3] = 0x1C;

	for (i = 0; i < 3; i++) {
		this->colors[i] = j3dDefaultTevColor;
	}

	for (i = 0; i < 4; i++) {
		this->k_colors[i] = j3dDefaultTevKColor;
	}

}

void J3DTevBlock16::initialize() {

	for (int i = 0; i < 8; i++) {
		this->tex_indices[i] = 0xFFFF;
	}

	this->stage_num = 1;

	for (int i = 0; i < 3; i++) {
		this->colors[i] = j3dDefaultTevColor;
	}

	for (int i = 0; i < 4; i++) {
		this->k_colors[i] = j3dDefaultTevKColor;
	}

	for (int i = 0; i < 16; i++) {
		this->k_color_sels[i] = 0x0C;
	}

	for (int i = 0; i < 16; i++) {
		this->k_alpha_sels[i] = 0x1C;
	}

	for (int i = 0; i < 16; i++) {
		this->stages[i].unknown_00 = 0xC0 + (i * 2);
		this->stages[i].unknown_04 = 0xC1 + (i * 2);
	}

}

J3DColorBlock* J3DMaterial::createColorBlock(int arg_0) {
	J3DColorBlock* block = nullptr;
	if (arg_0 == 1) {
		block = new J3DColorBlockLightOff();
	} else {
		block = new J3DColorBlockLightOn();
	}
	return block;
}

J3DTexGenBlock* J3DMaterial::createTexGenBlock(int) {
	return new J3DTexGenBlockBasic();
}

J3DTevBlock* J3DMaterial::createTevBlock(int stage_count) {
	J3DTevBlock* block = nullptr;
	if (stage_count <= 1) {
		block = new J3DTevBlock1();
	} else if (stage_count == 2) {
		block = new J3DTevBlock2();
	} else if (stage_count <= 4) {
		block = new J3DTevBlock4();
	} else if (stage_count <= 16) {
		block = new J3DTevBlock16();
	}
	return block;
}

// These functions feel a bit forced. I tried bitfields but it wasn't even close to a match.

void J3DTevStage::setTevAlphaOp(u8 arg_0, u8 arg_1, u8 arg_2, u8 arg_3, u8 arg_4) {
	this->unknown_05 = (this->unknown_05 & 0xFFFFFFFB) | ((arg_0 << 2) & 0x3FC);
	if (arg_0 <= 1U) {
		this->unknown_05 = (this->unknown_05 & 0xFFFFFFFC) | (u32)arg_1;
		this->unknown_05 = (this->unknown_05 & 0xFFFFFFCF) | ((arg_2 << 4) & 0xFF0);
	} else {
		this->unknown_05 = (this->unknown_05 & 0xFFFFFFCF) | ((arg_0 << 3) & 0x30);
		this->unknown_05 = (this->unknown_05 & 0xFFFFFFFC) | 3;
	}
	this->unknown_05 = (this->unknown_05 & 0xFFFFFFF7) | ((arg_3 << 3) & 0x7F8);
	this->unknown_05 = (this->unknown_05 & 0xFFFFFF3F) | ((arg_4 << 6) & 0x3FC0);
}

void J3DTevStage::setTevColorOp(u8 arg_0, u8 arg_1, u8 arg_2, u8 arg_3, u8 arg_4) {

	this->unknown_01 = (this->unknown_01 & 0xFFFFFFFB) | ((arg_0 << 2) & 0x3FC);
	if (arg_0 <= 1U) {
		this->unknown_01 = (this->unknown_01 & 0xFFFFFFCF) | ((arg_2 << 4) & 0xFF0);
		this->unknown_01 = (this->unknown_01 & 0xFFFFFFFC) | (u32)arg_1;
	} else {
		this->unknown_01 = (this->unknown_01 & 0xFFFFFFCF) | ((arg_0 << 3) & 0x30);
		this->unknown_01 = (this->unknown_01 & 0xFFFFFFFC) | 3;
	}
	this->unknown_01 = (this->unknown_01 & 0xFFFFFFF7) | ((arg_3 << 3) & 0x7F8);
	this->unknown_01 = (this->unknown_01 & 0xFFFFFF3F) | ((arg_4 << 6) & 0x3FC0);

}

J3DIndBlock* J3DMaterial::createIndBlock(int stage_count) {
	if (stage_count != 0) {
		return new J3DIndBlockFull();
	}
	return new J3DIndBlockNull();
}

const J3DColorChanInfo j3dDefaultColorChanInfo = { 0, 0, 0, 2, 2, 0, 0xFF, 0xFF };
