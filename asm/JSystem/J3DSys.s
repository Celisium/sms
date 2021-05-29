.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__6J3DSysFv
__ct__6J3DSysFv:
/* 8002A1D0 00027110  7C 08 02 A6 */	mflr r0
/* 8002A1D4 00027114  90 01 00 04 */	stw r0, 4(r1)
/* 8002A1D8 00027118  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8002A1DC 0002711C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8002A1E0 00027120  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8002A1E4 00027124  7C 7E 1B 78 */	mr r30, r3
/* 8002A1E8 00027128  48 00 E7 09 */	bl makeTexCoordTable__Fv
/* 8002A1EC 0002712C  48 00 ED D1 */	bl makeTevSwapTable__Fv
/* 8002A1F0 00027130  48 00 E8 ED */	bl makeAlphaCmpTable__Fv
/* 8002A1F4 00027134  48 00 EC 91 */	bl makeZModeTable__Fv
/* 8002A1F8 00027138  3B E0 00 00 */	li r31, 0
/* 8002A1FC 0002713C  93 FE 00 34 */	stw r31, 0x34(r30)
/* 8002A200 00027140  7F C3 F3 78 */	mr r3, r30
/* 8002A204 00027144  48 06 A0 AD */	bl PSMTXIdentity
/* 8002A208 00027148  38 00 00 01 */	li r0, 1
/* 8002A20C 0002714C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8002A210 00027150  3C 60 80 40 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8002A214 00027154  38 83 10 CC */	addi r4, r3, sTexCoordScaleTable__6J3DSys@l
/* 8002A218 00027158  93 FE 00 50 */	stw r31, 0x50(r30)
/* 8002A21C 0002715C  7F C3 F3 78 */	mr r3, r30
/* 8002A220 00027160  93 FE 00 38 */	stw r31, 0x38(r30)
/* 8002A224 00027164  93 FE 00 40 */	stw r31, 0x40(r30)
/* 8002A228 00027168  93 FE 00 44 */	stw r31, 0x44(r30)
/* 8002A22C 0002716C  93 FE 00 48 */	stw r31, 0x48(r30)
/* 8002A230 00027170  93 FE 00 54 */	stw r31, 0x54(r30)
/* 8002A234 00027174  93 FE 01 04 */	stw r31, 0x104(r30)
/* 8002A238 00027178  93 FE 01 08 */	stw r31, 0x108(r30)
/* 8002A23C 0002717C  93 FE 01 0C */	stw r31, 0x10c(r30)
/* 8002A240 00027180  93 FE 01 10 */	stw r31, 0x110(r30)
/* 8002A244 00027184  93 FE 01 14 */	stw r31, 0x114(r30)
/* 8002A248 00027188  93 FE 01 18 */	stw r31, 0x118(r30)
/* 8002A24C 0002718C  93 FE 01 00 */	stw r31, 0x100(r30)
/* 8002A250 00027190  93 FE 01 1C */	stw r31, 0x11c(r30)
/* 8002A254 00027194  B0 04 00 00 */	sth r0, 0(r4)
/* 8002A258 00027198  B0 04 00 02 */	sth r0, 2(r4)
/* 8002A25C 0002719C  B3 E4 00 04 */	sth r31, 4(r4)
/* 8002A260 000271A0  B3 E4 00 06 */	sth r31, 6(r4)
/* 8002A264 000271A4  B0 04 00 08 */	sth r0, 8(r4)
/* 8002A268 000271A8  B0 04 00 0A */	sth r0, 0xa(r4)
/* 8002A26C 000271AC  B3 E4 00 0C */	sth r31, 0xc(r4)
/* 8002A270 000271B0  B3 E4 00 0E */	sth r31, 0xe(r4)
/* 8002A274 000271B4  B0 04 00 10 */	sth r0, 0x10(r4)
/* 8002A278 000271B8  B0 04 00 12 */	sth r0, 0x12(r4)
/* 8002A27C 000271BC  B3 E4 00 14 */	sth r31, 0x14(r4)
/* 8002A280 000271C0  B3 E4 00 16 */	sth r31, 0x16(r4)
/* 8002A284 000271C4  B0 04 00 18 */	sth r0, 0x18(r4)
/* 8002A288 000271C8  B0 04 00 1A */	sth r0, 0x1a(r4)
/* 8002A28C 000271CC  B3 E4 00 1C */	sth r31, 0x1c(r4)
/* 8002A290 000271D0  B3 E4 00 1E */	sth r31, 0x1e(r4)
/* 8002A294 000271D4  B0 04 00 20 */	sth r0, 0x20(r4)
/* 8002A298 000271D8  B0 04 00 22 */	sth r0, 0x22(r4)
/* 8002A29C 000271DC  B3 E4 00 24 */	sth r31, 0x24(r4)
/* 8002A2A0 000271E0  B3 E4 00 26 */	sth r31, 0x26(r4)
/* 8002A2A4 000271E4  B0 04 00 28 */	sth r0, 0x28(r4)
/* 8002A2A8 000271E8  B0 04 00 2A */	sth r0, 0x2a(r4)
/* 8002A2AC 000271EC  B3 E4 00 2C */	sth r31, 0x2c(r4)
/* 8002A2B0 000271F0  B3 E4 00 2E */	sth r31, 0x2e(r4)
/* 8002A2B4 000271F4  B0 04 00 30 */	sth r0, 0x30(r4)
/* 8002A2B8 000271F8  B0 04 00 32 */	sth r0, 0x32(r4)
/* 8002A2BC 000271FC  B3 E4 00 34 */	sth r31, 0x34(r4)
/* 8002A2C0 00027200  B3 E4 00 36 */	sth r31, 0x36(r4)
/* 8002A2C4 00027204  B0 04 00 38 */	sth r0, 0x38(r4)
/* 8002A2C8 00027208  B0 04 00 3A */	sth r0, 0x3a(r4)
/* 8002A2CC 0002720C  B3 E4 00 3C */	sth r31, 0x3c(r4)
/* 8002A2D0 00027210  B3 E4 00 3E */	sth r31, 0x3e(r4)
/* 8002A2D4 00027214  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8002A2D8 00027218  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8002A2DC 0002721C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8002A2E0 00027220  38 21 00 30 */	addi r1, r1, 0x30
/* 8002A2E4 00027224  7C 08 03 A6 */	mtlr r0
/* 8002A2E8 00027228  4E 80 00 20 */	blr 

.global loadPosMtxIndx__6J3DSysCFiUs
loadPosMtxIndx__6J3DSysCFiUs:
/* 8002A2EC 0002722C  7C 08 02 A6 */	mflr r0
/* 8002A2F0 00027230  1C 84 00 03 */	mulli r4, r4, 3
/* 8002A2F4 00027234  90 01 00 04 */	stw r0, 4(r1)
/* 8002A2F8 00027238  94 21 FF F8 */	stwu r1, -8(r1)
/* 8002A2FC 0002723C  38 65 00 00 */	addi r3, r5, 0
/* 8002A300 00027240  48 08 34 69 */	bl GXLoadPosMtxIndx
/* 8002A304 00027244  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8002A308 00027248  38 21 00 08 */	addi r1, r1, 8
/* 8002A30C 0002724C  7C 08 03 A6 */	mtlr r0
/* 8002A310 00027250  4E 80 00 20 */	blr 

