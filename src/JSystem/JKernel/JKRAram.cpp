#include "JSystem/JKernel/JKRAram.hpp"

#include "dolphin/ar/ar.h"
#include "dolphin/ar/arq.h"
#include "JSystem/JKernel/JKRAramHeap.hpp"
#include "JSystem/JKernel/JKRAramStream.hpp"
#include "Runtime.PPCEABI.H/__mem.h"

OSMessage JKRAram::sMessageBuffer[4] = {};
OSMessageQueue JKRAram::sMessageQueue = {};

JKRAram* JKRAram::create(u32 aram_audio_buffer_size, u32 aram_audio_graph_size, s32 stream_priority, s32 decomp_priority, s32 piece_priority) {
	if (!sAramObject) {
		sAramObject = new (JKRHeap::getSystemHeap(), 0) JKRAram(aram_audio_buffer_size, aram_audio_graph_size, piece_priority);
	}

	JKRAramStream::create(stream_priority);
	JKRDecomp::create(decomp_priority);
	OSResumeThread(sAramObject->thread_record);
	return sAramObject;
}

JKRAram::JKRAram(u32 audio_buffer_size, u32 audio_graph_size, s32 priority) : JKRThread(0x4000, 0x10, priority) {
	u32 aram_base = ARInit(this->stack_array, 3);
	ARQInit();

	u32 aram_size = ARGetSize();

	this->audio_memory_size = audio_buffer_size;
	if (audio_graph_size == 0xFFFFFFFF) {
		this->graph_memory_size = (aram_size - audio_buffer_size) - aram_base;
		this->aram_memory_size = 0;
	} else {
		this->graph_memory_size = audio_graph_size;
		this->aram_memory_size = (aram_size - (audio_buffer_size + audio_graph_size)) - aram_base;
	}

	this->audio_memory_ptr = ARAlloc(this->audio_memory_size);
	this->graph_memory_ptr = ARAlloc(this->graph_memory_size);

	if (this->aram_memory_size) {
		this->aram_memory_ptr = ARAlloc(this->aram_memory_size);
	} else {
		this->aram_memory_ptr = nullptr;
	}

	this->aram_heap = new (JKRHeap::getSystemHeap(), 0) JKRAramHeap(this->graph_memory_ptr, this->graph_memory_size);
}

JKRAram::~JKRAram() {
	sAramObject = nullptr;
	if (this->aram_heap) {
		delete this->aram_heap;
	}
}

void* JKRAram::run() {
	int result;
	JKRAMCommand* command;
	JKRAramPiece::Message* message;
	OSInitMessageQueue(&sMessageQueue, sMessageBuffer, 4);
	do {
		OSReceiveMessage(&sMessageQueue, (OSMessage*)&message, OS_MESSAGE_BLOCKING);
		result = message->unknown_00;
		command = message->command;
		delete message;

		switch (result) {
			case 1:
				JKRAramPiece::startDMA(command);
				break;
		}
	} while (true);
}

inline void checkOkAddress(u8* addr, u32 size, JKRAramBlock* block, u32 arg_4) {
	if (arg_4 == 0) {
		if (!IS_ALIGNED((u32)addr, 0x20) && !IS_ALIGNED(size, 0x20)) {
			OSPanic("JKRAram.cpp", 225, ":::address not 32Byte aligned.");
		}
		return;
	}

	if (block && !IS_ALIGNED((u32)(size + block->address), 0x20)) {
		OSPanic("JKRAram.cpp", 227, ":::address not 32Byte aligned.");
	}
}


inline u8 getAramHeapGroupID() {
	return JKRAram::getAramHeap()->getGroupID();
}

