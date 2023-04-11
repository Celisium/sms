#include "JSystem/JKernel/JKRDisposer.hpp"

#include "JSystem/JKernel/JKRHeap.hpp"

JKRDisposer::JKRDisposer() : link(this) {
	this->heap = JKRHeap::findFromRoot(this);
	if (this->heap) {
		this->heap->disposer_list.append(&this->link);
	}
}

JKRDisposer::~JKRDisposer() {
	JKRHeap* heap = this->heap;
	if (heap) {
		heap->disposer_list.remove(&this->link);
	}
}