.global loadNrmMtxIndx__6J3DSysCFiUs
loadNrmMtxIndx__6J3DSysCFiUs:
/* 8002A314 00027254  7C 08 02 A6 */	mflr r0
/* 8002A318 00027258  1C 84 00 03 */	mulli r4, r4, 3
/* 8002A31C 0002725C  90 01 00 04 */	stw r0, 4(r1)
/* 8002A320 00027260  94 21 FF F8 */	stwu r1, -8(r1)
/* 8002A324 00027264  38 65 00 00 */	addi r3, r5, 0
/* 8002A328 00027268  48 08 34 B1 */	bl GXLoadNrmMtxIndx3x3
/* 8002A32C 0002726C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8002A330 00027270  38 21 00 08 */	addi r1, r1, 8
/* 8002A334 00027274  7C 08 03 A6 */	mtlr r0
/* 8002A338 00027278  4E 80 00 20 */	blr 

.global setTexCacheRegion__6J3DSysF15_GXTexCacheSize
setTexCacheRegion__6J3DSysF15_GXTexCacheSize:
/* 8002A33C 0002727C  7C 08 02 A6 */	mflr r0
/* 8002A340 00027280  3C A0 80 37 */	lis r5, $$2838@ha
/* 8002A344 00027284  90 01 00 04 */	stw r0, 4(r1)
/* 8002A348 00027288  38 E5 0C 38 */	addi r7, r5, $$2838@l
/* 8002A34C 0002728C  3C A0 80 37 */	lis r5, lbl_80370004@ha
/* 8002A350 00027290  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8002A354 00027294  BF 01 00 30 */	stmw r24, 0x30(r1)
/* 8002A358 00027298  7C 7E 1B 78 */	mr r30, r3
/* 8002A35C 0002729C  7C 9F 23 78 */	mr r31, r4
/* 8002A360 000272A0  80 C7 00 00 */	lwz r6, 0(r7)
/* 8002A364 000272A4  80 07 00 04 */	lwz r0, 4(r7)
/* 8002A368 000272A8  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8002A36C 000272AC  54 86 10 3A */	slwi r6, r4, 2
/* 8002A370 000272B0  38 81 00 10 */	addi r4, r1, 0x10
/* 8002A374 000272B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002A378 000272B8  80 67 00 08 */	lwz r3, 8(r7)
/* 8002A37C 000272BC  80 07 00 0C */	lwz r0, 0xc(r7)
/* 8002A380 000272C0  90 61 00 28 */	stw r3, 0x28(r1)
/* 8002A384 000272C4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8002A388 000272C8  84 65 0C 48 */	lwzu r3, 0xc48(r5)
/* 8002A38C 000272CC  80 05 00 04 */	lwz r0, lbl_80370004@l(r5)
/* 8002A390 000272D0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8002A394 000272D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002A398 000272D8  80 65 00 08 */	lwz r3, 8(r5)
/* 8002A39C 000272DC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8002A3A0 000272E0  90 61 00 18 */	stw r3, 0x18(r1)
/* 8002A3A4 000272E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8002A3A8 000272E8  7F 64 30 2E */	lwzx r27, r4, r6
/* 8002A3AC 000272EC  93 7E 00 5C */	stw r27, 0x5c(r30)
/* 8002A3B0 000272F0  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 8002A3B4 000272F4  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8002A3B8 000272F8  41 82 00 0C */	beq lbl_8002A3C4
/* 8002A3BC 000272FC  38 00 00 01 */	li r0, 1
/* 8002A3C0 00027300  48 00 00 08 */	b lbl_8002A3C8
lbl_8002A3C4:
/* 8002A3C4 00027304  38 00 00 00 */	li r0, 0
lbl_8002A3C8:
/* 8002A3C8 00027308  2C 00 00 00 */	cmpwi r0, 0
/* 8002A3CC 0002730C  41 82 00 B8 */	beq lbl_8002A484
/* 8002A3D0 00027310  38 61 00 20 */	addi r3, r1, 0x20
/* 8002A3D4 00027314  7F 83 30 2E */	lwzx r28, r3, r6
/* 8002A3D8 00027318  3B 00 00 00 */	li r24, 0
/* 8002A3DC 0002731C  3B A0 00 00 */	li r29, 0
/* 8002A3E0 00027320  48 00 00 98 */	b lbl_8002A478
lbl_8002A3E4:
/* 8002A3E4 00027324  57 00 07 FF */	clrlwi. r0, r24, 0x1f
/* 8002A3E8 00027328  41 82 00 48 */	beq lbl_8002A430
/* 8002A3EC 0002732C  7F 58 E1 D6 */	mullw r26, r24, r28
/* 8002A3F0 00027330  38 7D 00 60 */	addi r3, r29, 0x60
/* 8002A3F4 00027334  3F 3A 00 08 */	addis r25, r26, 8
/* 8002A3F8 00027338  38 B9 00 00 */	addi r5, r25, 0
/* 8002A3FC 0002733C  38 DF 00 00 */	addi r6, r31, 0
/* 8002A400 00027340  38 FA 00 00 */	addi r7, r26, 0
/* 8002A404 00027344  39 1F 00 00 */	addi r8, r31, 0
/* 8002A408 00027348  7C 7E 1A 14 */	add r3, r30, r3
/* 8002A40C 0002734C  38 80 00 00 */	li r4, 0
/* 8002A410 00027350  48 08 07 A9 */	bl GXInitTexCacheRegion
/* 8002A414 00027354  38 78 00 00 */	addi r3, r24, 0
/* 8002A418 00027358  38 99 00 00 */	addi r4, r25, 0
/* 8002A41C 0002735C  38 BF 00 00 */	addi r5, r31, 0
/* 8002A420 00027360  38 DA 00 00 */	addi r6, r26, 0
/* 8002A424 00027364  38 FF 00 00 */	addi r7, r31, 0
/* 8002A428 00027368  48 01 48 0D */	bl JRNLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
/* 8002A42C 0002736C  48 00 00 44 */	b lbl_8002A470
lbl_8002A430:
/* 8002A430 00027370  7F 38 E1 D6 */	mullw r25, r24, r28
/* 8002A434 00027374  38 7D 00 60 */	addi r3, r29, 0x60
/* 8002A438 00027378  3F 59 00 08 */	addis r26, r25, 8
/* 8002A43C 0002737C  38 B9 00 00 */	addi r5, r25, 0
/* 8002A440 00027380  38 DF 00 00 */	addi r6, r31, 0
/* 8002A444 00027384  38 FA 00 00 */	addi r7, r26, 0
/* 8002A448 00027388  39 1F 00 00 */	addi r8, r31, 0
/* 8002A44C 0002738C  7C 7E 1A 14 */	add r3, r30, r3
/* 8002A450 00027390  38 80 00 00 */	li r4, 0
/* 8002A454 00027394  48 08 07 65 */	bl GXInitTexCacheRegion
/* 8002A458 00027398  38 78 00 00 */	addi r3, r24, 0
/* 8002A45C 0002739C  38 99 00 00 */	addi r4, r25, 0
/* 8002A460 000273A0  38 BF 00 00 */	addi r5, r31, 0
/* 8002A464 000273A4  38 DA 00 00 */	addi r6, r26, 0
/* 8002A468 000273A8  38 FF 00 00 */	addi r7, r31, 0
/* 8002A46C 000273AC  48 01 47 C9 */	bl JRNLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
lbl_8002A470:
/* 8002A470 000273B0  3B 18 00 01 */	addi r24, r24, 1
/* 8002A474 000273B4  3B BD 00 10 */	addi r29, r29, 0x10
lbl_8002A478:
/* 8002A478 000273B8  7C 18 D8 40 */	cmplw r24, r27
/* 8002A47C 000273BC  41 80 FF 68 */	blt lbl_8002A3E4
/* 8002A480 000273C0  48 00 00 68 */	b lbl_8002A4E8
lbl_8002A484:
/* 8002A484 000273C4  38 61 00 20 */	addi r3, r1, 0x20
/* 8002A488 000273C8  7F 83 30 2E */	lwzx r28, r3, r6
/* 8002A48C 000273CC  3B 00 00 00 */	li r24, 0
/* 8002A490 000273D0  3B A0 00 00 */	li r29, 0
/* 8002A494 000273D4  48 00 00 4C */	b lbl_8002A4E0
lbl_8002A498:
/* 8002A498 000273D8  7F 38 E1 D6 */	mullw r25, r24, r28
/* 8002A49C 000273DC  38 7D 00 60 */	addi r3, r29, 0x60
/* 8002A4A0 000273E0  3F 59 00 08 */	addis r26, r25, 8
/* 8002A4A4 000273E4  38 B9 00 00 */	addi r5, r25, 0
/* 8002A4A8 000273E8  38 DF 00 00 */	addi r6, r31, 0
/* 8002A4AC 000273EC  38 FA 00 00 */	addi r7, r26, 0
/* 8002A4B0 000273F0  39 1F 00 00 */	addi r8, r31, 0
/* 8002A4B4 000273F4  7C 7E 1A 14 */	add r3, r30, r3
/* 8002A4B8 000273F8  38 80 00 00 */	li r4, 0
/* 8002A4BC 000273FC  48 08 06 FD */	bl GXInitTexCacheRegion
/* 8002A4C0 00027400  38 78 00 00 */	addi r3, r24, 0
/* 8002A4C4 00027404  38 99 00 00 */	addi r4, r25, 0
/* 8002A4C8 00027408  38 BF 00 00 */	addi r5, r31, 0
/* 8002A4CC 0002740C  38 DA 00 00 */	addi r6, r26, 0
/* 8002A4D0 00027410  38 FF 00 00 */	addi r7, r31, 0
/* 8002A4D4 00027414  48 01 47 61 */	bl JRNLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
/* 8002A4D8 00027418  3B 18 00 01 */	addi r24, r24, 1
/* 8002A4DC 0002741C  3B BD 00 10 */	addi r29, r29, 0x10
lbl_8002A4E0:
/* 8002A4E0 00027420  7C 18 D8 40 */	cmplw r24, r27
/* 8002A4E4 00027424  41 80 FF B4 */	blt lbl_8002A498
lbl_8002A4E8:
/* 8002A4E8 00027428  BB 01 00 30 */	lmw r24, 0x30(r1)
/* 8002A4EC 0002742C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8002A4F0 00027430  38 21 00 50 */	addi r1, r1, 0x50
/* 8002A4F4 00027434  7C 08 03 A6 */	mtlr r0
/* 8002A4F8 00027438  4E 80 00 20 */	blr 

