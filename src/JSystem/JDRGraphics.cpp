#include "JSystem/JDRGraphics.hpp"

#include "dolphin/gx.h"

namespace JDrama {

void TGraphics::setViewport(const TRect& viewport, f32 near_z, f32 far_z) {

	this->viewport = viewport;

	if (this->unknown_20) {

		GXSetViewportJitter(this->viewport.left, this->viewport.top, this->viewport.getWidth(), this->viewport.getHeight(), near_z, far_z, VIGetNextField());

	} else {

		GXSetViewport(this->viewport.left, this->viewport.top, this->viewport.getWidth(), this->viewport.getHeight(), near_z, far_z);

	}
    
}

}
