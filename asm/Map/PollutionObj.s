.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__13TPollutionObjFv
__ct__13TPollutionObjFv:
/* 801F0084 001ECFC4  7C 08 02 A6 */	mflr r0
/* 801F0088 001ECFC8  90 01 00 04 */	stw r0, 4(r1)
/* 801F008C 001ECFCC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801F0090 001ECFD0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801F0094 001ECFD4  7C 7F 1B 78 */	mr r31, r3
/* 801F0098 001ECFD8  4B FE A9 8D */	bl __ct__9TJointObjFv
/* 801F009C 001ECFDC  3C 60 80 3D */	lis r3, __vt__13TPollutionObj@ha
/* 801F00A0 001ECFE0  38 03 04 E0 */	addi r0, r3, __vt__13TPollutionObj@l
/* 801F00A4 001ECFE4  90 1F 00 00 */	stw r0, 0(r31)
/* 801F00A8 001ECFE8  38 00 00 00 */	li r0, 0
/* 801F00AC 001ECFEC  38 7F 00 00 */	addi r3, r31, 0
/* 801F00B0 001ECFF0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801F00B4 001ECFF4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801F00B8 001ECFF8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801F00BC 001ECFFC  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 801F00C0 001ED000  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801F00C4 001ED004  90 1F 00 34 */	stw r0, 0x34(r31)
/* 801F00C8 001ED008  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801F00CC 001ED00C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801F00D0 001ED010  38 21 00 18 */	addi r1, r1, 0x18
/* 801F00D4 001ED014  7C 08 03 A6 */	mtlr r0
/* 801F00D8 001ED018  4E 80 00 20 */	blr 

.global initAreaInfo__13TPollutionObjFP15TPollutionLayer
initAreaInfo__13TPollutionObjFP15TPollutionLayer:
/* 801F00DC 001ED01C  7C 08 02 A6 */	mflr r0
/* 801F00E0 001ED020  90 01 00 04 */	stw r0, 4(r1)
/* 801F00E4 001ED024  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801F00E8 001ED028  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801F00EC 001ED02C  3B E4 00 00 */	addi r31, r4, 0
/* 801F00F0 001ED030  93 C1 00 68 */	stw r30, 0x68(r1)
/* 801F00F4 001ED034  3B C3 00 00 */	addi r30, r3, 0
/* 801F00F8 001ED038  93 A1 00 64 */	stw r29, 0x64(r1)
/* 801F00FC 001ED03C  93 81 00 60 */	stw r28, 0x60(r1)
/* 801F0100 001ED040  93 E3 00 34 */	stw r31, 0x34(r3)
/* 801F0104 001ED044  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801F0108 001ED048  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 801F010C 001ED04C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0110 001ED050  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 801F0114 001ED054  3B A4 00 40 */	addi r29, r4, 0x40
/* 801F0118 001ED058  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801F011C 001ED05C  3B 84 00 4C */	addi r28, r4, 0x4c
/* 801F0120 001ED060  7D 88 03 A6 */	mtlr r12
/* 801F0124 001ED064  4E 80 00 21 */	blrl 
/* 801F0128 001ED068  90 7E 00 20 */	stw r3, 0x20(r30)
/* 801F012C 001ED06C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 801F0130 001ED070  C0 3C 00 00 */	lfs f1, 0(r28)
/* 801F0134 001ED074  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0138 001ED078  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801F013C 001ED07C  7D 88 03 A6 */	mtlr r12
/* 801F0140 001ED080  4E 80 00 21 */	blrl 
/* 801F0144 001ED084  90 7E 00 24 */	stw r3, 0x24(r30)
/* 801F0148 001ED088  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 801F014C 001ED08C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 801F0150 001ED090  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0154 001ED094  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F0158 001ED098  7D 88 03 A6 */	mtlr r12
/* 801F015C 001ED09C  4E 80 00 21 */	blrl 
/* 801F0160 001ED0A0  90 7E 00 28 */	stw r3, 0x28(r30)
/* 801F0164 001ED0A4  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 801F0168 001ED0A8  C0 3C 00 08 */	lfs f1, 8(r28)
/* 801F016C 001ED0AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0170 001ED0B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F0174 001ED0B4  7D 88 03 A6 */	mtlr r12
/* 801F0178 001ED0B8  4E 80 00 21 */	blrl 
/* 801F017C 001ED0BC  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 801F0180 001ED0C0  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 801F0184 001ED0C4  2C 00 00 00 */	cmpwi r0, 0
/* 801F0188 001ED0C8  40 80 00 0C */	bge lbl_801F0194
/* 801F018C 001ED0CC  38 00 00 00 */	li r0, 0
/* 801F0190 001ED0D0  90 1E 00 24 */	stw r0, 0x24(r30)
lbl_801F0194:
/* 801F0194 001ED0D4  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 801F0198 001ED0D8  2C 00 00 00 */	cmpwi r0, 0
/* 801F019C 001ED0DC  40 80 00 0C */	bge lbl_801F01A8
/* 801F01A0 001ED0E0  38 00 00 00 */	li r0, 0
/* 801F01A4 001ED0E4  90 1E 00 2C */	stw r0, 0x2c(r30)
lbl_801F01A8:
/* 801F01A8 001ED0E8  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 801F01AC 001ED0EC  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 801F01B0 001ED0F0  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 801F01B4 001ED0F4  7C 00 18 00 */	cmpw r0, r3
/* 801F01B8 001ED0F8  40 81 00 08 */	ble lbl_801F01C0
/* 801F01BC 001ED0FC  90 7E 00 24 */	stw r3, 0x24(r30)
lbl_801F01C0:
/* 801F01C0 001ED100  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 801F01C4 001ED104  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 801F01C8 001ED108  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801F01CC 001ED10C  7C 00 18 00 */	cmpw r0, r3
/* 801F01D0 001ED110  40 81 00 08 */	ble lbl_801F01D8
/* 801F01D4 001ED114  90 7E 00 2C */	stw r3, 0x2c(r30)
lbl_801F01D8:
/* 801F01D8 001ED118  3B 80 00 00 */	li r28, 0
/* 801F01DC 001ED11C  3B A0 00 00 */	li r29, 0
/* 801F01E0 001ED120  48 00 00 1C */	b lbl_801F01FC
lbl_801F01E4:
/* 801F01E4 001ED124  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801F01E8 001ED128  7F E4 FB 78 */	mr r4, r31
/* 801F01EC 001ED12C  7C 63 E8 2E */	lwzx r3, r3, r29
/* 801F01F0 001ED130  4B FF FE ED */	bl initAreaInfo__13TPollutionObjFP15TPollutionLayer
/* 801F01F4 001ED134  3B 9C 00 01 */	addi r28, r28, 1
/* 801F01F8 001ED138  3B BD 00 04 */	addi r29, r29, 4
lbl_801F01FC:
/* 801F01FC 001ED13C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801F0200 001ED140  7C 1C 00 00 */	cmpw r28, r0
/* 801F0204 001ED144  41 80 FF E0 */	blt lbl_801F01E4
/* 801F0208 001ED148  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801F020C 001ED14C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801F0210 001ED150  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801F0214 001ED154  7C 08 03 A6 */	mtlr r0
/* 801F0218 001ED158  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 801F021C 001ED15C  83 81 00 60 */	lwz r28, 0x60(r1)
/* 801F0220 001ED160  38 21 00 70 */	addi r1, r1, 0x70
/* 801F0224 001ED164  4E 80 00 20 */	blr 

