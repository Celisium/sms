#include "JSystem/JDrama/JDRNameRefGen.hpp"
#include "functions.h"

namespace JDrama {

TNameRefGen* TNameRefGen::instance;

TNameRef* TNameRefGen::load(JSUMemoryInputStream& stream) {

	JSUMemoryInputStream stream2(nullptr, 0);

	if (this->unknown_04 = TNameRef::genObject(stream, stream2)) {
		this->unknown_04->load(stream2);
	}

	return this->unknown_04;
}

TNameRef* TNameRefGen::getNameRef(const char* arg_0) const {

	if (strcmp(arg_0, "GroupObj") == 0) {
		return new TViewObjPtrListT<TViewObj, TViewObj>("<TViewObjPtrListT>");
	} else if (strcmp(arg_0, "SmJ3DScn") == 0) {
		return new TSmJ3DScn("<SmJ3DScn>", 2);
	} else if (strcmp(arg_0, "PolarCamera") == 0) {
		return new TPolarCamera(50.0f, 10000.0f, "<TPolarCamera>");
	} else if (strcmp(arg_0, "SmJ3DAct") == 0) {
		return new TSmJ3DAct("<TSmJ3DAct>");
	} else if (strcmp(arg_0, "SmplChara") == 0) {
		return new TSmplChara("<TCharacter>");
	} else if (strcmp(arg_0, "Light") == 0) {
		return new TLight("<Light>");
	} else if (strcmp(arg_0, "IdxLight") == 0) {
		return new TIdxLight();
	} else if (strcmp(arg_0, "LightAry") == 0) {
		return new TLightAry("<LightAry>");
	} else if (strcmp(arg_0, "AmbColor") == 0) {
		return new TAmbColor();
	} else if (strcmp(arg_0, "AmbAry") == 0) {
		return new TAmbAry("<AmbAry>");
	} else if (strcmp(arg_0, "NameRefGrp") == 0) {
		return new TNameRefPtrListT<TNameRef, TNameRef>("<TNameRefPtrListT>");
	} else if (strcmp(arg_0, "DrawBufObj") == 0) {
		return new TDrawBuf();
	} else if (strcmp(arg_0, "EfbCtrlTex") == 0) {
		return new TEfbCtrlTex("<TEfbCtrlTex>", 0);
	} else if (strcmp(arg_0, "Viewport")) {
		return new TViewport(TRect(0, 0, 640, 528), "<TViewport>");
	}

	return nullptr;

}

}
