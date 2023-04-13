#include "JSystem/JKernel/JKRArchive.hpp"

JKRArchive* JKRArchive::check_mount_already(s32 entry_num) {

	for (JSUListIterator<JKRFileLoader> itr(sVolumeList.getFirst()); itr != nullptr; ++itr) {
		if (itr->volume_type == 'RARC') {
			JKRArchive* archive = (JKRArchive*)itr.getObject();
			if (archive->entry_num == entry_num) {
				archive->mount_count++;
				return archive;
			}
		}
	}

	return nullptr;
}
