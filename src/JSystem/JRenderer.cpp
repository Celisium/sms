#include "JSystem/JRenderer.hpp"

#include "dolphin/gd.h"

u8 JRNTexImage1Ids[8] = {
	0x8C, 0x8D, 0x8E, 0x8F,
	0xAC, 0xAD, 0xAE, 0xAF
};

u8 JRNTexImage2Ids[8] = {
	0x90, 0x91, 0x92, 0x93,
	0xB0, 0xB1, 0xB2, 0xB3,
};

inline void GDWrite_u16_raw(u16 value) {
	__GDWrite((value >> 8));
	__GDWrite((value >> 0) & 0xFF);
}

inline void GDWrite_u32_raw(u32 value) {
	__GDWrite((value >> 24) & 0xFF);
	__GDWrite((value >> 16) & 0xFF);
	__GDWrite((value >>  8) & 0xFF);
	__GDWrite((value >>  0) & 0xFF);
}

inline void GDWrite_f32_raw(f32 value) {

	// BUG: This relies on undefined behaviour
	// For non-matching builds, this should be replaced with memcpy.
	union float_to_uint {
		float f;
		u32 u;
	};

	float_to_uint fu;
	fu.f = value;

	__GDWrite((fu.u >> 24) & 0xFF);
	__GDWrite((fu.u >> 16) & 0xFF);
	__GDWrite((fu.u >>  8) & 0xFF);
	__GDWrite((fu.u >>  0) & 0xFF);

}

inline void GDWriteBPCmd_raw(u32 value) {
	__GDWrite(0x61);
	GDWrite_u32_raw(value);
}

inline void GDWriteXFCmd_raw(u16 addr, u32 value) {
	__GDWrite(0x10);
	GDWrite_u16_raw(0);
	GDWrite_u16_raw(addr);
	GDWrite_u32_raw(value);
}

inline void GDWriteXFCmdHdr_raw(u16 addr, u8 size) {
	__GDWrite(0x10);
	GDWrite_u16_raw(size - 1);
	GDWrite_u16_raw(addr);
}

void J3DGDLoadTexMtxImm(f32 mtxPtr[][4], u32 id, GXTexMtxType type) {

	u16 addr;
	u8 size;

	if (id >= 0x40) {
		addr = ((id - 0x40) << 2) + 0x500;
		size = 12;
	} else {
		addr = (id << 2) & 0xFFFC;
		size = (type == GX_MTX2x4) ? 8 : 12;
	}

	GDOverflowCheck(0x25);

	GDWriteXFCmdHdr_raw(addr, size);

	GDWrite_f32_raw(mtxPtr[0][0]);
	GDWrite_f32_raw(mtxPtr[0][1]);
	GDWrite_f32_raw(mtxPtr[0][2]);
	GDWrite_f32_raw(mtxPtr[0][3]);

	GDWrite_f32_raw(mtxPtr[1][0]);
	GDWrite_f32_raw(mtxPtr[1][1]);
	GDWrite_f32_raw(mtxPtr[1][2]);
	GDWrite_f32_raw(mtxPtr[1][3]);

	if (type == GX_MTX3x4) {
		GDOverflowCheck(0x10);

		GDWrite_f32_raw(mtxPtr[2][0]);
		GDWrite_f32_raw(mtxPtr[2][1]);
		GDWrite_f32_raw(mtxPtr[2][2]);
		GDWrite_f32_raw(mtxPtr[2][3]);
	}

}

void J3DGDSetChanAmbColor(GXChannelID chan, GXColor amb_color) {
	u32 amb_color_u32 = (amb_color.r << 24) | (amb_color.g << 16) | (amb_color.b << 8) | (amb_color.a);
	GDOverflowCheck(9);
	GDWriteXFCmd_raw(0x100A + (chan & 1), amb_color_u32);
}

void J3DGDSetChanMatColor(GXChannelID chan, GXColor mat_color) {
	u32 mat_color_u32 = (mat_color.r << 24) | (mat_color.g << 16) | (mat_color.b << 8) | (mat_color.a);
	GDOverflowCheck(9);
	GDWriteXFCmd_raw(0x100C + (chan & 1), mat_color_u32);
}