JKRAramBlock* JKRAram::mainRamToAram(u8* buf, u32 buf_size, u32 aligned_size, JKRExpandSwitch expand_switch, u32 file_size, JKRHeap* heap, int id) {

	JKRAramBlock* block = nullptr;
	s32 padding[6];

	checkOkAddress(buf, buf_size, nullptr, 0);
	if (expand_switch == (JKRExpandSwitch)1) {
		expand_switch = (JKRDecomp::checkCompressed(buf) != COMPRESSION_NONE) ? (JKRExpandSwitch)1 : (JKRExpandSwitch)0;
	}

	if (expand_switch == (JKRExpandSwitch)1) {

		u32 expand_size;
		if (JKRDecomp::checkCompressed(buf) != COMPRESSION_NONE) {
			expand_size = JKRDecompExpandSize(buf);
		} else {
			expand_size = 0;
		}
        
		if (file_size == 0 || file_size > expand_size) {
			file_size = expand_size;
		}

		if (buf_size == 0) {
			block = JKRAllocFromAram(file_size, JKRAramHeap::ALLOC_MODE_HEAD);
			if (!block) {
				return nullptr;
			}

			block->group_id = id < 0 ? getAramHeapGroupID() : (u8)id;

			buf_size = block->address;
		}

		if (aligned_size == 0 || aligned_size > expand_size) {
			aligned_size = expand_size;
		}

		if (file_size > aligned_size) {
			file_size = aligned_size;
		}

		u8* allocated_mem = (u8*)JKRAllocFromHeap(heap, file_size, -32);
		if (!allocated_mem) {
			if (block) {
				delete block;
			}
			block = nullptr;
		} else {
			JKRDecomp::orderSync(buf, allocated_mem, file_size, 0);
			JKRAramPiece::orderSync(0, (u32)allocated_mem, buf_size, aligned_size, block);
			JKRHeap::free(allocated_mem, heap);
			block = (!block) ? (JKRAramBlock*)-1 : block;
		}

	} else {

		if (buf_size == 0) {
			block = JKRAllocFromAram(aligned_size, JKRAramHeap::ALLOC_MODE_HEAD);

			block->group_id = id < 0 ? getAramHeapGroupID() : (u8)id;

			if (!block) {
				return nullptr;
			}

			buf_size = block->address;
		}

		JKRAramPiece::orderSync(0, (u32)buf, buf_size, aligned_size, block);
		block = (!block) ? (JKRAramBlock*)-1 : block;

	}
	return block;
}

// TODO: Fix once JKRExpHeap is done
inline void changeGroupIdIfNeed(u8* data, int group_id) {
	JKRHeap* currentHeap = JKRHeap::sCurrentHeap;
	if (currentHeap->getHeapType() == 'EXPH' && group_id >= 0) {
		data[-0xd] = group_id;
	}
}

u8* JKRAram::aramToMainRam(u32 address, u8* buf, u32 size, JKRExpandSwitch expand_switch, u32 max_expand_size, JKRHeap* heap, int id, u32* out_size) {

	JKRCompression compression = COMPRESSION_NONE;

	if (out_size) {
		*out_size = 0;
	}

	checkOkAddress(buf, address, nullptr, 0);

	u32 expand_size;
	if (expand_switch == (JKRExpandSwitch)1) {
		u8 buffer[64];
		s32 padding[10];
		u8* buf_ptr = (u8*)ALIGN_NEXT((u32)buffer, 32);
		JKRAramPcs(1, address, (u32)buf_ptr, 32, nullptr);
		compression = JKRCheckCompressed(buf_ptr);
		expand_size = JKRDecompExpandSize(buf_ptr);
	}

	if (compression == COMPRESSION_YAZ0) { // SZS

		if (max_expand_size != 0 && max_expand_size < expand_size) {
			expand_size = max_expand_size;
		}

		u8* buf2 = buf;

		if (!buf2) {
			buf2 = (u8*)JKRAllocFromHeap(heap, expand_size, 32);
		}

		if (!buf2) {
			return nullptr;
		}

		changeGroupIdIfNeed(buf2, id);
		JKRDecompressFromAramToMainRam(address, buf2, size, expand_size, 0);
		DCStoreRange(buf2, expand_size);
		if (out_size) {
			*out_size = expand_size;
		}
		return buf2;

	} else if (compression == COMPRESSION_YAY0) { // SZP
		u8* szp_space = (u8*)JKRAllocFromHeap(heap, size, -32);

		if (!szp_space) {
			return nullptr;
		} else {

			JKRAramPcs(1, address, (u32)szp_space, size, nullptr);
			if (max_expand_size != 0 && max_expand_size < expand_size) {
				expand_size = max_expand_size;
			}

			u8* buf2 = buf;

			if (!buf) {
				buf2 = (u8*)JKRAllocFromHeap(heap, expand_size, 32);
			}

			if (!buf2) {
				JKRFree(szp_space);
				return nullptr;
			}

			changeGroupIdIfNeed(buf2, id);
			JKRDecompress(szp_space, buf2, expand_size, 0);
			JKRFreeToHeap(heap, szp_space);
			if (out_size) {
				*out_size = expand_size;
			}
			return buf2;

		}
	} else {

		u8* buf2 = buf;

		if (!buf) {
			buf2 = (u8*)JKRAllocFromHeap(heap, size, 32);
		}

		if (!buf2) {
			return nullptr;
		}

		changeGroupIdIfNeed(buf2, id);
		JKRAramPcs(1, address, (u32)buf2, size, nullptr);
		if (out_size) {
			*out_size = size;
		}
		return buf2;

	}

}

static u8* szpBuf;
static u8* szpEnd;
static u8* refBuf;
static u8* refCurrent;
static u8* refEnd;
static u8* srcAddress;
static u32 srcOffset;
static u32 transLeft;
static u8* srcLimit;
static u32 fileOffset;
static u32 readCount;
static u32 maxDest;

static u8* firstSrcData();
static int decompSZS_subroutine(u8* arg_0, u8* arg_1);
static u8* nextSrcData(u8*);

