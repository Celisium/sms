#ifndef JSYSTEM_JKERNEL_JKRARAMPIECE_H
#define JSYSTEM_JKERNEL_JKRARAMPIECE_H

#include "dolphin/ar/arq.h"
#include "JSystem/JSupport/JSUList.hpp"
#include "JSystem/JKernel/JKRAramBlock.hpp"
#include "JSystem/JKernel/JKRDecomp.hpp"

class JKRAMCommand {

	public:

	typedef void (*AsyncCallback)(u32);

	JKRAMCommand();
	~JKRAMCommand();

	ARQRequest request;
	JSULink<JKRAMCommand> link;
	JSULink<JKRAMCommand> unknown_30;
	s32 transfer_direction;
	u32 data_length;
	u32 src;
	u32 dst;
	JKRAramBlock* aram_block;
	u32 unknown_54;
	AsyncCallback callback;
	OSMessageQueue* unknown_5C;
	s32 unknown_60;
	JKRDecompCommand* decomp_command;
	OSMessageQueue message_queue;
	OSMessage message;
	void* unknown_8C;
	void* unknown_90;
	void* unknown_94;

};

class JKRAramPiece {

	public:

	struct Message {
		s32 unknown_00;
		JKRAMCommand* command;
	};

	static void sendCommand(JKRAMCommand*);
	static inline JKRAMCommand* prepareCommand(int, u32, u32, u32, JKRAramBlock*, JKRAMCommand::AsyncCallback);
	static JKRAMCommand* orderAsync(int, u32, u32, u32, JKRAramBlock*, JKRAMCommand::AsyncCallback);
	static inline BOOL sync(JKRAMCommand*, int);
	static BOOL orderSync(int, u32, u32, u32, JKRAramBlock*);
	static void startDMA(JKRAMCommand*);
	static void doneDMA(u32);

	static JSUList<JKRAMCommand> sAramPieceCommandList;
	static OSMutex mMutex;

};

inline BOOL JKRAramPcs(int direction, u32 source, u32 destination, u32 length, JKRAramBlock* block) {
	return JKRAramPiece::orderSync(direction, source, destination, length, block);
}

#endif