void J3DGDSetChanCtrl(GXChannelID chan, GXBool enable, GXColorSrc amb_src, GXColorSrc mat_src, u32 light_mask, GXDiffuseFn diff_fn, GXAttnFn attn_fn) {

	u32 value = mat_src
	          | (enable << 1)
	          | ((light_mask & 0x0F) << 2)
	          | (amb_src << 6)
	          | ((attn_fn == GX_AF_SPEC ? GX_DF_NONE : diff_fn) << 7)
	          | ((attn_fn != GX_AF_NONE) << 9)
	          | ((attn_fn != GX_AF_SPEC) << 10)
	          | (((light_mask >> 4) & 0x0F) << 11);

	GDOverflowCheck(9);
	GDWriteXFCmd_raw(0x100E + (chan & 3), value);

	if (chan == GX_COLOR0A0 || chan == GX_COLOR1A1) {
		GDOverflowCheck(9);
		GDWriteXFCmd_raw(0x100E + (chan - 2), value);
	}

}

void J3DGDSetTexCoordGen(GXTexCoordID dst_coord, GXTexGenType func, GXTexGenSrc src_param, GXBool normalize, u32 postmtx) {

	u32 form          = 0;
	u32 tex_gen_type;
	u32 projection    = 0;
	u32 source_row    = 5;
	u32 emboss_source = 5;
	u32 emboss_light  = 0;

	switch (src_param) {
		case GX_TG_POS:     source_row =  0; form = 1; break;
		case GX_TG_NRM:     source_row =  1; form = 1; break;
		case GX_TG_BINRM:   source_row =  3; form = 1; break;
		case GX_TG_TANGENT: source_row =  4; form = 1; break;
		case GX_TG_COLOR0:  source_row =  2; break;
		case GX_TG_COLOR1:  source_row =  2; break;
		case GX_TG_TEX0:    source_row =  5; break;
		case GX_TG_TEX1:    source_row =  6; break;
		case GX_TG_TEX2:    source_row =  7; break;
		case GX_TG_TEX3:    source_row =  8; break;
		case GX_TG_TEX4:    source_row =  9; break;
		case GX_TG_TEX5:    source_row = 10; break;
		case GX_TG_TEX6:    source_row = 11; break;
		case GX_TG_TEX7:    source_row = 12; break;

		case GX_TG_TEXCOORD0: emboss_source = 0; break;
		case GX_TG_TEXCOORD1: emboss_source = 1; break;
		case GX_TG_TEXCOORD2: emboss_source = 2; break;
		case GX_TG_TEXCOORD3: emboss_source = 3; break;
		case GX_TG_TEXCOORD4: emboss_source = 4; break;
		case GX_TG_TEXCOORD5: emboss_source = 5; break;
		case GX_TG_TEXCOORD6: emboss_source = 6; break;
	}

	switch (func) {
		case GX_TG_MTX2x4:
			tex_gen_type = 0;
			break;
		case GX_TG_MTX3x4:
			tex_gen_type = 0;
			projection = 1;
			break;
		case GX_TG_BUMP0:
		case GX_TG_BUMP1:
		case GX_TG_BUMP2:
		case GX_TG_BUMP3:
		case GX_TG_BUMP4:
		case GX_TG_BUMP5:
		case GX_TG_BUMP6:
		case GX_TG_BUMP7:
			tex_gen_type = 1;
			emboss_light = func - GX_TG_BUMP0;
			break;
		case GX_TG_SRTG:
			if (src_param == GX_TG_COLOR0) {
				tex_gen_type = 2;    
			} else {
				tex_gen_type = 3;
			}
			break;
	}

	GDOverflowCheck(18);

	GDWriteXFCmd_raw(dst_coord + 0x1040,
		(projection << 1)
		| (form << 2)
		| (tex_gen_type << 4)
		| (source_row << 7)
		| (emboss_source << 12)
		| (emboss_light << 15)
	);
	GDWriteXFCmd_raw(dst_coord + 0x1050, (postmtx - 0x40) | (normalize << 8));

}

