#include "JSystem/JKernel/JKRHeap.hpp"

JKRHeap* JKRHeap::sSystemHeap;
JKRHeap* JKRHeap::sCurrentHeap;
JKRHeap* JKRHeap::sRootHeap;
JKRErrorHandler JKRHeap::mErrorHandler;

JKRHeap::JKRHeap(void* data, size_t size, JKRHeap* parent, bool error_flag) : JKRDisposer(), child_tree(this), disposer_list() {
	OSInitMutex(&this->mutex);
	this->size = size;
	this->start = (u8*)data;
	this->end = (u8*)data + size;

	if (parent == nullptr) {
		this->becomeSystemHeap();
		this->becomeCurrentHeap();
	} else {
		parent->child_tree.appendChild(&this->child_tree);

		if (sSystemHeap == sRootHeap) {
			this->becomeSystemHeap();
		}

		if (sCurrentHeap == sRootHeap) {
			this->becomeCurrentHeap();
		}
	}

	this->error_flag = error_flag;
	if (this->error_flag == true && mErrorHandler == nullptr) {
		mErrorHandler = JKRDefaultMemoryErrorRoutine;
	}

}

JKRHeap::~JKRHeap() {
	this->child_tree.getParent()->removeChild(&this->child_tree);
	JSUTree<JKRHeap>* next_root_heap = sRootHeap->child_tree.getFirstChild();

	if (sCurrentHeap == this) {
		sCurrentHeap = !next_root_heap ? sRootHeap : (JKRHeap*)next_root_heap->value;
	}

	if (sSystemHeap == this) {
		sSystemHeap = !next_root_heap ? sRootHeap : (JKRHeap*)next_root_heap->value;
	}
}

void* JKRHeap::mCodeStart;
void* JKRHeap::mCodeEnd;
void* JKRHeap::mUserRamStart;
void* JKRHeap::mUserRamEnd;
size_t JKRHeap::mMemorySize;

// TODO: Determine where these macros go

// Upper words of the masks, since UIMM is only 16 bits
#define OS_CACHED_REGION_PREFIX 0x8000
#define OS_UNCACHED_REGION_PREFIX 0xC000
#define OS_PHYSICAL_MASK 0x3FFF

#define OS_BASE_CACHED (OS_CACHED_REGION_PREFIX << 16)
#define OS_BASE_UNCACHED (OS_UNCACHED_REGION_PREFIX << 16)

#define OSPhysicalToCached(paddr) ((void*)((u32)(paddr) + OS_BASE_CACHED))

bool JKRHeap::initArena(char** out_memory, size_t* out_size, int max_heaps) {
	void* ram_start;
	void* ram_end;
	void* arena_start;

	void* arena_lo = OSGetArenaLo();
	void* arena_hi = OSGetArenaHi();
	if (arena_lo == arena_hi) {
		return false;
	}

	arena_start = OSInitAlloc(arena_lo, arena_hi, max_heaps);
	ram_start = (void*)ALIGN_NEXT((size_t)arena_start, 0x20);
	ram_end = (void*)ALIGN_PREV((size_t)arena_hi, 0x20);

	GLOBAL_MEMORY* code_start = (GLOBAL_MEMORY*)OSPhysicalToCached(0);
	mCodeStart = code_start;
	mCodeEnd = ram_start;

	mUserRamStart = ram_start;
	mUserRamEnd = ram_end;
	mMemorySize = code_start->memory_size;

	OSReport("%x %x %x %x %x\n", mCodeStart, mCodeEnd, mUserRamStart, mUserRamEnd, mMemorySize);

	OSSetArenaLo(ram_end);
	OSSetArenaHi(ram_end);

	*out_memory = (char*)ram_start;
	*out_size = (size_t)ram_end - (size_t)ram_start;

	OSReport("arenaLo=%x arenaHi=%x \n", ram_start, ram_end);

	return true;
}

JKRHeap* JKRHeap::becomeSystemHeap() {
	JKRHeap* old_heap = sSystemHeap;
	sSystemHeap = this;
	return old_heap;
}

JKRHeap* JKRHeap::becomeCurrentHeap() {
	JKRHeap* old_heap = sCurrentHeap;
	sCurrentHeap = this;
	return old_heap;
}

void* JKRHeap::alloc(size_t size, int alignment, JKRHeap* heap) {

	void* result = nullptr;

	if (heap) {
		result = heap->alloc(size, alignment);
	} else if (sCurrentHeap) {
		result = sCurrentHeap->alloc(size, alignment);
	}

	return result;

}

void JKRHeap::free(void* ptr, JKRHeap* heap) {
	if (!heap) {
		heap = findFromRoot(ptr);
		if (!heap) {
			return;
		}
	}

	heap->free(ptr);
}

void JKRHeap::freeAll() {

	char padding[0x18];

	while (this->disposer_list.getFirst() != nullptr) {
		this->disposer_list.getFirst()->getObject()->~JKRDisposer();
	}

}

JKRHeap* JKRHeap::findFromRoot(void* ptr) {

	if (sRootHeap) {
		return sRootHeap->find(ptr);
	}

	return nullptr;
}

