.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global sendCommand__12JKRAramPieceFP12JKRAMCommand
sendCommand__12JKRAramPieceFP12JKRAMCommand:
/* 8003A3B0 000372F0  7C 08 02 A6 */	mflr r0
/* 8003A3B4 000372F4  90 01 00 04 */	stw r0, 4(r1)
/* 8003A3B8 000372F8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8003A3BC 000372FC  48 00 02 19 */	bl startDMA__12JKRAramPieceFP12JKRAMCommand
/* 8003A3C0 00037300  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8003A3C4 00037304  38 21 00 08 */	addi r1, r1, 8
/* 8003A3C8 00037308  7C 08 03 A6 */	mtlr r0
/* 8003A3CC 0003730C  4E 80 00 20 */	blr 

.global orderAsync__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v
orderAsync__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v:
/* 8003A3D0 00037310  7C 08 02 A6 */	mflr r0
/* 8003A3D4 00037314  3D 20 80 40 */	lis r9, mMutex__12JKRAramPiece@ha
/* 8003A3D8 00037318  90 01 00 04 */	stw r0, 4(r1)
/* 8003A3DC 0003731C  3D 40 80 37 */	lis r10, $$295@ha
/* 8003A3E0 00037320  38 09 3D D0 */	addi r0, r9, mMutex__12JKRAramPiece@l
/* 8003A3E4 00037324  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8003A3E8 00037328  BF 01 00 30 */	stmw r24, 0x30(r1)
/* 8003A3EC 0003732C  3B 03 00 00 */	addi r24, r3, 0
/* 8003A3F0 00037330  3B 4A 0D 50 */	addi r26, r10, $$295@l
/* 8003A3F4 00037334  3B 64 00 00 */	addi r27, r4, 0
/* 8003A3F8 00037338  3B 85 00 00 */	addi r28, r5, 0
/* 8003A3FC 0003733C  3B A6 00 00 */	addi r29, r6, 0
/* 8003A400 00037340  3B C7 00 00 */	addi r30, r7, 0
/* 8003A404 00037344  3B E8 00 00 */	addi r31, r8, 0
/* 8003A408 00037348  7C 03 03 78 */	mr r3, r0
/* 8003A40C 0003734C  48 05 6C 25 */	bl OSLockMutex
/* 8003A410 00037350  57 60 06 FF */	clrlwi. r0, r27, 0x1b
/* 8003A414 00037354  40 82 00 0C */	bne lbl_8003A420
/* 8003A418 00037358  57 80 06 FF */	clrlwi. r0, r28, 0x1b
/* 8003A41C 0003735C  41 82 00 58 */	beq lbl_8003A474
lbl_8003A420:
/* 8003A420 00037360  38 7A 00 00 */	addi r3, r26, 0
/* 8003A424 00037364  4C C6 31 82 */	crclr 6
/* 8003A428 00037368  38 98 00 00 */	addi r4, r24, 0
/* 8003A42C 0003736C  48 05 4B 39 */	bl OSReport
/* 8003A430 00037370  38 9B 00 00 */	addi r4, r27, 0
/* 8003A434 00037374  4C C6 31 82 */	crclr 6
/* 8003A438 00037378  38 7A 00 10 */	addi r3, r26, 0x10
/* 8003A43C 0003737C  48 05 4B 29 */	bl OSReport
/* 8003A440 00037380  38 9C 00 00 */	addi r4, r28, 0
/* 8003A444 00037384  4C C6 31 82 */	crclr 6
/* 8003A448 00037388  38 7A 00 20 */	addi r3, r26, 0x20
/* 8003A44C 0003738C  48 05 4B 19 */	bl OSReport
/* 8003A450 00037390  38 9D 00 00 */	addi r4, r29, 0
/* 8003A454 00037394  4C C6 31 82 */	crclr 6
/* 8003A458 00037398  38 7A 00 34 */	addi r3, r26, 0x34
/* 8003A45C 0003739C  48 05 4B 09 */	bl OSReport
/* 8003A460 000373A0  38 7A 00 44 */	addi r3, r26, 0x44
/* 8003A464 000373A4  4C C6 31 82 */	crclr 6
/* 8003A468 000373A8  38 80 00 66 */	li r4, 0x66
/* 8003A46C 000373AC  38 A2 83 08 */	addi r5, r2, $$2100-_SDA2_BASE_
/* 8003A470 000373B0  48 05 4B 75 */	bl OSPanic
lbl_8003A474:
/* 8003A474 000373B4  80 8D 8D 68 */	lwz r4, sSystemHeap__7JKRHeap-_SDA_BASE_(r13)
/* 8003A478 000373B8  38 60 00 08 */	li r3, 8
/* 8003A47C 000373BC  38 A0 FF FC */	li r5, -4
/* 8003A480 000373C0  4B FD 24 C5 */	bl __nw__FUlP7JKRHeapi
/* 8003A484 000373C4  80 8D 8D 68 */	lwz r4, sSystemHeap__7JKRHeap-_SDA_BASE_(r13)
/* 8003A488 000373C8  3B 23 00 00 */	addi r25, r3, 0
/* 8003A48C 000373CC  38 60 00 98 */	li r3, 0x98
/* 8003A490 000373D0  38 A0 FF FC */	li r5, -4
/* 8003A494 000373D4  4B FD 24 B1 */	bl __nw__FUlP7JKRHeapi
/* 8003A498 000373D8  7C 7A 1B 79 */	or. r26, r3, r3
/* 8003A49C 000373DC  41 82 00 10 */	beq lbl_8003A4AC
/* 8003A4A0 000373E0  7F 43 D3 78 */	mr r3, r26
/* 8003A4A4 000373E4  48 00 02 51 */	bl __ct__12JKRAMCommandFv
/* 8003A4A8 000373E8  7C 7A 1B 78 */	mr r26, r3
lbl_8003A4AC:
/* 8003A4AC 000373EC  93 1A 00 40 */	stw r24, 0x40(r26)
/* 8003A4B0 000373F0  3C 60 80 3B */	lis r3, sMessageQueue__7JKRAram@ha
/* 8003A4B4 000373F4  38 00 00 01 */	li r0, 1
/* 8003A4B8 000373F8  93 7A 00 48 */	stw r27, 0x48(r26)
/* 8003A4BC 000373FC  38 63 84 08 */	addi r3, r3, sMessageQueue__7JKRAram@l
/* 8003A4C0 00037400  38 99 00 00 */	addi r4, r25, 0
/* 8003A4C4 00037404  93 9A 00 4C */	stw r28, 0x4c(r26)
/* 8003A4C8 00037408  38 A0 00 01 */	li r5, 1
/* 8003A4CC 0003740C  93 DA 00 50 */	stw r30, 0x50(r26)
/* 8003A4D0 00037410  93 BA 00 44 */	stw r29, 0x44(r26)
/* 8003A4D4 00037414  93 FA 00 58 */	stw r31, 0x58(r26)
/* 8003A4D8 00037418  90 19 00 00 */	stw r0, 0(r25)
/* 8003A4DC 0003741C  93 59 00 04 */	stw r26, 4(r25)
/* 8003A4E0 00037420  48 05 65 D1 */	bl OSSendMessage
/* 8003A4E4 00037424  80 1A 00 58 */	lwz r0, 0x58(r26)
/* 8003A4E8 00037428  28 00 00 00 */	cmplwi r0, 0
/* 8003A4EC 0003742C  41 82 00 14 */	beq lbl_8003A500
/* 8003A4F0 00037430  3C 60 80 40 */	lis r3, sAramPieceCommandList__12JKRAramPiece@ha
/* 8003A4F4 00037434  38 63 3D AC */	addi r3, r3, sAramPieceCommandList__12JKRAramPiece@l
/* 8003A4F8 00037438  38 9A 00 20 */	addi r4, r26, 0x20
/* 8003A4FC 0003743C  4B FD 47 4D */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_8003A500:
/* 8003A500 00037440  3C 60 80 40 */	lis r3, mMutex__12JKRAramPiece@ha
/* 8003A504 00037444  38 63 3D D0 */	addi r3, r3, mMutex__12JKRAramPiece@l
/* 8003A508 00037448  48 05 6C 05 */	bl OSUnlockMutex
/* 8003A50C 0003744C  7F 43 D3 78 */	mr r3, r26
/* 8003A510 00037450  BB 01 00 30 */	lmw r24, 0x30(r1)
/* 8003A514 00037454  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8003A518 00037458  38 21 00 50 */	addi r1, r1, 0x50
/* 8003A51C 0003745C  7C 08 03 A6 */	mtlr r0
/* 8003A520 00037460  4E 80 00 20 */	blr 

