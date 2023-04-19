#include "Strategic/HitActor.hpp"

inline JDrama::TViewObj::TViewObj(const char* name) : TNameRef(name), unknown_0C(0) {}

THitActor::THitActor(const char* name)
	: TActor(name),
	collisions(nullptr),
	colCount(0),
	colCapacity(0),
	actorType(0),
	attackRadius(0.0f),
	attackHeight(0.0f),
	damageRadius(0.0f),
	damageHeight(0.0f),
	entryRadius(0.0f),
	unknown_64(0) {}

#pragma push
#pragma opt_strength_reduction off
void THitActor::initHitActor(u32 actor_type, u16 col_capacity, int arg_2, f32 attack_radius, f32 attack_height, f32 damage_radius, f32 damage_height) {

	this->actorType = actor_type;
	this->colCapacity = col_capacity;

	this->collisions = new THitActor*[this->colCapacity];
	
	for (int i = 0; i < this->colCapacity; i++) {
		this->collisions[i] = nullptr;
	}

	this->unknown_64 |= arg_2;

	this->attackRadius = attack_radius;
	this->attackHeight = attack_height;
	this->damageRadius = damage_radius;
	this->damageHeight = damage_height;

	this->calcEntryRadius();
    
}
#pragma pop

void THitActor::perform(u32 arg_0, JDrama::TGraphics* graphics) {
	this->TActor::perform(arg_0, graphics);
}

#define SQRT_2_F 1.41421353816986083984375f

// TODO: This feels like a fakematch
inline f32 strange_sqrt(f32 x) {
	s32 padding[8] = {};
	volatile f32 y = (__frsqrte(x) * x);
	s32 padding2[2] = {};
	return y;
}

void THitActor::calcEntryRadius() {

	f32 max_radius;
	if (this->attackRadius > this->damageRadius) {
		max_radius = this->attackRadius;
	} else {
		max_radius = this->damageRadius;
	}

	// f32 max_height = (this->attackHeight > this->damageHeight) ? this->attackHeight : this->damageHeight;

	f32 max_height;
	if (this->attackHeight > this->damageHeight) {
		max_height = this->attackHeight;
	} else {
		max_height = this->damageHeight;
	}

	f32 sq_len = max_radius * max_radius + max_height * max_height;

	if (sq_len > 0.0f) {
		this->entryRadius = SQRT_2_F * strange_sqrt(sq_len);
	} else {
		this->entryRadius = 0.0f;
	}
}

