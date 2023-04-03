#ifndef JSYSTEM_JSTAGE_JSGAMBIENTLIGHT_H
#define JSYSTEM_JSTAGE_JSGAMBIENTLIGHT_H

#include "dolphin/gx.h"

#include "JSystem/JStage/JSGObject.hpp"

namespace JStage {

class TAmbientLight : public TObject {

	public:

	virtual ~TAmbientLight() = 0;

	virtual s32 JSGFGetType() const;
	virtual GXColor JSGGetColor() const;
	virtual void JSGSetColor(GXColor color);

};

}

#endif