.global drawInit__6J3DSysFv
drawInit__6J3DSysFv:
/* 8002A4FC 0002743C  7C 08 02 A6 */	mflr r0
/* 8002A500 00027440  38 80 00 00 */	li r4, 0
/* 8002A504 00027444  90 01 00 04 */	stw r0, 4(r1)
/* 8002A508 00027448  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8002A50C 0002744C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8002A510 00027450  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8002A514 00027454  3B C3 00 00 */	addi r30, r3, 0
/* 8002A518 00027458  38 60 00 02 */	li r3, 2
/* 8002A51C 0002745C  93 A1 00 84 */	stw r29, 0x84(r1)
/* 8002A520 00027460  93 81 00 80 */	stw r28, 0x80(r1)
/* 8002A524 00027464  48 07 DC 75 */	bl GXSetMisc
/* 8002A528 00027468  48 07 D9 49 */	bl GXInvalidateVtxCache
/* 8002A52C 0002746C  38 60 00 00 */	li r3, 0
/* 8002A530 00027470  48 08 32 DD */	bl GXSetCurrentMtx
/* 8002A534 00027474  38 60 00 02 */	li r3, 2
/* 8002A538 00027478  48 07 E5 F9 */	bl GXSetCullMode
/* 8002A53C 0002747C  38 60 00 00 */	li r3, 0
/* 8002A540 00027480  48 07 E6 41 */	bl GXSetCoPlanar
/* 8002A544 00027484  38 60 00 00 */	li r3, 0
/* 8002A548 00027488  48 08 36 05 */	bl GXSetClipMode
/* 8002A54C 0002748C  38 60 00 01 */	li r3, 1
/* 8002A550 00027490  48 08 22 A5 */	bl GXSetColorUpdate
/* 8002A554 00027494  38 60 00 00 */	li r3, 0
/* 8002A558 00027498  48 08 24 E5 */	bl GXSetDither
/* 8002A55C 0002749C  38 60 00 01 */	li r3, 1
/* 8002A560 000274A0  38 80 00 04 */	li r4, 4
/* 8002A564 000274A4  38 A0 00 05 */	li r5, 5
/* 8002A568 000274A8  38 C0 00 05 */	li r6, 5
/* 8002A56C 000274AC  48 08 21 85 */	bl GXSetBlendMode
/* 8002A570 000274B0  38 60 00 07 */	li r3, 7
/* 8002A574 000274B4  38 80 00 00 */	li r4, 0
/* 8002A578 000274B8  38 A0 00 00 */	li r5, 0
/* 8002A57C 000274BC  38 C0 00 07 */	li r6, 7
/* 8002A580 000274C0  38 E0 00 00 */	li r7, 0
/* 8002A584 000274C4  48 08 1B D9 */	bl GXSetAlphaCompare
/* 8002A588 000274C8  38 60 00 01 */	li r3, 1
/* 8002A58C 000274CC  38 80 00 03 */	li r4, 3
/* 8002A590 000274D0  38 A0 00 01 */	li r5, 1
/* 8002A594 000274D4  48 08 22 E1 */	bl GXSetZMode
/* 8002A598 000274D8  38 60 00 00 */	li r3, 0
/* 8002A59C 000274DC  38 80 00 09 */	li r4, 9
/* 8002A5A0 000274E0  38 A0 00 01 */	li r5, 1
/* 8002A5A4 000274E4  38 C0 00 04 */	li r6, 4
/* 8002A5A8 000274E8  38 E0 00 00 */	li r7, 0
/* 8002A5AC 000274EC  48 07 CE 09 */	bl GXSetVtxAttrFmt
/* 8002A5B0 000274F0  38 60 00 00 */	li r3, 0
/* 8002A5B4 000274F4  38 80 00 0A */	li r4, 0xa
/* 8002A5B8 000274F8  38 A0 00 00 */	li r5, 0
/* 8002A5BC 000274FC  38 C0 00 04 */	li r6, 4
/* 8002A5C0 00027500  38 E0 00 00 */	li r7, 0
/* 8002A5C4 00027504  48 07 CD F1 */	bl GXSetVtxAttrFmt
/* 8002A5C8 00027508  38 60 00 00 */	li r3, 0
/* 8002A5CC 0002750C  38 80 00 0B */	li r4, 0xb
/* 8002A5D0 00027510  38 A0 00 01 */	li r5, 1
/* 8002A5D4 00027514  38 C0 00 05 */	li r6, 5
/* 8002A5D8 00027518  38 E0 00 00 */	li r7, 0
/* 8002A5DC 0002751C  48 07 CD D9 */	bl GXSetVtxAttrFmt
/* 8002A5E0 00027520  38 60 00 00 */	li r3, 0
/* 8002A5E4 00027524  38 80 00 0C */	li r4, 0xc
/* 8002A5E8 00027528  38 A0 00 01 */	li r5, 1
/* 8002A5EC 0002752C  38 C0 00 05 */	li r6, 5
/* 8002A5F0 00027530  38 E0 00 00 */	li r7, 0
/* 8002A5F4 00027534  48 07 CD C1 */	bl GXSetVtxAttrFmt
/* 8002A5F8 00027538  38 60 00 00 */	li r3, 0
/* 8002A5FC 0002753C  38 80 00 0D */	li r4, 0xd
/* 8002A600 00027540  38 A0 00 01 */	li r5, 1
/* 8002A604 00027544  38 C0 00 03 */	li r6, 3
/* 8002A608 00027548  38 E0 00 07 */	li r7, 7
/* 8002A60C 0002754C  48 07 CD A9 */	bl GXSetVtxAttrFmt
/* 8002A610 00027550  38 60 00 00 */	li r3, 0
/* 8002A614 00027554  38 80 00 0E */	li r4, 0xe
/* 8002A618 00027558  38 A0 00 01 */	li r5, 1
/* 8002A61C 0002755C  38 C0 00 03 */	li r6, 3
/* 8002A620 00027560  38 E0 00 07 */	li r7, 7
/* 8002A624 00027564  48 07 CD 91 */	bl GXSetVtxAttrFmt
/* 8002A628 00027568  38 60 00 00 */	li r3, 0
/* 8002A62C 0002756C  38 80 00 0F */	li r4, 0xf
/* 8002A630 00027570  38 A0 00 01 */	li r5, 1
/* 8002A634 00027574  38 C0 00 03 */	li r6, 3
/* 8002A638 00027578  38 E0 00 07 */	li r7, 7
/* 8002A63C 0002757C  48 07 CD 79 */	bl GXSetVtxAttrFmt
/* 8002A640 00027580  38 60 00 00 */	li r3, 0
/* 8002A644 00027584  38 80 00 10 */	li r4, 0x10
/* 8002A648 00027588  38 A0 00 01 */	li r5, 1
/* 8002A64C 0002758C  38 C0 00 03 */	li r6, 3
/* 8002A650 00027590  38 E0 00 07 */	li r7, 7
/* 8002A654 00027594  48 07 CD 61 */	bl GXSetVtxAttrFmt
/* 8002A658 00027598  38 60 00 00 */	li r3, 0
/* 8002A65C 0002759C  38 80 00 11 */	li r4, 0x11
/* 8002A660 000275A0  38 A0 00 01 */	li r5, 1
/* 8002A664 000275A4  38 C0 00 03 */	li r6, 3
/* 8002A668 000275A8  38 E0 00 07 */	li r7, 7
/* 8002A66C 000275AC  48 07 CD 49 */	bl GXSetVtxAttrFmt
/* 8002A670 000275B0  38 60 00 00 */	li r3, 0
/* 8002A674 000275B4  38 80 00 12 */	li r4, 0x12
/* 8002A678 000275B8  38 A0 00 01 */	li r5, 1
/* 8002A67C 000275BC  38 C0 00 03 */	li r6, 3
/* 8002A680 000275C0  38 E0 00 07 */	li r7, 7
/* 8002A684 000275C4  48 07 CD 31 */	bl GXSetVtxAttrFmt
/* 8002A688 000275C8  38 60 00 00 */	li r3, 0
/* 8002A68C 000275CC  38 80 00 13 */	li r4, 0x13
/* 8002A690 000275D0  38 A0 00 01 */	li r5, 1
/* 8002A694 000275D4  38 C0 00 03 */	li r6, 3
/* 8002A698 000275D8  38 E0 00 07 */	li r7, 7
/* 8002A69C 000275DC  48 07 CD 19 */	bl GXSetVtxAttrFmt
/* 8002A6A0 000275E0  38 60 00 00 */	li r3, 0
/* 8002A6A4 000275E4  38 80 00 14 */	li r4, 0x14
/* 8002A6A8 000275E8  38 A0 00 01 */	li r5, 1
/* 8002A6AC 000275EC  38 C0 00 03 */	li r6, 3
/* 8002A6B0 000275F0  38 E0 00 07 */	li r7, 7
/* 8002A6B4 000275F4  48 07 CD 01 */	bl GXSetVtxAttrFmt
/* 8002A6B8 000275F8  38 60 00 00 */	li r3, 0
/* 8002A6BC 000275FC  48 08 11 85 */	bl GXSetNumIndStages
/* 8002A6C0 00027600  7F C3 F3 78 */	mr r3, r30
/* 8002A6C4 00027604  48 00 05 05 */	bl reinitTexture__6J3DSysFv
/* 8002A6C8 00027608  38 60 00 00 */	li r3, 0
/* 8002A6CC 0002760C  38 80 00 FF */	li r4, 0xff
/* 8002A6D0 00027610  38 A0 00 FF */	li r5, 0xff
/* 8002A6D4 00027614  38 C0 00 FF */	li r6, 0xff
/* 8002A6D8 00027618  48 08 1B 59 */	bl GXSetTevOrder
/* 8002A6DC 0002761C  38 60 00 01 */	li r3, 1
/* 8002A6E0 00027620  38 80 00 FF */	li r4, 0xff
/* 8002A6E4 00027624  38 A0 00 FF */	li r5, 0xff
/* 8002A6E8 00027628  38 C0 00 FF */	li r6, 0xff
/* 8002A6EC 0002762C  48 08 1B 45 */	bl GXSetTevOrder
/* 8002A6F0 00027630  38 60 00 02 */	li r3, 2
/* 8002A6F4 00027634  38 80 00 FF */	li r4, 0xff
/* 8002A6F8 00027638  38 A0 00 FF */	li r5, 0xff
/* 8002A6FC 0002763C  38 C0 00 FF */	li r6, 0xff
/* 8002A700 00027640  48 08 1B 31 */	bl GXSetTevOrder
/* 8002A704 00027644  38 60 00 03 */	li r3, 3
/* 8002A708 00027648  38 80 00 FF */	li r4, 0xff
/* 8002A70C 0002764C  38 A0 00 FF */	li r5, 0xff
/* 8002A710 00027650  38 C0 00 FF */	li r6, 0xff
/* 8002A714 00027654  48 08 1B 1D */	bl GXSetTevOrder
/* 8002A718 00027658  38 60 00 04 */	li r3, 4
/* 8002A71C 0002765C  38 80 00 FF */	li r4, 0xff
/* 8002A720 00027660  38 A0 00 FF */	li r5, 0xff
/* 8002A724 00027664  38 C0 00 FF */	li r6, 0xff
/* 8002A728 00027668  48 08 1B 09 */	bl GXSetTevOrder
/* 8002A72C 0002766C  38 60 00 05 */	li r3, 5
/* 8002A730 00027670  38 80 00 FF */	li r4, 0xff
/* 8002A734 00027674  38 A0 00 FF */	li r5, 0xff
/* 8002A738 00027678  38 C0 00 FF */	li r6, 0xff
/* 8002A73C 0002767C  48 08 1A F5 */	bl GXSetTevOrder
/* 8002A740 00027680  38 60 00 06 */	li r3, 6
/* 8002A744 00027684  38 80 00 FF */	li r4, 0xff
/* 8002A748 00027688  38 A0 00 FF */	li r5, 0xff
/* 8002A74C 0002768C  38 C0 00 FF */	li r6, 0xff
/* 8002A750 00027690  48 08 1A E1 */	bl GXSetTevOrder
/* 8002A754 00027694  38 60 00 07 */	li r3, 7
/* 8002A758 00027698  38 80 00 FF */	li r4, 0xff
/* 8002A75C 0002769C  38 A0 00 FF */	li r5, 0xff
/* 8002A760 000276A0  38 C0 00 FF */	li r6, 0xff
/* 8002A764 000276A4  48 08 1A CD */	bl GXSetTevOrder
/* 8002A768 000276A8  38 60 00 08 */	li r3, 8
/* 8002A76C 000276AC  38 80 00 FF */	li r4, 0xff
/* 8002A770 000276B0  38 A0 00 FF */	li r5, 0xff
/* 8002A774 000276B4  38 C0 00 FF */	li r6, 0xff
/* 8002A778 000276B8  48 08 1A B9 */	bl GXSetTevOrder
/* 8002A77C 000276BC  38 60 00 09 */	li r3, 9
/* 8002A780 000276C0  38 80 00 FF */	li r4, 0xff
/* 8002A784 000276C4  38 A0 00 FF */	li r5, 0xff
/* 8002A788 000276C8  38 C0 00 FF */	li r6, 0xff
/* 8002A78C 000276CC  48 08 1A A5 */	bl GXSetTevOrder
/* 8002A790 000276D0  38 60 00 0A */	li r3, 0xa
/* 8002A794 000276D4  38 80 00 FF */	li r4, 0xff
/* 8002A798 000276D8  38 A0 00 FF */	li r5, 0xff
/* 8002A79C 000276DC  38 C0 00 FF */	li r6, 0xff
/* 8002A7A0 000276E0  48 08 1A 91 */	bl GXSetTevOrder
/* 8002A7A4 000276E4  38 60 00 0B */	li r3, 0xb
/* 8002A7A8 000276E8  38 80 00 FF */	li r4, 0xff
/* 8002A7AC 000276EC  38 A0 00 FF */	li r5, 0xff
/* 8002A7B0 000276F0  38 C0 00 FF */	li r6, 0xff
/* 8002A7B4 000276F4  48 08 1A 7D */	bl GXSetTevOrder
/* 8002A7B8 000276F8  38 60 00 0C */	li r3, 0xc
/* 8002A7BC 000276FC  38 80 00 FF */	li r4, 0xff
/* 8002A7C0 00027700  38 A0 00 FF */	li r5, 0xff
/* 8002A7C4 00027704  38 C0 00 FF */	li r6, 0xff
/* 8002A7C8 00027708  48 08 1A 69 */	bl GXSetTevOrder
/* 8002A7CC 0002770C  38 60 00 0D */	li r3, 0xd
/* 8002A7D0 00027710  38 80 00 FF */	li r4, 0xff
/* 8002A7D4 00027714  38 A0 00 FF */	li r5, 0xff
/* 8002A7D8 00027718  38 C0 00 FF */	li r6, 0xff
/* 8002A7DC 0002771C  48 08 1A 55 */	bl GXSetTevOrder
/* 8002A7E0 00027720  38 60 00 0E */	li r3, 0xe
/* 8002A7E4 00027724  38 80 00 FF */	li r4, 0xff
/* 8002A7E8 00027728  38 A0 00 FF */	li r5, 0xff
/* 8002A7EC 0002772C  38 C0 00 FF */	li r6, 0xff
/* 8002A7F0 00027730  48 08 1A 41 */	bl GXSetTevOrder
/* 8002A7F4 00027734  38 60 00 0F */	li r3, 0xf
/* 8002A7F8 00027738  38 80 00 FF */	li r4, 0xff
/* 8002A7FC 0002773C  38 A0 00 FF */	li r5, 0xff
/* 8002A800 00027740  38 C0 00 FF */	li r6, 0xff
/* 8002A804 00027744  48 08 1A 2D */	bl GXSetTevOrder
/* 8002A808 00027748  38 61 00 50 */	addi r3, r1, 0x50
/* 8002A80C 0002774C  48 06 9A A5 */	bl PSMTXIdentity
/* 8002A810 00027750  3B E0 00 00 */	li r31, 0
/* 8002A814 00027754  48 00 00 20 */	b lbl_8002A834
lbl_8002A818:
/* 8002A818 00027758  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002A81C 0002775C  1C 80 00 03 */	mulli r4, r0, 3
/* 8002A820 00027760  38 61 00 50 */	addi r3, r1, 0x50
/* 8002A824 00027764  38 84 00 1E */	addi r4, r4, 0x1e
/* 8002A828 00027768  38 A0 00 00 */	li r5, 0
/* 8002A82C 0002776C  48 08 30 1D */	bl GXLoadTexMtxImm
/* 8002A830 00027770  3B FF 00 01 */	addi r31, r31, 1
lbl_8002A834:
/* 8002A834 00027774  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002A838 00027778  28 00 00 0A */	cmplwi r0, 0xa
/* 8002A83C 0002777C  41 80 FF DC */	blt lbl_8002A818
/* 8002A840 00027780  3C 80 80 37 */	lis r4, $$2877@ha
/* 8002A844 00027784  38 A4 0C 58 */	addi r5, r4, $$2877@l
/* 8002A848 00027788  80 85 00 00 */	lwz r4, 0(r5)
/* 8002A84C 0002778C  3B E0 00 00 */	li r31, 0
/* 8002A850 00027790  80 05 00 04 */	lwz r0, 4(r5)
/* 8002A854 00027794  90 81 00 38 */	stw r4, 0x38(r1)
/* 8002A858 00027798  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8002A85C 0002779C  80 85 00 08 */	lwz r4, 8(r5)
/* 8002A860 000277A0  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8002A864 000277A4  90 81 00 40 */	stw r4, 0x40(r1)
/* 8002A868 000277A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8002A86C 000277AC  80 85 00 10 */	lwz r4, 0x10(r5)
/* 8002A870 000277B0  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8002A874 000277B4  90 81 00 48 */	stw r4, 0x48(r1)
/* 8002A878 000277B8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8002A87C 000277BC  48 00 00 1C */	b lbl_8002A898
lbl_8002A880:
/* 8002A880 000277C0  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8002A884 000277C4  38 64 00 01 */	addi r3, r4, 1
/* 8002A888 000277C8  38 81 00 38 */	addi r4, r1, 0x38
/* 8002A88C 000277CC  38 A0 00 01 */	li r5, 1
/* 8002A890 000277D0  48 08 0B 45 */	bl GXSetIndTexMtx
/* 8002A894 000277D4  3B FF 00 01 */	addi r31, r31, 1
lbl_8002A898:
/* 8002A898 000277D8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002A89C 000277DC  28 00 00 03 */	cmplwi r0, 3
/* 8002A8A0 000277E0  41 80 FF E0 */	blt lbl_8002A880
/* 8002A8A4 000277E4  80 0D 80 78 */	lwz r0, j3dDefaultColInfo@sda21(r13)
/* 8002A8A8 000277E8  38 81 00 24 */	addi r4, r1, 0x24
/* 8002A8AC 000277EC  38 60 00 04 */	li r3, 4
/* 8002A8B0 000277F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002A8B4 000277F4  48 07 F5 89 */	bl GXSetChanMatColor
/* 8002A8B8 000277F8  80 0D 80 78 */	lwz r0, j3dDefaultColInfo@sda21(r13)
/* 8002A8BC 000277FC  38 81 00 20 */	addi r4, r1, 0x20
/* 8002A8C0 00027800  38 60 00 05 */	li r3, 5
/* 8002A8C4 00027804  90 01 00 20 */	stw r0, 0x20(r1)
/* 8002A8C8 00027808  48 07 F5 75 */	bl GXSetChanMatColor
/* 8002A8CC 0002780C  88 6D 80 80 */	lbz r3, j3dDefaultColorChanNum@sda21(r13)
/* 8002A8D0 00027810  48 07 F6 D5 */	bl GXSetNumChans
/* 8002A8D4 00027814  38 60 00 01 */	li r3, 1
/* 8002A8D8 00027818  48 07 D8 79 */	bl GXSetNumTexGens
/* 8002A8DC 0002781C  38 60 00 01 */	li r3, 1
/* 8002A8E0 00027820  48 08 1B 2D */	bl GXSetNumTevStages
/* 8002A8E4 00027824  3C 80 80 37 */	lis r4, $$2885@ha
/* 8002A8E8 00027828  38 A4 0C 70 */	addi r5, r4, $$2885@l
/* 8002A8EC 0002782C  80 85 00 00 */	lwz r4, 0(r5)
/* 8002A8F0 00027830  3B A1 00 28 */	addi r29, r1, 0x28
/* 8002A8F4 00027834  80 05 00 04 */	lwz r0, 4(r5)
/* 8002A8F8 00027838  3B 80 00 00 */	li r28, 0
/* 8002A8FC 0002783C  3B E0 00 00 */	li r31, 0
/* 8002A900 00027840  90 81 00 28 */	stw r4, 0x28(r1)
/* 8002A904 00027844  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8002A908 00027848  80 85 00 08 */	lwz r4, 8(r5)
/* 8002A90C 0002784C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8002A910 00027850  90 81 00 30 */	stw r4, 0x30(r1)
/* 8002A914 00027854  90 01 00 34 */	stw r0, 0x34(r1)
lbl_8002A918:
/* 8002A918 00027858  7C 7D F8 2E */	lwzx r3, r29, r31
/* 8002A91C 0002785C  38 80 00 00 */	li r4, 0
/* 8002A920 00027860  38 A0 00 00 */	li r5, 0
/* 8002A924 00027864  38 C0 00 00 */	li r6, 0
/* 8002A928 00027868  38 E0 00 00 */	li r7, 0
/* 8002A92C 0002786C  39 00 00 02 */	li r8, 2
/* 8002A930 00027870  39 20 00 02 */	li r9, 2
/* 8002A934 00027874  48 07 F6 BD */	bl GXSetChanCtrl
/* 8002A938 00027878  3B 9C 00 01 */	addi r28, r28, 1
/* 8002A93C 0002787C  2C 1C 00 04 */	cmpwi r28, 4
/* 8002A940 00027880  3B FF 00 04 */	addi r31, r31, 4
/* 8002A944 00027884  41 80 FF D4 */	blt lbl_8002A918
/* 8002A948 00027888  3C 80 80 3B */	lis r4, j3dDefaultTexCoordInfo@ha
/* 8002A94C 0002788C  3B A4 9C D8 */	addi r29, r4, j3dDefaultTexCoordInfo@l
/* 8002A950 00027890  3B E0 00 00 */	li r31, 0
/* 8002A954 00027894  48 00 00 2C */	b lbl_8002A980
lbl_8002A958:
/* 8002A958 00027898  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 8002A95C 0002789C  7C 9D 02 14 */	add r4, r29, r0
/* 8002A960 000278A0  88 C4 00 02 */	lbz r6, 2(r4)
/* 8002A964 000278A4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002A968 000278A8  88 A4 00 01 */	lbz r5, 1(r4)
/* 8002A96C 000278AC  38 E0 00 00 */	li r7, 0
/* 8002A970 000278B0  88 84 00 00 */	lbz r4, 0(r4)
/* 8002A974 000278B4  39 00 00 7D */	li r8, 0x7d
/* 8002A978 000278B8  48 07 D5 09 */	bl GXSetTexCoordGen2
/* 8002A97C 000278BC  3B FF 00 01 */	addi r31, r31, 1
lbl_8002A980:
/* 8002A980 000278C0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002A984 000278C4  28 00 00 08 */	cmplwi r0, 8
/* 8002A988 000278C8  41 80 FF D0 */	blt lbl_8002A958
/* 8002A98C 000278CC  3B E0 00 00 */	li r31, 0
/* 8002A990 000278D0  48 00 00 18 */	b lbl_8002A9A8
lbl_8002A994:
/* 8002A994 000278D4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002A998 000278D8  38 80 00 00 */	li r4, 0
/* 8002A99C 000278DC  38 A0 00 00 */	li r5, 0
/* 8002A9A0 000278E0  48 08 0B 95 */	bl GXSetIndTexCoordScale
/* 8002A9A4 000278E4  3B FF 00 01 */	addi r31, r31, 1
lbl_8002A9A8:
/* 8002A9A8 000278E8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002A9AC 000278EC  28 00 00 04 */	cmplwi r0, 4
/* 8002A9B0 000278F0  41 80 FF E4 */	blt lbl_8002A994
/* 8002A9B4 000278F4  3B A1 00 1C */	addi r29, r1, 0x1c
/* 8002A9B8 000278F8  3B E0 00 00 */	li r31, 0
/* 8002A9BC 000278FC  48 00 00 1C */	b lbl_8002A9D8
lbl_8002A9C0:
/* 8002A9C0 00027900  80 0D 80 98 */	lwz r0, j3dDefaultTevKColor@sda21(r13)
/* 8002A9C4 00027904  38 9D 00 00 */	addi r4, r29, 0
/* 8002A9C8 00027908  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002A9CC 0002790C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8002A9D0 00027910  48 08 15 49 */	bl GXSetTevKColor
/* 8002A9D4 00027914  3B FF 00 01 */	addi r31, r31, 1
lbl_8002A9D8:
/* 8002A9D8 00027918  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002A9DC 0002791C  28 00 00 04 */	cmplwi r0, 4
/* 8002A9E0 00027920  41 80 FF E0 */	blt lbl_8002A9C0
/* 8002A9E4 00027924  3B A1 00 14 */	addi r29, r1, 0x14
/* 8002A9E8 00027928  3B E0 00 00 */	li r31, 0
/* 8002A9EC 0002792C  48 00 00 24 */	b lbl_8002AA10
lbl_8002A9F0:
/* 8002A9F0 00027930  80 AD 80 8C */	lwz r5, j3dDefaultTevColor@sda21(r13)
/* 8002A9F4 00027934  7F A4 EB 78 */	mr r4, r29
/* 8002A9F8 00027938  80 0D 80 90 */	lwz r0, lbl_80408B50@sda21(r13)
/* 8002A9FC 0002793C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002AA00 00027940  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8002AA04 00027944  90 01 00 18 */	stw r0, 0x18(r1)
/* 8002AA08 00027948  48 08 14 9D */	bl GXSetTevColorS10
/* 8002AA0C 0002794C  3B FF 00 01 */	addi r31, r31, 1
lbl_8002AA10:
/* 8002AA10 00027950  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002AA14 00027954  28 00 00 04 */	cmplwi r0, 4
/* 8002AA18 00027958  41 80 FF D8 */	blt lbl_8002A9F0
/* 8002AA1C 0002795C  3B E0 00 00 */	li r31, 0
/* 8002AA20 00027960  48 00 00 70 */	b lbl_8002AA90
lbl_8002AA24:
/* 8002AA24 00027964  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002AA28 00027968  38 80 00 0A */	li r4, 0xa
/* 8002AA2C 0002796C  38 A0 00 0F */	li r5, 0xf
/* 8002AA30 00027970  38 C0 00 0F */	li r6, 0xf
/* 8002AA34 00027974  38 E0 00 0F */	li r7, 0xf
/* 8002AA38 00027978  48 08 11 75 */	bl GXSetTevColorIn
/* 8002AA3C 0002797C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002AA40 00027980  38 80 00 00 */	li r4, 0
/* 8002AA44 00027984  38 A0 00 00 */	li r5, 0
/* 8002AA48 00027988  38 C0 00 00 */	li r6, 0
/* 8002AA4C 0002798C  38 E0 00 01 */	li r7, 1
/* 8002AA50 00027990  39 00 00 00 */	li r8, 0
/* 8002AA54 00027994  48 08 12 5D */	bl GXSetTevColorOp
/* 8002AA58 00027998  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002AA5C 0002799C  38 80 00 05 */	li r4, 5
/* 8002AA60 000279A0  38 A0 00 07 */	li r5, 7
/* 8002AA64 000279A4  38 C0 00 07 */	li r6, 7
/* 8002AA68 000279A8  38 E0 00 07 */	li r7, 7
/* 8002AA6C 000279AC  48 08 11 C1 */	bl GXSetTevAlphaIn
/* 8002AA70 000279B0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002AA74 000279B4  38 80 00 00 */	li r4, 0
/* 8002AA78 000279B8  38 A0 00 00 */	li r5, 0
/* 8002AA7C 000279BC  38 C0 00 00 */	li r6, 0
/* 8002AA80 000279C0  38 E0 00 01 */	li r7, 1
/* 8002AA84 000279C4  39 00 00 00 */	li r8, 0
/* 8002AA88 000279C8  48 08 12 E9 */	bl GXSetTevAlphaOp
/* 8002AA8C 000279CC  3B FF 00 01 */	addi r31, r31, 1
lbl_8002AA90:
/* 8002AA90 000279D0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002AA94 000279D4  28 00 00 10 */	cmplwi r0, 0x10
/* 8002AA98 000279D8  41 80 FF 8C */	blt lbl_8002AA24
/* 8002AA9C 000279DC  3B E0 00 00 */	li r31, 0
/* 8002AAA0 000279E0  48 00 00 18 */	b lbl_8002AAB8
lbl_8002AAA4:
/* 8002AAA4 000279E4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002AAA8 000279E8  38 80 00 00 */	li r4, 0
/* 8002AAAC 000279EC  38 A0 00 00 */	li r5, 0
/* 8002AAB0 000279F0  48 08 15 B5 */	bl GXSetTevSwapMode
/* 8002AAB4 000279F4  3B FF 00 01 */	addi r31, r31, 1
lbl_8002AAB8:
/* 8002AAB8 000279F8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002AABC 000279FC  28 00 00 10 */	cmplwi r0, 0x10
/* 8002AAC0 00027A00  41 80 FF E4 */	blt lbl_8002AAA4
/* 8002AAC4 00027A04  38 60 00 00 */	li r3, 0
/* 8002AAC8 00027A08  38 80 00 00 */	li r4, 0
/* 8002AACC 00027A0C  38 A0 00 01 */	li r5, 1
/* 8002AAD0 00027A10  38 C0 00 02 */	li r6, 2
/* 8002AAD4 00027A14  38 E0 00 03 */	li r7, 3
/* 8002AAD8 00027A18  48 08 15 E5 */	bl GXSetTevSwapModeTable
/* 8002AADC 00027A1C  38 60 00 01 */	li r3, 1
/* 8002AAE0 00027A20  38 80 00 00 */	li r4, 0
/* 8002AAE4 00027A24  38 A0 00 00 */	li r5, 0
/* 8002AAE8 00027A28  38 C0 00 00 */	li r6, 0
/* 8002AAEC 00027A2C  38 E0 00 03 */	li r7, 3
/* 8002AAF0 00027A30  48 08 15 CD */	bl GXSetTevSwapModeTable
/* 8002AAF4 00027A34  38 60 00 02 */	li r3, 2
/* 8002AAF8 00027A38  38 80 00 01 */	li r4, 1
/* 8002AAFC 00027A3C  38 A0 00 01 */	li r5, 1
/* 8002AB00 00027A40  38 C0 00 01 */	li r6, 1
/* 8002AB04 00027A44  38 E0 00 03 */	li r7, 3
/* 8002AB08 00027A48  48 08 15 B5 */	bl GXSetTevSwapModeTable
/* 8002AB0C 00027A4C  38 60 00 03 */	li r3, 3
/* 8002AB10 00027A50  38 80 00 02 */	li r4, 2
/* 8002AB14 00027A54  38 A0 00 02 */	li r5, 2
/* 8002AB18 00027A58  38 C0 00 02 */	li r6, 2
/* 8002AB1C 00027A5C  38 E0 00 03 */	li r7, 3
/* 8002AB20 00027A60  48 08 15 9D */	bl GXSetTevSwapModeTable
/* 8002AB24 00027A64  3B E0 00 00 */	li r31, 0
/* 8002AB28 00027A68  3B A0 00 00 */	li r29, 0
/* 8002AB2C 00027A6C  48 00 00 34 */	b lbl_8002AB60
lbl_8002AB30:
/* 8002AB30 00027A70  93 A1 00 08 */	stw r29, 8(r1)
/* 8002AB34 00027A74  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002AB38 00027A78  38 80 00 00 */	li r4, 0
/* 8002AB3C 00027A7C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8002AB40 00027A80  38 A0 00 00 */	li r5, 0
/* 8002AB44 00027A84  38 C0 00 00 */	li r6, 0
/* 8002AB48 00027A88  38 E0 00 00 */	li r7, 0
/* 8002AB4C 00027A8C  39 00 00 00 */	li r8, 0
/* 8002AB50 00027A90  39 20 00 00 */	li r9, 0
/* 8002AB54 00027A94  39 40 00 00 */	li r10, 0
/* 8002AB58 00027A98  48 08 07 E1 */	bl GXSetTevIndirect
/* 8002AB5C 00027A9C  3B FF 00 01 */	addi r31, r31, 1
lbl_8002AB60:
/* 8002AB60 00027AA0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002AB64 00027AA4  28 00 00 10 */	cmplwi r0, 0x10
/* 8002AB68 00027AA8  41 80 FF C8 */	blt lbl_8002AB30
/* 8002AB6C 00027AAC  38 60 00 04 */	li r3, 4
/* 8002AB70 00027AB0  64 63 00 04 */	oris r3, r3, 4
/* 8002AB74 00027AB4  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8002AB78 00027AB8  38 60 00 05 */	li r3, 5
/* 8002AB7C 00027ABC  64 63 00 05 */	oris r3, r3, 5
/* 8002AB80 00027AC0  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8002AB84 00027AC4  38 60 00 06 */	li r3, 6
/* 8002AB88 00027AC8  64 63 00 06 */	oris r3, r3, 6
/* 8002AB8C 00027ACC  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8002AB90 00027AD0  38 60 00 07 */	li r3, 7
/* 8002AB94 00027AD4  64 63 00 07 */	oris r3, r3, 7
/* 8002AB98 00027AD8  7C 75 E3 A6 */	mtspr 0x395, r3
/* 8002AB9C 00027ADC  38 7E 00 00 */	addi r3, r30, 0
/* 8002ABA0 00027AE0  38 80 00 00 */	li r4, 0
/* 8002ABA4 00027AE4  4B FF F7 99 */	bl setTexCacheRegion__6J3DSysF15_GXTexCacheSize
/* 8002ABA8 00027AE8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8002ABAC 00027AEC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8002ABB0 00027AF0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8002ABB4 00027AF4  7C 08 03 A6 */	mtlr r0
/* 8002ABB8 00027AF8  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8002ABBC 00027AFC  83 81 00 80 */	lwz r28, 0x80(r1)
/* 8002ABC0 00027B00  38 21 00 90 */	addi r1, r1, 0x90
/* 8002ABC4 00027B04  4E 80 00 20 */	blr 

