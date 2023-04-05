#ifndef JSYSTEM_JSTAGE_JSGSYSTEM_H
#define JSYSTEM_JSTAGE_JSGSYSTEM_H

#include "JSystem/JStage/JSGObject.hpp"

namespace JStage {

class TSystem : public TObject {

	public:

	virtual ~TSystem() = 0;

	virtual TEObject JSGFGetType() const;
	virtual TObject* JSGFindObject(const char*, TEObject) const;
	virtual TObject* JSGCreateObject(const char*, TEObject, u32);
	virtual void JSGDestroyObject(TObject*);
	virtual u32 JSGGetSystemData(u32);
	virtual void JSGSetSystemData(u32, u32);

};

}

#endif
