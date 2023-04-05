#include "JSystem/JStage/JSGActor.hpp"

namespace JStage {

TActor::~TActor() {}

TEObject TActor::JSGFGetType() const {
	return (TEObject)2;
}

void TActor::JSGGetTranslation(Vec*) const {}
void TActor::JSGSetTranslation(const Vec&) {}
void TActor::JSGGetScaling(Vec*) const {}
void TActor::JSGSetScaling(const Vec&) {}
void TActor::JSGGetRotation(Vec*) const {}
void TActor::JSGSetRotation(const Vec&) {}
u32  TActor::JSGGetShape() const { return -1; }
void TActor::JSGSetShape(u32) {}
u32  TActor::JSGGetAnimation() const { return -1; }
void TActor::JSGSetAnimation(u32) {}
f32  TActor::JSGGetAnimationFrame() const { return 0.0f; }
void TActor::JSGSetAnimationFrame(f32) {}
f32  TActor::JSGGetAnimationFrameMax() const { return 0.0f; }

}
