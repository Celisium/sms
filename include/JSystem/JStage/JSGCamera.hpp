#ifndef JSYSTEM_JSTAGE_JSGCAMERA_H
#define JSYSTEM_JSTAGE_JSGCAMERA_H

#include "dolphin/vec.h"
#include "JSystem/JStage/JSGObject.hpp"

namespace JStage {

enum TECameraProjection {

};

enum TECameraView {

};

class TCamera : public TObject {
	
	public:

	virtual ~TCamera() = 0;

	virtual TEObject JSGFGetType() const;
	virtual TECameraProjection JSGGetProjectionType() const;
	virtual void JSGSetProjectionType(TECameraProjection);
	virtual f32  JSGGetProjectionNear() const;
	virtual void JSGSetProjectionNear(f32);
	virtual f32  JSGGetProjectionFar() const;
	virtual void JSGSetProjectionFar(f32);
	virtual f32  JSGGetProjectionFovy() const;
	virtual void JSGSetProjectionFovy(f32);
	virtual f32  JSGGetProjectionAspect() const;
	virtual void JSGSetProjectionAspect(f32);
	virtual void JSGGetProjectionField(f32*) const;
	virtual void JSGSetProjectionField(const f32*);
	virtual TECameraView JSGGetViewType() const;
	virtual void JSGSetViewType(TECameraView);
	virtual void JSGGetViewPosition(Vec*) const;
	virtual void JSGSetViewPosition(const Vec&);
	virtual void JSGGetViewUpVector(Vec*) const;
	virtual void JSGSetViewUpVector(const Vec&);
	virtual void JSGGetViewTargetPosition(Vec*) const;
	virtual void JSGSetViewTargetPosition(const Vec&);
	virtual f32 JSGGetViewRoll() const;
	virtual void JSGSetViewRoll(f32);

};

}

#endif