.global getTexPosT__15TPollutionLayerCFf
getTexPosT__15TPollutionLayerCFf:
/* 801F0228 001ED168  7C 08 02 A6 */	mflr r0
/* 801F022C 001ED16C  90 01 00 04 */	stw r0, 4(r1)
/* 801F0230 001ED170  94 21 FF F8 */	stwu r1, -8(r1)
/* 801F0234 001ED174  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801F0238 001ED178  38 63 00 5C */	addi r3, r3, 0x5c
/* 801F023C 001ED17C  EC 21 00 28 */	fsubs f1, f1, f0
/* 801F0240 001ED180  48 00 06 E9 */	bl worldToTexSize__13TPollutionPosCFf
/* 801F0244 001ED184  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F0248 001ED188  38 21 00 08 */	addi r1, r1, 8
/* 801F024C 001ED18C  7C 08 03 A6 */	mtlr r0
/* 801F0250 001ED190  4E 80 00 20 */	blr 

.global isCleaned__13TPollutionObjCFv
isCleaned__13TPollutionObjCFv:
/* 801F0254 001ED194  80 63 00 30 */	lwz r3, 0x30(r3)
/* 801F0258 001ED198  80 0D 87 C8 */	lwz r0, mCleanedDegree__13TMapEventSink@sda21(r13)
/* 801F025C 001ED19C  7C 03 00 40 */	cmplw r3, r0
/* 801F0260 001ED1A0  40 80 00 0C */	bge lbl_801F026C
/* 801F0264 001ED1A4  38 60 00 01 */	li r3, 1
/* 801F0268 001ED1A8  4E 80 00 20 */	blr 
lbl_801F026C:
/* 801F026C 001ED1AC  38 60 00 00 */	li r3, 0
/* 801F0270 001ED1B0  4E 80 00 20 */	blr 

