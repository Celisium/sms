#ifndef JSYSTEM_JGADGET_STD_LIST_H
#define JSYSTEM_JGADGET_STD_LIST_H

namespace JGadget {

template <typename T>
struct TAllocator {



	void construct(T* ptr, const T& value) {
		new ((void*)ptr) T(value);
	}

};

template <typename T, typename Allocator = TAllocator<T> >
class TList {

	public:

	explicit TList(const Allocator& allocator);

	struct TNode_ {
		TNode_* unknown_00;
		TNode_* unknown_04;
		T value;
	};

	TNode_* CreateNode_(TNode_* arg_0, TNode_* arg_1, const T& value);

};

}

#endif
