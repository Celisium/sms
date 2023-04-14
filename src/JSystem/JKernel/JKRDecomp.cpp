#include "JSystem/JKernel/JKRDecomp.hpp"

#include "JSystem/JKernel/JKRAramPiece.hpp"

JKRDecomp* JKRDecomp::sDecompObject;
OSMessage JKRDecomp::sMessageBuffer[4] = {};
OSMessageQueue JKRDecomp::sMessageQueue = {};

JKRDecomp* JKRDecomp::create(s32 priority) {
	if (!sDecompObject) {
		sDecompObject = new (JKRHeap::sSystemHeap, 0) JKRDecomp(priority);
	}

	return sDecompObject;
}

JKRDecomp::JKRDecomp(s32 priority) : JKRThread(0x4000, 0x10, priority) {
	OSResumeThread(this->thread_record);
}

JKRDecomp::~JKRDecomp() {}

void* JKRDecomp::run() {
	OSInitMessageQueue(&sMessageQueue, sMessageBuffer, 4);
	for (;;) {
		OSMessage message;
		OSReceiveMessage(&sMessageQueue, &message, OS_MESSAGE_BLOCKING);

		JKRDecompCommand* command = (JKRDecompCommand*)message;
		decode(command->src_buffer, command->dst_buffer, command->src_length, command->dst_length);

		if (command->unknown_20 != 0) {
			if (command->unknown_20 == 1) {
				JKRAramPiece::sendCommand(command->am_command);
			}
			continue;
		}

		if (command->callback) {
			(*command->callback)((u32)command);
			continue;
		}

		if (command->unknown_1C) {
			OSSendMessage(command->unknown_1C, (OSMessage)1, OS_MESSAGE_NON_BLOCKING);
		} else {
			OSSendMessage(&command->message_queue, (OSMessage)1, OS_MESSAGE_NON_BLOCKING);
		}
	}
}

void JKRDecomp::sendCommand(JKRDecompCommand* command) {
	OSSendMessage(&sMessageQueue, command, OS_MESSAGE_BLOCKING);
}

inline JKRDecompCommand* JKRDecomp::prepareCommand(u8* src_buffer, u8* dst_buffer, u32 src_length, u32 dst_length, JKRDecompCommand::AsyncCallback callback) {
	JKRDecompCommand* command = new (JKRHeap::getSystemHeap(), -4) JKRDecompCommand();
	command->src_buffer = src_buffer;
	command->dst_buffer = dst_buffer;
	command->src_length = src_length;
	command->dst_length = dst_length;
	command->callback = callback;
	return command;
}

JKRDecompCommand* JKRDecomp::orderAsync(u8* src_buffer, u8* dst_buffer, u32 src_length, u32 dst_length, JKRDecompCommand::AsyncCallback callback) {
	JKRDecompCommand* command = prepareCommand(src_buffer, dst_buffer, src_length, dst_length, callback);
	sendCommand(command);
	return command;
}

bool JKRDecomp::sync(JKRDecompCommand* command, int is_non_blocking) {
	OSMessage message;
	bool result;
	if (!is_non_blocking) {
		OSReceiveMessage(&command->message_queue, &message, OS_MESSAGE_BLOCKING);
		result = true;
	} else {
		result = OSReceiveMessage(&command->message_queue, &message, OS_MESSAGE_NON_BLOCKING) != 0;
	}

	return result;
}

bool JKRDecomp::orderSync(u8* src_buffer, u8* dst_buffer, u32 src_length, u32 dst_length) {
	JKRDecompCommand* command = orderAsync(src_buffer, dst_buffer, src_length, dst_length, nullptr);
	sync(command, 0);
	delete command;
	return true;
}

void JKRDecomp::decode(u8* src_buffer, u8* dst_buffer, u32 src_length, u32 dst_length) {
	JKRCompression compression = checkCompressed(src_buffer);
	if (compression == COMPRESSION_YAY0) {
		decodeSZP(src_buffer, dst_buffer, src_length, dst_length);
	} else if (compression == COMPRESSION_YAZ0) {
		decodeSZS(src_buffer, dst_buffer, src_length, dst_length);
	}
}

#define READ_BIG_ENDIAN(x) (((u32)(x)[0] << 0x18) | ((u32)(x)[1] << 0x10) | ((u32)(x)[2] << 8) | (u32)(x)[3])