void J3DGDSetFog(GXFogType type, f32 startz, f32 endz, f32 nearz, f32 farz, GXColor color) {

	f32 a;
	f32 b;
	f32 c;

	if ((farz == nearz) || (endz == startz)) {
		a = 0.0f;
		b = 0.5f;
		c = 0.0f;
	} else {
		a = (farz * nearz) / (((farz - nearz) * (endz - startz)));
		b = farz / (farz - nearz);
		c = startz / (endz - startz);
	}

	u32 b_exponent = 1;

	while (b > 1.0) {
		b /= 2;
		b_exponent++;
	}

	while (b > 0 && b < 0.5) {
		b *= 2;
		b_exponent--;
	}

	f32 a_f = a / (f32)(1 << b_exponent);
	u32 b_m = (8388638.0f * b);

	// BUG: This relies on undefined behaviour
	// For non-matching builds, this should be replaced with memcpy.
	u32 bit_a_f = *(u32*)&a_f;
	u32 bit_c = *(u32*)&c;

	GDOverflowCheck(25);

	GDWriteBPCmd_raw((bit_a_f >> 12) | 0xEE000000);
	GDWriteBPCmd_raw(b_m | 0xEF000000);
	GDWriteBPCmd_raw(b_exponent | 0xF0000000);
	GDWriteBPCmd_raw((bit_c >> 12) | ((type << 21) & ~0xFFFFF) | 0xF1000000);
	GDWriteBPCmd_raw((color.b) | (color.g << 8) | (color.r << 16) | 0xF2000000);

}

void J3DGDSetTexCoordScale2(GXTexCoordID coord, u16 s_scale, GXBool s_bias, GXBool s_wrap, u16 t_scale, GXBool t_bias, GXBool t_wrap) {
	GDOverflowCheck(15);
	GDWriteBPCmd_raw(0xFE03FFFF);
	GDWriteBPCmd_raw((s_scale - 1) | (s_bias << 16) | (s_wrap << 17) | ((coord * 2 + 0x30) << 24));
	GDWriteBPCmd_raw((t_scale - 1) | (t_bias << 16) | (t_wrap << 17) | ((coord * 2 + 0x31) << 24));
}

extern u8 GXTexImage0Ids[8];

void J3DGDSetTexImgAttr(GXTexMapID id, u16 width, u16 height, GXTexFmt format) {
	u32 value = (width - 1) | ((height - 1) << 10) | (format << 20) | (GXTexImage0Ids[id] << 24);
	GDOverflowCheck(5);
	GDWriteBPCmd_raw(value);
}

extern u8 GXTexImage3Ids[8];

void J3DGDSetTexImgPtr(GXTexMapID id, void* image_ptr) {
	// TODO: replace with OSCachedToPhysical macro
	u32 value = (((u32)image_ptr - 0x80000000) >> 5) | (GXTexImage3Ids[id] << 24);
	GDOverflowCheck(5);
	GDWriteBPCmd_raw(value);
}

extern u8 GXTexTlutIds[8];

void J3DGDSetTexTlut(GXTexMapID id, u32 tmem_addr, GXTlutFmt format) {
	u32 value = ((tmem_addr + 0xFFF80000) >> 9) | (format << 10) | (GXTexTlutIds[id] << 24);
	GDOverflowCheck(5);
	GDWriteBPCmd_raw(value);
}

void J3DGDLoadTlut(void* tlut_ptr, u32 tmem_addr, GXTlutSize size) {

	GDOverflowCheck(5);
	GDWriteBPCmd_raw(0xFEFFFF00);

	GDOverflowCheck(5);
	GDWriteBPCmd_raw(0x0F000000);

	GDOverflowCheck(5);
	GDWriteBPCmd_raw((((u32)tlut_ptr + 0x80000000) >> 5) | 0x64000000);

	GDOverflowCheck(5);
	GDWriteBPCmd_raw(((tmem_addr + 0xFFF80000) >> 9) | (size << 10) | 0x65000000);

	GDOverflowCheck(5);
	GDWriteBPCmd_raw(0xFEFFFF00);

	GDOverflowCheck(5);
	GDWriteBPCmd_raw(0x0F000000);

}

void J3DGDSetTevKColor(GXTevKColorID id, GXColor color) {

	u32 value_1 = (color.r) | (color.a << 12) | 0x800000 | ((id * 2 + 0xE0) << 24);
	u32 value_2 = (color.b) | (color.g << 12) | 0x800000 | ((id * 2 + 0xE1) << 24);

	GDOverflowCheck(10);

	GDWriteBPCmd_raw(value_1);
	GDWriteBPCmd_raw(value_2);

}

