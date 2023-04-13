#include "JSystem/JKernel/JKRMemArchive.hpp"

#include "JSystem/JKernel/JKRHeap.hpp"

JKRMemArchive::JKRMemArchive(s32 entry_num, JKRArchive::EMountDirection mount_direction) : JKRArchive(entry_num, MOUNT_MODE_MEM) {
	this->mount_direction = mount_direction;
	this->open(entry_num, this->mount_direction);
	this->volume_type = 'RARC';
	this->volume_name = this->string_table + this->nodes->name_offset;
	sVolumeList.prepend(&this->link);
	this->is_mounted = true;
}

JKRMemArchive::JKRMemArchive(void* buffer, u32 buffer_size, JKRMemBreakFlag arg_3) : JKRArchive((s32)buffer, MOUNT_MODE_MEM) {
	this->open(buffer, buffer_size, arg_3);
	this->volume_type = 'RARC';
	this->volume_name = this->string_table + this->nodes->name_offset;
	sVolumeList.prepend(&this->link);
	this->is_mounted = true;
}

JKRMemArchive::~JKRMemArchive() {
	if (this->is_mounted == true) {
		if (this->is_open) {
			if (this->arc_header) {
				JKRHeap::free(this->arc_header, this->heap);
			}
		}

		sVolumeList.remove(&this->link);
		this->is_mounted = false;
	}
}

bool JKRMemArchive::mountFixed(void* arg_0, JKRMemBreakFlag arg_1) {

	if (check_mount_already((s32)arg_0)) {
		return false;
	}

	this->is_mounted = false;

	this->mount_mode = MOUNT_MODE_MEM;
	this->mount_count = 1;
	this->unknown_54 = 2;

	this->heap = JKRHeap::sCurrentHeap;
	this->entry_num = (s32)arg_0;

	if (!sCurrentVolume) {
		sCurrentVolume = this;
		sCurrentDirID = 0;
	}

	if (!this->open(arg_0, 0xFFFF, arg_1)) {
		return false;
	}

	this->volume_type = 'RARC';
	this->volume_name = this->string_table + this->nodes->name_offset;

	sVolumeList.prepend(&this->link);

	this->is_open = (arg_1 == 1) ? true : false;

	this->is_mounted = true;

	return true;

}

void JKRMemArchive::unmountFixed() {

	if (sCurrentVolume == this) {
		sCurrentVolume = nullptr;
	}

	if (this->is_open && this->arc_header) {
		JKRHeap::free(this->arc_header, this->heap);
	}

	sVolumeList.remove(&this->link);

	this->is_mounted = false;
 
}


