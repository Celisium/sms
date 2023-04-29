#ifndef JSYSTEM_JDRAMA_JDRVIEWOBJPTRLISTT_H
#define JSYSTEM_JDRAMA_JDRVIEWOBJPTRLISTT_H

#include "JSystem/JDrama/JDRViewObj.hpp"
#include "JSystem/JGadget/list.hpp"

namespace JDrama {

template <typename T, typename U>
class TViewObjPtrListT : public TViewObj, public JGadget::TList_pointer_void {

	public:

	TViewObjPtrListT(const char* name) : TViewObj(name), JGadget::TList_pointer_void(JGadget::TAllocator<void*>()) {}

	virtual ~TViewObjPtrListT();

	virtual void load(JSUMemoryInputStream&);
	virtual void loadAfter();
	virtual TNameRef* searchF(u16, const char*);
	virtual void perform(u32, TGraphics*);
	virtual void loadSuper(JSUMemoryInputStream&);
	virtual void loadAfterSuper();

};

}

#endif
