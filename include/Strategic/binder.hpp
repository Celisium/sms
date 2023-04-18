#ifndef STRATEGIC_BINDER_H
#define STRATEGIC_BINDER_H

class TLiveActor;

class TBinder {

	public:

	TBinder();
	
	virtual ~TBinder();
	
	virtual void bind(TLiveActor*) = 0;

};

#endif