void JRNLoadCurrentMtx(u32 arg_0, u32 arg_1, u32 arg_2, u32 arg_3, u32 arg_4, u32 arg_5, u32 arg_6, u32 arg_7, u32 arg_8) {

	u32 value_1 = arg_0 | (arg_1 << 6) | (arg_2 << 12) | (arg_3 << 18) | (arg_4 << 24);
	u32 value_2 = arg_5 | (arg_6 << 6) | (arg_7 << 12) | (arg_8 << 18);

	// TODO: See if there's a better way to refer to memory-mapped registers.
	*(volatile u8*)0xCC008000  = 8;
	*(volatile u8*)0xCC008000  = 0x30;
	*(volatile u32*)0xCC008000 = value_1;
	*(volatile u8*)0xCC008000  = 8;
	*(volatile u8*)0xCC008000  = 0x40;
	*(volatile u32*)0xCC008000 = value_2;
	*(volatile u8*)0xCC008000  = 0x10;
	*(volatile u16*)0xCC008000 = 1;
	*(volatile u16*)0xCC008000 = 0x1018;
	*(volatile u32*)0xCC008000 = value_1;
	*(volatile u32*)0xCC008000 = value_2;

}

void JRNSetTevIndirect(GXTevStageID tev_stage, GXIndTexStageID ind_stage, GXIndTexFormat format,
	GXIndTexBiasSel bias_sel, GXIndTexMtxID matrix_sel, GXIndTexWrap wrap_s, GXIndTexWrap wrap_t,
	GXBool add_prev, GXBool utc_lod, GXIndTexAlphaSel alpha_sel) {

	GDOverflowCheck(5);

	GDWriteBPCmd_raw(
		ind_stage
		| (format << 2)
		| (bias_sel << 4)
		| (alpha_sel << 7)
		| (matrix_sel << 9)
		| (wrap_s << 13)
		| (wrap_t << 16)
		| (utc_lod << 19)
		| (add_prev << 20)
		| ((tev_stage + 0x10) << 24)
	);
}

#ifdef MATCHING
__declspec(section ".sdata2") static f32 literal_697 = 1024.0f;
// TODO: I've been able to get this one down to a couple of reg swaps.
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JRNSetIndTexMtx(GXIndTexMtxID, f32(*)[3], s8) {
	nofralloc
#include "not_matched/JRNSetIndTexMtx.inc.s"
}
#pragma pop
#else
void JRNSetIndTexMtx(GXIndTexMtxID mtx_id, f32 offset[2][3], s8 scale_exp) {

	s32 ma;
	s32 mb;
	s32 mc;
	s32 md;
	s32 me;
	s32 mf;
	s32 temp_ma;
	s32 temp_mb;
	s32 temp_mc;
	s32 temp_md;
	s32 temp_me;
	s32 temp_mf;

	u32 id;

	switch (mtx_id) {

		case 0x1:
		case 0x2:
		case 0x3:
			id = mtx_id - 1;
			break;

		case 0x5:
		case 0x6:
		case 0x7:
			id = mtx_id - 5;
			break;

		case 0x9:
		case 0xA:
		case 0xB:
			id = mtx_id - 9;
			break;

		default:
			id = 0;
			break;
	}

	scale_exp += 0x11;

	ma = ((s32)((f32)(1 << 10) * offset[0][0]) & 0x7FF);
	mb = ((s32)((f32)(1 << 10) * offset[1][0]) & 0x7FF);
	mc = ((s32)((f32)(1 << 10) * offset[0][1]) & 0x7FF);
	md = ((s32)((f32)(1 << 10) * offset[1][1]) & 0x7FF);
	me = ((s32)((f32)(1 << 10) * offset[0][2]) & 0x7FF);
	mf = ((s32)((f32)(1 << 10) * offset[1][2]) & 0x7FF);

	GDOverflowCheck(15);

	GDWriteBPCmd_raw(ma | (mb << 11) | (((scale_exp >> 0) & 3) << 22) | ((id * 3 + 6) << 24));
	GDWriteBPCmd_raw(mc | (md << 11) | (((scale_exp >> 2) & 3) << 22) | ((id * 3 + 7) << 24));
	GDWriteBPCmd_raw(me | (mf << 11) | (((scale_exp >> 4) & 3) << 22) | ((id * 3 + 8) << 24));

}
#endif

void JRNSetIndTexCoordScale(GXIndTexStageID evenStage, GXIndTexScale scaleS0, GXIndTexScale scaleT0, GXIndTexScale scaleS1, GXIndTexScale scaleT1) {
	GDOverflowCheck(5);
	GDWriteBPCmd_raw(
		(scaleS0)
		| (scaleT0 << 4)
		| (scaleS1 << 8)
		| (scaleT1 << 12)
		| (((evenStage >> 1) + 0x25) << 24)
	);
}

