#ifndef STRATEGIC_HITACTOR_H
#define STRATEGIC_HITACTOR_H

#include "JSystem/JDrama/JDRActor.hpp"

class THitActor : public JDrama::TActor {

	public:

	THitActor(); // TODO: this probably doesn't exist
	THitActor(const char*);

	THitActor** collisions;
	u16 colCount;
	u16 colCapacity;
	void* actorType; // ActorType
	f32 attackRadius;
	f32 attackHeight;
	f32 damageRadius;
	f32 damageHeight;
	f32 entryRadius;
	u32 unknown_64;

};

#endif
