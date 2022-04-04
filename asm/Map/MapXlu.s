.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__7TMapXluFv
__ct__7TMapXluFv:
/* 801EB4AC 001E83EC  38 00 00 00 */	li r0, 0
/* 801EB4B0 001E83F0  90 03 00 00 */	stw r0, 0(r3)
/* 801EB4B4 001E83F4  90 03 00 04 */	stw r0, 4(r3)
/* 801EB4B8 001E83F8  4E 80 00 20 */	blr 

.global init__7TMapXluFR20JSUMemoryInputStream
init__7TMapXluFR20JSUMemoryInputStream:
/* 801EB4BC 001E83FC  7C 08 02 A6 */	mflr r0
/* 801EB4C0 001E8400  38 A0 00 04 */	li r5, 4
/* 801EB4C4 001E8404  90 01 00 04 */	stw r0, 4(r1)
/* 801EB4C8 001E8408  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801EB4CC 001E840C  BF 21 00 1C */	stmw r25, 0x1c(r1)
/* 801EB4D0 001E8410  3B E4 00 00 */	addi r31, r4, 0
/* 801EB4D4 001E8414  3B C3 00 00 */	addi r30, r3, 0
/* 801EB4D8 001E8418  38 7F 00 00 */	addi r3, r31, 0
/* 801EB4DC 001E841C  38 81 00 10 */	addi r4, r1, 0x10
/* 801EB4E0 001E8420  4B E2 30 B1 */	bl read__14JSUInputStreamFPvl
/* 801EB4E4 001E8424  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801EB4E8 001E8428  90 1E 00 00 */	stw r0, 0(r30)
/* 801EB4EC 001E842C  80 1E 00 00 */	lwz r0, 0(r30)
/* 801EB4F0 001E8430  2C 00 00 00 */	cmpwi r0, 0
/* 801EB4F4 001E8434  41 82 00 C8 */	beq lbl_801EB5BC
/* 801EB4F8 001E8438  1C 60 00 0C */	mulli r3, r0, 0xc
/* 801EB4FC 001E843C  4B E2 14 B5 */	bl __nwa__FUl
/* 801EB500 001E8440  90 7E 00 04 */	stw r3, 4(r30)
/* 801EB504 001E8444  3B 60 00 00 */	li r27, 0
/* 801EB508 001E8448  3B A0 00 00 */	li r29, 0
/* 801EB50C 001E844C  48 00 00 A4 */	b lbl_801EB5B0
lbl_801EB510:
/* 801EB510 001E8450  80 1E 00 04 */	lwz r0, 4(r30)
/* 801EB514 001E8454  38 7F 00 00 */	addi r3, r31, 0
/* 801EB518 001E8458  38 81 00 10 */	addi r4, r1, 0x10
/* 801EB51C 001E845C  7F 40 EA 14 */	add r26, r0, r29
/* 801EB520 001E8460  38 A0 00 04 */	li r5, 4
/* 801EB524 001E8464  4B E2 30 6D */	bl read__14JSUInputStreamFPvl
/* 801EB528 001E8468  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801EB52C 001E846C  90 1A 00 00 */	stw r0, 0(r26)
/* 801EB530 001E8470  80 1A 00 00 */	lwz r0, 0(r26)
/* 801EB534 001E8474  54 03 10 3A */	slwi r3, r0, 2
/* 801EB538 001E8478  4B E2 14 79 */	bl __nwa__FUl
/* 801EB53C 001E847C  90 7A 00 04 */	stw r3, 4(r26)
/* 801EB540 001E8480  80 1A 00 00 */	lwz r0, 0(r26)
/* 801EB544 001E8484  54 03 10 3A */	slwi r3, r0, 2
/* 801EB548 001E8488  4B E2 14 69 */	bl __nwa__FUl
/* 801EB54C 001E848C  90 7A 00 08 */	stw r3, 8(r26)
/* 801EB550 001E8490  3B 20 00 00 */	li r25, 0
/* 801EB554 001E8494  3B 80 00 00 */	li r28, 0
/* 801EB558 001E8498  48 00 00 44 */	b lbl_801EB59C
lbl_801EB55C:
/* 801EB55C 001E849C  38 7F 00 00 */	addi r3, r31, 0
/* 801EB560 001E84A0  38 81 00 10 */	addi r4, r1, 0x10
/* 801EB564 001E84A4  38 A0 00 04 */	li r5, 4
/* 801EB568 001E84A8  4B E2 30 29 */	bl read__14JSUInputStreamFPvl
/* 801EB56C 001E84AC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801EB570 001E84B0  7F E3 FB 78 */	mr r3, r31
/* 801EB574 001E84B4  80 DA 00 04 */	lwz r6, 4(r26)
/* 801EB578 001E84B8  38 81 00 10 */	addi r4, r1, 0x10
/* 801EB57C 001E84BC  38 A0 00 04 */	li r5, 4
/* 801EB580 001E84C0  7C 06 E1 2E */	stwx r0, r6, r28
/* 801EB584 001E84C4  4B E2 30 0D */	bl read__14JSUInputStreamFPvl
/* 801EB588 001E84C8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801EB58C 001E84CC  3B 39 00 01 */	addi r25, r25, 1
/* 801EB590 001E84D0  80 7A 00 08 */	lwz r3, 8(r26)
/* 801EB594 001E84D4  7C 03 E1 2E */	stwx r0, r3, r28
/* 801EB598 001E84D8  3B 9C 00 04 */	addi r28, r28, 4
lbl_801EB59C:
/* 801EB59C 001E84DC  80 1A 00 00 */	lwz r0, 0(r26)
/* 801EB5A0 001E84E0  7C 19 00 00 */	cmpw r25, r0
/* 801EB5A4 001E84E4  41 80 FF B8 */	blt lbl_801EB55C
/* 801EB5A8 001E84E8  3B 7B 00 01 */	addi r27, r27, 1
/* 801EB5AC 001E84EC  3B BD 00 0C */	addi r29, r29, 0xc
lbl_801EB5B0:
/* 801EB5B0 001E84F0  80 1E 00 00 */	lwz r0, 0(r30)
/* 801EB5B4 001E84F4  7C 1B 00 00 */	cmpw r27, r0
/* 801EB5B8 001E84F8  41 80 FF 58 */	blt lbl_801EB510
lbl_801EB5BC:
/* 801EB5BC 001E84FC  BB 21 00 1C */	lmw r25, 0x1c(r1)
/* 801EB5C0 001E8500  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801EB5C4 001E8504  38 21 00 38 */	addi r1, r1, 0x38
/* 801EB5C8 001E8508  7C 08 03 A6 */	mtlr r0
/* 801EB5CC 001E850C  4E 80 00 20 */	blr 

