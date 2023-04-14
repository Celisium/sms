#include "JSystem/JKernel/JKRAramPiece.hpp"

#include "bss_extra.hpp"
#include "JSystem/JKernel/JKRAram.hpp"

void JKRAramPiece::sendCommand(JKRAMCommand* command) {
	startDMA(command);
}

JKRAMCommand* JKRAramPiece::prepareCommand(int direction, u32 src, u32 dst, u32 length, JKRAramBlock* block, JKRAMCommand::AsyncCallback callback) {
	JKRAMCommand* command = new (JKRHeap::getSystemHeap(), -4) JKRAMCommand();
	command->transfer_direction = direction;
	command->src = src;
	command->dst = dst;
	command->aram_block = block;
	command->data_length = length;
	command->callback = callback;
	return command;
}

JKRAMCommand* JKRAramPiece::orderAsync(int direction, u32 source, u32 destination, u32 length, JKRAramBlock* block, JKRAMCommand::AsyncCallback callback) {
    
	OSLockMutex(&mMutex);

	if ((source & 0x1f) != 0 || (destination & 0x1f) != 0) {
		OSReport("direction = %x\n", direction);
		OSReport("source = %x\n", source);
		OSReport("destination = %x\n", destination);
		OSReport("length = %x\n", length);
		OSPanic("JKRAramPiece.cpp", 102, "Abort.");
	}

	Message* message = new (JKRHeap::getSystemHeap(), -4) Message();
	JKRAMCommand* command = JKRAramPiece::prepareCommand(direction, source, destination, length, block, callback);
	message->unknown_00 = 1;
	message->command = command;

	OSSendMessage(&JKRAram::sMessageQueue, message, OS_MESSAGE_BLOCKING);
	if (command->callback != nullptr) {
		sAramPieceCommandList.append(&command->link);
	}

	OSUnlockMutex(&mMutex);
	return command;
}

BOOL JKRAramPiece::sync(JKRAMCommand* command, int is_non_blocking) {
	OSMessage message;

	OSLockMutex(&mMutex);
	if (is_non_blocking == FALSE) {
		OSReceiveMessage(&command->message_queue, &message, OS_MESSAGE_BLOCKING);
		sAramPieceCommandList.remove(&command->link);
		OSUnlockMutex(&mMutex);
		return TRUE;
	}

	BOOL result = OSReceiveMessage(&command->message_queue, &message, OS_MESSAGE_NON_BLOCKING);
	if (!result) {
		OSUnlockMutex(&mMutex);
		return FALSE;
	}

	sAramPieceCommandList.remove(&command->link);
	OSUnlockMutex(&mMutex);
	return TRUE;
}

BOOL JKRAramPiece::orderSync(int direction, u32 source, u32 destination, u32 length, JKRAramBlock* block) {
	OSLockMutex(&mMutex);

	JKRAMCommand* command = JKRAramPiece::orderAsync(direction, source, destination, length, block, nullptr);
	JKRAramPiece::sync(command, 0);
	delete command;

	OSUnlockMutex(&mMutex);
	return TRUE;
}

void JKRAramPiece::startDMA(JKRAMCommand* command) {
	if (command->transfer_direction == 1) {
		DCInvalidateRange((void*)command->dst, command->data_length);
	} else {
		DCStoreRange((void*)command->src, command->data_length);
	}

	ARQPostRequest(&command->request, 0, command->transfer_direction, 0, command->src, command->dst, command->data_length, JKRAramPiece::doneDMA);
}

void JKRAramPiece::doneDMA(u32 request_address) {
	JKRAMCommand* command = (JKRAMCommand*)request_address;

	if (command->transfer_direction == 1) {
		DCInvalidateRange((void*)command->dst, command->data_length);
	}

	if (command->unknown_60 != 0) {
		if (command->unknown_60 == 2) {
			JKRDecomp::sendCommand(command->decomp_command);
		}
		return;
	}

	if (command->callback) {
		(*command->callback)((u32)command);
	} else if (command->unknown_5C) {
		OSSendMessage(command->unknown_5C, command, OS_MESSAGE_NON_BLOCKING);
	} else {
		OSSendMessage(&command->message_queue, command, OS_MESSAGE_NON_BLOCKING);
	}
}

JKRAMCommand::JKRAMCommand() : link(this), unknown_30(this) {
	OSInitMessageQueue(&this->message_queue, &this->message, 1);
	this->callback = nullptr;
	this->unknown_5C = nullptr;
	this->unknown_60 = 0;
	this->unknown_8C = nullptr;
	this->unknown_90 = nullptr;
	this->unknown_94 = nullptr;
}

JKRAMCommand::~JKRAMCommand() {
	if (this->unknown_8C) {
		delete this->unknown_8C;
	}
	if (this->unknown_90) {
		delete this->unknown_90;
	}
	if (this->unknown_94) {
		JKRHeap::free(this->unknown_94, nullptr);
	}
}

SECTION_BSS_EXTRA JSUList<JKRAMCommand> JKRAramPiece::sAramPieceCommandList;
#pragma force_active on
SECTION_BSS_EXTRA s32 bss_padding[6]; // based on the size, this is most likely an unused mutex.
#pragma force_active reset
SECTION_BSS_EXTRA OSMutex JKRAramPiece::mMutex;