.global orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock:
/* 8003A524 00037464  7C 08 02 A6 */	mflr r0
/* 8003A528 00037468  3D 00 80 40 */	lis r8, mMutex__12JKRAramPiece@ha
/* 8003A52C 0003746C  90 01 00 04 */	stw r0, 4(r1)
/* 8003A530 00037470  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003A534 00037474  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 8003A538 00037478  3B E8 3D D0 */	addi r31, r8, mMutex__12JKRAramPiece@l
/* 8003A53C 0003747C  3B 43 00 00 */	addi r26, r3, 0
/* 8003A540 00037480  3B 64 00 00 */	addi r27, r4, 0
/* 8003A544 00037484  3B 85 00 00 */	addi r28, r5, 0
/* 8003A548 00037488  3B A6 00 00 */	addi r29, r6, 0
/* 8003A54C 0003748C  3B C7 00 00 */	addi r30, r7, 0
/* 8003A550 00037490  38 7F 00 00 */	addi r3, r31, 0
/* 8003A554 00037494  48 05 6A DD */	bl OSLockMutex
/* 8003A558 00037498  38 7A 00 00 */	addi r3, r26, 0
/* 8003A55C 0003749C  38 9B 00 00 */	addi r4, r27, 0
/* 8003A560 000374A0  38 BC 00 00 */	addi r5, r28, 0
/* 8003A564 000374A4  38 DD 00 00 */	addi r6, r29, 0
/* 8003A568 000374A8  38 FE 00 00 */	addi r7, r30, 0
/* 8003A56C 000374AC  39 00 00 00 */	li r8, 0
/* 8003A570 000374B0  4B FF FE 61 */	bl orderAsync__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v
/* 8003A574 000374B4  3B C3 00 00 */	addi r30, r3, 0
/* 8003A578 000374B8  38 7F 00 00 */	addi r3, r31, 0
/* 8003A57C 000374BC  48 05 6A B5 */	bl OSLockMutex
/* 8003A580 000374C0  38 7E 00 68 */	addi r3, r30, 0x68
/* 8003A584 000374C4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8003A588 000374C8  38 A0 00 01 */	li r5, 1
/* 8003A58C 000374CC  48 05 65 ED */	bl OSReceiveMessage
/* 8003A590 000374D0  3C 60 80 40 */	lis r3, sAramPieceCommandList__12JKRAramPiece@ha
/* 8003A594 000374D4  38 63 3D AC */	addi r3, r3, sAramPieceCommandList__12JKRAramPiece@l
/* 8003A598 000374D8  38 9E 00 20 */	addi r4, r30, 0x20
/* 8003A59C 000374DC  4B FD 4A 01 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8003A5A0 000374E0  7F E3 FB 78 */	mr r3, r31
/* 8003A5A4 000374E4  48 05 6B 69 */	bl OSUnlockMutex
/* 8003A5A8 000374E8  38 7E 00 00 */	addi r3, r30, 0
/* 8003A5AC 000374EC  38 80 00 01 */	li r4, 1
/* 8003A5B0 000374F0  48 00 01 B9 */	bl __dt__12JKRAMCommandFv
/* 8003A5B4 000374F4  7F E3 FB 78 */	mr r3, r31
/* 8003A5B8 000374F8  48 05 6B 55 */	bl OSUnlockMutex
/* 8003A5BC 000374FC  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 8003A5C0 00037500  38 60 00 01 */	li r3, 1
/* 8003A5C4 00037504  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003A5C8 00037508  38 21 00 40 */	addi r1, r1, 0x40
/* 8003A5CC 0003750C  7C 08 03 A6 */	mtlr r0
/* 8003A5D0 00037510  4E 80 00 20 */	blr 