.global changeXluJoint__7TMapXluFi
changeXluJoint__7TMapXluFi:
/* 801EB5D0 001E8510  7C 08 02 A6 */	mflr r0
/* 801EB5D4 001E8514  90 01 00 04 */	stw r0, 4(r1)
/* 801EB5D8 001E8518  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 801EB5DC 001E851C  93 E1 00 84 */	stw r31, 0x84(r1)
/* 801EB5E0 001E8520  3B E4 00 00 */	addi r31, r4, 0
/* 801EB5E4 001E8524  93 C1 00 80 */	stw r30, 0x80(r1)
/* 801EB5E8 001E8528  93 A1 00 7C */	stw r29, 0x7c(r1)
/* 801EB5EC 001E852C  7C 7D 1B 78 */	mr r29, r3
/* 801EB5F0 001E8530  93 81 00 78 */	stw r28, 0x78(r1)
/* 801EB5F4 001E8534  80 03 00 00 */	lwz r0, 0(r3)
/* 801EB5F8 001E8538  7C 1F 00 00 */	cmpw r31, r0
/* 801EB5FC 001E853C  41 80 00 0C */	blt lbl_801EB608
/* 801EB600 001E8540  38 60 00 00 */	li r3, 0
/* 801EB604 001E8544  48 00 00 C4 */	b lbl_801EB6C8
lbl_801EB608:
/* 801EB608 001E8548  3B C0 00 00 */	li r30, 0
/* 801EB60C 001E854C  3B 80 00 00 */	li r28, 0
/* 801EB610 001E8550  48 00 00 24 */	b lbl_801EB634
lbl_801EB614:
/* 801EB614 001E8554  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801EB618 001E8558  7C 63 E0 2E */	lwzx r3, r3, r28
/* 801EB61C 001E855C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EB620 001E8560  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801EB624 001E8564  7D 88 03 A6 */	mtlr r12
/* 801EB628 001E8568  4E 80 00 21 */	blrl 
/* 801EB62C 001E856C  3B DE 00 01 */	addi r30, r30, 1
/* 801EB630 001E8570  3B 9C 00 04 */	addi r28, r28, 4
lbl_801EB634:
/* 801EB634 001E8574  80 6D 9A B0 */	lwz r3, gpMap@sda21(r13)
/* 801EB638 001E8578  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801EB63C 001E857C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801EB640 001E8580  80 63 00 00 */	lwz r3, 0(r3)
/* 801EB644 001E8584  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801EB648 001E8588  7C 1E 00 00 */	cmpw r30, r0
/* 801EB64C 001E858C  41 80 FF C8 */	blt lbl_801EB614
/* 801EB650 001E8590  1F FF 00 0C */	mulli r31, r31, 0xc
/* 801EB654 001E8594  3B C0 00 00 */	li r30, 0
/* 801EB658 001E8598  3B 80 00 00 */	li r28, 0
/* 801EB65C 001E859C  48 00 00 54 */	b lbl_801EB6B0
lbl_801EB660:
/* 801EB660 001E85A0  80 8D 9A B0 */	lwz r4, gpMap@sda21(r13)
/* 801EB664 001E85A4  80 66 00 04 */	lwz r3, 4(r6)
/* 801EB668 001E85A8  80 84 00 14 */	lwz r4, 0x14(r4)
/* 801EB66C 001E85AC  7C 03 E0 2E */	lwzx r0, r3, r28
/* 801EB670 001E85B0  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 801EB674 001E85B4  80 66 00 08 */	lwz r3, 8(r6)
/* 801EB678 001E85B8  54 04 10 3A */	slwi r4, r0, 2
/* 801EB67C 001E85BC  80 A5 00 00 */	lwz r5, 0(r5)
/* 801EB680 001E85C0  7C 03 E0 2E */	lwzx r0, r3, r28
/* 801EB684 001E85C4  80 65 00 14 */	lwz r3, 0x14(r5)
/* 801EB688 001E85C8  54 00 10 3A */	slwi r0, r0, 2
/* 801EB68C 001E85CC  7C 63 20 2E */	lwzx r3, r3, r4
/* 801EB690 001E85D0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801EB694 001E85D4  7C 63 00 2E */	lwzx r3, r3, r0
/* 801EB698 001E85D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EB69C 001E85DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801EB6A0 001E85E0  7D 88 03 A6 */	mtlr r12
/* 801EB6A4 001E85E4  4E 80 00 21 */	blrl 
/* 801EB6A8 001E85E8  3B DE 00 01 */	addi r30, r30, 1
/* 801EB6AC 001E85EC  3B 9C 00 04 */	addi r28, r28, 4
lbl_801EB6B0:
/* 801EB6B0 001E85F0  80 1D 00 04 */	lwz r0, 4(r29)
/* 801EB6B4 001E85F4  7C DF 02 14 */	add r6, r31, r0
/* 801EB6B8 001E85F8  80 06 00 00 */	lwz r0, 0(r6)
/* 801EB6BC 001E85FC  7C 1E 00 00 */	cmpw r30, r0
/* 801EB6C0 001E8600  41 80 FF A0 */	blt lbl_801EB660
/* 801EB6C4 001E8604  38 60 00 01 */	li r3, 1
lbl_801EB6C8:
/* 801EB6C8 001E8608  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 801EB6CC 001E860C  83 E1 00 84 */	lwz r31, 0x84(r1)
/* 801EB6D0 001E8610  83 C1 00 80 */	lwz r30, 0x80(r1)
/* 801EB6D4 001E8614  7C 08 03 A6 */	mtlr r0
/* 801EB6D8 001E8618  83 A1 00 7C */	lwz r29, 0x7c(r1)
/* 801EB6DC 001E861C  83 81 00 78 */	lwz r28, 0x78(r1)
/* 801EB6E0 001E8620  38 21 00 88 */	addi r1, r1, 0x88
/* 801EB6E4 001E8624  4E 80 00 20 */	blr 

