#include "JSystem/JStage/JSGLight.hpp"

namespace JStage {

TLight::~TLight() {}

// TODO: Determine significance of 5 (probably an enum or something)
s32 TLight::JSGFGetType() const {
	return 5;
}

// TODO: Determine significance of 1 (again, probably an enum)
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
