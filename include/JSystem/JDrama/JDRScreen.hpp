#ifndef JSYSTEM_JDRAMA_JDRSCREEN_H
#define JSYSTEM_JDRAMA_JDRSCREEN_H

#include "JSystem/JDrama/JDRViewConnecter.hpp"

class TCamConnecter : public JDrama::TViewConnecter {

	public:

	TCamConnecter() : TViewConnecter(nullptr, nullptr, 0, "<CamConnecter>") {}

	virtual ~TCamConnecter() {}
	virtual void perform(u32, JDrama::TGraphics*);

};

namespace JDrama {

class TScreen : public TViewConnecter {

	public:

	TScreen(const TRect&, const char*);

	virtual ~TScreen() {}
	
	void assignCamera(TViewObj*);
	void assignViewObj(TViewObj*);

};

}

#endif
