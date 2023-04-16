#include "JSystem/JKernel/JKRAramStream.hpp"

#include "JSystem/JKernel/JKRAramPiece.hpp"

OSMessage JKRAramStream::sMessageBuffer[4] = {};
OSMessageQueue JKRAramStream::sMessageQueue = {};
JKRAramStream* JKRAramStream::sAramStreamObject;
u8* JKRAramStream::transBuffer;
u32 JKRAramStream::transSize;
JKRHeap* JKRAramStream::transHeap;

JKRAramStream* JKRAramStream::create(s32 priority) {
	if (!sAramStreamObject) {
		sAramStreamObject = new (JKRHeap::sSystemHeap, 0) JKRAramStream(priority);
		setTransBuffer(nullptr, 0, nullptr);
	}

	return sAramStreamObject;
}

JKRAramStream::JKRAramStream(s32 priority) : JKRThread(0x4000, 0x10, priority) {
	OSResumeThread(this->thread_record);
}

JKRAramStream::~JKRAramStream() {}

void* JKRAramStream::run() {
	OSInitMessageQueue(&sMessageQueue, sMessageBuffer, 4);

	for (;;) {
		OSMessage message;
		OSReceiveMessage(&sMessageQueue, &message, OS_MESSAGE_BLOCKING);
		JKRAramStreamCommand* command = (JKRAramStreamCommand*)message;

		switch (command->type) {
			case JKRAramStreamCommand::ARAM_STREAM_CMD_READ:
				readFromAram();
				break;
			case JKRAramStreamCommand::ARAM_STREAM_CMD_WRITE:
				writeToAram(command);
				break;
		}
	}
}

s32 JKRAramStream::readFromAram() {
	return 1;
}

s32 JKRAramStream::writeToAram(JKRAramStreamCommand* command) {

	u32 buffer_size;
	u32 dst_size;
	u32 offset;
	u32 written_length;
	u8* buffer;
	u32 destination;

	dst_size = command->size;
	offset = command->offset;
	destination = command->address;
	written_length = 0;
	buffer = command->transfer_buffer;
	buffer_size = command->transfer_buffer_size;
	JKRHeap* heap = command->heap;

	if (buffer) {
		buffer_size = !buffer_size ? 0x8000 : buffer_size;

		command->transfer_buffer_size = buffer_size;
		command->allocated_transfer_buffer = false;
	} else {
		buffer_size = !buffer_size ? 0x8000 : buffer_size;

		if (heap) {
			buffer = command->transfer_buffer = (u8*)JKRAllocFromHeap(heap, buffer_size, -0x20);
		} else {
			buffer = command->transfer_buffer = (u8*)JKRAllocFromHeap(nullptr, buffer_size, -0x20);
		}

		command->transfer_buffer_size = buffer_size;
		command->allocated_transfer_buffer = true;
	}

	if (!buffer) {
		if (!heap) {
			JKRHeap::sCurrentHeap->dump();
		} else {
			heap->dump();
		}

		OSPanic("JKRAramStream.cpp", 169, "abort\n");
	}

	if (buffer) {
		command->stream->seek(offset, JSUSTREAM_SEEK_SET);

		while (dst_size != 0) {
			u32 length = (dst_size > buffer_size) ? buffer_size : dst_size;

			command->stream->read(buffer, length);
			JKRAramPiece::orderSync(0,(u32)buffer, destination, length, nullptr);
			dst_size -= length;
			offset += length;
			written_length += length;
			destination += length;

		}

		if (command->allocated_transfer_buffer) {
			JKRHeap::free(buffer, nullptr);
			command->allocated_transfer_buffer = false;
		}
	}

	OSSendMessage(&command->message_queue, (OSMessage)written_length, OS_MESSAGE_NON_BLOCKING);
	return written_length;
}

JKRAramStreamCommand* JKRAramStream::write_StreamToAram_Async(JSUFileInputStream* stream, u32 addr, u32 size, u32 offset) {
	JKRAramStreamCommand* command = new (JKRHeap::getSystemHeap(), -4) JKRAramStreamCommand();
	command->type = JKRAramStreamCommand::ARAM_STREAM_CMD_WRITE;
	command->address = addr;
	command->size = size;
	command->stream = stream;
	command->unknown_2C = 0;
	command->offset = offset;
	command->transfer_buffer = transBuffer;
	command->heap = transHeap;
	command->transfer_buffer_size = transSize;

	OSInitMessageQueue(&command->message_queue, &command->message, 1);
	OSSendMessage(&sMessageQueue, command, OS_MESSAGE_BLOCKING);
	return command;
}

JKRAramStreamCommand* JKRAramStream::sync(JKRAramStreamCommand* command, BOOL is_non_blocking) {
	OSMessage message;
	if (is_non_blocking == 0) {
		OSReceiveMessage(&command->message_queue, &message, OS_MESSAGE_BLOCKING);
		if (message == nullptr) {
			command = nullptr;
		return command;
		} else {
			return command;
		}
	} else {
		BOOL receive_result =
		OSReceiveMessage(&command->message_queue, &message, OS_MESSAGE_NON_BLOCKING);
		if (receive_result == 0) {
			command = nullptr;
			return command;
		} else if (message == nullptr) {
			command = nullptr;
			return command;
		} else {
			return command;
		}
	}
}

void JKRAramStream::setTransBuffer(u8* buffer, u32 buffer_size, JKRHeap* heap) {
	transBuffer = nullptr;
	transSize = 0x8000;
	transHeap = nullptr;

	if (buffer) {
		transBuffer = (u8*)ALIGN_NEXT((u32)buffer, 0x20);
	}

	if (buffer_size) {
		transSize = ALIGN_PREV(buffer_size, 0x20);
	}

	if (heap && !buffer) {
		transHeap = heap;
	}
}


JKRAramStreamCommand::JKRAramStreamCommand() : allocated_transfer_buffer(false) {}