s32 JKRDecompressFromAramToMainRam(u32 src, void* dst, u32 src_length, u32 dst_length, u32 offset) {

	szpBuf = (u8*)JKRAllocFromSysHeap(0x400, 0x20);
	szpEnd = szpBuf + 0x400;

	if (offset != 0) {
		refBuf = (u8*)JKRAllocFromSysHeap(0x1120, 0);
		refCurrent = refBuf;
		refEnd = refBuf + 0x1120;
	} else {
		refBuf = nullptr;
	}

	srcAddress = (u8*)src;
	srcOffset = 0;

	transLeft = (src_length != 0) ? src_length : -1;

	fileOffset = offset;
	readCount = 0;
	maxDest = dst_length;

	decompSZS_subroutine(firstSrcData(), (u8*)dst);

	JKRFree(szpBuf);

	if (refBuf) {
		JKRFree(refBuf);
	}

	return 0;

}

static int decompSZS_subroutine(u8* src, u8* dest) {
	u8* end_ptr;
	s32 valid_bit_count = 0;
	s32 curr_code_byte = 0;

	if (src[0] != 'Y' || src[1] != 'a' || src[2] != 'z' || src[3] != '0') {
		return -1;
	}

	end_ptr = dest + (((SYaz0Header*)src)->length - fileOffset);
	if (end_ptr > dest + maxDest) {
		end_ptr = dest + maxDest;
	}

	src += 0x10;
	do {
		if (valid_bit_count == 0) {
			if ((src > srcLimit) && transLeft) {
				src = nextSrcData(src);
			}
			curr_code_byte  = *src;
			valid_bit_count = 8;
			src++;
		}
		if (curr_code_byte & 0x80) {
			if (fileOffset != 0) {
				if (readCount >= fileOffset) {
					*dest = *src;
					dest++;
					if (dest == end_ptr) {
						break;
					}
				}
				*(refCurrent++) = *src;
				if (refCurrent == refEnd) {
					refCurrent = refBuf;
				}
				src++;
			} else {
				*dest = *src;
				dest++;
				src++;
				if (dest == end_ptr) {
					break;
				}
			}
			readCount++;
		} else {
			u32 dist     = src[1] | (src[0] & 0x0f) << 8;
			s32 num_bytes = src[0] >> 4;
			src += 2;
			u8* copy_source;
			if (fileOffset != 0) {
				copy_source = refCurrent - dist - 1;
				if (copy_source < refBuf) {
					copy_source += refEnd - refBuf;
				}
			} else {
				copy_source = dest - dist - 1;
			}
			if (num_bytes == 0) {
				num_bytes = *src + 0x12;
				src += 1;
			} else {
				num_bytes += 2;
			}
			if (fileOffset != 0) {
				do {
					if (readCount >= fileOffset) {
						*dest = *copy_source;
						dest++;
						if (dest == end_ptr) {
							break;
						}
					}
					*(refCurrent++) = *copy_source;
					if (refCurrent == refEnd) {
						refCurrent = refBuf;
					}
					copy_source++;
					if (copy_source == refEnd) {
						copy_source = refBuf;
					}
					readCount++;
					num_bytes--;
				} while (num_bytes != 0);
			} else {
				do {
					*dest = *copy_source;
					dest++;
					if (dest == end_ptr) {
						break;
					}
					readCount++;
					num_bytes--;
					copy_source++;
				} while (num_bytes != 0);
			}
		}
		curr_code_byte <<= 1;
		valid_bit_count--;
	} while (dest < end_ptr);
	return 0;
}

static u8* firstSrcData() {
	srcLimit = szpEnd - 0x19;
	u8* buf = szpBuf;
	u32 max = (szpEnd - szpBuf);
	u32 trans_size = (transLeft < max) ? transLeft : max;

	JKRAramPcs(1, (u32)(srcAddress + srcOffset), (u32)buf, ALIGN_NEXT(trans_size, 32), nullptr);

	srcOffset += trans_size;
	transLeft -= trans_size;

	return buf;
}

static u8* nextSrcData(u8* current) {
	u8* dest;
	u32 left = (u32)(szpEnd - current);
	if (IS_NOT_ALIGNED(left, 0x20)) {
		dest = szpBuf + 0x20 - (left & (0x20 - 1));
	} else {
		dest = szpBuf;
	}

	memcpy(dest, current, left);
	u32 trans_size = (u32)(szpEnd - (dest + left));
	if (trans_size > transLeft) {
		trans_size = transLeft;
	}

	JKRAramPcs(1, (u32)(srcAddress + srcOffset), ((u32)dest + left), ALIGN_NEXT(trans_size, 0x20), nullptr);
	srcOffset += trans_size;
	transLeft -= trans_size;

	if (transLeft == 0) {
		srcLimit = (dest + left) + trans_size;
	}

	return dest;
}
