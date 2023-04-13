#include "JSystem/JKernel/JKRAramBlock.hpp"

#include "JSystem/JKernel/JKRAramHeap.hpp"
#include "JSystem/JKernel/JKRHeap.hpp"

JKRAramBlock::JKRAramBlock(u32 address, u32 size, u32 free_size, u8 group_id, bool is_temporary) : link(this) {
	this->address = address;
	this->size = size;
	this->free_size = free_size;
	this->group_id = group_id;
	this->is_temporary = is_temporary;
}

JKRAramBlock::~JKRAramBlock() {
	JSUList<JKRAramBlock>* list = this->link.getList();
	JSULink<JKRAramBlock>* prev = this->link.getPrev();

	if (prev) {
		JKRAramBlock* block = prev->getObject();
		block->free_size = this->size + this->free_size + block->free_size;
		list->remove(&this->link);
	} else {
		this->free_size += this->size;
		this->size = 0;
	}
}

JKRAramBlock* JKRAramBlock::allocHead(u32 size, u8 group_id, JKRAramHeap* aram_heap) {

	JKRHeap* heap = aram_heap->heap;

	u32 next_address = this->address + this->size;
	u32 next_free_size = this->free_size - size;

	JKRAramBlock* block = new (heap, 0) JKRAramBlock(next_address, size, next_free_size, group_id, false);

	this->free_size = 0;
	JSULink<JKRAramBlock>* next = this->link.getNext();
	JSUList<JKRAramBlock>* list = this->link.getList();
	list->insert(next, &block->link);
	return block;
}

JKRAramBlock* JKRAramBlock::allocTail(u32 size, u8 group_id, JKRAramHeap* aram_heap) {

	JKRHeap* heap = aram_heap->heap;

	u32 tail_address = this->address + this->size + this->free_size - size;

	JKRAramBlock* block = new (heap, 0) JKRAramBlock(tail_address, size, 0, group_id, true);

	this->free_size -= size;
	JSULink<JKRAramBlock>* next = this->link.getNext();
	JSUList<JKRAramBlock>* list = this->link.getList();
	list->insert(next, &block->link);
	return block;
}
