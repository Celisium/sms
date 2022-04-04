.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global update__7TExPaneFv
update__7TExPaneFv:
/* 80200820 001FD760  7C 08 02 A6 */	mflr r0
/* 80200824 001FD764  90 01 00 04 */	stw r0, 4(r1)
/* 80200828 001FD768  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8020082C 001FD76C  93 E1 00 44 */	stw r31, 0x44(r1)
/* 80200830 001FD770  7C 7F 1B 78 */	mr r31, r3
/* 80200834 001FD774  88 03 00 4E */	lbz r0, 0x4e(r3)
/* 80200838 001FD778  28 00 00 00 */	cmplwi r0, 0
/* 8020083C 001FD77C  41 82 00 98 */	beq lbl_802008D4
/* 80200840 001FD780  38 7F 00 14 */	addi r3, r31, 0x14
/* 80200844 001FD784  4B FF FE 9D */	bl update__8TCoord2DFv
/* 80200848 001FD788  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020084C 001FD78C  41 82 00 0C */	beq lbl_80200858
/* 80200850 001FD790  38 00 00 00 */	li r0, 0
/* 80200854 001FD794  98 1F 00 4E */	stb r0, 0x4e(r31)
lbl_80200858:
/* 80200858 001FD798  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8020085C 001FD79C  C0 02 D3 D0 */	lfs f0, "@1610"@sda21(r2)
/* 80200860 001FD7A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80200864 001FD7A4  40 81 00 0C */	ble lbl_80200870
/* 80200868 001FD7A8  C0 02 D3 D4 */	lfs f0, "@1611"@sda21(r2)
/* 8020086C 001FD7AC  48 00 00 08 */	b lbl_80200874
lbl_80200870:
/* 80200870 001FD7B0  C0 02 D3 D8 */	lfs f0, "@1612"@sda21(r2)
lbl_80200874:
/* 80200874 001FD7B4  EC 21 00 2A */	fadds f1, f1, f0
/* 80200878 001FD7B8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8020087C 001FD7BC  C0 02 D3 D0 */	lfs f0, "@1610"@sda21(r2)
/* 80200880 001FD7C0  FC 20 08 1E */	fctiwz f1, f1
/* 80200884 001FD7C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80200888 001FD7C8  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8020088C 001FD7CC  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80200890 001FD7D0  40 81 00 0C */	ble lbl_8020089C
/* 80200894 001FD7D4  C0 02 D3 D4 */	lfs f0, "@1611"@sda21(r2)
/* 80200898 001FD7D8  48 00 00 08 */	b lbl_802008A0
lbl_8020089C:
/* 8020089C 001FD7DC  C0 02 D3 D8 */	lfs f0, "@1612"@sda21(r2)
lbl_802008A0:
/* 802008A0 001FD7E0  EC 02 00 2A */	fadds f0, f2, f0
/* 802008A4 001FD7E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 802008A8 001FD7E8  80 1F 00 08 */	lwz r0, 8(r31)
/* 802008AC 001FD7EC  81 83 00 00 */	lwz r12, 0(r3)
/* 802008B0 001FD7F0  FC 00 00 1E */	fctiwz f0, f0
/* 802008B4 001FD7F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802008B8 001FD7F8  7C A0 22 14 */	add r5, r0, r4
/* 802008BC 001FD7FC  80 1F 00 04 */	lwz r0, 4(r31)
/* 802008C0 001FD800  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 802008C4 001FD804  7D 88 03 A6 */	mtlr r12
/* 802008C8 001FD808  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 802008CC 001FD80C  7C 80 22 14 */	add r4, r0, r4
/* 802008D0 001FD810  4E 80 00 21 */	blrl 
lbl_802008D4:
/* 802008D4 001FD814  88 1F 00 4F */	lbz r0, 0x4f(r31)
/* 802008D8 001FD818  28 00 00 00 */	cmplwi r0, 0
/* 802008DC 001FD81C  41 82 00 88 */	beq lbl_80200964
/* 802008E0 001FD820  38 7F 00 2C */	addi r3, r31, 0x2c
/* 802008E4 001FD824  4B FF FD FD */	bl update__8TCoord2DFv
/* 802008E8 001FD828  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802008EC 001FD82C  41 82 00 0C */	beq lbl_802008F8
/* 802008F0 001FD830  38 00 00 00 */	li r0, 0
/* 802008F4 001FD834  98 1F 00 4F */	stb r0, 0x4f(r31)
lbl_802008F8:
/* 802008F8 001FD838  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 802008FC 001FD83C  C0 02 D3 D0 */	lfs f0, "@1610"@sda21(r2)
/* 80200900 001FD840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80200904 001FD844  40 81 00 0C */	ble lbl_80200910
/* 80200908 001FD848  C0 02 D3 D4 */	lfs f0, "@1611"@sda21(r2)
/* 8020090C 001FD84C  48 00 00 08 */	b lbl_80200914
lbl_80200910:
/* 80200910 001FD850  C0 02 D3 D8 */	lfs f0, "@1612"@sda21(r2)
lbl_80200914:
/* 80200914 001FD854  EC 21 00 2A */	fadds f1, f1, f0
/* 80200918 001FD858  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8020091C 001FD85C  C0 02 D3 D0 */	lfs f0, "@1610"@sda21(r2)
/* 80200920 001FD860  FC 20 08 1E */	fctiwz f1, f1
/* 80200924 001FD864  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80200928 001FD868  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8020092C 001FD86C  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80200930 001FD870  40 81 00 0C */	ble lbl_8020093C
/* 80200934 001FD874  C0 02 D3 D4 */	lfs f0, "@1611"@sda21(r2)
/* 80200938 001FD878  48 00 00 08 */	b lbl_80200940
lbl_8020093C:
/* 8020093C 001FD87C  C0 02 D3 D8 */	lfs f0, "@1612"@sda21(r2)
lbl_80200940:
/* 80200940 001FD880  EC 02 00 2A */	fadds f0, f2, f0
/* 80200944 001FD884  80 7F 00 00 */	lwz r3, 0(r31)
/* 80200948 001FD888  81 83 00 00 */	lwz r12, 0(r3)
/* 8020094C 001FD88C  FC 00 00 1E */	fctiwz f0, f0
/* 80200950 001FD890  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80200954 001FD894  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80200958 001FD898  7D 88 03 A6 */	mtlr r12
/* 8020095C 001FD89C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80200960 001FD8A0  4E 80 00 21 */	blrl 
lbl_80200964:
/* 80200964 001FD8A4  88 1F 00 50 */	lbz r0, 0x50(r31)
/* 80200968 001FD8A8  28 00 00 00 */	cmplwi r0, 0
/* 8020096C 001FD8AC  41 82 00 EC */	beq lbl_80200A58
/* 80200970 001FD8B0  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80200974 001FD8B4  C0 02 D3 D0 */	lfs f0, "@1610"@sda21(r2)
/* 80200978 001FD8B8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8020097C 001FD8BC  40 80 00 34 */	bge lbl_802009B0
/* 80200980 001FD8C0  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 80200984 001FD8C4  3C 00 43 30 */	lis r0, 0x4330
/* 80200988 001FD8C8  C8 22 D3 E0 */	lfd f1, "@1614"@sda21(r2)
/* 8020098C 001FD8CC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80200990 001FD8D0  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80200994 001FD8D4  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80200998 001FD8D8  90 01 00 38 */	stw r0, 0x38(r1)
/* 8020099C 001FD8DC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802009A0 001FD8E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802009A4 001FD8E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802009A8 001FD8E8  4C 40 13 82 */	cror 2, 0, 2
/* 802009AC 001FD8EC  41 82 00 44 */	beq lbl_802009F0
lbl_802009B0:
/* 802009B0 001FD8F0  C0 02 D3 D0 */	lfs f0, "@1610"@sda21(r2)
/* 802009B4 001FD8F4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802009B8 001FD8F8  4C 41 13 82 */	cror 2, 1, 2
/* 802009BC 001FD8FC  40 82 00 3C */	bne lbl_802009F8
/* 802009C0 001FD900  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 802009C4 001FD904  3C 00 43 30 */	lis r0, 0x4330
/* 802009C8 001FD908  C8 22 D3 E0 */	lfd f1, "@1614"@sda21(r2)
/* 802009CC 001FD90C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802009D0 001FD910  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 802009D4 001FD914  90 61 00 3C */	stw r3, 0x3c(r1)
/* 802009D8 001FD918  90 01 00 38 */	stw r0, 0x38(r1)
/* 802009DC 001FD91C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802009E0 001FD920  EC 00 08 28 */	fsubs f0, f0, f1
/* 802009E4 001FD924  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802009E8 001FD928  4C 41 13 82 */	cror 2, 1, 2
/* 802009EC 001FD92C  40 82 00 0C */	bne lbl_802009F8
lbl_802009F0:
/* 802009F0 001FD930  38 00 00 00 */	li r0, 0
/* 802009F4 001FD934  98 1F 00 50 */	stb r0, 0x50(r31)
lbl_802009F8:
/* 802009F8 001FD938  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 802009FC 001FD93C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80200A00 001FD940  EC 01 00 2A */	fadds f0, f1, f0
/* 80200A04 001FD944  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80200A08 001FD948  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80200A0C 001FD94C  C0 02 D3 D0 */	lfs f0, "@1610"@sda21(r2)
/* 80200A10 001FD950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80200A14 001FD954  40 80 00 08 */	bge lbl_80200A1C
/* 80200A18 001FD958  48 00 00 08 */	b lbl_80200A20
lbl_80200A1C:
/* 80200A1C 001FD95C  FC 00 08 90 */	fmr f0, f1
lbl_80200A20:
/* 80200A20 001FD960  FC 00 00 1E */	fctiwz f0, f0
/* 80200A24 001FD964  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80200A28 001FD968  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80200A2C 001FD96C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80200A30 001FD970  7C 00 07 34 */	extsh r0, r0
/* 80200A34 001FD974  2C 00 00 FF */	cmpwi r0, 0xff
/* 80200A38 001FD978  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80200A3C 001FD97C  40 81 00 0C */	ble lbl_80200A48
/* 80200A40 001FD980  38 00 00 FF */	li r0, 0xff
/* 80200A44 001FD984  48 00 00 08 */	b lbl_80200A4C
lbl_80200A48:
/* 80200A48 001FD988  7C 00 07 34 */	extsh r0, r0
lbl_80200A4C:
/* 80200A4C 001FD98C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80200A50 001FD990  7C 00 07 34 */	extsh r0, r0
/* 80200A54 001FD994  98 03 00 CC */	stb r0, 0xcc(r3)
lbl_80200A58:
/* 80200A58 001FD998  88 1F 00 4E */	lbz r0, 0x4e(r31)
/* 80200A5C 001FD99C  38 60 00 00 */	li r3, 0
/* 80200A60 001FD9A0  38 83 00 00 */	addi r4, r3, 0
/* 80200A64 001FD9A4  28 00 00 00 */	cmplwi r0, 0
/* 80200A68 001FD9A8  40 82 00 14 */	bne lbl_80200A7C
/* 80200A6C 001FD9AC  88 1F 00 4F */	lbz r0, 0x4f(r31)
/* 80200A70 001FD9B0  28 00 00 00 */	cmplwi r0, 0
/* 80200A74 001FD9B4  40 82 00 08 */	bne lbl_80200A7C
/* 80200A78 001FD9B8  38 80 00 01 */	li r4, 1
lbl_80200A7C:
/* 80200A7C 001FD9BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80200A80 001FD9C0  41 82 00 14 */	beq lbl_80200A94
/* 80200A84 001FD9C4  88 1F 00 50 */	lbz r0, 0x50(r31)
/* 80200A88 001FD9C8  28 00 00 00 */	cmplwi r0, 0
/* 80200A8C 001FD9CC  40 82 00 08 */	bne lbl_80200A94
/* 80200A90 001FD9D0  38 60 00 01 */	li r3, 1
lbl_80200A94:
/* 80200A94 001FD9D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80200A98 001FD9D8  41 82 00 0C */	beq lbl_80200AA4
/* 80200A9C 001FD9DC  38 60 00 01 */	li r3, 1
/* 80200AA0 001FD9E0  48 00 00 08 */	b lbl_80200AA8
lbl_80200AA4:
/* 80200AA4 001FD9E4  38 60 00 00 */	li r3, 0
lbl_80200AA8:
/* 80200AA8 001FD9E8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80200AAC 001FD9EC  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 80200AB0 001FD9F0  38 21 00 48 */	addi r1, r1, 0x48
/* 80200AB4 001FD9F4  7C 08 03 A6 */	mtlr r0
/* 80200AB8 001FD9F8  4E 80 00 20 */	blr 

