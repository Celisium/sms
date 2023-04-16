#ifndef JSYSTEM_JKERNEL_JKRARAMSTREAM_H
#define JSYSTEM_JKERNEL_JKRARAMSTREAM_H

#include "JSystem/JKernel/JKRThread.hpp"
#include "JSystem/JSupport/JSUFileStream.hpp"

class JKRAramStreamCommand {

	public:

	enum Type {
		ARAM_STREAM_CMD_UNKNOWN = 0,
		ARAM_STREAM_CMD_READ = 1,
		ARAM_STREAM_CMD_WRITE = 2,
	};

	JKRAramStreamCommand();

	Type type;
	u32 address;
	u32 size;
	u32 unknown_0C;
	JSUFileInputStream* stream;
	u32 offset;
	u8* transfer_buffer;
	u32 transfer_buffer_size;
	JKRHeap* heap;
	bool allocated_transfer_buffer;
	u32 unknown_2C;
	OSMessageQueue message_queue;
	OSMessage message;
	u32 unknown_54;
	u32 unknown_58;
};

class JKRAramStream : public JKRThread {

	public:

	JKRAramStream(s32);

	virtual ~JKRAramStream();

	virtual void* run();

	static JKRAramStream* create(s32);

	static s32 readFromAram();
	static s32 writeToAram(JKRAramStreamCommand*);
	static JKRAramStreamCommand* write_StreamToAram_Async(JSUFileInputStream*, u32, u32, u32);
	static JKRAramStreamCommand* sync(JKRAramStreamCommand*, BOOL);
	static void setTransBuffer(u8*, u32, JKRHeap*);

	static JKRAramStream* sAramStreamObject;
	static OSMessage sMessageBuffer[4];
	static OSMessageQueue sMessageQueue;
	static u8* transBuffer;
	static u32 transSize;
	static JKRHeap* transHeap;
};

#endif