.global changeNormalJoint__7TMapXluFv
changeNormalJoint__7TMapXluFv:
/* 801EB6E8 001E8628  7C 08 02 A6 */	mflr r0
/* 801EB6EC 001E862C  90 01 00 04 */	stw r0, 4(r1)
/* 801EB6F0 001E8630  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 801EB6F4 001E8634  BF 61 00 74 */	stmw r27, 0x74(r1)
/* 801EB6F8 001E8638  3B A3 00 00 */	addi r29, r3, 0
/* 801EB6FC 001E863C  3B 80 00 00 */	li r28, 0
/* 801EB700 001E8640  3B 60 00 00 */	li r27, 0
/* 801EB704 001E8644  48 00 00 24 */	b lbl_801EB728
lbl_801EB708:
/* 801EB708 001E8648  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801EB70C 001E864C  7C 63 D8 2E */	lwzx r3, r3, r27
/* 801EB710 001E8650  81 83 00 00 */	lwz r12, 0(r3)
/* 801EB714 001E8654  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801EB718 001E8658  7D 88 03 A6 */	mtlr r12
/* 801EB71C 001E865C  4E 80 00 21 */	blrl 
/* 801EB720 001E8660  3B 9C 00 01 */	addi r28, r28, 1
/* 801EB724 001E8664  3B 7B 00 04 */	addi r27, r27, 4
lbl_801EB728:
/* 801EB728 001E8668  80 6D 9A B0 */	lwz r3, gpMap@sda21(r13)
/* 801EB72C 001E866C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801EB730 001E8670  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801EB734 001E8674  80 63 00 00 */	lwz r3, 0(r3)
/* 801EB738 001E8678  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801EB73C 001E867C  7C 1C 00 00 */	cmpw r28, r0
/* 801EB740 001E8680  41 80 FF C8 */	blt lbl_801EB708
/* 801EB744 001E8684  3B E0 00 00 */	li r31, 0
/* 801EB748 001E8688  3B 80 00 00 */	li r28, 0
/* 801EB74C 001E868C  48 00 00 7C */	b lbl_801EB7C8
lbl_801EB750:
/* 801EB750 001E8690  3B C0 00 00 */	li r30, 0
/* 801EB754 001E8694  3B 60 00 00 */	li r27, 0
/* 801EB758 001E8698  48 00 00 54 */	b lbl_801EB7AC
lbl_801EB75C:
/* 801EB75C 001E869C  80 8D 9A B0 */	lwz r4, gpMap@sda21(r13)
/* 801EB760 001E86A0  80 66 00 04 */	lwz r3, 4(r6)
/* 801EB764 001E86A4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 801EB768 001E86A8  7C 03 D8 2E */	lwzx r0, r3, r27
/* 801EB76C 001E86AC  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 801EB770 001E86B0  80 66 00 08 */	lwz r3, 8(r6)
/* 801EB774 001E86B4  54 04 10 3A */	slwi r4, r0, 2
/* 801EB778 001E86B8  80 A5 00 00 */	lwz r5, 0(r5)
/* 801EB77C 001E86BC  7C 03 D8 2E */	lwzx r0, r3, r27
/* 801EB780 001E86C0  80 65 00 14 */	lwz r3, 0x14(r5)
/* 801EB784 001E86C4  54 00 10 3A */	slwi r0, r0, 2
/* 801EB788 001E86C8  7C 63 20 2E */	lwzx r3, r3, r4
/* 801EB78C 001E86CC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801EB790 001E86D0  7C 63 00 2E */	lwzx r3, r3, r0
/* 801EB794 001E86D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EB798 001E86D8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801EB79C 001E86DC  7D 88 03 A6 */	mtlr r12
/* 801EB7A0 001E86E0  4E 80 00 21 */	blrl 
/* 801EB7A4 001E86E4  3B DE 00 01 */	addi r30, r30, 1
/* 801EB7A8 001E86E8  3B 7B 00 04 */	addi r27, r27, 4
lbl_801EB7AC:
/* 801EB7AC 001E86EC  80 1D 00 04 */	lwz r0, 4(r29)
/* 801EB7B0 001E86F0  7C DC 02 14 */	add r6, r28, r0
/* 801EB7B4 001E86F4  80 06 00 00 */	lwz r0, 0(r6)
/* 801EB7B8 001E86F8  7C 1E 00 00 */	cmpw r30, r0
/* 801EB7BC 001E86FC  41 80 FF A0 */	blt lbl_801EB75C
/* 801EB7C0 001E8700  3B FF 00 01 */	addi r31, r31, 1
/* 801EB7C4 001E8704  3B 9C 00 0C */	addi r28, r28, 0xc
lbl_801EB7C8:
/* 801EB7C8 001E8708  80 1D 00 00 */	lwz r0, 0(r29)
/* 801EB7CC 001E870C  7C 1F 00 00 */	cmpw r31, r0
/* 801EB7D0 001E8710  41 80 FF 80 */	blt lbl_801EB750
/* 801EB7D4 001E8714  BB 61 00 74 */	lmw r27, 0x74(r1)
/* 801EB7D8 001E8718  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 801EB7DC 001E871C  38 21 00 88 */	addi r1, r1, 0x88
/* 801EB7E0 001E8720  7C 08 03 A6 */	mtlr r0
/* 801EB7E4 001E8724  4E 80 00 20 */	blr 

