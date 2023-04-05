#ifndef JSYSTEM_JSTAGE_JSGOBJECT_H
#define JSYSTEM_JSTAGE_JSGOBJECT_H

#include "dolphin/types.h"

namespace JStage {

enum TEObject {};

class TObject {

	public:

	virtual ~TObject() = 0;
	virtual TEObject JSGFGetType() const = 0;
	virtual s32  JSGGetName() const;
	virtual s32  JSGGetFlag() const;
	virtual void JSGSetFlag(u32);
	virtual s32  JSGGetData(u32, void*, u32) const;
	virtual void JSGSetData(u32, const void*, u32);
	virtual void JSGGetParent(TObject**, u32*) const;
	virtual void JSGSetParent(TObject*, u32);
	virtual void JSGSetRelation(bool, TObject*, u32);

};

}

#endif
