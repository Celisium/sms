#ifndef JSYSTEM_JDRAMA_JDRVIEWOBJPTRLISTT_H
#define JSYSTEM_JDRAMA_JDRVIEWOBJPTRLISTT_H

#include "JSystem/JDrama/JDRViewObj.hpp"

namespace JDrama {

template <typename T, typename U>
class TViewObjPtrListT : public TViewObj {

	public:

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
