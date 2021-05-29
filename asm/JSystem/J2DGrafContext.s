.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__14J2DGrafContextFRC7JUTRect
__ct__14J2DGrafContextFRC7JUTRect:
/* 80034FCC 00031F0C  7C 08 02 A6 */	mflr r0
/* 80034FD0 00031F10  3C A0 80 3B */	lis r5, __vt__14J2DGrafContext@ha
/* 80034FD4 00031F14  90 01 00 04 */	stw r0, 4(r1)
/* 80034FD8 00031F18  38 05 9B 48 */	addi r0, r5, __vt__14J2DGrafContext@l
/* 80034FDC 00031F1C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80034FE0 00031F20  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80034FE4 00031F24  3B E4 00 00 */	addi r31, r4, 0
/* 80034FE8 00031F28  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80034FEC 00031F2C  3B C3 00 00 */	addi r30, r3, 0
/* 80034FF0 00031F30  90 03 00 00 */	stw r0, 0(r3)
/* 80034FF4 00031F34  38 7E 00 08 */	addi r3, r30, 8
/* 80034FF8 00031F38  4B FD E2 39 */	bl copy__7JUTRectFRC7JUTRect
/* 80034FFC 00031F3C  38 7E 00 18 */	addi r3, r30, 0x18
/* 80035000 00031F40  38 9F 00 00 */	addi r4, r31, 0
/* 80035004 00031F44  4B FD E2 2D */	bl copy__7JUTRectFRC7JUTRect
/* 80035008 00031F48  39 00 FF FF */	li r8, -1
/* 8003500C 00031F4C  91 1E 00 28 */	stw r8, 0x28(r30)
/* 80035010 00031F50  38 00 00 00 */	li r0, 0
/* 80035014 00031F54  38 E1 00 24 */	addi r7, r1, 0x24
/* 80035018 00031F58  91 1E 00 2C */	stw r8, 0x2c(r30)
/* 8003501C 00031F5C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80035020 00031F60  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80035024 00031F64  91 1E 00 30 */	stw r8, 0x30(r30)
/* 80035028 00031F68  38 81 00 18 */	addi r4, r1, 0x18
/* 8003502C 00031F6C  38 7E 00 00 */	addi r3, r30, 0
/* 80035030 00031F70  91 1E 00 34 */	stw r8, 0x34(r30)
/* 80035034 00031F74  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80035038 00031F78  90 1E 00 40 */	stw r0, 0x40(r30)
/* 8003503C 00031F7C  91 01 00 28 */	stw r8, 0x28(r1)
/* 80035040 00031F80  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80035044 00031F84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80035048 00031F88  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8003504C 00031F8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80035050 00031F90  90 01 00 20 */	stw r0, 0x20(r1)
/* 80035054 00031F94  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80035058 00031F98  90 01 00 18 */	stw r0, 0x18(r1)
/* 8003505C 00031F9C  48 00 04 99 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80035060 00031FA0  38 7E 00 00 */	addi r3, r30, 0
/* 80035064 00031FA4  38 80 00 06 */	li r4, 6
/* 80035068 00031FA8  48 00 05 49 */	bl setLineWidth__14J2DGrafContextFUc
/* 8003506C 00031FAC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80035070 00031FB0  7F C3 F3 78 */	mr r3, r30
/* 80035074 00031FB4  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80035078 00031FB8  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 8003507C 00031FBC  7C 08 03 A6 */	mtlr r0
/* 80035080 00031FC0  38 21 00 38 */	addi r1, r1, 0x38
/* 80035084 00031FC4  4E 80 00 20 */	blr 