.global updateDepthMap__13TPollutionObjFv
updateDepthMap__13TPollutionObjFv:
/* 801F0274 001ED1B4  7C 08 02 A6 */	mflr r0
/* 801F0278 001ED1B8  90 01 00 04 */	stw r0, 4(r1)
/* 801F027C 001ED1BC  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801F0280 001ED1C0  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 801F0284 001ED1C4  7C 7F 1B 78 */	mr r31, r3
/* 801F0288 001ED1C8  83 83 00 28 */	lwz r28, 0x28(r3)
/* 801F028C 001ED1CC  48 00 00 6C */	b lbl_801F02F8
lbl_801F0290:
/* 801F0290 001ED1D0  83 7F 00 20 */	lwz r27, 0x20(r31)
/* 801F0294 001ED1D4  7F 9E 16 70 */	srawi r30, r28, 2
/* 801F0298 001ED1D8  57 9D 1E F8 */	rlwinm r29, r28, 3, 0x1b, 0x1c
/* 801F029C 001ED1DC  48 00 00 4C */	b lbl_801F02E8
lbl_801F02A0:
/* 801F02A0 001ED1E0  38 7F 00 00 */	addi r3, r31, 0
/* 801F02A4 001ED1E4  38 9B 00 00 */	addi r4, r27, 0
/* 801F02A8 001ED1E8  38 BC 00 00 */	addi r5, r28, 0
/* 801F02AC 001ED1EC  48 00 00 6D */	bl getDepthFromMap__13TPollutionObjFii
/* 801F02B0 001ED1F0  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 801F02B4 001ED1F4  7F 65 1E 70 */	srawi r5, r27, 3
/* 801F02B8 001ED1F8  57 66 07 7E */	clrlwi r6, r27, 0x1d
/* 801F02BC 001ED1FC  38 E4 00 5C */	addi r7, r4, 0x5c
/* 801F02C0 001ED200  80 84 00 64 */	lwz r4, 0x64(r4)
/* 801F02C4 001ED204  80 E7 00 1C */	lwz r7, 0x1c(r7)
/* 801F02C8 001ED208  3B 7B 00 01 */	addi r27, r27, 1
/* 801F02CC 001ED20C  38 04 FF FD */	addi r0, r4, -3
/* 801F02D0 001ED210  7F C0 00 30 */	slw r0, r30, r0
/* 801F02D4 001ED214  7C 05 02 14 */	add r0, r5, r0
/* 801F02D8 001ED218  54 00 28 34 */	slwi r0, r0, 5
/* 801F02DC 001ED21C  7C 00 32 14 */	add r0, r0, r6
/* 801F02E0 001ED220  7C 00 3A 14 */	add r0, r0, r7
/* 801F02E4 001ED224  7C 7D 01 AE */	stbx r3, r29, r0
lbl_801F02E8:
/* 801F02E8 001ED228  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801F02EC 001ED22C  7C 1B 00 00 */	cmpw r27, r0
/* 801F02F0 001ED230  41 80 FF B0 */	blt lbl_801F02A0
/* 801F02F4 001ED234  3B 9C 00 01 */	addi r28, r28, 1
lbl_801F02F8:
/* 801F02F8 001ED238  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 801F02FC 001ED23C  7C 1C 00 00 */	cmpw r28, r0
/* 801F0300 001ED240  41 80 FF 90 */	blt lbl_801F0290
/* 801F0304 001ED244  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 801F0308 001ED248  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801F030C 001ED24C  38 21 00 38 */	addi r1, r1, 0x38
/* 801F0310 001ED250  7C 08 03 A6 */	mtlr r0
/* 801F0314 001ED254  4E 80 00 20 */	blr 