void JRNSetIndTexOrder(u32 arg_0, GXTexCoordID texCoord0, GXTexMapID texMap0, GXTexCoordID texCoord1,
	GXTexMapID texMap1, GXTexCoordID texCoord2, GXTexMapID texMap2, GXTexCoordID texCoord3, GXTexMapID texMap3) {

	GDOverflowCheck(5);

	GDWriteBPCmd_raw(
		(texMap0 & 7)
		| ((texCoord0 & 7) << 3)
		| ((texMap1 & 7)   << 6)
		| ((texCoord1 & 7) << 9)
		| ((texMap2 & 7)   << 12)
		| ((texCoord2 & 7) << 15)
		| ((texMap3 & 7)   << 18)
		| ((texCoord3 & 7) << 21)
		| 0x27000000
	);

	u32 var_r24 = 0;

	// the legendary for-switch pattern
	for (int i = 0; i < arg_0; i++) {
		switch (i) {
			case 0:
				var_r24 |= 1 << (texMap0 & 7);
				break;
			case 1:
				var_r24 |= 1 << (texMap1 & 7);
				break;
			case 2:
				var_r24 |= 1 << (texMap2 & 7);
				break;
			case 3:
				var_r24 |= 1 << (texMap3 & 7);
				break;
		}
	}

	GDOverflowCheck(5);
	GDWriteBPCmd_raw(var_r24 | 0x0F000000);
    
}

void JRNLoadTexCached(GXTexMapID id, u32 tmem_even, GXTexCacheSize size_even, u32 tmem_odd, GXTexCacheSize size_odd) {

	u32 value_1 = (tmem_even >> 5) | ((size_even + 3) << 15) | ((size_even + 3) << 18) | (JRNTexImage1Ids[id] << 24);
	*(volatile u8*)0xCC008000  = 0x61;
	*(volatile u32*)0xCC008000 = value_1;

	if (size_odd != 3 && tmem_odd < 0x100000) {
		u32 value_2 = (tmem_odd >> 5) | ((size_odd + 3) << 15) | ((size_odd + 3) << 18) | (JRNTexImage2Ids[id] << 24);
		*(volatile u8*)0xCC008000  = 0x61;
		*(volatile u32*)0xCC008000 = value_2;
	}

}

void JRNISetTevOrder(GXTevStageID evenStage, GXTexCoordID coord0, GXTexMapID map0, GXChannelID color0, GXTexCoordID coord1, GXTexMapID map1, GXChannelID color1) {

	static u8 c2r[] = {
		0, 1, 0, 1,
		0, 1, 7, 5,
		6, 0, 0, 0,
		0, 0, 0, 7
	};

	if (coord0 >= 8) {
		coord0 = (GXTexCoordID)0;
	}

	if (coord1 >= 8) {
		coord1 = (GXTexCoordID)0;
	}

	u32 value = (map0 & 7)
		| (coord0 << 3)
		| ((map0 != GX_TEXMAP_NULL && !(map0 & GX_TEX_DISABLE)) << 6)
		| ((c2r[color0 & 0xF]) << 7)
		| ((map1 & 7) << 12)
		| (coord1 << 15)
		| ((map1 != GX_TEXMAP_NULL && !(map1 & GX_TEX_DISABLE)) << 18)
		| ((c2r[color1 & 0xF]) << 19)
		| ((evenStage / 2 + 0x28) << 24);

	GDOverflowCheck(5);
	GDWriteBPCmd_raw(value);

}

void JRNISetTevColorS10(GXTevRegID id, GXColorS10 color) {

	u32 value_1 = (color.r & 0x7FF) | ((color.a & 0x7FF) << 12) | ((id * 2 + 0xE0) << 24);
	u32 value_2 = (color.b & 0x7FF) | ((color.g & 0x7FF) << 12) | ((id * 2 + 0xE1) << 24);

	GDOverflowCheck(20);

	GDWriteBPCmd_raw(value_1);
	GDWriteBPCmd_raw(value_2);
	GDWriteBPCmd_raw(value_2);
	GDWriteBPCmd_raw(value_2);

}

#pragma opt_strength_reduction off

void JRNISetFogRangeAdj(GXBool enable, u16 center, GXFogAdjTable* table) {

	if (enable) {
		for (int i = 0; i < 10; i += 2) {
			u32 value = ((i / 2 + 0xE9) << 24) | (table->r[i + 1] << 12) | (table->r[i]);
			GDOverflowCheck(5);
			GDWriteBPCmd_raw(value);
		}
	}

	u32 value =  0xE8000000 | (center + 0x156) | (enable << 10);

	GDOverflowCheck(5);
	GDWriteBPCmd_raw(value);

}