.global __ct__14J2DGrafContextFiiii
__ct__14J2DGrafContextFiiii:
/* 80035088 00031FC8  7C 08 02 A6 */	mflr r0
/* 8003508C 00031FCC  3D 00 80 3B */	lis r8, __vt__14J2DGrafContext@ha
/* 80035090 00031FD0  90 01 00 04 */	stw r0, 4(r1)
/* 80035094 00031FD4  38 08 9B 48 */	addi r0, r8, __vt__14J2DGrafContext@l
/* 80035098 00031FD8  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 8003509C 00031FDC  BF 61 00 44 */	stmw r27, 0x44(r1)
/* 800350A0 00031FE0  3B 84 00 00 */	addi r28, r4, 0
/* 800350A4 00031FE4  3B A5 00 00 */	addi r29, r5, 0
/* 800350A8 00031FE8  7F DC 32 14 */	add r30, r28, r6
/* 800350AC 00031FEC  7F FD 3A 14 */	add r31, r29, r7
/* 800350B0 00031FF0  3B 63 00 00 */	addi r27, r3, 0
/* 800350B4 00031FF4  38 DE 00 00 */	addi r6, r30, 0
/* 800350B8 00031FF8  38 FF 00 00 */	addi r7, r31, 0
/* 800350BC 00031FFC  90 03 00 00 */	stw r0, 0(r3)
/* 800350C0 00032000  38 7B 00 08 */	addi r3, r27, 8
/* 800350C4 00032004  4B FD E1 59 */	bl set__7JUTRectFiiii
/* 800350C8 00032008  38 9C 00 00 */	addi r4, r28, 0
/* 800350CC 0003200C  38 BD 00 00 */	addi r5, r29, 0
/* 800350D0 00032010  38 DE 00 00 */	addi r6, r30, 0
/* 800350D4 00032014  38 FF 00 00 */	addi r7, r31, 0
/* 800350D8 00032018  38 7B 00 18 */	addi r3, r27, 0x18
/* 800350DC 0003201C  4B FD E1 41 */	bl set__7JUTRectFiiii
/* 800350E0 00032020  39 00 FF FF */	li r8, -1
/* 800350E4 00032024  91 1B 00 28 */	stw r8, 0x28(r27)
/* 800350E8 00032028  38 00 00 00 */	li r0, 0
/* 800350EC 0003202C  38 E1 00 30 */	addi r7, r1, 0x30
/* 800350F0 00032030  91 1B 00 2C */	stw r8, 0x2c(r27)
/* 800350F4 00032034  38 C1 00 2C */	addi r6, r1, 0x2c
/* 800350F8 00032038  38 A1 00 28 */	addi r5, r1, 0x28
/* 800350FC 0003203C  91 1B 00 30 */	stw r8, 0x30(r27)
/* 80035100 00032040  38 81 00 24 */	addi r4, r1, 0x24
/* 80035104 00032044  38 7B 00 00 */	addi r3, r27, 0
/* 80035108 00032048  91 1B 00 34 */	stw r8, 0x34(r27)
/* 8003510C 0003204C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80035110 00032050  90 1B 00 40 */	stw r0, 0x40(r27)
/* 80035114 00032054  91 01 00 34 */	stw r8, 0x34(r1)
/* 80035118 00032058  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003511C 0003205C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80035120 00032060  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80035124 00032064  90 01 00 30 */	stw r0, 0x30(r1)
/* 80035128 00032068  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8003512C 0003206C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80035130 00032070  90 01 00 24 */	stw r0, 0x24(r1)
/* 80035134 00032074  48 00 03 C1 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80035138 00032078  38 7B 00 00 */	addi r3, r27, 0
/* 8003513C 0003207C  38 80 00 06 */	li r4, 6
/* 80035140 00032080  48 00 04 71 */	bl setLineWidth__14J2DGrafContextFUc
/* 80035144 00032084  7F 63 DB 78 */	mr r3, r27
/* 80035148 00032088  BB 61 00 44 */	lmw r27, 0x44(r1)
/* 8003514C 0003208C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80035150 00032090  38 21 00 58 */	addi r1, r1, 0x58
/* 80035154 00032094  7C 08 03 A6 */	mtlr r0
/* 80035158 00032098  4E 80 00 20 */	blr 