void JKRDecomp::decodeSZP(u8* src, u8* dst, u32 src_length, u32 dst_length) {

	s32 src_chunk_offset;
	s32 dst_offset;
	u32 length = src_length;
	s32 decoded_size = READ_BIG_ENDIAN(src + 4);
	s32 link_table_offset = READ_BIG_ENDIAN(src + 8);
	s32 src_data_offset = READ_BIG_ENDIAN(src + 12);

	dst_offset = 0;
	u32 counter = 0;
	src_chunk_offset = 16;
	u32 chunk_bits;

	if (src_length == 0) {
		return;
	}

	if (dst_length > decoded_size) {
		return;
	}

	do {
		if (counter == 0) {
			chunk_bits = READ_BIG_ENDIAN(src + src_chunk_offset);
			src_chunk_offset += sizeof(u32);
			counter = sizeof(u32) * 8;
		}

		if (chunk_bits & 0x80000000) {
			if (dst_length == 0) {
				dst[dst_offset] = src[src_data_offset];
				length--;
				if (length == 0) {
					return;
				}
			} else {
				dst_length--;
			}
			dst_offset++;
			src_data_offset++;
		} else {
			s32 link_info = src[link_table_offset] << 8 | src[link_table_offset + 1];
			link_table_offset += sizeof(u16);

			s32 offset = dst_offset - (link_info & 0xFFF);
			u32 count = (link_info >> 12);
			if (count == 0) {
				count = (s32)src[src_data_offset++] + 0x12;
			} else {
				count += 2;
			}

			if ((s32)count > decoded_size - dst_offset) {
				count = decoded_size - dst_offset;
			}

			for (s32 i = 0; i < (s32)count; i++, dst_offset++, offset++) {
				if (dst_length == 0) {
					dst[dst_offset] = dst[offset - 1];
					length--;
					if (length == 0) {
						return;
					}
				} else
				dst_length--;
			}
		}

		chunk_bits <<= 1;
		counter--;
	} while (dst_offset < decoded_size);
}

void JKRDecomp::decodeSZS(u8* src_buffer, u8* dst_buffer, u32 src_size, u32 dst_size) {
	u8* decomp_end = dst_buffer + *(int*)(src_buffer + 4) - dst_size;
	s32 copy_byte_count;
	u8* copy_start;
	s32 chunk_bits_left = 0;

	if (src_size == 0) {
		return;
	}

	if (dst_size > *(u32*)src_buffer) {
		return;
	}

	s32 chunk_bits;
	u8* cur_src_pos = src_buffer + 0x10;

	do {
		if (chunk_bits_left == 0) {
			chunk_bits = *cur_src_pos;
			cur_src_pos++;
			chunk_bits_left = 8;
		}
		if ((chunk_bits & 0x80) != 0) {
			if (dst_size == 0) {
				*dst_buffer = *cur_src_pos;
				src_size--;
				dst_buffer++;
				if (src_size == 0) {
					return;
				}
			} else {
				dst_size--;
			}
			cur_src_pos++;
		} else {
			u8 cur_val = *cur_src_pos;

			copy_start = dst_buffer - ((cur_val & 0xF) << 8 | cur_src_pos[1]);
			cur_src_pos += 2;

			u32 cur_val_shifted = (cur_val >> 4);
			if (cur_val_shifted == 0) {
				copy_byte_count = *cur_src_pos + 0x12;
				cur_src_pos++;
			} else {
				copy_byte_count = (cur_val_shifted) + 2;
			}

			do {
				if (dst_size == 0) {
					*dst_buffer = *(copy_start - 1);
					src_size--;
					dst_buffer++;
					if (src_size == 0) {
						return;
					}
				} else {
					dst_size--;
				}
				copy_byte_count--;
				copy_start++;
			} while (copy_byte_count != 0);
		}
		chunk_bits <<= 1;
		chunk_bits_left--;
	} while (dst_buffer != decomp_end);
}

JKRCompression JKRDecomp::checkCompressed(u8* src) {
	if ((src[0] == 'Y') && (src[1] == 'a') && (src[3] == '0')) {
		if (src[2] == 'y') {
			return COMPRESSION_YAY0;
		}

		if (src[2] == 'z') {
			return COMPRESSION_YAZ0;
		}
	}

	return COMPRESSION_NONE;
}

JKRDecompCommand::JKRDecompCommand() {
	OSInitMessageQueue(&this->message_queue, &this->message, 1);
	this->callback = nullptr;
	this->unknown_1C = nullptr;
	this->self = this;
	this->unknown_20 = 0;
}

JKRDecompCommand::~JKRDecompCommand() {}
