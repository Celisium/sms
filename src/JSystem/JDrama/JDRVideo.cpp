#include "JSystem/JDrama/JDRVideo.hpp"

#include "dolphin/os.h"
#include "JSystem/JDrama/JDrama.hpp"

namespace JDrama {

TVideo::TVideo() {
	this->unknown_78 = 0;
	this->unknown_7C = 0;
	this->unknown_80 = OSGetTick();
	this->unknown_84 = VIGetRetraceCount() + 1;

	this->unknown_3C.viTVmode = (VITVMode)-1;
	this->unknown_3C.fbWidth = 0;
	this->unknown_3C.efbHeight = 0;
	this->unknown_3C.xfbHeight = 0;
	this->unknown_3C.viXOrigin = 0;
	this->unknown_3C.viYOrigin = 0;
	this->unknown_3C.viWidth = 0;
	this->unknown_3C.viHeight = 0;
	this->unknown_3C.xFBmode = (VIXFBMode)-1;

	this->unknown_00 = this->unknown_3C;
}

void TVideo::setNextXFB(const void* arg_0) {
	this->unknown_7C = arg_0;
}

void TVideo::waitForRetrace(u16 arg_0) {

	while (this->unknown_84 - (s32)VIGetRetraceCount() > 1) {
		VIWaitForRetrace();
	} 

	if (!IsEqualRenderModeVIParams(this->unknown_00, this->unknown_3C)) {

		VIConfigure(&this->unknown_3C);

		if (this->unknown_00.viTVmode != this->unknown_3C.viTVmode) {

			VISetBlack(1);

			this->unknown_78 = 0;

			VIFlush();
			VIWaitForRetrace();

			if (((this->unknown_00.viTVmode & 3) == 2 && (this->unknown_3C.viTVmode & 3) != 2) || ((this->unknown_00.viTVmode & 3) != 2 && (this->unknown_3C.viTVmode & 3) == 2)) {
				for (int i = 0; i < 0x3C; i++) {
					VIWaitForRetrace();
				}
			}

		}
	}

	if (this->unknown_78 != this->unknown_7C) {
		if (this->unknown_7C != nullptr) {
			VISetNextFrameBuffer(const_cast<void*>(this->unknown_7C));
			VISetBlack(0);
		} else {
			VISetBlack(1);
		}
	} 

	this->unknown_00 = this->unknown_3C;
	this->unknown_78 = this->unknown_7C;

	VIFlush();
	VIWaitForRetrace();
	this->unknown_80 = OSGetTick();
	this->unknown_84 = arg_0 + VIGetRetraceCount();
    
}

}
