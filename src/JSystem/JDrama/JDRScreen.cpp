#include "JSystem/JDrama/JDRScreen.hpp"

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

}
