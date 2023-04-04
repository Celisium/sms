#include "JSystem/JStage/JSGAmbientLight.hpp"

namespace JStage {

TAmbientLight::~TAmbientLight() {}

s32 TAmbientLight::JSGFGetType() const { return 4; }

GXColor TAmbientLight::JSGGetColor() const { return (GXColor){255, 255, 255, 255}; }
void TAmbientLight::JSGSetColor(GXColor) {}

}