.global setPort__14J2DGrafContextFv
setPort__14J2DGrafContextFv:
/* 8003515C 0003209C  7C 08 02 A6 */	mflr r0
/* 80035160 000320A0  3C A0 43 30 */	lis r5, 0x4330
/* 80035164 000320A4  90 01 00 04 */	stw r0, 4(r1)
/* 80035168 000320A8  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8003516C 000320AC  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80035170 000320B0  7C 7F 1B 78 */	mr r31, r3
/* 80035174 000320B4  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 80035178 000320B8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8003517C 000320BC  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 80035180 000320C0  80 E3 00 08 */	lwz r7, 8(r3)
/* 80035184 000320C4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80035188 000320C8  7C C6 00 50 */	subf r6, r6, r0
/* 8003518C 000320CC  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80035190 000320D0  90 81 00 24 */	stw r4, 0x24(r1)
/* 80035194 000320D4  7C 67 18 50 */	subf r3, r7, r3
/* 80035198 000320D8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8003519C 000320DC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 800351A0 000320E0  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800351A4 000320E4  C8 82 82 A8 */	lfd f4, $$2169@sda21(r2)
/* 800351A8 000320E8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800351AC 000320EC  C0 A2 82 A0 */	lfs f5, $$2166@sda21(r2)
/* 800351B0 000320F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800351B4 000320F4  C0 C2 82 A4 */	lfs f6, $$2167@sda21(r2)
/* 800351B8 000320F8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 800351BC 000320FC  90 A1 00 28 */	stw r5, 0x28(r1)
/* 800351C0 00032100  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800351C4 00032104  90 A1 00 18 */	stw r5, 0x18(r1)
/* 800351C8 00032108  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 800351CC 0003210C  EC 40 20 28 */	fsubs f2, f0, f4
/* 800351D0 00032110  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800351D4 00032114  C8 61 00 18 */	lfd f3, 0x18(r1)
/* 800351D8 00032118  EC 21 20 28 */	fsubs f1, f1, f4
/* 800351DC 0003211C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800351E0 00032120  EC 63 20 28 */	fsubs f3, f3, f4
/* 800351E4 00032124  EC 80 20 28 */	fsubs f4, f0, f4
/* 800351E8 00032128  48 07 88 01 */	bl GXSetViewport
/* 800351EC 0003212C  7F E3 FB 78 */	mr r3, r31
/* 800351F0 00032130  81 9F 00 00 */	lwz r12, 0(r31)
/* 800351F4 00032134  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800351F8 00032138  7D 88 03 A6 */	mtlr r12
/* 800351FC 0003213C  4E 80 00 21 */	blrl 
/* 80035200 00032140  7F E3 FB 78 */	mr r3, r31
/* 80035204 00032144  81 9F 00 00 */	lwz r12, 0(r31)
/* 80035208 00032148  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8003520C 0003214C  7D 88 03 A6 */	mtlr r12
/* 80035210 00032150  4E 80 00 21 */	blrl 
/* 80035214 00032154  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80035218 00032158  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8003521C 0003215C  38 21 00 38 */	addi r1, r1, 0x38
/* 80035220 00032160  7C 08 03 A6 */	mtlr r0
/* 80035224 00032164  4E 80 00 20 */	blr 