JKRHeap* JKRHeap::find(void* ptr) const {

	s32 padding;

	if (this->start <= ptr && ptr <= this->end) {

		if (this->child_tree.length != 0) {

			for (JSUTreeIterator<JKRHeap> itr(this->child_tree.getFirstChild()); itr != this->child_tree.getEndChild(); ++itr) {

				JKRHeap* result = itr->find(ptr);
				if (result) {
					return result;
				}

			}

		}

		return const_cast<JKRHeap*>(this);

	}

	return nullptr;

}

void JKRHeap::dispose_subroutine(size_t begin, size_t end) {
	JSUListIterator<JKRDisposer> last_iterator;
	JSUListIterator<JKRDisposer> next_iterator;
	JSUListIterator<JKRDisposer> iterator;

	s32 padding;

	for (iterator = this->disposer_list.getFirst(); iterator != nullptr; iterator = next_iterator) {

		if ((void*)begin <= iterator.getObject() && iterator.getObject() < (void*)end) {
			iterator.getObject()->~JKRDisposer();

			if (last_iterator == nullptr) {
				next_iterator = this->disposer_list.getFirst();
			} else {
				next_iterator = last_iterator;
				next_iterator++;
			}
		} else {
			last_iterator = iterator;
			next_iterator = iterator;
			next_iterator++;
		}
	}
}

bool JKRHeap::dispose(void* ptr, size_t size) {
	size_t begin = (size_t)ptr;
	size_t end = (size_t)ptr + size;
	this->dispose_subroutine(begin, end);
	return false;
}

void JKRHeap::dispose(void* begin, void* end) {
	dispose_subroutine((size_t)begin, (size_t)end);
}

void JKRHeap::dispose() {

	s32 padding[2];
	JSUListIterator<JKRDisposer> iterator;
	
	while (this->disposer_list.getFirst() != nullptr) {
		iterator = this->disposer_list.getFirst();
		iterator->~JKRDisposer();
	}

}

void JKRHeap::copyMemory(void* dst, void* src, size_t size) {
	size_t count = (size + 3) / 4;

	u32* dst_32 = (u32*)dst;
	u32* src_32 = (u32*)src;

	// this could possibly be the legendary 'down-to' operator
	// https://stackoverflow.com/q/1642028
	while (count-- > 0) {
		*dst_32 = *src_32;
		dst_32++;
		src_32++;
	}
}

void JKRDefaultMemoryErrorRoutine(void* heap, size_t size, int alignment) {
	OSPanic("JKRHeap.cpp", 694, "abort\n");
}

// TODO: Check to see if these will correctly inline the generic version.

void* operator new(size_t size) {
	void* result = nullptr;

	if (JKRHeap::sCurrentHeap) {
		result = JKRHeap::sCurrentHeap->alloc(size, 4);
	}
	return result;
}

void* operator new(size_t size, int alignment) {
	void* result = nullptr;

	if (JKRHeap::sCurrentHeap) {
		result = JKRHeap::sCurrentHeap->alloc(size, alignment);
	}

	return result;
}

void* operator new(size_t size, JKRHeap* heap, int alignment) {
	void* result = nullptr;

	if (heap) {
		result = heap->alloc(size, alignment);
	} else if (JKRHeap::sCurrentHeap) {
		result = JKRHeap::sCurrentHeap->alloc(size, alignment);
	}

	return result;
}

void* operator new[](size_t size) {
	void* result = nullptr;
	
	if (JKRHeap::sCurrentHeap) {
		result = JKRHeap::sCurrentHeap->alloc(size, 4);
	}
	return result;
}

void* operator new[](size_t size, int alignment) {
	void* result = nullptr;

	if (JKRHeap::sCurrentHeap) {
		result = JKRHeap::sCurrentHeap->alloc(size, alignment);
	}

	return result;
}

void* operator new[](size_t size, JKRHeap* heap, int alignment) {
	void* result = nullptr;

	if (heap) {
		result = heap->alloc(size, alignment);
	} else if (JKRHeap::sCurrentHeap) {
		result = JKRHeap::sCurrentHeap->alloc(size, alignment);
	}

	return result;
}

void operator delete(void* ptr) {
	JKRHeap* heap;

	if (JKRHeap::sRootHeap) {
		heap = JKRHeap::sRootHeap->findWrapper(ptr);
	} else {
		heap = nullptr;
	}

	if (heap) {
		heap->free(ptr);
	}
}

void operator delete[](void* ptr) {
	JKRHeap* heap;

	if (JKRHeap::sRootHeap) {
		heap = JKRHeap::sRootHeap->findWrapper(ptr);
	} else {
		heap = nullptr;
	}

	if (heap) {
		heap->free(ptr);
	}
}

void JKRHeap::state_register(TState*, u32) const {}

bool JKRHeap::state_compare(const TState& a, const TState& b) const {
	return a.mBuf == b.mBuf;
}

void JKRHeap::state_dump(const TState&) const {}

bool JKRHeap::dump_sort() {
	return true;
}

s32 JKRHeap::changeGroupID(u8 id) {
	return 0;
}

u8 JKRHeap::getCurrentGroupId() {
	return 0;
}
