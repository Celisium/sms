#ifndef JSYSTEM_JDRAMA_JDRSMJ3DSCN_H
#define JSYSTEM_JDRAMA_JDRSMJ3DSCN_H

#include "JSystem/JDrama/JDRViewObjPtrListT.hpp"

namespace JDrama {

class TSmJ3DScn : public TViewObjPtrListT<TViewObj, TViewObj> {

	public:

	TSmJ3DScn(const char*, s32);

	virtual ~TSmJ3DScn();

};

}

#endif
