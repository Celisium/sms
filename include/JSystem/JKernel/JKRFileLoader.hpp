#ifndef JSYSTEM_JKERNEL_JKRFILELOADER_H
#define JSYSTEM_JKERNEL_JKRFILELOADER_H

#include "JSystem/JKernel/JKRDisposer.hpp"

class JKRFileFinder;

class JKRFileLoader : public JKRDisposer {

	public:

	JKRFileLoader();

	virtual ~JKRFileLoader();

	virtual void unmount();
	virtual void becomeCurrent(const char*) = 0;
	virtual void* getResource(const char*) = 0;
	virtual void* getResource(u32, const char*) = 0;
	virtual u32 readResource(void*, u32, const char*) = 0;
	virtual u32 readResource(void*, u32, u32, const char*) = 0;
	virtual void removeResourceAll() = 0;
	virtual bool removeResource(void*) = 0;
	virtual bool detachResource(void*) = 0;
	virtual s32 getResSize(const void*) const = 0;
	virtual s32 countFile(const char*) const = 0;
	virtual JKRFileFinder* getFirstFile(const char*) const = 0;

	JSULink<JKRFileLoader> link;
	const char* volume_name;
	s32 volume_type;
	bool is_mounted;
	u32 mount_count;

	static JKRFileLoader* getVolume(const char*);
	static void changeDirectory(const char*);
	static void* getGlbResource(const char*);
	static void* getGlbResource(const char*, JKRFileLoader*);
	static s32 getResSize(void*, JKRFileLoader*);
	static JKRFileLoader* findVolume(const char**);
	static JKRFileFinder* findFirstFile(const char*);
	static const char* fetchVolumeName(char*, s32, const char*);

	static JKRFileLoader* sCurrentVolume;
	static JSUList<JKRFileLoader> sVolumeList;

};

#endif