.global getDepthFromMap__13TPollutionObjFii
getDepthFromMap__13TPollutionObjFii:
/* 801F0318 001ED258  7C 08 02 A6 */	mflr r0
/* 801F031C 001ED25C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801F0320 001ED260  90 01 00 04 */	stw r0, 4(r1)
/* 801F0324 001ED264  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801F0328 001ED268  3C A0 43 30 */	lis r5, 0x4330
/* 801F032C 001ED26C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801F0330 001ED270  DB E1 00 A8 */	stfd f31, 0xa8(r1)
/* 801F0334 001ED274  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801F0338 001ED278  DB A1 00 98 */	stfd f29, 0x98(r1)
/* 801F033C 001ED27C  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 801F0340 001ED280  DB 61 00 88 */	stfd f27, 0x88(r1)
/* 801F0344 001ED284  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 801F0348 001ED288  DB 21 00 78 */	stfd f25, 0x78(r1)
/* 801F034C 001ED28C  90 81 00 64 */	stw r4, 0x64(r1)
/* 801F0350 001ED290  38 81 00 54 */	addi r4, r1, 0x54
/* 801F0354 001ED294  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 801F0358 001ED298  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801F035C 001ED29C  7C 7F 1B 78 */	mr r31, r3
/* 801F0360 001ED2A0  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801F0364 001ED2A4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801F0368 001ED2A8  C8 62 D0 78 */	lfd f3, "@2854"@sda21(r2)
/* 801F036C 001ED2AC  90 A1 00 60 */	stw r5, 0x60(r1)
/* 801F0370 001ED2B0  C3 E3 00 70 */	lfs f31, 0x70(r3)
/* 801F0374 001ED2B4  90 A1 00 58 */	stw r5, 0x58(r1)
/* 801F0378 001ED2B8  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 801F037C 001ED2BC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801F0380 001ED2C0  EC 41 18 28 */	fsubs f2, f1, f3
/* 801F0384 001ED2C4  C0 83 00 38 */	lfs f4, 0x38(r3)
/* 801F0388 001ED2C8  EC 00 18 28 */	fsubs f0, f0, f3
/* 801F038C 001ED2CC  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801F0390 001ED2D0  C0 A2 D0 68 */	lfs f5, "@2849"@sda21(r2)
/* 801F0394 001ED2D4  EC 62 07 F2 */	fmuls f3, f2, f31
/* 801F0398 001ED2D8  80 6D 9A B0 */	lwz r3, gpMap@sda21(r13)
/* 801F039C 001ED2DC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801F03A0 001ED2E0  C0 42 D0 6C */	lfs f2, "@2850"@sda21(r2)
/* 801F03A4 001ED2E4  EF C4 18 2A */	fadds f30, f4, f3
/* 801F03A8 001ED2E8  EF A1 00 2A */	fadds f29, f1, f0
/* 801F03AC 001ED2EC  EF 9E 28 28 */	fsubs f28, f30, f5
/* 801F03B0 001ED2F0  EC 9E F8 2A */	fadds f4, f30, f31
/* 801F03B4 001ED2F4  EF 7D 28 28 */	fsubs f27, f29, f5
/* 801F03B8 001ED2F8  EC 1D F8 2A */	fadds f0, f29, f31
/* 801F03BC 001ED2FC  FC 20 E0 90 */	fmr f1, f28
/* 801F03C0 001ED300  FC 60 D8 90 */	fmr f3, f27
/* 801F03C4 001ED304  EF 25 20 2A */	fadds f25, f5, f4
/* 801F03C8 001ED308  EF 05 00 2A */	fadds f24, f5, f0
/* 801F03CC 001ED30C  4B FE B3 6D */	bl checkGround__4TMapCFfffPPC12TBGCheckData
/* 801F03D0 001ED310  FF 40 08 90 */	fmr f26, f1
/* 801F03D4 001ED314  80 6D 9A B0 */	lwz r3, gpMap@sda21(r13)
/* 801F03D8 001ED318  FC 20 C8 90 */	fmr f1, f25
/* 801F03DC 001ED31C  C0 42 D0 6C */	lfs f2, "@2850"@sda21(r2)
/* 801F03E0 001ED320  FC 60 D8 90 */	fmr f3, f27
/* 801F03E4 001ED324  38 81 00 54 */	addi r4, r1, 0x54
/* 801F03E8 001ED328  4B FE B3 51 */	bl checkGround__4TMapCFfffPPC12TBGCheckData
/* 801F03EC 001ED32C  FF 60 08 90 */	fmr f27, f1
/* 801F03F0 001ED330  80 6D 9A B0 */	lwz r3, gpMap@sda21(r13)
/* 801F03F4 001ED334  FC 20 E0 90 */	fmr f1, f28
/* 801F03F8 001ED338  C0 42 D0 6C */	lfs f2, "@2850"@sda21(r2)
/* 801F03FC 001ED33C  FC 60 C0 90 */	fmr f3, f24
/* 801F0400 001ED340  38 81 00 54 */	addi r4, r1, 0x54
/* 801F0404 001ED344  4B FE B3 35 */	bl checkGround__4TMapCFfffPPC12TBGCheckData
/* 801F0408 001ED348  FF 80 08 90 */	fmr f28, f1
/* 801F040C 001ED34C  80 6D 9A B0 */	lwz r3, gpMap@sda21(r13)
/* 801F0410 001ED350  FC 20 C8 90 */	fmr f1, f25
/* 801F0414 001ED354  C0 42 D0 6C */	lfs f2, "@2850"@sda21(r2)
/* 801F0418 001ED358  FC 60 C0 90 */	fmr f3, f24
/* 801F041C 001ED35C  38 81 00 54 */	addi r4, r1, 0x54
/* 801F0420 001ED360  4B FE B3 19 */	bl checkGround__4TMapCFfffPPC12TBGCheckData
/* 801F0424 001ED364  C0 42 D0 70 */	lfs f2, "@2851"@sda21(r2)
/* 801F0428 001ED368  EC 1A 10 28 */	fsubs f0, f26, f2
/* 801F042C 001ED36C  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 801F0430 001ED370  4C 40 13 82 */	cror 2, 0, 2
/* 801F0434 001ED374  40 82 00 1C */	bne lbl_801F0450
/* 801F0438 001ED378  EC 02 D0 2A */	fadds f0, f2, f26
/* 801F043C 001ED37C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 801F0440 001ED380  4C 40 13 82 */	cror 2, 0, 2
/* 801F0444 001ED384  40 82 00 0C */	bne lbl_801F0450
/* 801F0448 001ED388  38 00 00 01 */	li r0, 1
/* 801F044C 001ED38C  48 00 00 08 */	b lbl_801F0454
lbl_801F0450:
/* 801F0450 001ED390  38 00 00 00 */	li r0, 0
lbl_801F0454:
/* 801F0454 001ED394  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801F0458 001ED398  41 82 00 7C */	beq lbl_801F04D4
/* 801F045C 001ED39C  C0 42 D0 70 */	lfs f2, "@2851"@sda21(r2)
/* 801F0460 001ED3A0  EC 1C 10 28 */	fsubs f0, f28, f2
/* 801F0464 001ED3A4  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 801F0468 001ED3A8  4C 40 13 82 */	cror 2, 0, 2
/* 801F046C 001ED3AC  40 82 00 1C */	bne lbl_801F0488
/* 801F0470 001ED3B0  EC 02 E0 2A */	fadds f0, f2, f28
/* 801F0474 001ED3B4  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 801F0478 001ED3B8  4C 40 13 82 */	cror 2, 0, 2
/* 801F047C 001ED3BC  40 82 00 0C */	bne lbl_801F0488
/* 801F0480 001ED3C0  38 00 00 01 */	li r0, 1
/* 801F0484 001ED3C4  48 00 00 08 */	b lbl_801F048C
lbl_801F0488:
/* 801F0488 001ED3C8  38 00 00 00 */	li r0, 0
lbl_801F048C:
/* 801F048C 001ED3CC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801F0490 001ED3D0  41 82 00 44 */	beq lbl_801F04D4
/* 801F0494 001ED3D4  C0 42 D0 70 */	lfs f2, "@2851"@sda21(r2)
/* 801F0498 001ED3D8  EC 1B 10 28 */	fsubs f0, f27, f2
/* 801F049C 001ED3DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801F04A0 001ED3E0  4C 40 13 82 */	cror 2, 0, 2
/* 801F04A4 001ED3E4  40 82 00 1C */	bne lbl_801F04C0
/* 801F04A8 001ED3E8  EC 02 D8 2A */	fadds f0, f2, f27
/* 801F04AC 001ED3EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F04B0 001ED3F0  4C 40 13 82 */	cror 2, 0, 2
/* 801F04B4 001ED3F4  40 82 00 0C */	bne lbl_801F04C0
/* 801F04B8 001ED3F8  38 00 00 01 */	li r0, 1
/* 801F04BC 001ED3FC  48 00 00 08 */	b lbl_801F04C4
lbl_801F04C0:
/* 801F04C0 001ED400  38 00 00 00 */	li r0, 0
lbl_801F04C4:
/* 801F04C4 001ED404  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801F04C8 001ED408  41 82 00 0C */	beq lbl_801F04D4
/* 801F04CC 001ED40C  38 00 00 01 */	li r0, 1
/* 801F04D0 001ED410  48 00 00 08 */	b lbl_801F04D8
lbl_801F04D4:
/* 801F04D4 001ED414  38 00 00 00 */	li r0, 0
lbl_801F04D8:
/* 801F04D8 001ED418  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801F04DC 001ED41C  41 82 00 38 */	beq lbl_801F0514
/* 801F04E0 001ED420  C0 02 D0 74 */	lfs f0, "@2852"@sda21(r2)
/* 801F04E4 001ED424  38 81 00 54 */	addi r4, r1, 0x54
/* 801F04E8 001ED428  80 6D 9A B0 */	lwz r3, gpMap@sda21(r13)
/* 801F04EC 001ED42C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801F04F0 001ED430  C0 42 D0 6C */	lfs f2, "@2850"@sda21(r2)
/* 801F04F4 001ED434  EC 3E 00 2A */	fadds f1, f30, f0
/* 801F04F8 001ED438  EC 7D 00 2A */	fadds f3, f29, f0
/* 801F04FC 001ED43C  4B FE B2 3D */	bl checkGround__4TMapCFfffPPC12TBGCheckData
/* 801F0500 001ED440  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801F0504 001ED444  38 63 00 5C */	addi r3, r3, 0x5c
/* 801F0508 001ED448  48 00 04 41 */	bl worldToDepth__13TPollutionPosCFf
/* 801F050C 001ED44C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801F0510 001ED450  48 00 00 08 */	b lbl_801F0518
lbl_801F0514:
/* 801F0514 001ED454  38 60 00 FF */	li r3, 0xff
lbl_801F0518:
/* 801F0518 001ED458  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801F051C 001ED45C  CB E1 00 A8 */	lfd f31, 0xa8(r1)
/* 801F0520 001ED460  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 801F0524 001ED464  7C 08 03 A6 */	mtlr r0
/* 801F0528 001ED468  CB A1 00 98 */	lfd f29, 0x98(r1)
/* 801F052C 001ED46C  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 801F0530 001ED470  CB 61 00 88 */	lfd f27, 0x88(r1)
/* 801F0534 001ED474  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 801F0538 001ED478  CB 21 00 78 */	lfd f25, 0x78(r1)
/* 801F053C 001ED47C  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 801F0540 001ED480  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801F0544 001ED484  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801F0548 001ED488  4E 80 00 20 */	blr 

