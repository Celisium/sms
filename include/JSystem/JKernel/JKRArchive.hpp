#ifndef JSYSTEM_JKERNEL_JKRARCHIVE_H
#define JSYSTEM_JKERNEL_JKRARCHIVE_H

#include "JSystem/JKernel/JKRFileLoader.hpp"

struct SArcHeader {
	u32 signature;
	u32 file_length;
	u32 header_length;
	u32 file_data_offset;
	u32 file_data_length;
	u32 field_0x14;
	u32 field_0x18;
	u32 field_0x1c;
};

struct SArcDataInfo {
	u32 num_nodes;
	u32 node_offset;
	u32 num_file_entries;
	u32 file_entry_offset;
	u32 string_table_length;
	u32 string_table_offset;
	u16 next_free_file_id;
	bool sync_file_ids_and_indices;
	u8 field_1b[5];
};

class JKRArchive : public JKRFileLoader {

	public:

	struct SDIDirEntry {
		u32 type;
		u32 name_offset;
		u16 field_0x8;
		u16 num_entries;
		u32 first_file_index;
	};

	struct SDIFileEntry {
		u16 file_id;
		u16 name_hash;
		u32 type_flags_and_name_offset;
		u32 data_offset;
		u32 data_size;
		void* data;
	};

	enum EMountMode {
		MOUNT_MODE_UNKNOWN,
		MOUNT_MODE_MEM,
		MOUNT_MODE_ARAM,
		MOUNT_MODE_DVD,
		MOUNT_MODE_COMP
	};

	enum EMountDirection {
		MOUNT_DIRECTION_UNKNOWN,
		MOUNT_DIRECTION_HEAD,
		MOUNT_DIRECTION_TAIL
	};

	JKRArchive();
	JKRArchive(s32, EMountMode);
	virtual ~JKRArchive();

	virtual void becomeCurrent(const char*);
	virtual void* getResource(const char*);
	virtual void* getResource(u32, const char*);
	virtual u32 readResource(void*, u32, const char*);
	virtual u32 readResource(void*, u32, u32, const char*);
	virtual void removeResourceAll();
	virtual bool removeResource(void*);
	virtual bool detachResource(void*);
	virtual s32 getResSize(const void*) const;
	virtual s32 countFile(const char*) const;
	virtual JKRFileFinder* getFirstFile(const char*) const;

	virtual void* fetchResource(SDIFileEntry*, u32*) = 0;
	virtual void* fetchResource(void*, u32, SDIFileEntry*, u32*) = 0;

	JKRHeap* heap;
	u8 mount_mode;
	s32 entry_num;
	SArcDataInfo* arc_info_block;
	SDIDirEntry* nodes;
	SDIFileEntry* files;
	char* string_table;
	u32 unknown_54;

	static JKRArchive* check_mount_already(s32);
	static JKRArchive* mount(const char*, EMountMode, JKRHeap*, EMountDirection);
	static void* getGlbResource(u32, const char*, JKRArchive*);

	static u32 sCurrentDirID;

};

#endif
