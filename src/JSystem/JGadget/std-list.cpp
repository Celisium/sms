#include "JSystem/JGadget/list.hpp"

namespace JGadget {

TList_pointer_void::TList_pointer_void(const TAllocator<void*>& alloc) : TList(alloc) {
	this->unknown_04 = 0;
	this->unknown_08 = &this->unknown_08;
	this->unknown_0C = &this->unknown_08;
}

TList<void*>::iterator TList<void*>::erase(iterator itr) {

	TNode_* node = itr.node;
	TNode_* next = node->next;
	TNode_* prev = node->prev;

	prev->next = node->next;
	next->prev = node->prev;

	delete node;

	this->unknown_04--;

	return iterator(next);

}

typedef void* void_ptr;

// TODO: probably a fakematch
TList<void*>::TNode_* TList<void*>::CreateNode_(TNode_* next, TNode_* prev, const void_ptr& value) {

	s32 padding_1;
	void_ptr* volatile value_ptr_2;
	s32 padding_2;

	TNode_* node = (TNode_*)operator new(sizeof(TNode_));

	if (!node) {
		return nullptr;
	}
	void_ptr* value_ptr = (void_ptr*)((u8*)node + 8);

	node->next = next;
	node->prev = prev;
	value_ptr_2 = value_ptr;
	this->alloc.construct(value_ptr, value);

	return node;
}

}
