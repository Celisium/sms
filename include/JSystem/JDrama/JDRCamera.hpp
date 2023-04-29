#ifndef JSYSTEM_JDRAMA_JDRCAMERA_H
#define JSYSTEM_JDRAMA_JDRCAMERA_H

#include "JSystem/JDrama/JDRPlacement.hpp"
#include "JSystem/JStage/JSGCamera.hpp"

namespace JDrama {

class TCamera : public TPlacement, public JStage::TCamera {

	public:

	TCamera(f32 arg_0, f32 arg_1, const char* name) : unknown_24(0), unknown_28(arg_0), unknown_2C(arg_1), TPlacement(name) {}

	virtual ~TCamera();

	virtual s32 getType() const;

	virtual s32  JSGGetFlag() const;
	virtual void JSGSetFlag(u32);

	virtual f32  JSGGetProjectionNear() const;
	virtual void JSGSetProjectionNear(f32);
	virtual f32  JSGGetProjectionFar() const;
	virtual void JSGSetProjectionFar(f32);

	u16 unknown_24;
	f32 unknown_28;
	f32 unknown_2C;

};

#define POLAR_CAMERA_ASPECT_RATIO 1.33333337306976318359375f

class TPolarCamera : public TCamera {

	public:

	TPolarCamera(f32 arg_0, f32 arg_1, const char* name) : TCamera(arg_0, arg_1, name),
		fov_y(45.0f),
		aspect_ratio(POLAR_CAMERA_ASPECT_RATIO),
		unknown_38(0.0f),
		unknown_3C(0.0f),
		unknown_40(0.0f),
		unknown_44(1200.0f) {}

	virtual ~TPolarCamera();

	virtual void load(JSUMemoryInputStream& stream);
	virtual void perform(u32, TGraphics*);

	virtual JStage::TECameraProjection JSGGetProjectionType() const;
	virtual void JSGSetProjectionType(JStage::TECameraProjection);
	virtual f32  JSGGetProjectionFovy() const;
	virtual void JSGSetProjectionFovy(f32);
	virtual f32  JSGGetProjectionAspect() const;
	virtual void JSGSetProjectionAspect(f32);

	f32 fov_y;
	f32 aspect_ratio;
	f32 unknown_38;
	f32 unknown_3C;
	f32 unknown_40;
	f32 unknown_44;

};

}

#endif
