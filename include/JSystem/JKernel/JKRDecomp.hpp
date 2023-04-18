#ifndef JSYSTEM_JKERNEL_JKRDECOMP_H
#define JSYSTEM_JKERNEL_JKRDECOMP_H

#include "JSystem/JKernel/JKRCompression.hpp"
#include "JSystem/JKernel/JKRThread.hpp"

class JKRAMCommand;

class JKRDecompCommand {

	public:

	typedef void (*AsyncCallback)(u32);

	JKRDecompCommand();
	~JKRDecompCommand();

	u32 unknown_00;
	u8* src_buffer;
	u8* dst_buffer;
	u32 src_length;
	u32 dst_length;
	AsyncCallback callback;
	JKRDecompCommand* self;
	OSMessageQueue* unknown_1C;
	s32 unknown_20;
	JKRAMCommand* am_command;
	OSMessageQueue message_queue;
	OSMessage message;

};

class JKRDecomp : public JKRThread {

	public:

	JKRDecomp(s32);

	virtual ~JKRDecomp();

	virtual void* run();

	static JKRDecomp* create(s32);
	static void sendCommand(JKRDecompCommand*);
	static inline bool sync(JKRDecompCommand*, int);
	static inline JKRDecompCommand* prepareCommand(u8*, u8*, u32, u32, JKRDecompCommand::AsyncCallback);
	static inline JKRDecompCommand* orderAsync(u8*, u8*, u32, u32, JKRDecompCommand::AsyncCallback);
	static bool orderSync(u8*, u8*, u32, u32);
	static void decode(u8*, u8*, u32, u32);
	static void decodeSZP(u8*, u8*, u32, u32);
	static void decodeSZS(u8*, u8*, u32, u32);
	static JKRCompression checkCompressed(u8*);

	static JKRDecomp* sDecompObject;
	static OSMessage sMessageBuffer[4];
	static OSMessageQueue sMessageQueue;

};

inline u32 JKRDecompExpandSize(u8* buffer) {
	return (buffer[4] << 0x18) | (buffer[5] << 0x10) | (buffer[6] << 8) | buffer[7];
}

inline JKRCompression JKRCheckCompressed(u8* buffer) {
	return JKRDecomp::checkCompressed(buffer);
}

inline void JKRDecompress(u8 * src, u8 * dst, u32 expand_size, u32 dst_size) {
	JKRDecomp::orderSync(src, dst, expand_size, dst_size);
}

#endif