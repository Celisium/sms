.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global execMotionBlend__13TNpcInbetweenFP6MActor
execMotionBlend__13TNpcInbetweenFP6MActor:
/* 80176450 00173390  7C 08 02 A6 */	mflr r0
/* 80176454 00173394  90 01 00 04 */	stw r0, 4(r1)
/* 80176458 00173398  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8017645C 0017339C  DB E1 00 58 */	stfd f31, 0x58(r1)
/* 80176460 001733A0  93 E1 00 54 */	stw r31, 0x54(r1)
/* 80176464 001733A4  7C 9F 23 78 */	mr r31, r4
/* 80176468 001733A8  93 C1 00 50 */	stw r30, 0x50(r1)
/* 8017646C 001733AC  7C 7E 1B 78 */	mr r30, r3
/* 80176470 001733B0  93 A1 00 4C */	stw r29, 0x4c(r1)
/* 80176474 001733B4  93 81 00 48 */	stw r28, 0x48(r1)
/* 80176478 001733B8  C3 E2 A8 E0 */	lfs f31, $$21832@sda21(r2)
/* 8017647C 001733BC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80176480 001733C0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80176484 001733C4  40 81 00 0C */	ble lbl_80176490
/* 80176488 001733C8  38 00 00 01 */	li r0, 1
/* 8017648C 001733CC  48 00 00 08 */	b lbl_80176494
lbl_80176490:
/* 80176490 001733D0  38 00 00 00 */	li r0, 0
lbl_80176494:
/* 80176494 001733D4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80176498 001733D8  41 82 00 98 */	beq lbl_80176530
/* 8017649C 001733DC  3B 80 00 00 */	li r28, 0
/* 801764A0 001733E0  93 9E 00 24 */	stw r28, 0x24(r30)
/* 801764A4 001733E4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801764A8 001733E8  28 03 00 00 */	cmplwi r3, 0
/* 801764AC 001733EC  40 82 00 08 */	bne lbl_801764B4
/* 801764B0 001733F0  48 00 00 0C */	b lbl_801764BC
lbl_801764B4:
/* 801764B4 001733F4  4B F6 0B 5D */	bl getOldMotionBlendAnmPtr__12MActorAnmBckCFv
/* 801764B8 001733F8  7C 7C 1B 78 */	mr r28, r3
lbl_801764BC:
/* 801764BC 001733FC  28 1C 00 00 */	cmplwi r28, 0
/* 801764C0 00173400  41 82 01 34 */	beq lbl_801765F4
/* 801764C4 00173404  38 7F 00 00 */	addi r3, r31, 0
/* 801764C8 00173408  38 80 00 00 */	li r4, 0
/* 801764CC 0017340C  4B F5 DD 59 */	bl getFrameCtrl__6MActorFi
/* 801764D0 00173410  3C 80 80 3B */	lis r4, __vt__12J3DFrameCtrl@ha
/* 801764D4 00173414  3B A4 A9 C0 */	addi r29, r4, __vt__12J3DFrameCtrl@l
/* 801764D8 00173418  93 A1 00 20 */	stw r29, 0x20(r1)
/* 801764DC 0017341C  88 03 00 04 */	lbz r0, 4(r3)
/* 801764E0 00173420  98 01 00 24 */	stb r0, 0x24(r1)
/* 801764E4 00173424  88 03 00 05 */	lbz r0, 5(r3)
/* 801764E8 00173428  98 01 00 25 */	stb r0, 0x25(r1)
/* 801764EC 0017342C  A8 03 00 06 */	lha r0, 6(r3)
/* 801764F0 00173430  B0 01 00 26 */	sth r0, 0x26(r1)
/* 801764F4 00173434  A8 03 00 08 */	lha r0, 8(r3)
/* 801764F8 00173438  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801764FC 0017343C  A8 03 00 0A */	lha r0, 0xa(r3)
/* 80176500 00173440  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 80176504 00173444  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80176508 00173448  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8017650C 0017344C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80176510 00173450  38 61 00 20 */	addi r3, r1, 0x20
/* 80176514 00173454  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80176518 00173458  4B EB 4D 4D */	bl update__12J3DFrameCtrlFv
/* 8017651C 0017345C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80176520 00173460  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80176524 00173464  C3 FE 00 28 */	lfs f31, 0x28(r30)
/* 80176528 00173468  93 A1 00 20 */	stw r29, 0x20(r1)
/* 8017652C 0017346C  48 00 00 C8 */	b lbl_801765F4
lbl_80176530:
/* 80176530 00173470  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80176534 00173474  2C 03 00 00 */	cmpwi r3, 0
/* 80176538 00173478  40 81 00 0C */	ble lbl_80176544
/* 8017653C 0017347C  38 00 00 01 */	li r0, 1
/* 80176540 00173480  48 00 00 08 */	b lbl_80176548
lbl_80176544:
/* 80176544 00173484  38 00 00 00 */	li r0, 0
lbl_80176548:
/* 80176548 00173488  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8017654C 0017348C  41 82 00 A8 */	beq lbl_801765F4
/* 80176550 00173490  2C 03 00 00 */	cmpwi r3, 0
/* 80176554 00173494  40 81 00 10 */	ble lbl_80176564
/* 80176558 00173498  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8017655C 0017349C  38 03 FF FF */	addi r0, r3, -1
/* 80176560 001734A0  90 1E 00 24 */	stw r0, 0x24(r30)
lbl_80176564:
/* 80176564 001734A4  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80176568 001734A8  2C 00 00 00 */	cmpwi r0, 0
/* 8017656C 001734AC  40 81 00 88 */	ble lbl_801765F4
/* 80176570 001734B0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80176574 001734B4  28 03 00 00 */	cmplwi r3, 0
/* 80176578 001734B8  40 82 00 0C */	bne lbl_80176584
/* 8017657C 001734BC  3B 80 00 00 */	li r28, 0
/* 80176580 001734C0  48 00 00 0C */	b lbl_8017658C
lbl_80176584:
/* 80176584 001734C4  4B F6 0A 8D */	bl getOldMotionBlendAnmPtr__12MActorAnmBckCFv
/* 80176588 001734C8  7C 7C 1B 78 */	mr r28, r3
lbl_8017658C:
/* 8017658C 001734CC  28 1C 00 00 */	cmplwi r28, 0
/* 80176590 001734D0  41 82 00 20 */	beq lbl_801765B0
/* 80176594 001734D4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80176598 001734D8  28 03 00 00 */	cmplwi r3, 0
/* 8017659C 001734DC  40 82 00 0C */	bne lbl_801765A8
/* 801765A0 001734E0  C0 22 A8 E0 */	lfs f1, $$21832@sda21(r2)
/* 801765A4 001734E4  48 00 00 08 */	b lbl_801765AC
lbl_801765A8:
/* 801765A8 001734E8  4B F6 0A 09 */	bl getOldMotionBlendFrame__12MActorAnmBckCFv
lbl_801765AC:
/* 801765AC 001734EC  D0 3C 00 04 */	stfs f1, 4(r28)
lbl_801765B0:
/* 801765B0 001734F0  80 1E 00 04 */	lwz r0, 4(r30)
/* 801765B4 001734F4  3C 60 43 30 */	lis r3, 0x4330
/* 801765B8 001734F8  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 801765BC 001734FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801765C0 00173500  C8 42 A8 E8 */	lfd f2, $$21835@sda21(r2)
/* 801765C4 00173504  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801765C8 00173508  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801765CC 0017350C  C0 22 A8 E4 */	lfs f1, $$21833@sda21(r2)
/* 801765D0 00173510  90 61 00 38 */	stw r3, 0x38(r1)
/* 801765D4 00173514  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801765D8 00173518  90 01 00 44 */	stw r0, 0x44(r1)
/* 801765DC 0017351C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801765E0 00173520  90 61 00 40 */	stw r3, 0x40(r1)
/* 801765E4 00173524  EC 01 00 24 */	fdivs f0, f1, f0
/* 801765E8 00173528  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 801765EC 0017352C  EC 21 10 28 */	fsubs f1, f1, f2
/* 801765F0 00173530  EF E1 00 32 */	fmuls f31, f1, f0
lbl_801765F4:
/* 801765F4 00173534  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801765F8 00173538  28 03 00 00 */	cmplwi r3, 0
/* 801765FC 0017353C  41 82 00 0C */	beq lbl_80176608
/* 80176600 00173540  FC 20 F8 90 */	fmr f1, f31
/* 80176604 00173544  4B F6 0A 41 */	bl setMotionBlendRatio__12MActorAnmBckFf
lbl_80176608:
/* 80176608 00173548  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8017660C 0017354C  CB E1 00 58 */	lfd f31, 0x58(r1)
/* 80176610 00173550  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 80176614 00173554  7C 08 03 A6 */	mtlr r0
/* 80176618 00173558  83 C1 00 50 */	lwz r30, 0x50(r1)
/* 8017661C 0017355C  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 80176620 00173560  83 81 00 48 */	lwz r28, 0x48(r1)
/* 80176624 00173564  38 21 00 60 */	addi r1, r1, 0x60
/* 80176628 00173568  4E 80 00 20 */	blr 

