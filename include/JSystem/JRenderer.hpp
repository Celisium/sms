#ifndef JSYSTEM_JRENDERER_H
#define JSYSTEM_JRENDERER_H

#include "dolphin/gx.h"
#include "dolphin/types.h"

void J3DGDLoadTexMtxImm(f32 mtxPtr[][4], u32, GXTexMtxType);
void J3DGDSetChanAmbColor(GXChannelID, GXColor);
void J3DGDSetChanMatColor(GXChannelID, GXColor);
void J3DGDSetChanCtrl(GXChannelID, GXBool, GXColorSrc, GXColorSrc, u32, GXDiffuseFn, GXAttnFn);
void J3DGDSetTexCoordGen(GXTexCoordID, GXTexGenType, GXTexGenSrc, GXBool, u32);
void J3DGDSetFog(GXFogType, f32, f32, f32, f32, GXColor);
void J3DGDSetTexCoordScale2(GXTexCoordID, u16, GXBool, GXBool, u16, GXBool, GXBool);
void J3DGDSetTexImgAttr(GXTexMapID, u16, u16, GXTexFmt);
void J3DGDSetTexImgPtr(GXTexMapID, void*);
void J3DGDSetTexTlut(GXTexMapID, u32, GXTlutFmt);
void J3DGDLoadTlut(void*, u32, GXTlutSize);
void J3DGDSetTevKColor(GXTevKColorID, GXColor);
void JRNLoadCurrentMtx(u32, u32, u32, u32, u32, u32, u32, u32, u32);
void JRNSetTevIndirect(GXTevStageID, GXIndTexStageID, GXIndTexFormat, GXIndTexBiasSel, GXIndTexMtxID, GXIndTexWrap, GXIndTexWrap, GXBool, GXBool, GXIndTexAlphaSel);
void JRNSetIndTexMtx(GXIndTexMtxID, f32 offset[][3], s8);
void JRNSetIndTexCoordScale(GXIndTexStageID, GXIndTexScale, GXIndTexScale, GXIndTexScale, GXIndTexScale);
void JRNSetIndTexOrder(u32, GXTexCoordID, GXTexMapID, GXTexCoordID, GXTexMapID, GXTexCoordID, GXTexMapID, GXTexCoordID, GXTexMapID);
void JRNLoadTexCached(GXTexMapID, u32, GXTexCacheSize, u32, GXTexCacheSize);
void JRNISetTevOrder(GXTevStageID, GXTexCoordID, GXTexMapID, GXChannelID, GXTexCoordID, GXTexMapID, GXChannelID);
void JRNISetTevColorS10(GXTevRegID, GXColorS10);
void JRNISetFogRangeAdj(GXBool, u16, GXFogAdjTable*);

#endif