.global __sinit_MapXlu_cpp
__sinit_MapXlu_cpp:
/* 801EB7E8 001E8728  7C 08 02 A6 */	mflr r0
/* 801EB7EC 001E872C  3C 60 80 40 */	lis r3, "@2581"@ha
/* 801EB7F0 001E8730  90 01 00 04 */	stw r0, 4(r1)
/* 801EB7F4 001E8734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EB7F8 001E8738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EB7FC 001E873C  3B E3 81 40 */	addi r31, r3, "@2581"@l
/* 801EB800 001E8740  88 0D 97 CC */	lbz r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
/* 801EB804 001E8744  7C 00 07 75 */	extsb. r0, r0
/* 801EB808 001E8748  40 82 00 28 */	bne lbl_801EB830
/* 801EB80C 001E874C  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 801EB810 001E8750  4B E2 34 25 */	bl initiate__10JSUPtrListFv
/* 801EB814 001E8754  3C 60 80 0E */	lis r3, "__dt__15JSUList<5MSBgm>Fv"@ha
/* 801EB818 001E8758  38 83 6A 44 */	addi r4, r3, "__dt__15JSUList<5MSBgm>Fv"@l
/* 801EB81C 001E875C  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 801EB820 001E8760  38 BF 00 00 */	addi r5, r31, 0
/* 801EB824 001E8764  4B E9 6F 05 */	bl __register_global_object
/* 801EB828 001E8768  38 00 00 01 */	li r0, 1
/* 801EB82C 001E876C  98 0D 97 CC */	stb r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
lbl_801EB830:
/* 801EB830 001E8770  88 0D 97 CD */	lbz r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
/* 801EB834 001E8774  7C 00 07 75 */	extsb. r0, r0
/* 801EB838 001E8778  40 82 00 28 */	bne lbl_801EB860
/* 801EB83C 001E877C  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 801EB840 001E8780  4B E2 33 F5 */	bl initiate__10JSUPtrListFv
/* 801EB844 001E8784  3C 60 80 0E */	lis r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@ha
/* 801EB848 001E8788  38 83 69 EC */	addi r4, r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@l
/* 801EB84C 001E878C  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 801EB850 001E8790  38 BF 00 0C */	addi r5, r31, 0xc
/* 801EB854 001E8794  4B E9 6E D5 */	bl __register_global_object
/* 801EB858 001E8798  38 00 00 01 */	li r0, 1
/* 801EB85C 001E879C  98 0D 97 CD */	stb r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
lbl_801EB860:
/* 801EB860 001E87A0  88 0D 97 CE */	lbz r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
/* 801EB864 001E87A4  7C 00 07 75 */	extsb. r0, r0
/* 801EB868 001E87A8  40 82 00 28 */	bne lbl_801EB890
/* 801EB86C 001E87AC  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 801EB870 001E87B0  4B E2 33 C5 */	bl initiate__10JSUPtrListFv
/* 801EB874 001E87B4  3C 60 80 0E */	lis r3, "__dt__21JSUList<10MSSetSound>Fv"@ha
/* 801EB878 001E87B8  38 83 69 94 */	addi r4, r3, "__dt__21JSUList<10MSSetSound>Fv"@l
/* 801EB87C 001E87BC  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 801EB880 001E87C0  38 BF 00 18 */	addi r5, r31, 0x18
/* 801EB884 001E87C4  4B E9 6E A5 */	bl __register_global_object
/* 801EB888 001E87C8  38 00 00 01 */	li r0, 1
/* 801EB88C 001E87CC  98 0D 97 CE */	stb r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
lbl_801EB890:
/* 801EB890 001E87D0  88 0D 8F 8C */	lbz r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
/* 801EB894 001E87D4  7C 00 07 75 */	extsb. r0, r0
/* 801EB898 001E87D8  40 82 00 28 */	bne lbl_801EB8C0
/* 801EB89C 001E87DC  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 801EB8A0 001E87E0  4B E2 33 95 */	bl initiate__10JSUPtrListFv
/* 801EB8A4 001E87E4  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@ha
/* 801EB8A8 001E87E8  38 83 A8 0C */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@l
/* 801EB8AC 001E87EC  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 801EB8B0 001E87F0  38 BF 00 24 */	addi r5, r31, 0x24
/* 801EB8B4 001E87F4  4B E9 6E 75 */	bl __register_global_object
/* 801EB8B8 001E87F8  38 00 00 01 */	li r0, 1
/* 801EB8BC 001E87FC  98 0D 8F 8C */	stb r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
lbl_801EB8C0:
/* 801EB8C0 001E8800  88 0D 8F 8D */	lbz r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
/* 801EB8C4 001E8804  7C 00 07 75 */	extsb. r0, r0
/* 801EB8C8 001E8808  40 82 00 28 */	bne lbl_801EB8F0
/* 801EB8CC 001E880C  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 801EB8D0 001E8810  4B E2 33 65 */	bl initiate__10JSUPtrListFv
/* 801EB8D4 001E8814  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@ha
/* 801EB8D8 001E8818  38 83 A7 B4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@l
/* 801EB8DC 001E881C  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 801EB8E0 001E8820  38 BF 00 30 */	addi r5, r31, 0x30
/* 801EB8E4 001E8824  4B E9 6E 45 */	bl __register_global_object
/* 801EB8E8 001E8828  38 00 00 01 */	li r0, 1
/* 801EB8EC 001E882C  98 0D 8F 8D */	stb r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
lbl_801EB8F0:
/* 801EB8F0 001E8830  88 0D 8F 8E */	lbz r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
/* 801EB8F4 001E8834  7C 00 07 75 */	extsb. r0, r0
/* 801EB8F8 001E8838  40 82 00 28 */	bne lbl_801EB920
/* 801EB8FC 001E883C  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 801EB900 001E8840  4B E2 33 35 */	bl initiate__10JSUPtrListFv
/* 801EB904 001E8844  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@ha
/* 801EB908 001E8848  38 83 A7 5C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@l
/* 801EB90C 001E884C  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 801EB910 001E8850  38 BF 00 3C */	addi r5, r31, 0x3c
/* 801EB914 001E8854  4B E9 6E 15 */	bl __register_global_object
/* 801EB918 001E8858  38 00 00 01 */	li r0, 1
/* 801EB91C 001E885C  98 0D 8F 8E */	stb r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
lbl_801EB920:
/* 801EB920 001E8860  88 0D 8F 8F */	lbz r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
/* 801EB924 001E8864  7C 00 07 75 */	extsb. r0, r0
/* 801EB928 001E8868  40 82 00 28 */	bne lbl_801EB950
/* 801EB92C 001E886C  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 801EB930 001E8870  4B E2 33 05 */	bl initiate__10JSUPtrListFv
/* 801EB934 001E8874  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@ha
/* 801EB938 001E8878  38 83 A7 04 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@l
/* 801EB93C 001E887C  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 801EB940 001E8880  38 BF 00 48 */	addi r5, r31, 0x48
/* 801EB944 001E8884  4B E9 6D E5 */	bl __register_global_object
/* 801EB948 001E8888  38 00 00 01 */	li r0, 1
/* 801EB94C 001E888C  98 0D 8F 8F */	stb r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
lbl_801EB950:
/* 801EB950 001E8890  88 0D 8F 90 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
/* 801EB954 001E8894  7C 00 07 75 */	extsb. r0, r0
/* 801EB958 001E8898  40 82 00 28 */	bne lbl_801EB980
/* 801EB95C 001E889C  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 801EB960 001E88A0  4B E2 32 D5 */	bl initiate__10JSUPtrListFv
/* 801EB964 001E88A4  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@ha
/* 801EB968 001E88A8  38 83 A6 AC */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@l
/* 801EB96C 001E88AC  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 801EB970 001E88B0  38 BF 00 54 */	addi r5, r31, 0x54
/* 801EB974 001E88B4  4B E9 6D B5 */	bl __register_global_object
/* 801EB978 001E88B8  38 00 00 01 */	li r0, 1
/* 801EB97C 001E88BC  98 0D 8F 90 */	stb r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
lbl_801EB980:
/* 801EB980 001E88C0  88 0D 8F 91 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
/* 801EB984 001E88C4  7C 00 07 75 */	extsb. r0, r0
/* 801EB988 001E88C8  40 82 00 28 */	bne lbl_801EB9B0
/* 801EB98C 001E88CC  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 801EB990 001E88D0  4B E2 32 A5 */	bl initiate__10JSUPtrListFv
/* 801EB994 001E88D4  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@ha
/* 801EB998 001E88D8  38 83 A6 54 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@l
/* 801EB99C 001E88DC  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 801EB9A0 001E88E0  38 BF 00 60 */	addi r5, r31, 0x60
/* 801EB9A4 001E88E4  4B E9 6D 85 */	bl __register_global_object
/* 801EB9A8 001E88E8  38 00 00 01 */	li r0, 1
/* 801EB9AC 001E88EC  98 0D 8F 91 */	stb r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
lbl_801EB9B0:
/* 801EB9B0 001E88F0  88 0D 8F 92 */	lbz r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
/* 801EB9B4 001E88F4  7C 00 07 75 */	extsb. r0, r0
/* 801EB9B8 001E88F8  40 82 00 28 */	bne lbl_801EB9E0
/* 801EB9BC 001E88FC  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 801EB9C0 001E8900  4B E2 32 75 */	bl initiate__10JSUPtrListFv
/* 801EB9C4 001E8904  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@ha
/* 801EB9C8 001E8908  38 83 A5 FC */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@l
/* 801EB9CC 001E890C  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 801EB9D0 001E8910  38 BF 00 6C */	addi r5, r31, 0x6c
/* 801EB9D4 001E8914  4B E9 6D 55 */	bl __register_global_object
/* 801EB9D8 001E8918  38 00 00 01 */	li r0, 1
/* 801EB9DC 001E891C  98 0D 8F 92 */	stb r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
lbl_801EB9E0:
/* 801EB9E0 001E8920  88 0D 8F 93 */	lbz r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
/* 801EB9E4 001E8924  7C 00 07 75 */	extsb. r0, r0
/* 801EB9E8 001E8928  40 82 00 28 */	bne lbl_801EBA10
/* 801EB9EC 001E892C  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 801EB9F0 001E8930  4B E2 32 45 */	bl initiate__10JSUPtrListFv
/* 801EB9F4 001E8934  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@ha
/* 801EB9F8 001E8938  38 83 A5 A4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@l
/* 801EB9FC 001E893C  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 801EBA00 001E8940  38 BF 00 78 */	addi r5, r31, 0x78
/* 801EBA04 001E8944  4B E9 6D 25 */	bl __register_global_object
/* 801EBA08 001E8948  38 00 00 01 */	li r0, 1
/* 801EBA0C 001E894C  98 0D 8F 93 */	stb r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
lbl_801EBA10:
/* 801EBA10 001E8950  88 0D 8F 94 */	lbz r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
/* 801EBA14 001E8954  7C 00 07 75 */	extsb. r0, r0
/* 801EBA18 001E8958  40 82 00 28 */	bne lbl_801EBA40
/* 801EBA1C 001E895C  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 801EBA20 001E8960  4B E2 32 15 */	bl initiate__10JSUPtrListFv
/* 801EBA24 001E8964  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@ha
/* 801EBA28 001E8968  38 83 A5 4C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@l
/* 801EBA2C 001E896C  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 801EBA30 001E8970  38 BF 00 84 */	addi r5, r31, 0x84
/* 801EBA34 001E8974  4B E9 6C F5 */	bl __register_global_object
/* 801EBA38 001E8978  38 00 00 01 */	li r0, 1
/* 801EBA3C 001E897C  98 0D 8F 94 */	stb r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
lbl_801EBA40:
/* 801EBA40 001E8980  88 0D 8F 95 */	lbz r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
/* 801EBA44 001E8984  7C 00 07 75 */	extsb. r0, r0
/* 801EBA48 001E8988  40 82 00 28 */	bne lbl_801EBA70
/* 801EBA4C 001E898C  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 801EBA50 001E8990  4B E2 31 E5 */	bl initiate__10JSUPtrListFv
/* 801EBA54 001E8994  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@ha
/* 801EBA58 001E8998  38 83 A4 F4 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@l
/* 801EBA5C 001E899C  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 801EBA60 001E89A0  38 BF 00 90 */	addi r5, r31, 0x90
/* 801EBA64 001E89A4  4B E9 6C C5 */	bl __register_global_object
/* 801EBA68 001E89A8  38 00 00 01 */	li r0, 1
/* 801EBA6C 001E89AC  98 0D 8F 95 */	stb r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
lbl_801EBA70:
/* 801EBA70 001E89B0  88 0D 8F 96 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
/* 801EBA74 001E89B4  7C 00 07 75 */	extsb. r0, r0
/* 801EBA78 001E89B8  40 82 00 28 */	bne lbl_801EBAA0
/* 801EBA7C 001E89BC  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 801EBA80 001E89C0  4B E2 31 B5 */	bl initiate__10JSUPtrListFv
/* 801EBA84 001E89C4  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@ha
/* 801EBA88 001E89C8  38 83 A4 9C */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@l
/* 801EBA8C 001E89CC  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 801EBA90 001E89D0  38 BF 00 9C */	addi r5, r31, 0x9c
/* 801EBA94 001E89D4  4B E9 6C 95 */	bl __register_global_object
/* 801EBA98 001E89D8  38 00 00 01 */	li r0, 1
/* 801EBA9C 001E89DC  98 0D 8F 96 */	stb r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
lbl_801EBAA0:
/* 801EBAA0 001E89E0  88 0D 8F 97 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
/* 801EBAA4 001E89E4  7C 00 07 75 */	extsb. r0, r0
/* 801EBAA8 001E89E8  40 82 00 28 */	bne lbl_801EBAD0
/* 801EBAAC 001E89EC  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 801EBAB0 001E89F0  4B E2 31 85 */	bl initiate__10JSUPtrListFv
/* 801EBAB4 001E89F4  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@ha
/* 801EBAB8 001E89F8  38 83 A4 44 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@l
/* 801EBABC 001E89FC  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 801EBAC0 001E8A00  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 801EBAC4 001E8A04  4B E9 6C 65 */	bl __register_global_object
/* 801EBAC8 001E8A08  38 00 00 01 */	li r0, 1
/* 801EBACC 001E8A0C  98 0D 8F 97 */	stb r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
lbl_801EBAD0:
/* 801EBAD0 001E8A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EBAD4 001E8A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EBAD8 001E8A18  38 21 00 10 */	addi r1, r1, 0x10
/* 801EBADC 001E8A1C  7C 08 03 A6 */	mtlr r0
/* 801EBAE0 001E8A20  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
lbl_constructor:
  .4byte __sinit_MapXlu_cpp

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
"@2581":
	.skip 0xC
"@2582":
	.skip 0xC
"@2583":
	.skip 0xC
"@2584":
	.skip 0xC
"@2585":
	.skip 0xC
"@2586":
	.skip 0xC
"@2587":
	.skip 0xC
"@2588":
	.skip 0xC
"@2589":
	.skip 0xC
"@2590":
	.skip 0xC
"@2591":
	.skip 0xC
"@2592":
	.skip 0xC
"@2593":
	.skip 0xC
"@2594":
	.skip 0xC
"@2595":
	.skip 0x10
