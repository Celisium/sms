#ifndef JSYSTEM_JGADGET_STD_LIST_H
#define JSYSTEM_JGADGET_STD_LIST_H

#include "dolphin/types.h"

namespace JGadget {

template <typename T>
struct TAllocator {

	T* allocate(u32 n) {
		return (T*)operator new(n * sizeof(T));
	}

	void construct(T* ptr, const T& value) {
		new ((void*)ptr) T(value);
	}

	template <typename U>
	struct rebind {
		typedef TAllocator<U> other;
	};

	TAllocator() {}

	template <typename U>
	TAllocator(const TAllocator<U>& other) {}

};

template <typename T, typename Allocator = TAllocator<T> >
class TList {

	public:

	struct TNode_ {
		T value;
		TNode_* next;
		TNode_* prev;
	};

	struct iterator {

		iterator() : node(nullptr) {}
		iterator(TNode_*);

		TNode_* node;

		iterator(const iterator& other) : node(other.node) {}

		iterator& operator=(const iterator& other) {
			this->node = other.node;
			return *this;
		}

		iterator& operator++() {
			this->node = this->node->next;
			return *this;
		}

		iterator operator++(int) {
			iterator orig = *this;
			this->operator++();
			return orig;
		}

		T operator*() const {
			return this->node->value;
		}

		friend bool operator==(const iterator& a, const iterator& b) {
			return a.node == b.node;
		}

		friend bool operator!=(const iterator& a, const iterator& b) {
			return !(a == b);
		}
	};

	TList(const Allocator& alloc) : alloc(alloc) {}

	Allocator alloc;

	s32 unknown_04;
	void* unknown_08;
	void* unknown_0C;

	iterator begin() {
		return iterator(this->first);
	}

	iterator end() {
		return iterator();
	}

	iterator erase(iterator itr);

	TNode_* CreateNode_(TNode_* next, TNode_* prev, const T& value);

};

class TList_pointer_void : public TList<void*> {

	public:

	TList_pointer_void(const TAllocator<void*>& alloc);


};

}

#endif
