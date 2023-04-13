#include "JSystem/JKernel/JKRFileLoader.hpp"

#include "bss_extra.hpp"
#include "MSL_C.PPCEABI.bare.H/ctype.h"

JKRFileLoader::JKRFileLoader() : link(this), volume_name(nullptr), volume_type(0), mount_count(0) {}

JKRFileLoader::~JKRFileLoader() {
	if (sCurrentVolume == this) {
		sCurrentVolume = nullptr;
	}
}

void JKRFileLoader::unmount() {
	s32 count = this->mount_count;
	if (this->mount_count != 0) {
		count--;
		this->mount_count = count;
		if (count == 0) {
			delete this;
		}
	}
}

JKRFileLoader* JKRFileLoader::getVolume(const char* name) {

	s32 padding[2];

	for (JSUListIterator<JKRFileLoader> itr(sVolumeList.getFirst()); itr != nullptr; ++itr) {
		if (strcmp(name, itr->volume_name) == 0) {
			return itr.getObject();
		}
	}

	return nullptr;

}

void JKRFileLoader::changeDirectory(const char* dir) {

	JKRFileLoader* volume = findVolume(&dir);

	if (volume != nullptr) {
		volume->becomeCurrent(dir);
	}

}

void* JKRFileLoader::getGlbResource(const char* name) {

	JKRFileLoader* fileLoader = findVolume(&name);
	void* resource;
	if (fileLoader == nullptr) {
		resource = nullptr;
	} else {
		resource = fileLoader->getResource(name);
	}

	return resource;
}

void* JKRFileLoader::getGlbResource(const char* name, JKRFileLoader* file_loader) {

	s32 padding[2];
	void* resource = nullptr;

	if (file_loader) {
		return file_loader->getResource(0, name);
	}

	for (JSUListIterator<JKRFileLoader> itr(sVolumeList.getFirst()); itr != nullptr; ++itr) {
		resource = itr->getResource(0, name);
		if (resource) {
			break;
		}
	}

	return resource;
}

s32 JKRFileLoader::getResSize(void* arg_0, JKRFileLoader* file_loader) {

	s32 padding[2];
	s32 result = -1;

	if (file_loader) {
		return file_loader->getResSize(arg_0);
	}

	for (JSUListIterator<JKRFileLoader> itr(sVolumeList.getFirst()); itr != nullptr; ++itr) {
		result = itr->getResSize(arg_0);
		if (result >= 0) {
			break;
		}
	}

	return result;
    
}

JKRFileLoader* JKRFileLoader::findVolume(const char** volume_name) {
	if (*volume_name[0] != '/') {
		return sCurrentVolume;
	}

	char buffer[0x101];
	s32 padding[2];
	*volume_name = fetchVolumeName(buffer, sizeof(buffer), *volume_name);

	for (JSUListIterator<JKRFileLoader> itr(sVolumeList.getFirst()); itr != nullptr; ++itr) {
		if (strcmp(buffer, itr->volume_name) == 0) {
			return itr.getObject();
		}
	}

	return nullptr;
}

// This is required by findFirstFile in order to match since inlining the normal one produces different stack usage.
inline JKRFileLoader* findVolumeInline(const char** volume_name) {
	if (*volume_name[0] != '/') {
		return JKRFileLoader::sCurrentVolume;
	}

	s32 padding[2] = {};
	char buffer[0x101];
	*volume_name = JKRFileLoader::fetchVolumeName(buffer, sizeof(buffer), *volume_name);

	for (JSUListIterator<JKRFileLoader> itr(JKRFileLoader::sVolumeList.getFirst()); itr != nullptr; ++itr) {
		if (strcmp(buffer, itr->volume_name) == 0) {
			return itr.getObject();
		}
	}

	return nullptr;
}

JKRFileFinder* JKRFileLoader::findFirstFile(const char* volume_name) {

	JKRFileFinder* finder = nullptr;

	JKRFileLoader* volume = findVolumeInline(&volume_name);

	if (volume) {
		finder = volume->getFirstFile(volume_name);
	}

	return finder;

}

static char rootPath[] = "/";

extern char __lower_map[];
inline int tolower_inline(int c) {
	if (c == -1) {
		return -1;
	}
	return __lower_map[c & 0xFF] & 0xFF;
}

const char* JKRFileLoader::fetchVolumeName(char* buffer, s32 buffer_size, const char* path) {
	s32 padding[2];

	if (strcmp(path, "/") == 0) {
		strcpy(buffer, rootPath);
		return rootPath;
	}

	path++;
	while (*path != 0 && *path != '/') {
		if (1 < buffer_size) {
			int lower_char = tolower_inline(*path);

			*buffer = lower_char;
			buffer++;
			buffer_size--;
		}
		path++;
	}

	*buffer = '\0';
	if (*path == '\0') {
		path = rootPath;
	}

	return path;
}

JKRFileLoader* JKRFileLoader::sCurrentVolume;

SECTION_BSS_EXTRA JSUList<JKRFileLoader> JKRFileLoader::sVolumeList;