.global setup2D__14J2DGrafContextFv
setup2D__14J2DGrafContextFv:
/* 80035228 00032168  7C 08 02 A6 */	mflr r0
/* 8003522C 0003216C  90 01 00 04 */	stw r0, 4(r1)
/* 80035230 00032170  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80035234 00032174  93 E1 00 44 */	stw r31, 0x44(r1)
/* 80035238 00032178  7C 7F 1B 78 */	mr r31, r3
/* 8003523C 0003217C  48 07 21 2D */	bl GXClearVtxDesc
/* 80035240 00032180  38 60 00 09 */	li r3, 9
/* 80035244 00032184  38 80 00 01 */	li r4, 1
/* 80035248 00032188  48 07 16 A1 */	bl GXSetVtxDesc
/* 8003524C 0003218C  38 60 00 0B */	li r3, 0xb
/* 80035250 00032190  38 80 00 01 */	li r4, 1
/* 80035254 00032194  48 07 16 95 */	bl GXSetVtxDesc
/* 80035258 00032198  38 60 00 0D */	li r3, 0xd
/* 8003525C 0003219C  38 80 00 00 */	li r4, 0
/* 80035260 000321A0  48 07 16 89 */	bl GXSetVtxDesc
/* 80035264 000321A4  38 7F 00 84 */	addi r3, r31, 0x84
/* 80035268 000321A8  38 80 00 00 */	li r4, 0
/* 8003526C 000321AC  48 07 84 C1 */	bl GXLoadPosMtxImm
/* 80035270 000321B0  38 60 00 01 */	li r3, 1
/* 80035274 000321B4  48 07 4D 31 */	bl GXSetNumChans
/* 80035278 000321B8  38 60 00 00 */	li r3, 0
/* 8003527C 000321BC  48 07 2E D5 */	bl GXSetNumTexGens
/* 80035280 000321C0  38 60 00 01 */	li r3, 1
/* 80035284 000321C4  48 07 71 89 */	bl GXSetNumTevStages
/* 80035288 000321C8  38 60 00 00 */	li r3, 0
/* 8003528C 000321CC  38 80 00 04 */	li r4, 4
/* 80035290 000321D0  48 07 67 79 */	bl GXSetTevOp
/* 80035294 000321D4  38 60 00 00 */	li r3, 0
/* 80035298 000321D8  38 80 00 FF */	li r4, 0xff
/* 8003529C 000321DC  38 A0 00 FF */	li r5, 0xff
/* 800352A0 000321E0  38 C0 00 04 */	li r6, 4
/* 800352A4 000321E4  48 07 6F 8D */	bl GXSetTevOrder
/* 800352A8 000321E8  38 60 00 04 */	li r3, 4
/* 800352AC 000321EC  38 80 00 00 */	li r4, 0
/* 800352B0 000321F0  38 A0 00 00 */	li r5, 0
/* 800352B4 000321F4  38 C0 00 01 */	li r6, 1
/* 800352B8 000321F8  38 E0 00 00 */	li r7, 0
/* 800352BC 000321FC  39 00 00 00 */	li r8, 0
/* 800352C0 00032200  39 20 00 02 */	li r9, 2
/* 800352C4 00032204  48 07 4D 2D */	bl GXSetChanCtrl
/* 800352C8 00032208  38 60 00 04 */	li r3, 4
/* 800352CC 0003220C  38 80 00 00 */	li r4, 0
/* 800352D0 00032210  38 A0 00 01 */	li r5, 1
/* 800352D4 00032214  38 C0 00 04 */	li r6, 4
/* 800352D8 00032218  38 E0 00 00 */	li r7, 0
/* 800352DC 0003221C  48 07 6E 81 */	bl GXSetAlphaCompare
/* 800352E0 00032220  38 61 00 0C */	addi r3, r1, 0xc
/* 800352E4 00032224  48 05 EF CD */	bl PSMTXIdentity
/* 800352E8 00032228  38 61 00 0C */	addi r3, r1, 0xc
/* 800352EC 0003222C  38 80 00 3C */	li r4, 0x3c
/* 800352F0 00032230  38 A0 00 00 */	li r5, 0
/* 800352F4 00032234  48 07 85 55 */	bl GXLoadTexMtxImm
/* 800352F8 00032238  38 60 00 00 */	li r3, 0
/* 800352FC 0003223C  48 07 85 11 */	bl GXSetCurrentMtx
/* 80035300 00032240  38 60 00 00 */	li r3, 0
/* 80035304 00032244  38 80 00 03 */	li r4, 3
/* 80035308 00032248  38 A0 00 00 */	li r5, 0
/* 8003530C 0003224C  48 07 75 69 */	bl GXSetZMode
/* 80035310 00032250  38 60 00 00 */	li r3, 0
/* 80035314 00032254  38 80 00 01 */	li r4, 1
/* 80035318 00032258  38 A0 00 04 */	li r5, 4
/* 8003531C 0003225C  38 C0 00 3C */	li r6, 0x3c
/* 80035320 00032260  38 E0 00 00 */	li r7, 0
/* 80035324 00032264  39 00 00 7D */	li r8, 0x7d
/* 80035328 00032268  48 07 2B 59 */	bl GXSetTexCoordGen2
/* 8003532C 0003226C  38 60 00 00 */	li r3, 0
/* 80035330 00032270  38 80 00 09 */	li r4, 9
/* 80035334 00032274  38 A0 00 01 */	li r5, 1
/* 80035338 00032278  38 C0 00 03 */	li r6, 3
/* 8003533C 0003227C  38 E0 00 00 */	li r7, 0
/* 80035340 00032280  48 07 20 75 */	bl GXSetVtxAttrFmt
/* 80035344 00032284  38 60 00 00 */	li r3, 0
/* 80035348 00032288  38 80 00 0B */	li r4, 0xb
/* 8003534C 0003228C  38 A0 00 01 */	li r5, 1
/* 80035350 00032290  38 C0 00 05 */	li r6, 5
/* 80035354 00032294  38 E0 00 00 */	li r7, 0
/* 80035358 00032298  48 07 20 5D */	bl GXSetVtxAttrFmt
/* 8003535C 0003229C  38 60 00 00 */	li r3, 0
/* 80035360 000322A0  38 80 00 0D */	li r4, 0xd
/* 80035364 000322A4  38 A0 00 01 */	li r5, 1
/* 80035368 000322A8  38 C0 00 02 */	li r6, 2
/* 8003536C 000322AC  38 E0 00 0F */	li r7, 0xf
/* 80035370 000322B0  48 07 20 45 */	bl GXSetVtxAttrFmt
/* 80035374 000322B4  38 60 00 00 */	li r3, 0
/* 80035378 000322B8  38 80 00 0E */	li r4, 0xe
/* 8003537C 000322BC  38 A0 00 01 */	li r5, 1
/* 80035380 000322C0  38 C0 00 02 */	li r6, 2
/* 80035384 000322C4  38 E0 00 0F */	li r7, 0xf
/* 80035388 000322C8  48 07 20 2D */	bl GXSetVtxAttrFmt
/* 8003538C 000322CC  88 7F 00 38 */	lbz r3, 0x38(r31)
/* 80035390 000322D0  38 80 00 00 */	li r4, 0
/* 80035394 000322D4  48 07 36 8D */	bl GXSetLineWidth
/* 80035398 000322D8  38 60 00 00 */	li r3, 0
/* 8003539C 000322DC  48 07 37 95 */	bl GXSetCullMode
/* 800353A0 000322E0  38 60 00 00 */	li r3, 0
/* 800353A4 000322E4  48 07 64 9D */	bl GXSetNumIndStages
/* 800353A8 000322E8  3B E0 00 00 */	li r31, 0
lbl_800353AC:
/* 800353AC 000322EC  7F E3 FB 78 */	mr r3, r31
/* 800353B0 000322F0  48 07 64 BD */	bl GXSetTevDirect
/* 800353B4 000322F4  3B FF 00 01 */	addi r31, r31, 1
/* 800353B8 000322F8  2C 1F 00 08 */	cmpwi r31, 8
/* 800353BC 000322FC  41 80 FF F0 */	blt lbl_800353AC
/* 800353C0 00032300  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 800353C4 00032304  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 800353C8 00032308  38 21 00 48 */	addi r1, r1, 0x48
/* 800353CC 0003230C  7C 08 03 A6 */	mtlr r0
/* 800353D0 00032310  4E 80 00 20 */	blr 

