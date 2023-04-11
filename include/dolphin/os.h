#ifndef _DOLPHIN_OS_H
#define _DOLPHIN_OS_H

#include "dolphin/types.h"
#include "dolphin/os/OSContext.h"
#include "dolphin/os/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

// __ppc_eabi_init
extern void __OSPSInit();
extern void __OSFPRInit();
extern void __OSCacheInit();

// OS logging
void OSReport(const char*, ...);
void OSPanic(const char* file, int line, const char* message, ...);
#define OSError(...) OSPanic(__FILE__, __LINE__, __VA_ARGS__)
#ifndef MATCHING
#define OSErrorLine(line, ...) OSError(__VA_ARGS__)
#else
#define OSErrorLine(line, ...) OSPanic(__FILE__, line, __VA_ARGS__)
#endif

// TODO: fill these structs
typedef struct OSMessageQueue {
	char filler[32];
} OSMessageQueue;
typedef struct OSMessage {
	void* message;
	u32 args[3];
};

#define OS_MESSAGE_NON_BLOCKING 0
#define OS_MESSAGE_BLOCKING     1

void OSInitMessageQueue(OSMessageQueue* queue, void** msgSlots, int slotCount);
BOOL OSSendMessage(OSMessageQueue* queue, void* message, int flags);
BOOL OSReceiveMessage(OSMessageQueue* queue, void* msg, int flags);

// OSArena
extern void* __OSArenaHi;
extern int __OSCurrHeap;

void* OSGetArenaHi(void);
void* OSGetArenaLo(void);

void OSSetArenaHi(void* addr);
void OSSetArenaLo(void* addr);

// OSMemory
extern void* OSInitAlloc(void* arenaStart, void* arenaEnd, int maxHeaps);

extern int OSCreateHeap(void* start, void* end);
extern int OSSetCurrentHeap(int);
extern void OSFreeToHeap(int, void*);

// OSLink
void __OSModuleInit(void);

// targsupp
extern void TRKAccessFile(void);
extern void TRKCloseFile(void);

typedef struct OSFstEntry {
	int m_entryNum;
	int m_nextEntryNum;
	char* m_fileNameMaybe;
} OSFstEntry;

void DCInvalidateRange(void* addr, u32 nBytes);
void DCFlushRange(void* addr, u32 nBytes);
void DCStoreRange(void* addr, u32 nBytes);
void DCFlushRangeNoSync(void* addr, u32 nBytes);
void DCStoreRangeNoSync(void* addr, u32 nBytes);
void DCZeroRange(void* addr, u32 nBytes);
void DCTouchRange(void* addr, u32 nBytes);

void ICInvalidateRange(void* addr, u32 nBytes);

#define LC_BASE_PREFIX 0xE000
#define LC_BASE        (LC_BASE_PREFIX << 16)

void LCEnable(void);
void LCDisable(void);
void LCLoadBlocks(void* destTag, void* srcAddr, u32 numBlocks);
void LCStoreBlocks(void* destAddr, void* srcTag, u32 numBlocks);
u32 LCLoadData(void* destAddr, void* srcAddr, u32 nBytes);
u32 LCStoreData(void* destAddr, void* srcAddr, u32 nBytes);
u32 LCQueueLength(void);
void LCQueueWait(u32 len);
void LCFlushQueue(void);

#define LCGetBase() ((void*)LC_BASE)

u64 OSGetTime();

#define HW_REG(reg, type) *(volatile type*)(uintptr_t)(reg) // manually added

// u32 GameCode : 0x80000000;
// u32 FSTLocationInRam : 0x80000038;

// Rounds to nearest multiple of 20 upwards and downwards
#define OSRoundUp32B(x)   (((u32)(x) + 0x1F) & ~(0x1F))
#define OSRoundDown32B(x) (((u32)(x)) & ~(0x1F))

typedef struct DVDDiskID {
    /* 0x00 */ char game_name[4];
    /* 0x04 */ char company[2];
    /* 0x06 */ u8 disk_number;
    /* 0x07 */ u8 game_version;
    /* 0x08 */ u8 is_streaming;
    /* 0x09 */ u8 streaming_buffer_size;
    /* 0x0A */ u8 padding[22];
} DVDDiskID;