.global newJointObj__13TPollutionObjCFv
newJointObj__13TPollutionObjCFv:
/* 801F054C 001ED48C  7C 08 02 A6 */	mflr r0
/* 801F0550 001ED490  38 60 00 38 */	li r3, 0x38
/* 801F0554 001ED494  90 01 00 04 */	stw r0, 4(r1)
/* 801F0558 001ED498  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801F055C 001ED49C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801F0560 001ED4A0  4B E1 C3 51 */	bl __nw__FUl
/* 801F0564 001ED4A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 801F0568 001ED4A8  41 82 00 34 */	beq lbl_801F059C
/* 801F056C 001ED4AC  7F E3 FB 78 */	mr r3, r31
/* 801F0570 001ED4B0  4B FE A4 B5 */	bl __ct__9TJointObjFv
/* 801F0574 001ED4B4  3C 60 80 3D */	lis r3, __vt__13TPollutionObj@ha
/* 801F0578 001ED4B8  38 03 04 E0 */	addi r0, r3, __vt__13TPollutionObj@l
/* 801F057C 001ED4BC  90 1F 00 00 */	stw r0, 0(r31)
/* 801F0580 001ED4C0  38 00 00 00 */	li r0, 0
/* 801F0584 001ED4C4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801F0588 001ED4C8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801F058C 001ED4CC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801F0590 001ED4D0  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 801F0594 001ED4D4  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801F0598 001ED4D8  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_801F059C:
/* 801F059C 001ED4DC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801F05A0 001ED4E0  7F E3 FB 78 */	mr r3, r31
/* 801F05A4 001ED4E4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801F05A8 001ED4E8  38 21 00 18 */	addi r1, r1, 0x18
/* 801F05AC 001ED4EC  7C 08 03 A6 */	mtlr r0
/* 801F05B0 001ED4F0  4E 80 00 20 */	blr 