.global setScissor__14J2DGrafContextFv
setScissor__14J2DGrafContextFv:
/* 800353D4 00032314  7C 08 02 A6 */	mflr r0
/* 800353D8 00032318  38 80 00 00 */	li r4, 0
/* 800353DC 0003231C  90 01 00 04 */	stw r0, 4(r1)
/* 800353E0 00032320  38 A0 00 00 */	li r5, 0
/* 800353E4 00032324  38 C0 04 00 */	li r6, 0x400
/* 800353E8 00032328  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800353EC 0003232C  38 E0 03 E8 */	li r7, 0x3e8
/* 800353F0 00032330  93 E1 00 34 */	stw r31, 0x34(r1)
/* 800353F4 00032334  3B E3 00 00 */	addi r31, r3, 0
/* 800353F8 00032338  38 61 00 1C */	addi r3, r1, 0x1c
/* 800353FC 0003233C  4B FD DE 21 */	bl set__7JUTRectFiiii
/* 80035400 00032340  38 61 00 0C */	addi r3, r1, 0xc
/* 80035404 00032344  38 9F 00 18 */	addi r4, r31, 0x18
/* 80035408 00032348  4B FD DE 29 */	bl copy__7JUTRectFRC7JUTRect
/* 8003540C 0003234C  38 7F 00 18 */	addi r3, r31, 0x18
/* 80035410 00032350  38 81 00 1C */	addi r4, r1, 0x1c
/* 80035414 00032354  4B FD DE 75 */	bl intersect__7JUTRectFRC7JUTRect
/* 80035418 00032358  38 61 00 0C */	addi r3, r1, 0xc
/* 8003541C 0003235C  4B FD DF 79 */	bl normalize__7JUTRectFv
/* 80035420 00032360  38 61 00 0C */	addi r3, r1, 0xc
/* 80035424 00032364  38 80 00 00 */	li r4, 0
/* 80035428 00032368  38 A0 FF FF */	li r5, -1
/* 8003542C 0003236C  4B FD DE 29 */	bl add__7JUTRectFii
/* 80035430 00032370  38 61 00 0C */	addi r3, r1, 0xc
/* 80035434 00032374  38 81 00 1C */	addi r4, r1, 0x1c
/* 80035438 00032378  4B FD DE 51 */	bl intersect__7JUTRectFRC7JUTRect
/* 8003543C 0003237C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80035440 00032380  41 82 00 24 */	beq lbl_80035464
/* 80035444 00032384  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80035448 00032388  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8003544C 0003238C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80035450 00032390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035454 00032394  7C C4 28 50 */	subf r6, r4, r5
/* 80035458 00032398  7C A3 00 50 */	subf r5, r3, r0
/* 8003545C 0003239C  48 07 85 FD */	bl GXSetScissor
/* 80035460 000323A0  48 00 00 18 */	b lbl_80035478
lbl_80035464:
/* 80035464 000323A4  38 60 00 00 */	li r3, 0
/* 80035468 000323A8  38 80 00 00 */	li r4, 0
/* 8003546C 000323AC  38 A0 00 00 */	li r5, 0
/* 80035470 000323B0  38 C0 00 00 */	li r6, 0
/* 80035474 000323B4  48 07 85 E5 */	bl GXSetScissor
lbl_80035478:
/* 80035478 000323B8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8003547C 000323BC  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80035480 000323C0  38 21 00 38 */	addi r1, r1, 0x38
/* 80035484 000323C4  7C 08 03 A6 */	mtlr r0
/* 80035488 000323C8  4E 80 00 20 */	blr 

