#include "JSystem/JStage/JSGAmbientLight.hpp"

namespace JStage {

TAmbientLight::~TAmbientLight() {}

TEObject TAmbientLight::JSGFGetType() const {
	return (TEObject)4;
}

GXColor TAmbientLight::JSGGetColor() const { return (GXColor){255, 255, 255, 255}; }
void TAmbientLight::JSGSetColor(GXColor) {}

}
