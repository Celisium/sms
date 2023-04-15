#ifndef JSYSTEM_JSUPPORT_JSULIST_H
#define JSYSTEM_JSUPPORT_JSULIST_H

#include "dolphin.h"
#include "types.h"

class JSUPtrList;

template <typename T>
class JSUList;

class JSUPtrLink {	
	public:

	JSUPtrLink(void*);
	~JSUPtrLink();
	void* value;
	JSUPtrList* list;
	JSUPtrLink* prev;
	JSUPtrLink* next;
};

template <typename T>
class JSULink : public JSUPtrLink {
	public:

	JSULink(T* ptr) : JSUPtrLink((void*)ptr) {}
	
	T* getObject() const { return (T*)this->value; }
	JSUList<T>* getList() const { return (JSUList<T>*)this->list; }
	JSULink<T>* getPrev() const { return (JSULink<T>*)this->prev; }
	JSULink<T>* getNext() const { return (JSULink<T>*)this->next; }

};

class JSUPtrList {
	public:

	JSUPtrList() { this->initiate(); }
	JSUPtrList(bool);
	~JSUPtrList();

	void initiate();
	bool remove(JSUPtrLink*);
	bool append(JSUPtrLink*);
	bool prepend(JSUPtrLink*);
	bool insert(JSUPtrLink*, JSUPtrLink*);
	inline bool append_(JSUPtrLink*);
	inline bool prepend_(JSUPtrLink*);

	JSUPtrLink* first;
	JSUPtrLink* last;
	u32 length;
};

bool JSUPtrList::append_(JSUPtrLink* node) {
	bool result;

	result = (node->list == nullptr);
	if (!result) {
		result = node->list->remove(node);
	}
	if (result) {
		if (this->length == 0) {
			node->list = this;
			node->prev = nullptr;
			node->next = nullptr;
			this->last = node;
			this->first = node;
			this->length = 1;
		} else {
			node->list = this;
			node->prev = this->last;
			node->next = nullptr;
			this->last->next = node;
			this->last = node;
			this->length = this->length + 1;
		}
	}

	return result;
}

bool JSUPtrList::prepend_(JSUPtrLink* node) {
	bool result;

	result = (node->list == nullptr);
	if (!result) {
		result = node->list->remove(node);
	}
	if (result) {
		if (this->length == 0) {
			node->list = this;
			node->prev = nullptr;
			node->next = nullptr;
			this->last = node;
			this->first = node;
			this->length = 1;
		} else {
			node->list = this;
			node->prev = nullptr;
			node->next = this->first;
			this->first->prev = node;
			this->first = node;
			this->length = this->length + 1;
		}
	}

	return result;
}

template <typename T>
class JSUList : public JSUPtrList {

	public:

	JSUList() : JSUPtrList() {}
	JSUList(bool init) : JSUPtrList(init) {}
	~JSUList() {}

	JSULink<T>* getFirst() const { return (JSULink<T>*)this->first; }
	JSULink<T>* getLast() const { return (JSULink<T>*)this->last; }

	bool append(JSULink<T>* link) { return this->JSUPtrList::append((JSUPtrLink*)link); }

	bool prepend(JSULink<T>* link) { return this->JSUPtrList::prepend((JSUPtrLink*)link); }

	bool insert(JSULink<T>* before, JSULink<T>* link) {
		return this->JSUPtrList::insert((JSUPtrLink*)before, (JSUPtrLink*)link);
	}

	bool remove(JSULink<T>* link) { return this->JSUPtrList::remove((JSUPtrLink*)link); }

};

template <typename T>
class JSUListIterator {
	public:
	JSUListIterator() : link(nullptr) {}
	JSUListIterator(JSULink<T>* link) : link(link) {}
	JSUListIterator(JSUList<T>* list) : link(list->getFirst()) {}

	JSUListIterator<T>& operator=(JSULink<T>* link) {
		this->link = link;
		return *this;
	}

	T* getObject() { return this->link->getObject(); }

	bool operator==(const JSULink<T>* other) const { return this->link == other; }
	bool operator!=(const JSULink<T>* other) const { return this->link != other; }
	bool operator==(const JSUListIterator<T>& other) const { return this->link == other.link; }
	bool operator!=(const JSUListIterator<T>& other) const { return this->link != other.link; }

	JSUListIterator<T> operator++(int) {
		JSUListIterator<T> prev = *this;
		this->link = this->link->getNext();
		return prev;
	}

	JSUListIterator<T>& operator++() {
		this->link = this->link->getNext();
		return *this;
	}

	JSUListIterator<T> operator--(int) {
		JSUListIterator<T> prev = *this;
		this->link = this->link->getPrev();
		return prev;
	}

	JSUListIterator<T>& operator--() {
		this->link = this->link->getPrev();
		return *this;
	}

	T& operator*() { return *this->getObject(); }

	T* operator->() { return this->getObject(); }

	JSULink<T>* link;
};

template <typename T>
class JSUTree : public JSUList<T>, public JSULink<T> {

	public:

	JSUTree(T* owner) : JSUList<T>(), JSULink<T>(owner) {}
	~JSUTree() {}

	bool appendChild(JSUTree<T>* child) { return this->append(child); }
	bool removeChild(JSUTree<T>* child) { return this->remove(child); }
	bool insertChild(JSUTree<T>* before, JSUTree<T>* child) { return this->insert(before, child); }
	JSUTree<T>* getEndChild() const { return nullptr; }
	JSUTree<T>* getFirstChild() const { return (JSUTree<T>*)this->getFirst(); }
	JSUTree<T>* getLastChild() const { return (JSUTree<T>*)this->getLast(); }
	JSUTree<T>* getNextChild() const { return (JSUTree<T>*)this->next; } // i stg i spent two days firguring this one out
	JSUTree<T>* getPrevChild() const { return (JSUTree<T>*)this->getPrev(); }
	u32 getNumChildren() const { return this->getNumLinks(); }
	T* getObject() const { return (T*)this->value; }
	JSUTree<T>* getParent() const { return (JSUTree<T>*)this->getList(); }

};

template <typename T>
class JSUTreeIterator {
	public:
	JSUTreeIterator() : tree(nullptr) {}
	JSUTreeIterator(JSUTree<T>* tree) : tree(tree) {}

	JSUTreeIterator<T>& operator=(JSUTree<T>* tree) {
		this->tree = tree;
		return *this;
	}

	T* getObject() { return this->tree->getObject(); }

	bool operator==(JSUTree<T>* other) { return this->tree == other; }

	bool operator!=(JSUTree<T>* other) { return this->tree != other; }

	JSUTreeIterator<T> operator++(int) {
		JSUTreeIterator<T> prev = *this;
		this->tree = this->tree->getNextChild();
		return prev;
	}

	JSUTreeIterator<T>& operator++() {
		this->tree = this->tree->getNextChild();
		return *this;
	}

	T& operator*() { return *this->getObject(); }

	T* operator->() { return this->getObject(); }

	JSUTree<T>* tree;
};

#endif
