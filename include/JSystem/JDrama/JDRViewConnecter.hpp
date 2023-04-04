#ifndef JSYSTEM_JDRAMA_JDRVIEWCONNECTER_H
#define JSYSTEM_JDRAMA_JDRVIEWCONNECTER_H

#include "JSystem/JDrama/JDRViewObj.hpp"
#include "JSystem/JDrama/JDRFlagT.hpp"

namespace JDrama {

class TViewConnecter : public TViewObj {

	public:

	TViewConnecter(TViewObj*, TViewObj*, TFlagT<u16>, const char*);

	virtual ~TViewConnecter() {}
	virtual void perform(u32, TGraphics*);

	TViewObj* unknown_10;
	TViewObj* unknown_14;
	TFlagT<u16> unknown_18;

};

}

#endif
