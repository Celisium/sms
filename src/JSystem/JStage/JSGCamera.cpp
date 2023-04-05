#include "JSystem/JStage/JSGCamera.hpp"

// TODO: See if there's a better place for this
#define FLT_MAX 340282346638528859811704183484516925440.0f

namespace JStage {

TCamera::~TCamera() {}

TEObject TCamera::JSGFGetType() const {
	return (TEObject)3;
}

TECameraProjection TCamera::JSGGetProjectionType() const {
	return (TECameraProjection)1;
}
void TCamera::JSGSetProjectionType(TECameraProjection) {}

f32  TCamera::JSGGetProjectionNear() const { return 0.0f; }
void TCamera::JSGSetProjectionNear(f32) {}

f32  TCamera::JSGGetProjectionFar() const { return FLT_MAX; }
void TCamera::JSGSetProjectionFar(f32) {}

f32  TCamera::JSGGetProjectionFovy() const { return 0.0f; }
void TCamera::JSGSetProjectionFovy(f32) {}

f32  TCamera::JSGGetProjectionAspect() const { return 0.0f; }
void TCamera::JSGSetProjectionAspect(f32) {}

void TCamera::JSGGetProjectionField(f32*) const {}
void TCamera::JSGSetProjectionField(const f32*) {}

TECameraView TCamera::JSGGetViewType() const {
	return (TECameraView)1;
}
void TCamera::JSGSetViewType(TECameraView) {}

void TCamera::JSGGetViewPosition(Vec*) const {}
void TCamera::JSGSetViewPosition(const Vec&) {}

void TCamera::JSGGetViewUpVector(Vec*) const {}
void TCamera::JSGSetViewUpVector(const Vec&) {}

void TCamera::JSGGetViewTargetPosition(Vec*) const {}
void TCamera::JSGSetViewTargetPosition(const Vec&) {}

f32  TCamera::JSGGetViewRoll() const { return 0.0f; }
void TCamera::JSGSetViewRoll(f32) {}

}