.global startDMA__12JKRAramPieceFP12JKRAMCommand
startDMA__12JKRAramPieceFP12JKRAMCommand:
/* 8003A5D4 00037514  7C 08 02 A6 */	mflr r0
/* 8003A5D8 00037518  90 01 00 04 */	stw r0, 4(r1)
/* 8003A5DC 0003751C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003A5E0 00037520  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8003A5E4 00037524  7C 7F 1B 78 */	mr r31, r3
/* 8003A5E8 00037528  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8003A5EC 0003752C  2C 00 00 01 */	cmpwi r0, 1
/* 8003A5F0 00037530  40 82 00 14 */	bne lbl_8003A604
/* 8003A5F4 00037534  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8003A5F8 00037538  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8003A5FC 0003753C  48 05 39 81 */	bl DCInvalidateRange
/* 8003A600 00037540  48 00 00 10 */	b lbl_8003A610
lbl_8003A604:
/* 8003A604 00037544  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 8003A608 00037548  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8003A60C 0003754C  48 05 39 D5 */	bl DCStoreRange
lbl_8003A610:
/* 8003A610 00037550  3C 60 80 04 */	lis r3, doneDMA__12JKRAramPieceFUl@ha
/* 8003A614 00037554  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8003A618 00037558  39 43 A6 4C */	addi r10, r3, doneDMA__12JKRAramPieceFUl@l
/* 8003A61C 0003755C  80 FF 00 48 */	lwz r7, 0x48(r31)
/* 8003A620 00037560  81 1F 00 4C */	lwz r8, 0x4c(r31)
/* 8003A624 00037564  7F E3 FB 78 */	mr r3, r31
/* 8003A628 00037568  81 3F 00 44 */	lwz r9, 0x44(r31)
/* 8003A62C 0003756C  38 80 00 00 */	li r4, 0
/* 8003A630 00037570  38 C0 00 00 */	li r6, 0
/* 8003A634 00037574  48 06 3E C9 */	bl ARQPostRequest
/* 8003A638 00037578  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8003A63C 0003757C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8003A640 00037580  38 21 00 18 */	addi r1, r1, 0x18
/* 8003A644 00037584  7C 08 03 A6 */	mtlr r0
/* 8003A648 00037588  4E 80 00 20 */	blr 

