#include "JSystem/JDrama/JDRViewport.hpp"

namespace JDrama {

template <typename T> inline TFlagT<T>::TFlagT(T flag) : flag(flag) {}
inline TNameRef::TNameRef(const char* name) { this->mName = name; this->mKeyCode = calcKeyCode(name); }
inline TViewObj::TViewObj(const char* name) : TNameRef(name), unknown_0C(0) {}

TViewport::TViewport(const TRect& arg_0, const char* name)
	: TViewObj(name), unknown_10(arg_0), unknown_20(0) {}

void TViewport::perform(u32 arg_0, TGraphics* arg_1) {

	if (arg_0 & 0x88) {

		arg_1->setViewport(this->unknown_10, 0.0f, 1.0f);

		if ((this->unknown_20 & 0x01) == 0) {

			TRect temp(arg_1->getUnknown44());
			temp.intersect(this->unknown_10);

			arg_1->unknown_64 = temp;

			GXSetScissor(arg_1->unknown_64.left, arg_1->unknown_64.top, arg_1->unknown_64.getWidth(), arg_1->unknown_64.getHeight());

		}
	}
	
}

void TViewport::load(JSUMemoryInputStream& arg_0) {

	this->TNameRef::load(arg_0);

	arg_0.read(&this->unknown_10.left, sizeof(s32));
	arg_0.read(&this->unknown_10.top, sizeof(s32));
	arg_0.read(&this->unknown_10.right, sizeof(s32));
	arg_0.read(&this->unknown_10.bottom, sizeof(s32));

}

}
