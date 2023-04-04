#include "JSystem/JDrama/JDRViewObj.hpp"

namespace JDrama {

void TViewObj::testPerform(u32 arg0, TGraphics* arg1) {

	if ((arg0 & 0x1000) && (this->unknown_0C & 0x1000)) {
		arg0 &= 0xFFFFFFFE;
	}
	if ((arg0 & 0x2000) && (this->unknown_0C & 0x2000)) {
		arg0 &= 0xFFFFFFFE;
	}

	arg0 &= ~this->unknown_0C;
	if (arg0) {
		this->perform(arg0, arg1);
	}
}

}
