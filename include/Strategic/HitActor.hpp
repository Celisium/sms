#ifndef STRATEGIC_HITACTOR_H
#define STRATEGIC_HITACTOR_H

#include "JSystem/JDrama/JDRActor.hpp"

class THitActor : public JDrama::TActor {

	public:

	THitActor(const char*);

	virtual ~THitActor() {}
	
	virtual void perform(u32, JDrama::TGraphics*);

	virtual s32 receiveMessage(THitActor*, u32) { return 0; }

	void initHitActor(u32 actor_type, u16 col_capacity, int arg_2, f32 attack_radius, f32 attack_height, f32 damage_radius, f32 damage_height);
	void calcEntryRadius();

	THitActor** collisions;
	u16 colCount;
	u16 colCapacity;
	u32 actorType; // ActorType
	f32 attackRadius;
	f32 attackHeight;
	f32 damageRadius;
	f32 damageHeight;
	f32 entryRadius;
	int unknown_64;

};

#endif
