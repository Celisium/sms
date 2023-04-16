#ifndef JSYSTEM_JKERNEL_JKRHEAP_H
#define JSYSTEM_JKERNEL_JKRHEAP_H

#include "dolphin.h"
#include "dolphin/os/OSMutex.h"

#include "JSystem/JKernel/JKRDisposer.hpp"

inline void* operator new(size_t, void* ptr) { return ptr; }
void* operator new(size_t, int);
void* operator new(size_t, JKRHeap*, int);
void* operator new[](size_t);
void* operator new[](size_t, int);
void* operator new[](size_t, JKRHeap*, int);
void operator delete(void*);
void operator delete[](void*);

typedef void (*JKRErrorHandler)(void*, size_t, int);

class JKRHeap : public JKRDisposer {

	public:

	class TState {
		public:
		/* 0x00 */ u32 mUsedSize;
		/* 0x04 */ u32 mCheckCode;
		/* 0x08 */ u32 mBuf;
		/* 0x0C */ u32 field_0xc;
		/* 0x10 */ JKRHeap* mHeap;
		/* 0x14 */ u32 mId;
	};

	JKRHeap(void* data, size_t size, JKRHeap* parent, bool error_flag);
	virtual ~JKRHeap();

	virtual void* alloc(size_t size, int alignment) = 0;
	virtual void free(void* ptr) = 0;
	virtual void freeAll();
	virtual void freeTail(void* ptr) = 0;
	virtual s32 resize(void* ptr, size_t size) = 0;
	virtual s32 getSize(void* ptr) = 0;
	virtual s32 getFreeSize() = 0;
	virtual s32 getTotalFreeSize() = 0;
	virtual s32 getHeapType() = 0;
	virtual bool check() = 0;
	virtual bool dump_sort();
	virtual bool dump() = 0;
	virtual s32 changeGroupID(u8 id);
	virtual u8 getCurrentGroupId();
	virtual void state_register(TState*, u32) const;
	virtual bool state_compare(const TState&, const TState&) const;
	virtual void state_dump(const TState&) const;

	JKRHeap* becomeSystemHeap();
	JKRHeap* becomeCurrentHeap();
	void destroy();

	inline JKRHeap* find(void* ptr) const;
	JKRHeap* findAllHeap(void* ptr) const;

	// This function exists to inhibit inlining of find in operator delete/delete[]
	JKRHeap* findWrapper(void* ptr) const { return this->find(ptr); }

	void dispose_subroutine(size_t start, size_t end);
	bool dispose(void* ptr, size_t size);
	void dispose(void* begin, void* end);
	void dispose();

	bool setErrorFlag(bool errorFlag);
	bool isSubHeap(JKRHeap* heap) const;

	/* 0x18 */ OSMutex mutex;
	/* 0x30 */ u8* start;
	/* 0x34 */ u8* end;
	/* 0x38 */ size_t size;
	/* 0x3C */ JSUTree<JKRHeap> child_tree;
	/* 0x58 */ JSUList<JKRDisposer> disposer_list;
	/* 0x64 */ bool error_flag;
	/* 0x65 */ bool init_flag;

	static bool initArena(char** memory, size_t* size, int max_heaps);
	static void* alloc(size_t size, int alignment, JKRHeap* heap);
	static void free(void* ptr, JKRHeap* heap);
	static s32 resize(void* ptr, size_t size, JKRHeap* heap);
	static s32 getSize(void* ptr, JKRHeap* heap);
	static JKRHeap* findFromRoot(void* ptr);

	static void copyMemory(void* dst, void* src, size_t size);
	static void fillMemory(void* dst, size_t size, u8 value);
	static bool checkMemoryFilled(void* src, size_t size, u8 value);

	static JKRErrorHandler setErrorHandler(JKRErrorHandler error_handler);

	static void* mCodeStart;
	static void* mCodeEnd;
	static void* mUserRamStart;
	static void* mUserRamEnd;
	static size_t mMemorySize;
	static JKRHeap* sSystemHeap;
	static JKRHeap* sCurrentHeap;
	static JKRHeap* sRootHeap;
	static JKRErrorHandler mErrorHandler;

	static JKRHeap* getSystemHeap() { return sSystemHeap; }

};

inline void* JKRAllocFromHeap(JKRHeap* heap, u32 size, int alignment) {
	return JKRHeap::alloc(size, alignment, heap);
}

void JKRDefaultMemoryErrorRoutine(void* heap, size_t size, int alignment);

#endif