struct GLOBAL_MEMORY {
    DVDDiskID disk;
    u32 nintendo_boot_code; /* Nintendo Standard Boot Code. */
    u32 field_0x24;         /* 	Version (set by apploader) */
    u32 memory_size;        /* Memory Size (Physical) 24MB */
    u32 field_0x2c;         /* Production Board Model */
    u32 arena_low;          /* 	Arena Low */
    u32 arena_high;         /* 	Arena High */
    u32 field_0x38;         /* 	Start of FST (varies in all games) */
    u32 field_0x3c;         /* Maximum FST Size (varies in all games) */
    u8 padding_0x40[32];
    u8 field_0x60[36]; /* Hook is PPC assembler used by Debugger.  */
    u8 padding_0x84[84];
    OSContext* field_0xd8; /* Current OSContext instance. */
    OSThread* field_0xdc;  /* OSThread pointer, previously created thread. */
    OSThread* field_0xe0;  /* OSThread pointer, most recently created thread. */
    OSThread* field_0xe4;  /* Current thread pointer. */
    u32 field_0xe8;        /* Dev Debugger Monitor Address (If present) */
    u32 field_0xec;        /* Simulated Memory Size */
    u32 field_0xf0;        /* Pointer to data read from partition's bi2.bin, set by apploader */
    u32 field_0xf4;        /* Console Bus Speed */
    u32 field_0xf8;        /* Console CPU Speed */
    u8 padding_0xfc[5892];
    u8 field_0x1800[6144]; /* Unused Exception Vector */
    u8 padding_0x3000[64];
    u32 field_0x3040[34]; /* 	__OSInterrupt table. */
    u32 field_0x30c8;     /* Pointer to the first loaded REL file. */
    u32 field_0x30cc;     /* Pointer to the last loaded REL file. */
    u32 field_0x30d0;     /* Pointer to a REL module name table, or 0. */
    u8 padding_0x30d8[4];
    u64 field_0x30d8; /* System time */
    u8 padding_0x30e0[4];
    u32 field_0x30e4; /* __OSPADButton */
    u8 padding_0x30ec[8];
    u32 field_0x30f0; /* DOL Execute Parameters */
    u8 padding_0x30f4[12];
    u32 field_0x3100; /* Physical MEM1 size */
    u32 field_0x3104; /* Simulated MEM1 size */
    u8 padding_0x3108[8];
    u32 field_0x3110; /* Heap pointer (end of usable memory by the game) */
    u8 padding_0x3114[4];
    u32 field_0x3118; /* 	Physical MEM2 size */
    u32 field_0x311c; /* Simulated MEM2 size */
    u8 padding_0x3120[16];
    u32 field_0x3130; /* IOS Heap Range (start) */
    u32 field_0x3134; /* IOS Heap Range (end) */
    u32 field_0x3138; /* Hollywood Version */
    u8 padding_0x313c[4];
    u32 field_0x3140; /* 	IOS version */
    u32 field_0x3144; /* 	IOS Build Date */
    u8 padding_0x3148[16];
    u32 field_0x3158; /* 	GDDR Vendor Code */
    u32 field_0x315c; /* During the boot process, */
    u32 field_0x3160; /* Init semaphore (1-2 main() waits for this to clear) */
    u32 field_0x3164; /* GC (MIOS) mode flag? */
    u8 padding_0x3168[24];
    u32 field_0x3180; /* 	Game ID */
    u8 field_0x3184;  /* Application type. 0x80 for disc games, 0x81 for channels. */
    u8 padding_0x3185;
    u8 field_0x3186; /* Application type 2 */
    u8 padding_0x3187;
    u32 field_0x3188; /* Minimum IOS version */
    u32 field_0x318c; /* 	Title Booted from NAND (Launch Code) */
    u32 field_0x3190; /* 	Title Booted from NAND (Return Code) */
    u32 field_0x3194; /* While reading a disc, the system menu reads the first partition table (0x20
                         bytes from 0x00040020) and stores a pointer to the data partition entry.
                         When launching the disc game, it copies the partition type to 0x3194. The
                         partition type for data partitions is 0, so typically this location always
                         has 0. */
    u32 field_0x3198; /* While reading a disc, the system menu reads the first partition table (0x20
                         bytes from 0x00040020) and stores a pointer to the data partition entry.
                         When launching the disc game, it copies the partition offset to 0x3198. */
    u32 field_0x319c; /* Set by the apploader to 0x80 for single-layer discs and 0x81 for dual-layer
                         discs (determined by whether 0x7ed40000 is the value at offset 0x30 in the
                         partition's bi2.bin; it seems that that value is 0 for single-layer discs).
                         Early titles' apploaders do not set it at all, leaving the value as 0. This
                         controls the /dev/di#0x8D_DVDLowUnencryptedRead out-of-bounds Error #001
                         read for titles that do make such a read: they try to read at 0x7ed40000
                         for dual-layer discs and 0x460a0000 for single-layer discs. */
    u8 field_0x31a0[3424];
};

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