.global reinitTexture__6J3DSysFv
reinitTexture__6J3DSysFv:
/* 8002ABC8 00027B08  7C 08 02 A6 */	mflr r0
/* 8002ABCC 00027B0C  3C 60 80 3B */	lis r3, NullTexData@ha
/* 8002ABD0 00027B10  90 01 00 04 */	stw r0, 4(r1)
/* 8002ABD4 00027B14  38 83 99 80 */	addi r4, r3, NullTexData@l
/* 8002ABD8 00027B18  38 A0 00 04 */	li r5, 4
/* 8002ABDC 00027B1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8002ABE0 00027B20  38 C0 00 04 */	li r6, 4
/* 8002ABE4 00027B24  38 E0 00 03 */	li r7, 3
/* 8002ABE8 00027B28  38 61 00 0C */	addi r3, r1, 0xc
/* 8002ABEC 00027B2C  39 00 00 00 */	li r8, 0
/* 8002ABF0 00027B30  39 20 00 00 */	li r9, 0
/* 8002ABF4 00027B34  39 40 00 00 */	li r10, 0
/* 8002ABF8 00027B38  48 07 F8 01 */	bl GXInitTexObj
/* 8002ABFC 00027B3C  38 61 00 0C */	addi r3, r1, 0xc
/* 8002AC00 00027B40  38 80 00 00 */	li r4, 0
/* 8002AC04 00027B44  48 07 FE 7D */	bl GXLoadTexObj
/* 8002AC08 00027B48  38 61 00 0C */	addi r3, r1, 0xc
/* 8002AC0C 00027B4C  38 80 00 01 */	li r4, 1
/* 8002AC10 00027B50  48 07 FE 71 */	bl GXLoadTexObj
/* 8002AC14 00027B54  38 61 00 0C */	addi r3, r1, 0xc
/* 8002AC18 00027B58  38 80 00 02 */	li r4, 2
/* 8002AC1C 00027B5C  48 07 FE 65 */	bl GXLoadTexObj
/* 8002AC20 00027B60  38 61 00 0C */	addi r3, r1, 0xc
/* 8002AC24 00027B64  38 80 00 03 */	li r4, 3
/* 8002AC28 00027B68  48 07 FE 59 */	bl GXLoadTexObj
/* 8002AC2C 00027B6C  38 61 00 0C */	addi r3, r1, 0xc
/* 8002AC30 00027B70  38 80 00 04 */	li r4, 4
/* 8002AC34 00027B74  48 07 FE 4D */	bl GXLoadTexObj
/* 8002AC38 00027B78  38 61 00 0C */	addi r3, r1, 0xc
/* 8002AC3C 00027B7C  38 80 00 05 */	li r4, 5
/* 8002AC40 00027B80  48 07 FE 41 */	bl GXLoadTexObj
/* 8002AC44 00027B84  38 61 00 0C */	addi r3, r1, 0xc
/* 8002AC48 00027B88  38 80 00 06 */	li r4, 6
/* 8002AC4C 00027B8C  48 07 FE 35 */	bl GXLoadTexObj
/* 8002AC50 00027B90  38 61 00 0C */	addi r3, r1, 0xc
/* 8002AC54 00027B94  38 80 00 07 */	li r4, 7
/* 8002AC58 00027B98  48 07 FE 29 */	bl GXLoadTexObj
/* 8002AC5C 00027B9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8002AC60 00027BA0  38 21 00 30 */	addi r1, r1, 0x30
/* 8002AC64 00027BA4  7C 08 03 A6 */	mtlr r0
/* 8002AC68 00027BA8  4E 80 00 20 */	blr 

