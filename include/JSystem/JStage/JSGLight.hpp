#ifndef JSYSTEM_JSTAGE_JSGLIGHT_H
#define JSYSTEM_JSTATE_JSGLIGHT_H

#include "dolphin/types.h"
#include "dolphin/gx.h"

#include "JSystem/JStage/JSGObject.hpp"

namespace JStage {

// TODO: determine values
enum TELight {};

class TLight : public TObject {

	public:

	virtual ~TLight() = 0;
	virtual s32 JSGFGetType() const;

	virtual TELight JSGGetLightType() const;
	virtual void JSGSetLightType(TELight type);
	virtual void JSGGetPosition(Vec* out_position) const;
	virtual void JSGSetPosition(const Vec& position);
	virtual GXColor JSGGetColor() const;
	virtual void JSGSetColor(GXColor color);
	virtual void JSGGetDistanceAttenuation(f32* out_ref_distance, f32* out_ref_brightness, GXDistAttnFn* out_dist_func) const;
	virtual void JSGSetDistanceAttenuation(f32 ref_distance, f32 ref_brightness, GXDistAttnFn dist_func);
	virtual void JSGGetAngleAttenuation(f32* out_cutoff, GXSpotFn* out_spot_func) const;
	virtual void JSGSetAngleAttenuation(f32 cutoff, GXSpotFn spot_func);
	virtual void JSGGetDirection(Vec* out_direction) const;
	virtual void JSGSetDirection(const Vec& direction);

};

}

#endif