.global scissor__14J2DGrafContextFRC7JUTRect
scissor__14J2DGrafContextFRC7JUTRect:
/* 8003548C 000323CC  80 A4 00 00 */	lwz r5, 0(r4)
/* 80035490 000323D0  80 04 00 04 */	lwz r0, 4(r4)
/* 80035494 000323D4  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80035498 000323D8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8003549C 000323DC  80 A4 00 08 */	lwz r5, 8(r4)
/* 800354A0 000323E0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800354A4 000323E4  90 A3 00 20 */	stw r5, 0x20(r3)
/* 800354A8 000323E8  90 03 00 24 */	stw r0, 0x24(r3)
/* 800354AC 000323EC  4E 80 00 20 */	blr 

.global place__14J2DGrafContextFRC7JUTRect
place__14J2DGrafContextFRC7JUTRect:
/* 800354B0 000323F0  80 A4 00 00 */	lwz r5, 0(r4)
/* 800354B4 000323F4  80 04 00 04 */	lwz r0, 4(r4)
/* 800354B8 000323F8  90 A3 00 08 */	stw r5, 8(r3)
/* 800354BC 000323FC  90 03 00 0C */	stw r0, 0xc(r3)
/* 800354C0 00032400  80 A4 00 08 */	lwz r5, 8(r4)
/* 800354C4 00032404  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800354C8 00032408  90 A3 00 10 */	stw r5, 0x10(r3)
/* 800354CC 0003240C  90 03 00 14 */	stw r0, 0x14(r3)
/* 800354D0 00032410  80 A4 00 00 */	lwz r5, 0(r4)
/* 800354D4 00032414  80 04 00 04 */	lwz r0, 4(r4)
/* 800354D8 00032418  90 A3 00 18 */	stw r5, 0x18(r3)
/* 800354DC 0003241C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800354E0 00032420  80 A4 00 08 */	lwz r5, 8(r4)
/* 800354E4 00032424  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800354E8 00032428  90 A3 00 20 */	stw r5, 0x20(r3)
/* 800354EC 0003242C  90 03 00 24 */	stw r0, 0x24(r3)
/* 800354F0 00032430  4E 80 00 20 */	blr 