.global __sinit_J3DSys_cpp
__sinit_J3DSys_cpp:
/* 8002AC6C 00027BAC  7C 08 02 A6 */	mflr r0
/* 8002AC70 00027BB0  3C 60 80 40 */	lis r3, j3dSys@ha
/* 8002AC74 00027BB4  90 01 00 04 */	stw r0, 4(r1)
/* 8002AC78 00027BB8  38 63 0E D8 */	addi r3, r3, j3dSys@l
/* 8002AC7C 00027BBC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8002AC80 00027BC0  4B FF F5 51 */	bl __ct__6J3DSysFv
/* 8002AC84 00027BC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8002AC88 00027BC8  38 21 00 08 */	addi r1, r1, 8
/* 8002AC8C 00027BCC  7C 08 03 A6 */	mtlr r0
/* 8002AC90 00027BD0  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
  .4byte __sinit_J3DSys_cpp

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$2838:
	.incbin "baserom.dol", 0x36DC38, 0x10
$$2839:
	.incbin "baserom.dol", 0x36DC48, 0x10
$$2877:
	.incbin "baserom.dol", 0x36DC58, 0x18
$$2885:
	.incbin "baserom.dol", 0x36DC70, 0x10

.section .data, "wa"  # 0x803A8380 - 0x803E6000
NullTexData:
  .4byte 0
  .4byte 0
  .4byte 0
  .4byte 0

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global j3dDefaultViewNo
j3dDefaultViewNo:
	.skip 0x8