.global doneDMA__12JKRAramPieceFUl
doneDMA__12JKRAramPieceFUl:
/* 8003A64C 0003758C  7C 08 02 A6 */	mflr r0
/* 8003A650 00037590  90 01 00 04 */	stw r0, 4(r1)
/* 8003A654 00037594  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003A658 00037598  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8003A65C 0003759C  3B E3 00 00 */	addi r31, r3, 0
/* 8003A660 000375A0  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8003A664 000375A4  2C 00 00 01 */	cmpwi r0, 1
/* 8003A668 000375A8  40 82 00 10 */	bne lbl_8003A678
/* 8003A66C 000375AC  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8003A670 000375B0  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8003A674 000375B4  48 05 39 09 */	bl DCInvalidateRange
lbl_8003A678:
/* 8003A678 000375B8  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 8003A67C 000375BC  2C 00 00 00 */	cmpwi r0, 0
/* 8003A680 000375C0  41 82 00 18 */	beq lbl_8003A698
/* 8003A684 000375C4  2C 00 00 02 */	cmpwi r0, 2
/* 8003A688 000375C8  40 82 00 58 */	bne lbl_8003A6E0
/* 8003A68C 000375CC  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8003A690 000375D0  4B FF BF D5 */	bl sendCommand__9JKRDecompFP16JKRDecompCommand
/* 8003A694 000375D4  48 00 00 4C */	b lbl_8003A6E0
lbl_8003A698:
/* 8003A698 000375D8  81 9F 00 58 */	lwz r12, 0x58(r31)
/* 8003A69C 000375DC  28 0C 00 00 */	cmplwi r12, 0
/* 8003A6A0 000375E0  41 82 00 14 */	beq lbl_8003A6B4
/* 8003A6A4 000375E4  7D 88 03 A6 */	mtlr r12
/* 8003A6A8 000375E8  38 7F 00 00 */	addi r3, r31, 0
/* 8003A6AC 000375EC  4E 80 00 21 */	blrl 
/* 8003A6B0 000375F0  48 00 00 30 */	b lbl_8003A6E0
lbl_8003A6B4:
/* 8003A6B4 000375F4  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 8003A6B8 000375F8  28 03 00 00 */	cmplwi r3, 0
/* 8003A6BC 000375FC  41 82 00 14 */	beq lbl_8003A6D0
/* 8003A6C0 00037600  38 9F 00 00 */	addi r4, r31, 0
/* 8003A6C4 00037604  38 A0 00 00 */	li r5, 0
/* 8003A6C8 00037608  48 05 63 E9 */	bl OSSendMessage
/* 8003A6CC 0003760C  48 00 00 14 */	b lbl_8003A6E0
lbl_8003A6D0:
/* 8003A6D0 00037610  38 9F 00 00 */	addi r4, r31, 0
/* 8003A6D4 00037614  38 7F 00 68 */	addi r3, r31, 0x68
/* 8003A6D8 00037618  38 A0 00 00 */	li r5, 0
/* 8003A6DC 0003761C  48 05 63 D5 */	bl OSSendMessage
lbl_8003A6E0:
/* 8003A6E0 00037620  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8003A6E4 00037624  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8003A6E8 00037628  38 21 00 18 */	addi r1, r1, 0x18
/* 8003A6EC 0003762C  7C 08 03 A6 */	mtlr r0
/* 8003A6F0 00037630  4E 80 00 20 */	blr 

