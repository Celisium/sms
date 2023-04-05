#include "JSystem/JDrama/JDRScreen.hpp"
#include "JSystem/JDrama/JDRViewport.hpp"

void TCamConnecter::perform(u32 arg_0, JDrama::TGraphics* arg_1) {

	if (arg_0 & 0x08) {

		if (this->unknown_10 != nullptr) {
			this->unknown_10->testPerform(0x10, arg_1);
		}

		if (this->unknown_14 != nullptr) {
			this->unknown_14->testPerform(arg_0, arg_1);
		}

		if (this->unknown_10 != nullptr && (this->unknown_18.flag & 0x01)) {
			this->unknown_10->testPerform(0x08, arg_1);
		}

	}

}

namespace JDrama {

template <>
inline TFlagT<u16>::TFlagT(u16 flag) : flag(flag) {}

TScreen::TScreen(const TRect& arg_0, const char* name) : TViewConnecter(nullptr, nullptr, 0, name) {

	this->unknown_10 = new TViewport(arg_0, "<Viewport>");
	this->unknown_14 = new TCamConnecter();

}

void TScreen::assignCamera(TViewObj* arg_0) {
	((TCamConnecter*)this->unknown_14)->unknown_10 = arg_0;
}

void TScreen::assignViewObj(TViewObj* arg_0) {
	((TCamConnecter*)this->unknown_14)->unknown_14 = arg_0;
}

}
