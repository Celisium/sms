#include "JSystem/JDrama/JDRViewConnecter.hpp"

namespace JDrama {
	
template <typename T> inline TFlagT<T>::TFlagT(T flag) : flag(flag) {}
inline TNameRef::TNameRef(const char* name) { this->mName = name; this->mKeyCode = calcKeyCode(name); }
inline TViewObj::TViewObj(const char* name) : TNameRef(name), unknown_0C(0) {}

TViewConnecter::TViewConnecter(TViewObj* arg_0, TViewObj* arg_1, TFlagT<u16> arg_2, const char* name) 
	: TViewObj(name), unknown_10(arg_0), unknown_14(arg_1), unknown_18(arg_2) {}

void TViewConnecter::perform(u32 arg_0, TGraphics* arg_1) {

	if (arg_0 & 0x08) {

		if (this->unknown_10 != nullptr) {
			this->unknown_10->testPerform(0x80, arg_1);
		}

		if (this->unknown_14 != nullptr) {
			this->unknown_14->testPerform(arg_0, arg_1);
		}

		if (this->unknown_10 != nullptr && (this->unknown_18.flag & 0x1)) {
			this->unknown_10->testPerform(0x08, arg_1);
		}
		
	}

}

}