.global setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor:
/* 800354F4 00032434  80 04 00 00 */	lwz r0, 0(r4)
/* 800354F8 00032438  39 00 00 01 */	li r8, 1
/* 800354FC 0003243C  38 80 00 04 */	li r4, 4
/* 80035500 00032440  90 03 00 28 */	stw r0, 0x28(r3)
/* 80035504 00032444  38 00 00 05 */	li r0, 5
/* 80035508 00032448  80 A5 00 00 */	lwz r5, 0(r5)
/* 8003550C 0003244C  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 80035510 00032450  80 A6 00 00 */	lwz r5, 0(r6)
/* 80035514 00032454  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80035518 00032458  80 A7 00 00 */	lwz r5, 0(r7)
/* 8003551C 0003245C  90 A3 00 34 */	stw r5, 0x34(r3)
/* 80035520 00032460  91 03 00 B4 */	stw r8, 0xb4(r3)
/* 80035524 00032464  90 83 00 B8 */	stw r4, 0xb8(r3)
/* 80035528 00032468  90 03 00 BC */	stw r0, 0xbc(r3)
/* 8003552C 0003246C  91 03 00 C0 */	stw r8, 0xc0(r3)
/* 80035530 00032470  90 83 00 C4 */	stw r4, 0xc4(r3)
/* 80035534 00032474  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 80035538 00032478  91 03 00 CC */	stw r8, 0xcc(r3)
/* 8003553C 0003247C  90 83 00 D0 */	stw r4, 0xd0(r3)
/* 80035540 00032480  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 80035544 00032484  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80035548 00032488  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8003554C 0003248C  28 00 00 FF */	cmplwi r0, 0xff
/* 80035550 00032490  4C 82 00 20 */	bnelr 
/* 80035554 00032494  38 80 00 00 */	li r4, 0
/* 80035558 00032498  90 83 00 B4 */	stw r4, 0xb4(r3)
/* 8003555C 0003249C  91 03 00 B8 */	stw r8, 0xb8(r3)
/* 80035560 000324A0  90 83 00 BC */	stw r4, 0xbc(r3)
/* 80035564 000324A4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80035568 000324A8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8003556C 000324AC  28 00 00 FF */	cmplwi r0, 0xff
/* 80035570 000324B0  4C 82 00 20 */	bnelr 
/* 80035574 000324B4  90 83 00 C0 */	stw r4, 0xc0(r3)
/* 80035578 000324B8  91 03 00 C4 */	stw r8, 0xc4(r3)
/* 8003557C 000324BC  90 83 00 C8 */	stw r4, 0xc8(r3)
/* 80035580 000324C0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80035584 000324C4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80035588 000324C8  28 00 00 FF */	cmplwi r0, 0xff
/* 8003558C 000324CC  4C 82 00 20 */	bnelr 
/* 80035590 000324D0  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80035594 000324D4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80035598 000324D8  28 00 00 FF */	cmplwi r0, 0xff
/* 8003559C 000324DC  4C 82 00 20 */	bnelr 
/* 800355A0 000324E0  90 83 00 CC */	stw r4, 0xcc(r3)
/* 800355A4 000324E4  91 03 00 D0 */	stw r8, 0xd0(r3)
/* 800355A8 000324E8  90 83 00 D4 */	stw r4, 0xd4(r3)
/* 800355AC 000324EC  4E 80 00 20 */	blr 

.global setLineWidth__14J2DGrafContextFUc
setLineWidth__14J2DGrafContextFUc:
/* 800355B0 000324F0  7C 08 02 A6 */	mflr r0
/* 800355B4 000324F4  90 01 00 04 */	stw r0, 4(r1)
/* 800355B8 000324F8  94 21 FF F8 */	stwu r1, -8(r1)
/* 800355BC 000324FC  98 83 00 38 */	stb r4, 0x38(r3)
/* 800355C0 00032500  38 80 00 00 */	li r4, 0
/* 800355C4 00032504  88 63 00 38 */	lbz r3, 0x38(r3)
/* 800355C8 00032508  48 07 34 59 */	bl GXSetLineWidth
/* 800355CC 0003250C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800355D0 00032510  38 21 00 08 */	addi r1, r1, 8
/* 800355D4 00032514  7C 08 03 A6 */	mtlr r0
/* 800355D8 00032518  4E 80 00 20 */	blr 

