#include "JSystem/JKernel/JKRAramHeap.hpp"

#include "bss_extra.hpp"
#include "JSystem/JKernel/JKRAramBlock.hpp"
#include "JSystem/JKernel/JKRHeap.hpp"

JKRAramHeap::JKRAramHeap(u32 start_address, u32 size) {
	OSInitMutex(&this->mutex);

	this->heap = JKRHeap::findFromRoot(this);
	this->size = ALIGN_PREV(size, 0x20);
	this->head_address = ALIGN_NEXT(start_address, 0x20);
	this->tail_address = this->head_address + this->size;
	this->group_id = -1;

	JKRAramBlock* block = new (this->heap, 0) JKRAramBlock(this->head_address, 0, this->size, -1, false);
	sAramList.append(&block->link);
}

JKRAramHeap::~JKRAramHeap() {

	// for some reason a typical for loop won't match
	JSUListIterator<JKRAramBlock> itr(sAramList.getFirst());
	while (itr != nullptr) {
		JKRAramBlock* block = (itr++).getObject();
		delete block;
	}
    
}

JKRAramBlock* JKRAramHeap::alloc(u32 size, EAllocMode allocation_mode) {

	OSLockMutex(&this->mutex);

	JKRAramBlock* block;
	if (allocation_mode == ALLOC_MODE_HEAD) {
		block = this->allocFromHead(size);
	} else {
		block = this->allocFromTail(size);
	}

	OSUnlockMutex(&this->mutex);
	return block;
}

JKRAramBlock* JKRAramHeap::allocFromHead(u32 size) {
	u32 aligned_size = ALIGN_NEXT(size, 0x20);
	u32 best_free_size = UINT32_MAX;
	JKRAramBlock* best_block = nullptr;

	for (JSUListIterator<JKRAramBlock> itr(sAramList.getFirst()); itr != nullptr; ++itr) {
		JKRAramBlock* block = itr.getObject();
		if (block->free_size < aligned_size) {
			continue;
		}

		if (best_free_size <= block->free_size) {
			continue;
		}

		best_free_size = block->free_size;
		best_block = block;

		if (block->free_size == aligned_size) {
			break;
		}
	}

	if (best_block) {
		return best_block->allocHead(aligned_size, this->group_id, this);
	}

	return nullptr;
}

JKRAramBlock* JKRAramHeap::allocFromTail(u32 size) {
	u32 aligned_size = ALIGN_NEXT(size, 0x20);
	JKRAramBlock* tail_block = nullptr;

	for (JSUListIterator<JKRAramBlock> itr(sAramList.getLast()); itr != nullptr; --itr) {
		JKRAramBlock* block = itr.getObject();
		if (block->free_size >= aligned_size) {
			tail_block = block;
			break;
		}
	}

	if (tail_block) {
		return tail_block->allocTail(aligned_size, this->group_id, this);
	}

	return nullptr;
}

SECTION_BSS_EXTRA JSUList<JKRAramBlock> JKRAramHeap::sAramList;