.global __ct__7TExPaneFP9J2DScreenUl
__ct__7TExPaneFP9J2DScreenUl:
/* 80200ABC 001FD9FC  7C 08 02 A6 */	mflr r0
/* 80200AC0 001FDA00  38 C0 00 00 */	li r6, 0
/* 80200AC4 001FDA04  90 01 00 04 */	stw r0, 4(r1)
/* 80200AC8 001FDA08  38 E0 00 00 */	li r7, 0
/* 80200ACC 001FDA0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80200AD0 001FDA10  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80200AD4 001FDA14  3B E5 00 00 */	addi r31, r5, 0
/* 80200AD8 001FDA18  38 A0 00 00 */	li r5, 0
/* 80200ADC 001FDA1C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80200AE0 001FDA20  3B C4 00 00 */	addi r30, r4, 0
/* 80200AE4 001FDA24  38 80 00 00 */	li r4, 0
/* 80200AE8 001FDA28  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80200AEC 001FDA2C  3B A3 00 00 */	addi r29, r3, 0
/* 80200AF0 001FDA30  38 7D 00 04 */	addi r3, r29, 4
/* 80200AF4 001FDA34  4B E1 27 29 */	bl set__7JUTRectFiiii
/* 80200AF8 001FDA38  38 7D 00 14 */	addi r3, r29, 0x14
/* 80200AFC 001FDA3C  4B FF FD 05 */	bl __ct__8TCoord2DFv
/* 80200B00 001FDA40  38 7D 00 2C */	addi r3, r29, 0x2c
/* 80200B04 001FDA44  4B FF FC FD */	bl __ct__8TCoord2DFv
/* 80200B08 001FDA48  7F C3 F3 78 */	mr r3, r30
/* 80200B0C 001FDA4C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80200B10 001FDA50  7F E4 FB 78 */	mr r4, r31
/* 80200B14 001FDA54  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80200B18 001FDA58  7D 88 03 A6 */	mtlr r12
/* 80200B1C 001FDA5C  4E 80 00 21 */	blrl 
/* 80200B20 001FDA60  90 7D 00 00 */	stw r3, 0(r29)
/* 80200B24 001FDA64  38 80 00 FF */	li r4, 0xff
/* 80200B28 001FDA68  38 00 00 00 */	li r0, 0
/* 80200B2C 001FDA6C  80 FD 00 00 */	lwz r7, 0(r29)
/* 80200B30 001FDA70  7F A3 EB 78 */	mr r3, r29
/* 80200B34 001FDA74  80 C7 00 14 */	lwz r6, 0x14(r7)
/* 80200B38 001FDA78  80 A7 00 18 */	lwz r5, 0x18(r7)
/* 80200B3C 001FDA7C  90 DD 00 04 */	stw r6, 4(r29)
/* 80200B40 001FDA80  90 BD 00 08 */	stw r5, 8(r29)
/* 80200B44 001FDA84  80 C7 00 1C */	lwz r6, 0x1c(r7)
/* 80200B48 001FDA88  80 A7 00 20 */	lwz r5, 0x20(r7)
/* 80200B4C 001FDA8C  90 DD 00 0C */	stw r6, 0xc(r29)
/* 80200B50 001FDA90  90 BD 00 10 */	stw r5, 0x10(r29)
/* 80200B54 001FDA94  C0 02 D3 E8 */	lfs f0, "@1624"@sda21(r2)
/* 80200B58 001FDA98  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 80200B5C 001FDA9C  C0 02 D3 D0 */	lfs f0, "@1610"@sda21(r2)
/* 80200B60 001FDAA0  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80200B64 001FDAA4  B0 9D 00 4C */	sth r4, 0x4c(r29)
/* 80200B68 001FDAA8  98 1D 00 4E */	stb r0, 0x4e(r29)
/* 80200B6C 001FDAAC  98 1D 00 4F */	stb r0, 0x4f(r29)
/* 80200B70 001FDAB0  98 1D 00 50 */	stb r0, 0x50(r29)
/* 80200B74 001FDAB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80200B78 001FDAB8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80200B7C 001FDABC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80200B80 001FDAC0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80200B84 001FDAC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80200B88 001FDAC8  7C 08 03 A6 */	mtlr r0
/* 80200B8C 001FDACC  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@1610":
  .4byte 0
"@1611":
	.incbin "baserom.dol", 0x3E90D4, 0x4
"@1612":
	.incbin "baserom.dol", 0x3E90D8, 0x8
"@1614":
	.incbin "baserom.dol", 0x3E90E0, 0x8
"@1624":
	.incbin "baserom.dol", 0x3E90E8, 0x8