.global fillBox__14J2DGrafContextFRC7JUTRect
fillBox__14J2DGrafContextFRC7JUTRect:
/* 800355DC 0003251C  7C 08 02 A6 */	mflr r0
/* 800355E0 00032520  38 C0 00 0F */	li r6, 0xf
/* 800355E4 00032524  90 01 00 04 */	stw r0, 4(r1)
/* 800355E8 00032528  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 800355EC 0003252C  93 E1 00 44 */	stw r31, 0x44(r1)
/* 800355F0 00032530  3B E4 00 00 */	addi r31, r4, 0
/* 800355F4 00032534  93 C1 00 40 */	stw r30, 0x40(r1)
/* 800355F8 00032538  3B C3 00 00 */	addi r30, r3, 0
/* 800355FC 0003253C  80 63 00 CC */	lwz r3, 0xcc(r3)
/* 80035600 00032540  80 9E 00 D0 */	lwz r4, 0xd0(r30)
/* 80035604 00032544  80 BE 00 D4 */	lwz r5, 0xd4(r30)
/* 80035608 00032548  48 07 70 E9 */	bl GXSetBlendMode
/* 8003560C 0003254C  38 7E 00 84 */	addi r3, r30, 0x84
/* 80035610 00032550  38 80 00 00 */	li r4, 0
/* 80035614 00032554  48 07 81 19 */	bl GXLoadPosMtxImm
/* 80035618 00032558  38 60 00 80 */	li r3, 0x80
/* 8003561C 0003255C  38 80 00 00 */	li r4, 0
/* 80035620 00032560  38 A0 00 04 */	li r5, 4
/* 80035624 00032564  48 07 32 85 */	bl GXBegin
/* 80035628 00032568  80 1F 00 00 */	lwz r0, 0(r31)
/* 8003562C 0003256C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80035630 00032570  80 7F 00 04 */	lwz r3, 4(r31)
/* 80035634 00032574  38 80 00 00 */	li r4, 0
/* 80035638 00032578  7C 06 07 34 */	extsh r6, r0
/* 8003563C 0003257C  B0 C5 80 00 */	sth r6, 0xCC008000@l(r5)
/* 80035640 00032580  7C 67 07 34 */	extsh r7, r3
/* 80035644 00032584  B0 E5 80 00 */	sth r7, -0x8000(r5)
/* 80035648 00032588  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 8003564C 0003258C  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80035650 00032590  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80035654 00032594  80 1F 00 08 */	lwz r0, 8(r31)
/* 80035658 00032598  7C 03 07 34 */	extsh r3, r0
/* 8003565C 0003259C  B0 65 80 00 */	sth r3, -0x8000(r5)
/* 80035660 000325A0  B0 E5 80 00 */	sth r7, -0x8000(r5)
/* 80035664 000325A4  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80035668 000325A8  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8003566C 000325AC  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80035670 000325B0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80035674 000325B4  B0 65 80 00 */	sth r3, -0x8000(r5)
/* 80035678 000325B8  7C 03 07 34 */	extsh r3, r0
/* 8003567C 000325BC  B0 65 80 00 */	sth r3, -0x8000(r5)
/* 80035680 000325C0  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80035684 000325C4  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80035688 000325C8  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8003568C 000325CC  B0 C5 80 00 */	sth r6, -0x8000(r5)
/* 80035690 000325D0  B0 65 80 00 */	sth r3, -0x8000(r5)
/* 80035694 000325D4  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80035698 000325D8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8003569C 000325DC  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800356A0 000325E0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 800356A4 000325E4  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 800356A8 000325E8  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 800356AC 000325EC  38 21 00 48 */	addi r1, r1, 0x48
/* 800356B0 000325F0  7C 08 03 A6 */	mtlr r0
/* 800356B4 000325F4  4E 80 00 20 */	blr 

.global place__14J2DGrafContextFiiii
place__14J2DGrafContextFiiii:
/* 800356B8 000325F8  7C 08 02 A6 */	mflr r0
/* 800356BC 000325FC  7C C4 32 14 */	add r6, r4, r6
/* 800356C0 00032600  90 01 00 04 */	stw r0, 4(r1)
/* 800356C4 00032604  7C E5 3A 14 */	add r7, r5, r7
/* 800356C8 00032608  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800356CC 0003260C  93 E1 00 34 */	stw r31, 0x34(r1)
/* 800356D0 00032610  3B E3 00 00 */	addi r31, r3, 0
/* 800356D4 00032614  38 61 00 1C */	addi r3, r1, 0x1c
/* 800356D8 00032618  4B FD DB 45 */	bl set__7JUTRectFiiii
/* 800356DC 0003261C  81 9F 00 00 */	lwz r12, 0(r31)
/* 800356E0 00032620  7F E3 FB 78 */	mr r3, r31
/* 800356E4 00032624  38 81 00 1C */	addi r4, r1, 0x1c
/* 800356E8 00032628  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800356EC 0003262C  7D 88 03 A6 */	mtlr r12
/* 800356F0 00032630  4E 80 00 21 */	blrl 
/* 800356F4 00032634  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800356F8 00032638  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 800356FC 0003263C  38 21 00 38 */	addi r1, r1, 0x38
/* 80035700 00032640  7C 08 03 A6 */	mtlr r0
/* 80035704 00032644  4E 80 00 20 */	blr 

.global setLookat__14J2DGrafContextFv
setLookat__14J2DGrafContextFv:
/* 80035708 00032648  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__14J2DGrafContext
__vt__14J2DGrafContext:
  .4byte 0
  .4byte 0
  .4byte __dt__14J2DGrafContextFv
  .4byte place__14J2DGrafContextFRC7JUTRect
  .4byte place__14J2DGrafContextFiiii
  .4byte setPort__14J2DGrafContextFv
  .4byte setup2D__14J2DGrafContextFv
  .4byte setScissor__14J2DGrafContextFv
  .4byte setLookat__14J2DGrafContextFv
  .4byte 0

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2166:
  .4byte 0
$$2167:
	.incbin "baserom.dol", 0x3E3FA4, 0x4
$$2169:
	.incbin "baserom.dol", 0x3E3FA8, 0x8