.global execPosInbetween__13TNpcInbetweenFPQ29JGeometry8TVec3$$0f$$1
execPosInbetween__13TNpcInbetweenFPQ29JGeometry8TVec3$$0f$$1:
/* 8017662C 0017356C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80176630 00173570  C0 04 00 00 */	lfs f0, 0(r4)
/* 80176634 00173574  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80176638 00173578  C0 04 00 04 */	lfs f0, 4(r4)
/* 8017663C 0017357C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80176640 00173580  C0 04 00 08 */	lfs f0, 8(r4)
/* 80176644 00173584  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80176648 00173588  80 A3 00 08 */	lwz r5, 8(r3)
/* 8017664C 0017358C  2C 05 00 02 */	cmpwi r5, 2
/* 80176650 00173590  41 80 00 90 */	blt lbl_801766E0
/* 80176654 00173594  38 05 FF FF */	addi r0, r5, -1
/* 80176658 00173598  90 03 00 08 */	stw r0, 8(r3)
/* 8017665C 0017359C  3C A0 43 30 */	lis r5, 0x4330
/* 80176660 001735A0  80 03 00 00 */	lwz r0, 0(r3)
/* 80176664 001735A4  80 C3 00 08 */	lwz r6, 8(r3)
/* 80176668 001735A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017666C 001735AC  C8 62 A8 E8 */	lfd f3, $$21835@sda21(r2)
/* 80176670 001735B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80176674 001735B4  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80176678 001735B8  C0 42 A8 E4 */	lfs f2, $$21833@sda21(r2)
/* 8017667C 001735BC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80176680 001735C0  C0 83 00 18 */	lfs f4, 0x18(r3)
/* 80176684 001735C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80176688 001735C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8017668C 001735CC  EC 20 18 28 */	fsubs f1, f0, f3
/* 80176690 001735D0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80176694 001735D4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80176698 001735D8  EC 00 20 28 */	fsubs f0, f0, f4
/* 8017669C 001735DC  EC 22 08 24 */	fdivs f1, f2, f1
/* 801766A0 001735E0  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 801766A4 001735E4  EC 42 18 28 */	fsubs f2, f2, f3
/* 801766A8 001735E8  EC 22 00 72 */	fmuls f1, f2, f1
/* 801766AC 001735EC  EC 01 20 3A */	fmadds f0, f1, f0, f4
/* 801766B0 001735F0  D0 04 00 00 */	stfs f0, 0(r4)
/* 801766B4 001735F4  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 801766B8 001735F8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801766BC 001735FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801766C0 00173600  EC 01 10 3A */	fmadds f0, f1, f0, f2
/* 801766C4 00173604  D0 04 00 04 */	stfs f0, 4(r4)
/* 801766C8 00173608  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 801766CC 0017360C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801766D0 00173610  EC 00 10 28 */	fsubs f0, f0, f2
/* 801766D4 00173614  EC 01 10 3A */	fmadds f0, f1, f0, f2
/* 801766D8 00173618  D0 04 00 08 */	stfs f0, 8(r4)
/* 801766DC 0017361C  48 00 00 24 */	b lbl_80176700
lbl_801766E0:
/* 801766E0 00173620  C0 04 00 00 */	lfs f0, 0(r4)
/* 801766E4 00173624  38 00 00 00 */	li r0, 0
/* 801766E8 00173628  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801766EC 0017362C  C0 04 00 04 */	lfs f0, 4(r4)
/* 801766F0 00173630  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801766F4 00173634  C0 04 00 08 */	lfs f0, 8(r4)
/* 801766F8 00173638  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801766FC 0017363C  90 03 00 08 */	stw r0, 8(r3)
lbl_80176700:
/* 80176700 00173640  38 21 00 20 */	addi r1, r1, 0x20
/* 80176704 00173644  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21832:
  .4byte 0
$$21833:
	.incbin "baserom.dol", 0x3E65E4, 0x4
$$21835:
	.incbin "baserom.dol", 0x3E65E8, 0x8