.global __sinit_PollutionObj_cpp
__sinit_PollutionObj_cpp:
/* 801F05B4 001ED4F4  7C 08 02 A6 */	mflr r0
/* 801F05B8 001ED4F8  3C 60 80 40 */	lis r3, "@2734"@ha
/* 801F05BC 001ED4FC  90 01 00 04 */	stw r0, 4(r1)
/* 801F05C0 001ED500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F05C4 001ED504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F05C8 001ED508  3B E3 84 20 */	addi r31, r3, "@2734"@l
/* 801F05CC 001ED50C  88 0D 97 CC */	lbz r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
/* 801F05D0 001ED510  7C 00 07 75 */	extsb. r0, r0
/* 801F05D4 001ED514  40 82 00 28 */	bne lbl_801F05FC
/* 801F05D8 001ED518  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 801F05DC 001ED51C  4B E1 E6 59 */	bl initiate__10JSUPtrListFv
/* 801F05E0 001ED520  3C 60 80 0E */	lis r3, "__dt__15JSUList<5MSBgm>Fv"@ha
/* 801F05E4 001ED524  38 83 6A 44 */	addi r4, r3, "__dt__15JSUList<5MSBgm>Fv"@l
/* 801F05E8 001ED528  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 801F05EC 001ED52C  38 BF 00 00 */	addi r5, r31, 0
/* 801F05F0 001ED530  4B E9 21 39 */	bl __register_global_object
/* 801F05F4 001ED534  38 00 00 01 */	li r0, 1
/* 801F05F8 001ED538  98 0D 97 CC */	stb r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
lbl_801F05FC:
/* 801F05FC 001ED53C  88 0D 97 CD */	lbz r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
/* 801F0600 001ED540  7C 00 07 75 */	extsb. r0, r0
/* 801F0604 001ED544  40 82 00 28 */	bne lbl_801F062C
/* 801F0608 001ED548  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 801F060C 001ED54C  4B E1 E6 29 */	bl initiate__10JSUPtrListFv
/* 801F0610 001ED550  3C 60 80 0E */	lis r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@ha
/* 801F0614 001ED554  38 83 69 EC */	addi r4, r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@l
/* 801F0618 001ED558  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 801F061C 001ED55C  38 BF 00 0C */	addi r5, r31, 0xc
/* 801F0620 001ED560  4B E9 21 09 */	bl __register_global_object
/* 801F0624 001ED564  38 00 00 01 */	li r0, 1
/* 801F0628 001ED568  98 0D 97 CD */	stb r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
lbl_801F062C:
/* 801F062C 001ED56C  88 0D 97 CE */	lbz r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
/* 801F0630 001ED570  7C 00 07 75 */	extsb. r0, r0
/* 801F0634 001ED574  40 82 00 28 */	bne lbl_801F065C
/* 801F0638 001ED578  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 801F063C 001ED57C  4B E1 E5 F9 */	bl initiate__10JSUPtrListFv
/* 801F0640 001ED580  3C 60 80 0E */	lis r3, "__dt__21JSUList<10MSSetSound>Fv"@ha
/* 801F0644 001ED584  38 83 69 94 */	addi r4, r3, "__dt__21JSUList<10MSSetSound>Fv"@l
/* 801F0648 001ED588  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 801F064C 001ED58C  38 BF 00 18 */	addi r5, r31, 0x18
/* 801F0650 001ED590  4B E9 20 D9 */	bl __register_global_object
/* 801F0654 001ED594  38 00 00 01 */	li r0, 1
/* 801F0658 001ED598  98 0D 97 CE */	stb r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
lbl_801F065C:
/* 801F065C 001ED59C  88 0D 8F 8C */	lbz r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
/* 801F0660 001ED5A0  7C 00 07 75 */	extsb. r0, r0
/* 801F0664 001ED5A4  40 82 00 28 */	bne lbl_801F068C
/* 801F0668 001ED5A8  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 801F066C 001ED5AC  4B E1 E5 C9 */	bl initiate__10JSUPtrListFv
/* 801F0670 001ED5B0  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@ha
/* 801F0674 001ED5B4  38 83 A8 0C */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@l
/* 801F0678 001ED5B8  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 801F067C 001ED5BC  38 BF 00 24 */	addi r5, r31, 0x24
/* 801F0680 001ED5C0  4B E9 20 A9 */	bl __register_global_object
/* 801F0684 001ED5C4  38 00 00 01 */	li r0, 1
/* 801F0688 001ED5C8  98 0D 8F 8C */	stb r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
lbl_801F068C:
/* 801F068C 001ED5CC  88 0D 8F 8D */	lbz r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
/* 801F0690 001ED5D0  7C 00 07 75 */	extsb. r0, r0
/* 801F0694 001ED5D4  40 82 00 28 */	bne lbl_801F06BC
/* 801F0698 001ED5D8  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 801F069C 001ED5DC  4B E1 E5 99 */	bl initiate__10JSUPtrListFv
/* 801F06A0 001ED5E0  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@ha
/* 801F06A4 001ED5E4  38 83 A7 B4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@l
/* 801F06A8 001ED5E8  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 801F06AC 001ED5EC  38 BF 00 30 */	addi r5, r31, 0x30
/* 801F06B0 001ED5F0  4B E9 20 79 */	bl __register_global_object
/* 801F06B4 001ED5F4  38 00 00 01 */	li r0, 1
/* 801F06B8 001ED5F8  98 0D 8F 8D */	stb r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
lbl_801F06BC:
/* 801F06BC 001ED5FC  88 0D 8F 8E */	lbz r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
/* 801F06C0 001ED600  7C 00 07 75 */	extsb. r0, r0
/* 801F06C4 001ED604  40 82 00 28 */	bne lbl_801F06EC
/* 801F06C8 001ED608  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 801F06CC 001ED60C  4B E1 E5 69 */	bl initiate__10JSUPtrListFv
/* 801F06D0 001ED610  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@ha
/* 801F06D4 001ED614  38 83 A7 5C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@l
/* 801F06D8 001ED618  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 801F06DC 001ED61C  38 BF 00 3C */	addi r5, r31, 0x3c
/* 801F06E0 001ED620  4B E9 20 49 */	bl __register_global_object
/* 801F06E4 001ED624  38 00 00 01 */	li r0, 1
/* 801F06E8 001ED628  98 0D 8F 8E */	stb r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
lbl_801F06EC:
/* 801F06EC 001ED62C  88 0D 8F 8F */	lbz r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
/* 801F06F0 001ED630  7C 00 07 75 */	extsb. r0, r0
/* 801F06F4 001ED634  40 82 00 28 */	bne lbl_801F071C
/* 801F06F8 001ED638  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 801F06FC 001ED63C  4B E1 E5 39 */	bl initiate__10JSUPtrListFv
/* 801F0700 001ED640  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@ha
/* 801F0704 001ED644  38 83 A7 04 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@l
/* 801F0708 001ED648  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 801F070C 001ED64C  38 BF 00 48 */	addi r5, r31, 0x48
/* 801F0710 001ED650  4B E9 20 19 */	bl __register_global_object
/* 801F0714 001ED654  38 00 00 01 */	li r0, 1
/* 801F0718 001ED658  98 0D 8F 8F */	stb r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
lbl_801F071C:
/* 801F071C 001ED65C  88 0D 8F 90 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
/* 801F0720 001ED660  7C 00 07 75 */	extsb. r0, r0
/* 801F0724 001ED664  40 82 00 28 */	bne lbl_801F074C
/* 801F0728 001ED668  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 801F072C 001ED66C  4B E1 E5 09 */	bl initiate__10JSUPtrListFv
/* 801F0730 001ED670  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@ha
/* 801F0734 001ED674  38 83 A6 AC */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@l
/* 801F0738 001ED678  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 801F073C 001ED67C  38 BF 00 54 */	addi r5, r31, 0x54
/* 801F0740 001ED680  4B E9 1F E9 */	bl __register_global_object
/* 801F0744 001ED684  38 00 00 01 */	li r0, 1
/* 801F0748 001ED688  98 0D 8F 90 */	stb r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
lbl_801F074C:
/* 801F074C 001ED68C  88 0D 8F 91 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
/* 801F0750 001ED690  7C 00 07 75 */	extsb. r0, r0
/* 801F0754 001ED694  40 82 00 28 */	bne lbl_801F077C
/* 801F0758 001ED698  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 801F075C 001ED69C  4B E1 E4 D9 */	bl initiate__10JSUPtrListFv
/* 801F0760 001ED6A0  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@ha
/* 801F0764 001ED6A4  38 83 A6 54 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@l
/* 801F0768 001ED6A8  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 801F076C 001ED6AC  38 BF 00 60 */	addi r5, r31, 0x60
/* 801F0770 001ED6B0  4B E9 1F B9 */	bl __register_global_object
/* 801F0774 001ED6B4  38 00 00 01 */	li r0, 1
/* 801F0778 001ED6B8  98 0D 8F 91 */	stb r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
lbl_801F077C:
/* 801F077C 001ED6BC  88 0D 8F 92 */	lbz r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
/* 801F0780 001ED6C0  7C 00 07 75 */	extsb. r0, r0
/* 801F0784 001ED6C4  40 82 00 28 */	bne lbl_801F07AC
/* 801F0788 001ED6C8  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 801F078C 001ED6CC  4B E1 E4 A9 */	bl initiate__10JSUPtrListFv
/* 801F0790 001ED6D0  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@ha
/* 801F0794 001ED6D4  38 83 A5 FC */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@l
/* 801F0798 001ED6D8  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 801F079C 001ED6DC  38 BF 00 6C */	addi r5, r31, 0x6c
/* 801F07A0 001ED6E0  4B E9 1F 89 */	bl __register_global_object
/* 801F07A4 001ED6E4  38 00 00 01 */	li r0, 1
/* 801F07A8 001ED6E8  98 0D 8F 92 */	stb r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
lbl_801F07AC:
/* 801F07AC 001ED6EC  88 0D 8F 93 */	lbz r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
/* 801F07B0 001ED6F0  7C 00 07 75 */	extsb. r0, r0
/* 801F07B4 001ED6F4  40 82 00 28 */	bne lbl_801F07DC
/* 801F07B8 001ED6F8  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 801F07BC 001ED6FC  4B E1 E4 79 */	bl initiate__10JSUPtrListFv
/* 801F07C0 001ED700  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@ha
/* 801F07C4 001ED704  38 83 A5 A4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@l
/* 801F07C8 001ED708  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 801F07CC 001ED70C  38 BF 00 78 */	addi r5, r31, 0x78
/* 801F07D0 001ED710  4B E9 1F 59 */	bl __register_global_object
/* 801F07D4 001ED714  38 00 00 01 */	li r0, 1
/* 801F07D8 001ED718  98 0D 8F 93 */	stb r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
lbl_801F07DC:
/* 801F07DC 001ED71C  88 0D 8F 94 */	lbz r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
/* 801F07E0 001ED720  7C 00 07 75 */	extsb. r0, r0
/* 801F07E4 001ED724  40 82 00 28 */	bne lbl_801F080C
/* 801F07E8 001ED728  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 801F07EC 001ED72C  4B E1 E4 49 */	bl initiate__10JSUPtrListFv
/* 801F07F0 001ED730  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@ha
/* 801F07F4 001ED734  38 83 A5 4C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@l
/* 801F07F8 001ED738  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 801F07FC 001ED73C  38 BF 00 84 */	addi r5, r31, 0x84
/* 801F0800 001ED740  4B E9 1F 29 */	bl __register_global_object
/* 801F0804 001ED744  38 00 00 01 */	li r0, 1
/* 801F0808 001ED748  98 0D 8F 94 */	stb r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
lbl_801F080C:
/* 801F080C 001ED74C  88 0D 8F 95 */	lbz r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
/* 801F0810 001ED750  7C 00 07 75 */	extsb. r0, r0
/* 801F0814 001ED754  40 82 00 28 */	bne lbl_801F083C
/* 801F0818 001ED758  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 801F081C 001ED75C  4B E1 E4 19 */	bl initiate__10JSUPtrListFv
/* 801F0820 001ED760  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@ha
/* 801F0824 001ED764  38 83 A4 F4 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@l
/* 801F0828 001ED768  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 801F082C 001ED76C  38 BF 00 90 */	addi r5, r31, 0x90
/* 801F0830 001ED770  4B E9 1E F9 */	bl __register_global_object
/* 801F0834 001ED774  38 00 00 01 */	li r0, 1
/* 801F0838 001ED778  98 0D 8F 95 */	stb r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
lbl_801F083C:
/* 801F083C 001ED77C  88 0D 8F 96 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
/* 801F0840 001ED780  7C 00 07 75 */	extsb. r0, r0
/* 801F0844 001ED784  40 82 00 28 */	bne lbl_801F086C
/* 801F0848 001ED788  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 801F084C 001ED78C  4B E1 E3 E9 */	bl initiate__10JSUPtrListFv
/* 801F0850 001ED790  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@ha
/* 801F0854 001ED794  38 83 A4 9C */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@l
/* 801F0858 001ED798  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 801F085C 001ED79C  38 BF 00 9C */	addi r5, r31, 0x9c
/* 801F0860 001ED7A0  4B E9 1E C9 */	bl __register_global_object
/* 801F0864 001ED7A4  38 00 00 01 */	li r0, 1
/* 801F0868 001ED7A8  98 0D 8F 96 */	stb r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
lbl_801F086C:
/* 801F086C 001ED7AC  88 0D 8F 97 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
/* 801F0870 001ED7B0  7C 00 07 75 */	extsb. r0, r0
/* 801F0874 001ED7B4  40 82 00 28 */	bne lbl_801F089C
/* 801F0878 001ED7B8  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 801F087C 001ED7BC  4B E1 E3 B9 */	bl initiate__10JSUPtrListFv
/* 801F0880 001ED7C0  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@ha
/* 801F0884 001ED7C4  38 83 A4 44 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@l
/* 801F0888 001ED7C8  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 801F088C 001ED7CC  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 801F0890 001ED7D0  4B E9 1E 99 */	bl __register_global_object
/* 801F0894 001ED7D4  38 00 00 01 */	li r0, 1
/* 801F0898 001ED7D8  98 0D 8F 97 */	stb r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
lbl_801F089C:
/* 801F089C 001ED7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F08A0 001ED7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F08A4 001ED7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F08A8 001ED7E8  7C 08 03 A6 */	mtlr r0
/* 801F08AC 001ED7EC  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
lbl_constructor:
  .4byte __sinit_PollutionObj_cpp

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__13TPollutionObj
__vt__13TPollutionObj:
  .4byte 0
  .4byte 0
  .4byte initJointObj__9TJointObjFP8J3DJoint
  .4byte alive__9TJointObjFv
  .4byte awake__9TJointObjFv
  .4byte stand__9TJointObjFv
  .4byte kill__9TJointObjFv
  .4byte sleep__9TJointObjFv
  .4byte sit__9TJointObjFv
  .4byte newJointObj__13TPollutionObjCFv

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@2849":
	.incbin "baserom.dol", 0x3E8D68, 0x4
"@2850":
	.incbin "baserom.dol", 0x3E8D6C, 0x4
"@2851":
	.incbin "baserom.dol", 0x3E8D70, 0x4
"@2852":
	.incbin "baserom.dol", 0x3E8D74, 0x4
"@2854":
	.incbin "baserom.dol", 0x3E8D78, 0x8

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
"@2734":
	.skip 0xC
"@2735":
	.skip 0xC
"@2736":
	.skip 0xC
"@2737":
	.skip 0xC
"@2738":
	.skip 0xC
"@2739":
	.skip 0xC
"@2740":
	.skip 0xC
"@2741":
	.skip 0xC
"@2742":
	.skip 0xC
"@2743":
	.skip 0xC
"@2744":
	.skip 0xC
"@2745":
	.skip 0xC
"@2746":
	.skip 0xC
"@2747":
	.skip 0xC
"@2748":
	.skip 0x10
