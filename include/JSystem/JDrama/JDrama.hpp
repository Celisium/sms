#ifndef JSYSTEM_JDRAMA_H
#define JSYSTEM_JDRAMA_H

#include "dolphin.h"

namespace JDrama {

// JDRRenderMode
bool IsEqualRenderModeVIParams(const GXRenderModeObj&, const GXRenderModeObj&);
bool IsRenderModeHalfAspectRatio(const GXRenderModeObj&);
f32 GetRenderModeYScale(const GXRenderModeObj&);
void CalcRenderModeXFBHeight(GXRenderModeObj*, u16);
void CalcRenderModeVIXOrigin(GXRenderModeObj*);
void CalcRenderModeVIYOrigin(GXRenderModeObj*);
void CopyRenderModeSamplePattern(GXRenderModeObj*, const u8(*)[2]);
void CopyRenderModeVFilter(GXRenderModeObj*, const u8* s);

// JDRResolution
s32 GetVIWidthMax();
s32 GetVIHeightMax();

}

#endif
