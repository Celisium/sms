#include "JSystem/JStage/JSGLight.hpp"

namespace JStage {

TLight::~TLight() {}

TEObject TLight::JSGFGetType() const {
	return (TEObject)5;
}

TELight TLight::JSGGetLightType() const {
	return (TELight)1;
}

void TLight::JSGSetLightType(TELight) {}

GXColor TLight::JSGGetColor() const {
	return (GXColor){255, 255, 255, 255};
}

void TLight::JSGSetColor(GXColor) {}

void TLight::JSGGetDistanceAttenuation(f32*, f32*, GXDistAttnFn*) const {}
void TLight::JSGSetDistanceAttenuation(f32, f32, GXDistAttnFn) {}

void TLight::JSGGetAngleAttenuation(f32*, GXSpotFn*) const {}
void TLight::JSGSetAngleAttenuation(f32, GXSpotFn) {}

void TLight::JSGGetPosition(Vec*) const {}
void TLight::JSGSetPosition(const Vec&) {};

void TLight::JSGGetDirection(Vec*) const {}
void TLight::JSGSetDirection(const Vec&) {}

}
