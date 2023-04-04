#ifndef JSYSTEM_JSTAGE_JSGACTOR_H
#define JSYSTEM_JSTAGE_JSGACTOR_H

#include "dolphin/vec.h"

#include "JSystem/JStage/JSGObject.hpp"

namespace JStage {

class TActor : public TObject {

	public:

	virtual ~TActor() = 0;

	virtual s32 JSGFGetType() const;

	virtual void JSGGetTranslation(Vec*) const;
	virtual void JSGSetTranslation(const Vec&);
	virtual void JSGGetScaling(Vec*) const;
	virtual void JSGSetScaling(const Vec&);
	virtual void JSGGetRotation(Vec*) const;
	virtual void JSGSetRotation(const Vec&);
	virtual u32  JSGGetShape() const;
	virtual void JSGSetShape(u32);
	virtual u32  JSGGetAnimation() const;
	virtual void JSGSetAnimation(u32);
	virtual f32  JSGGetAnimationFrame() const;
	virtual void JSGSetAnimationFrame(f32);
	virtual f32  JSGGetAnimationFrameMax() const;

};

}

#endif