.global __ct__12JKRAMCommandFv
__ct__12JKRAMCommandFv:
/* 8003A6F4 00037634  7C 08 02 A6 */	mflr r0
/* 8003A6F8 00037638  90 01 00 04 */	stw r0, 4(r1)
/* 8003A6FC 0003763C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003A700 00037640  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8003A704 00037644  90 61 00 08 */	stw r3, 8(r1)
/* 8003A708 00037648  83 E1 00 08 */	lwz r31, 8(r1)
/* 8003A70C 0003764C  38 7F 00 20 */	addi r3, r31, 0x20
/* 8003A710 00037650  38 9F 00 00 */	addi r4, r31, 0
/* 8003A714 00037654  4B FD 44 05 */	bl __ct__10JSUPtrLinkFPv
/* 8003A718 00037658  38 7F 00 30 */	addi r3, r31, 0x30
/* 8003A71C 0003765C  38 9F 00 00 */	addi r4, r31, 0
/* 8003A720 00037660  4B FD 43 F9 */	bl __ct__10JSUPtrLinkFPv
/* 8003A724 00037664  38 7F 00 68 */	addi r3, r31, 0x68
/* 8003A728 00037668  38 9F 00 88 */	addi r4, r31, 0x88
/* 8003A72C 0003766C  38 A0 00 01 */	li r5, 1
/* 8003A730 00037670  48 05 63 21 */	bl OSInitMessageQueue
/* 8003A734 00037674  38 00 00 00 */	li r0, 0
/* 8003A738 00037678  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8003A73C 0003767C  7F E3 FB 78 */	mr r3, r31
/* 8003A740 00037680  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8003A744 00037684  90 1F 00 60 */	stw r0, 0x60(r31)
/* 8003A748 00037688  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 8003A74C 0003768C  90 1F 00 90 */	stw r0, 0x90(r31)
/* 8003A750 00037690  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8003A754 00037694  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8003A758 00037698  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8003A75C 0003769C  38 21 00 18 */	addi r1, r1, 0x18
/* 8003A760 000376A0  7C 08 03 A6 */	mtlr r0
/* 8003A764 000376A4  4E 80 00 20 */	blr 

.global __dt__12JKRAMCommandFv
__dt__12JKRAMCommandFv:
/* 8003A768 000376A8  7C 08 02 A6 */	mflr r0
/* 8003A76C 000376AC  90 01 00 04 */	stw r0, 4(r1)
/* 8003A770 000376B0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003A774 000376B4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8003A778 000376B8  3B E4 00 00 */	addi r31, r4, 0
/* 8003A77C 000376BC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8003A780 000376C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8003A784 000376C4  41 82 00 70 */	beq lbl_8003A7F4
/* 8003A788 000376C8  80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 8003A78C 000376CC  28 03 00 00 */	cmplwi r3, 0
/* 8003A790 000376D0  41 82 00 08 */	beq lbl_8003A798
/* 8003A794 000376D4  4B FD 23 1D */	bl __dl__FPv
lbl_8003A798:
/* 8003A798 000376D8  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 8003A79C 000376DC  28 03 00 00 */	cmplwi r3, 0
/* 8003A7A0 000376E0  41 82 00 08 */	beq lbl_8003A7A8
/* 8003A7A4 000376E4  4B FD 23 0D */	bl __dl__FPv
lbl_8003A7A8:
/* 8003A7A8 000376E8  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 8003A7AC 000376EC  28 03 00 00 */	cmplwi r3, 0
/* 8003A7B0 000376F0  41 82 00 0C */	beq lbl_8003A7BC
/* 8003A7B4 000376F4  38 80 00 00 */	li r4, 0
/* 8003A7B8 000376F8  4B FD 1D 0D */	bl free__7JKRHeapFPvP7JKRHeap
lbl_8003A7BC:
/* 8003A7BC 000376FC  34 1E 00 30 */	addic. r0, r30, 0x30
/* 8003A7C0 00037700  41 82 00 10 */	beq lbl_8003A7D0
/* 8003A7C4 00037704  38 7E 00 30 */	addi r3, r30, 0x30
/* 8003A7C8 00037708  38 80 00 00 */	li r4, 0
/* 8003A7CC 0003770C  4B FD 43 65 */	bl __dt__10JSUPtrLinkFv
lbl_8003A7D0:
/* 8003A7D0 00037710  34 1E 00 20 */	addic. r0, r30, 0x20
/* 8003A7D4 00037714  41 82 00 10 */	beq lbl_8003A7E4
/* 8003A7D8 00037718  38 7E 00 20 */	addi r3, r30, 0x20
/* 8003A7DC 0003771C  38 80 00 00 */	li r4, 0
/* 8003A7E0 00037720  4B FD 43 51 */	bl __dt__10JSUPtrLinkFv
lbl_8003A7E4:
/* 8003A7E4 00037724  7F E0 07 35 */	extsh. r0, r31
/* 8003A7E8 00037728  40 81 00 0C */	ble lbl_8003A7F4
/* 8003A7EC 0003772C  7F C3 F3 78 */	mr r3, r30
/* 8003A7F0 00037730  4B FD 22 C1 */	bl __dl__FPv
lbl_8003A7F4:
/* 8003A7F4 00037734  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8003A7F8 00037738  7F C3 F3 78 */	mr r3, r30
/* 8003A7FC 0003773C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8003A800 00037740  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8003A804 00037744  7C 08 03 A6 */	mtlr r0
/* 8003A808 00037748  38 21 00 18 */	addi r1, r1, 0x18
/* 8003A80C 0003774C  4E 80 00 20 */	blr 

.global __sinit_JKRAramPiece_cpp
__sinit_JKRAramPiece_cpp:
/* 8003A810 00037750  7C 08 02 A6 */	mflr r0
/* 8003A814 00037754  3C 60 80 40 */	lis r3, sAramPieceCommandList__12JKRAramPiece@ha
/* 8003A818 00037758  90 01 00 04 */	stw r0, 4(r1)
/* 8003A81C 0003775C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A820 00037760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A824 00037764  3B E3 3D AC */	addi r31, r3, sAramPieceCommandList__12JKRAramPiece@l
/* 8003A828 00037768  38 7F 00 00 */	addi r3, r31, 0
/* 8003A82C 0003776C  4B FD 44 09 */	bl initiate__10JSUPtrListFv
/* 8003A830 00037770  3C 80 80 00 */	lis r4, __dt__23JSUList$$012JKRAMCommand$$1Fv@ha
/* 8003A834 00037774  3C 60 80 3E */	lis r3, $$260@ha
/* 8003A838 00037778  38 A3 60 F0 */	addi r5, r3, $$260@l
/* 8003A83C 0003777C  38 84 78 80 */	addi r4, r4, __dt__23JSUList$$012JKRAMCommand$$1Fv@l
/* 8003A840 00037780  38 7F 00 00 */	addi r3, r31, 0
/* 8003A844 00037784  48 04 7E E5 */	bl __register_global_object
/* 8003A848 00037788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A84C 0003778C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A850 00037790  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A854 00037794  7C 08 03 A6 */	mtlr r0
/* 8003A858 00037798  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
	.incbin "baserom.dol", 0x36CBD8, 0x4

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$295:
	.incbin "baserom.dol", 0x36DD50, 0x10
$$296:
	.incbin "baserom.dol", 0x36DD60, 0x10
$$297:
	.incbin "baserom.dol", 0x36DD70, 0x14
$$298:
	.incbin "baserom.dol", 0x36DD84, 0x10
$$299:
	.incbin "baserom.dol", 0x36DD94, 0x14

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2100:
	.incbin "baserom.dol", 0x3E4008, 0x8

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
$$260:
	.skip 0x10

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
sAramPieceCommandList__12JKRAramPiece:
	.skip 0x24
mMutex__12JKRAramPiece:
	.skip 0x18