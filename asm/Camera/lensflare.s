.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __dt__10TLensFlareFv
__dt__10TLensFlareFv:
/* 8035CC00 00359B40  7C 08 02 A6 */	mflr r0
/* 8035CC04 00359B44  90 01 00 04 */	stw r0, 4(r1)
/* 8035CC08 00359B48  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035CC0C 00359B4C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035CC10 00359B50  3B E4 00 00 */	addi r31, r4, 0
/* 8035CC14 00359B54  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035CC18 00359B58  7C 7E 1B 79 */	or. r30, r3, r3
/* 8035CC1C 00359B5C  41 82 00 3C */	beq lbl_8035CC58
/* 8035CC20 00359B60  3C 60 80 3E */	lis r3, __vt__10TLensFlare@ha
/* 8035CC24 00359B64  38 03 4B 10 */	addi r0, r3, __vt__10TLensFlare@l
/* 8035CC28 00359B68  90 1E 00 00 */	stw r0, 0(r30)
/* 8035CC2C 00359B6C  41 82 00 1C */	beq lbl_8035CC48
/* 8035CC30 00359B70  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 8035CC34 00359B74  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 8035CC38 00359B78  90 1E 00 00 */	stw r0, 0(r30)
/* 8035CC3C 00359B7C  38 7E 00 00 */	addi r3, r30, 0
/* 8035CC40 00359B80  38 80 00 00 */	li r4, 0
/* 8035CC44 00359B84  4B CE 7B B9 */	bl __dt__Q26JDrama8TNameRefFv
lbl_8035CC48:
/* 8035CC48 00359B88  7F E0 07 35 */	extsh. r0, r31
/* 8035CC4C 00359B8C  40 81 00 0C */	ble lbl_8035CC58
/* 8035CC50 00359B90  7F C3 F3 78 */	mr r3, r30
/* 8035CC54 00359B94  4B CA FE 5D */	bl __dl__FPv
lbl_8035CC58:
/* 8035CC58 00359B98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035CC5C 00359B9C  7F C3 F3 78 */	mr r3, r30
/* 8035CC60 00359BA0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035CC64 00359BA4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035CC68 00359BA8  7C 08 03 A6 */	mtlr r0
/* 8035CC6C 00359BAC  38 21 00 18 */	addi r1, r1, 0x18
/* 8035CC70 00359BB0  4E 80 00 20 */	blr 

.global perform__10TLensFlareFUlPQ26JDrama9TGraphics
perform__10TLensFlareFUlPQ26JDrama9TGraphics:
/* 8035CC74 00359BB4  7C 08 02 A6 */	mflr r0
/* 8035CC78 00359BB8  90 01 00 04 */	stw r0, 4(r1)
/* 8035CC7C 00359BBC  94 21 FD 48 */	stwu r1, -0x2b8(r1)
/* 8035CC80 00359BC0  DB E1 02 B0 */	stfd f31, 0x2b0(r1)
/* 8035CC84 00359BC4  DB C1 02 A8 */	stfd f30, 0x2a8(r1)
/* 8035CC88 00359BC8  DB A1 02 A0 */	stfd f29, 0x2a0(r1)
/* 8035CC8C 00359BCC  BF 61 02 8C */	stmw r27, 0x28c(r1)
/* 8035CC90 00359BD0  3B A3 00 00 */	addi r29, r3, 0
/* 8035CC94 00359BD4  3B C4 00 00 */	addi r30, r4, 0
/* 8035CC98 00359BD8  80 AD A8 C8 */	lwz r5, gpSunMgr-_SDA_BASE_(r13)
/* 8035CC9C 00359BDC  88 05 00 15 */	lbz r0, 0x15(r5)
/* 8035CCA0 00359BE0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8035CCA4 00359BE4  40 82 05 98 */	bne lbl_8035D23C
/* 8035CCA8 00359BE8  80 6D A8 B8 */	lwz r3, gpCameraMario-_SDA_BASE_(r13)
/* 8035CCAC 00359BEC  4B FF BE 25 */	bl isMarioIndoor__16TCameraMarioDataCFv
/* 8035CCB0 00359BF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035CCB4 00359BF4  41 82 00 0C */	beq lbl_8035CCC0
/* 8035CCB8 00359BF8  3B E0 00 00 */	li r31, 0
/* 8035CCBC 00359BFC  48 00 00 90 */	b lbl_8035CD4C
lbl_8035CCC0:
/* 8035CCC0 00359C00  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 8035CCC4 00359C04  38 80 00 00 */	li r4, 0
/* 8035CCC8 00359C08  80 6D A8 D0 */	lwz r3, gpSunModel-_SDA_BASE_(r13)
/* 8035CCCC 00359C0C  7C 85 23 78 */	mr r5, r4
/* 8035CCD0 00359C10  FC 00 10 50 */	fneg f0, f2
/* 8035CCD4 00359C14  C4 23 00 F8 */	lfsu f1, 0xf8(r3)
/* 8035CCD8 00359C18  7C 80 23 78 */	mr r0, r4
/* 8035CCDC 00359C1C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8035CCE0 00359C20  4C 40 13 82 */	cror 2, 0, 2
/* 8035CCE4 00359C24  40 82 00 14 */	bne lbl_8035CCF8
/* 8035CCE8 00359C28  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8035CCEC 00359C2C  4C 40 13 82 */	cror 2, 0, 2
/* 8035CCF0 00359C30  40 82 00 08 */	bne lbl_8035CCF8
/* 8035CCF4 00359C34  38 00 00 01 */	li r0, 1
lbl_8035CCF8:
/* 8035CCF8 00359C38  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8035CCFC 00359C3C  41 82 00 1C */	beq lbl_8035CD18
/* 8035CD00 00359C40  FC 20 10 50 */	fneg f1, f2
/* 8035CD04 00359C44  C0 03 00 04 */	lfs f0, 4(r3)
/* 8035CD08 00359C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8035CD0C 00359C4C  4C 40 13 82 */	cror 2, 0, 2
/* 8035CD10 00359C50  40 82 00 08 */	bne lbl_8035CD18
/* 8035CD14 00359C54  38 A0 00 01 */	li r5, 1
lbl_8035CD18:
/* 8035CD18 00359C58  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8035CD1C 00359C5C  41 82 00 18 */	beq lbl_8035CD34
/* 8035CD20 00359C60  C0 03 00 04 */	lfs f0, 4(r3)
/* 8035CD24 00359C64  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8035CD28 00359C68  4C 40 13 82 */	cror 2, 0, 2
/* 8035CD2C 00359C6C  40 82 00 08 */	bne lbl_8035CD34
/* 8035CD30 00359C70  38 80 00 01 */	li r4, 1
lbl_8035CD34:
/* 8035CD34 00359C74  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8035CD38 00359C78  41 82 00 0C */	beq lbl_8035CD44
/* 8035CD3C 00359C7C  38 00 00 01 */	li r0, 1
/* 8035CD40 00359C80  48 00 00 08 */	b lbl_8035CD48
lbl_8035CD44:
/* 8035CD44 00359C84  38 00 00 00 */	li r0, 0
lbl_8035CD48:
/* 8035CD48 00359C88  7C 1F 03 78 */	mr r31, r0
lbl_8035CD4C:
/* 8035CD4C 00359C8C  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 8035CD50 00359C90  41 82 01 90 */	beq lbl_8035CEE0
/* 8035CD54 00359C94  C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 8035CD58 00359C98  38 80 00 00 */	li r4, 0
/* 8035CD5C 00359C9C  80 CD A8 D0 */	lwz r6, gpSunModel-_SDA_BASE_(r13)
/* 8035CD60 00359CA0  7C 85 23 78 */	mr r5, r4
/* 8035CD64 00359CA4  FC 00 10 50 */	fneg f0, f2
/* 8035CD68 00359CA8  38 66 00 F8 */	addi r3, r6, 0xf8
/* 8035CD6C 00359CAC  C0 26 00 F8 */	lfs f1, 0xf8(r6)
/* 8035CD70 00359CB0  7C 80 23 78 */	mr r0, r4
/* 8035CD74 00359CB4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8035CD78 00359CB8  4C 40 13 82 */	cror 2, 0, 2
/* 8035CD7C 00359CBC  40 82 00 14 */	bne lbl_8035CD90
/* 8035CD80 00359CC0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8035CD84 00359CC4  4C 40 13 82 */	cror 2, 0, 2
/* 8035CD88 00359CC8  40 82 00 08 */	bne lbl_8035CD90
/* 8035CD8C 00359CCC  38 00 00 01 */	li r0, 1
lbl_8035CD90:
/* 8035CD90 00359CD0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8035CD94 00359CD4  41 82 00 1C */	beq lbl_8035CDB0
/* 8035CD98 00359CD8  FC 20 10 50 */	fneg f1, f2
/* 8035CD9C 00359CDC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8035CDA0 00359CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8035CDA4 00359CE4  4C 40 13 82 */	cror 2, 0, 2
/* 8035CDA8 00359CE8  40 82 00 08 */	bne lbl_8035CDB0
/* 8035CDAC 00359CEC  38 A0 00 01 */	li r5, 1
lbl_8035CDB0:
/* 8035CDB0 00359CF0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8035CDB4 00359CF4  41 82 00 18 */	beq lbl_8035CDCC
/* 8035CDB8 00359CF8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8035CDBC 00359CFC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8035CDC0 00359D00  4C 40 13 82 */	cror 2, 0, 2
/* 8035CDC4 00359D04  40 82 00 08 */	bne lbl_8035CDCC
/* 8035CDC8 00359D08  38 80 00 01 */	li r4, 1
lbl_8035CDCC:
/* 8035CDCC 00359D0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8035CDD0 00359D10  41 82 00 0C */	beq lbl_8035CDDC
/* 8035CDD4 00359D14  38 00 00 01 */	li r0, 1
/* 8035CDD8 00359D18  48 00 00 08 */	b lbl_8035CDE0
lbl_8035CDDC:
/* 8035CDDC 00359D1C  38 00 00 00 */	li r0, 0
lbl_8035CDE0:
/* 8035CDE0 00359D20  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8035CDE4 00359D24  40 82 00 10 */	bne lbl_8035CDF4
/* 8035CDE8 00359D28  C0 02 06 C0 */	lfs f0, $$21949-_SDA2_BASE_(r2)
/* 8035CDEC 00359D2C  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8035CDF0 00359D30  48 00 00 90 */	b lbl_8035CE80
lbl_8035CDF4:
/* 8035CDF4 00359D34  38 00 00 11 */	li r0, 0x11
/* 8035CDF8 00359D38  7C 09 03 A6 */	mtctr r0
/* 8035CDFC 00359D3C  38 86 00 B4 */	addi r4, r6, 0xb4
/* 8035CE00 00359D40  38 66 01 80 */	addi r3, r6, 0x180
/* 8035CE04 00359D44  38 A0 00 00 */	li r5, 0
lbl_8035CE08:
/* 8035CE08 00359D48  A8 04 00 00 */	lha r0, 0(r4)
/* 8035CE0C 00359D4C  2C 00 FF FF */	cmpwi r0, -1
/* 8035CE10 00359D50  41 82 00 20 */	beq lbl_8035CE30
/* 8035CE14 00359D54  A8 04 00 02 */	lha r0, 2(r4)
/* 8035CE18 00359D58  2C 00 FF FF */	cmpwi r0, -1
/* 8035CE1C 00359D5C  41 82 00 14 */	beq lbl_8035CE30
/* 8035CE20 00359D60  88 03 00 00 */	lbz r0, 0(r3)
/* 8035CE24 00359D64  28 00 00 00 */	cmplwi r0, 0
/* 8035CE28 00359D68  40 82 00 08 */	bne lbl_8035CE30
/* 8035CE2C 00359D6C  38 A5 00 01 */	addi r5, r5, 1
lbl_8035CE30:
/* 8035CE30 00359D70  38 84 00 04 */	addi r4, r4, 4
/* 8035CE34 00359D74  38 63 00 01 */	addi r3, r3, 1
/* 8035CE38 00359D78  42 00 FF D0 */	bdnz lbl_8035CE08
/* 8035CE3C 00359D7C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8035CE40 00359D80  C8 22 06 E0 */	lfd f1, $$21958-_SDA2_BASE_(r2)
/* 8035CE44 00359D84  90 01 02 84 */	stw r0, 0x284(r1)
/* 8035CE48 00359D88  3C 00 43 30 */	lis r0, 0x4330
/* 8035CE4C 00359D8C  C0 82 06 C8 */	lfs f4, $$21951-_SDA2_BASE_(r2)
/* 8035CE50 00359D90  90 01 02 80 */	stw r0, 0x280(r1)
/* 8035CE54 00359D94  C0 A2 06 C4 */	lfs f5, $$21950-_SDA2_BASE_(r2)
/* 8035CE58 00359D98  C8 01 02 80 */	lfd f0, 0x280(r1)
/* 8035CE5C 00359D9C  C0 66 01 94 */	lfs f3, 0x194(r6)
/* 8035CE60 00359DA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8035CE64 00359DA4  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8035CE68 00359DA8  C0 42 06 CC */	lfs f2, $$21952-_SDA2_BASE_(r2)
/* 8035CE6C 00359DAC  EC 04 00 32 */	fmuls f0, f4, f0
/* 8035CE70 00359DB0  EC 05 00 28 */	fsubs f0, f5, f0
/* 8035CE74 00359DB4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8035CE78 00359DB8  48 00 05 2D */	bl CLBEaseOutInbetween$$0f$$1__Ffff
/* 8035CE7C 00359DBC  D0 3D 00 28 */	stfs f1, 0x28(r29)
lbl_8035CE80:
/* 8035CE80 00359DC0  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8035CE84 00359DC4  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8035CE88 00359DC8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8035CE8C 00359DCC  40 80 00 28 */	bge lbl_8035CEB4
/* 8035CE90 00359DD0  80 6D A8 D0 */	lwz r3, gpSunModel-_SDA_BASE_(r13)
/* 8035CE94 00359DD4  C0 42 06 C0 */	lfs f2, $$21949-_SDA2_BASE_(r2)
/* 8035CE98 00359DD8  C0 03 01 94 */	lfs f0, 0x194(r3)
/* 8035CE9C 00359DDC  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8035CEA0 00359DE0  40 82 00 0C */	bne lbl_8035CEAC
/* 8035CEA4 00359DE4  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 8035CEA8 00359DE8  48 00 00 2C */	b lbl_8035CED4
lbl_8035CEAC:
/* 8035CEAC 00359DEC  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 8035CEB0 00359DF0  48 00 00 24 */	b lbl_8035CED4
lbl_8035CEB4:
/* 8035CEB4 00359DF4  80 6D A8 D0 */	lwz r3, gpSunModel-_SDA_BASE_(r13)
/* 8035CEB8 00359DF8  C0 42 06 C0 */	lfs f2, $$21949-_SDA2_BASE_(r2)
/* 8035CEBC 00359DFC  C0 03 01 94 */	lfs f0, 0x194(r3)
/* 8035CEC0 00359E00  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8035CEC4 00359E04  40 82 00 0C */	bne lbl_8035CED0
/* 8035CEC8 00359E08  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8035CECC 00359E0C  48 00 00 08 */	b lbl_8035CED4
lbl_8035CED0:
/* 8035CED0 00359E10  C0 5D 00 34 */	lfs f2, 0x34(r29)
lbl_8035CED4:
/* 8035CED4 00359E14  C0 62 06 C0 */	lfs f3, $$21949-_SDA2_BASE_(r2)
/* 8035CED8 00359E18  38 7D 00 24 */	addi r3, r29, 0x24
/* 8035CEDC 00359E1C  4B FF B8 91 */	bl CLBChaseDecrease__FPffff
lbl_8035CEE0:
/* 8035CEE0 00359E20  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8035CEE4 00359E24  41 82 03 58 */	beq lbl_8035D23C
/* 8035CEE8 00359E28  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 8035CEEC 00359E2C  41 82 02 74 */	beq lbl_8035D160
/* 8035CEF0 00359E30  81 0D A8 D0 */	lwz r8, gpSunModel-_SDA_BASE_(r13)
/* 8035CEF4 00359E34  3C 60 80 0C */	lis r3, __ct__Q29JGeometry8TVec3$$0f$$1Fv@ha
/* 8035CEF8 00359E38  38 83 2C BC */	addi r4, r3, __ct__Q29JGeometry8TVec3$$0f$$1Fv@l
/* 8035CEFC 00359E3C  80 C8 01 98 */	lwz r6, 0x198(r8)
/* 8035CF00 00359E40  38 61 01 78 */	addi r3, r1, 0x178
/* 8035CF04 00359E44  80 08 01 9C */	lwz r0, 0x19c(r8)
/* 8035CF08 00359E48  38 A0 00 00 */	li r5, 0
/* 8035CF0C 00359E4C  38 E0 00 09 */	li r7, 9
/* 8035CF10 00359E50  90 C1 01 6C */	stw r6, 0x16c(r1)
/* 8035CF14 00359E54  38 C0 00 0C */	li r6, 0xc
/* 8035CF18 00359E58  90 01 01 70 */	stw r0, 0x170(r1)
/* 8035CF1C 00359E5C  80 08 01 A0 */	lwz r0, 0x1a0(r8)
/* 8035CF20 00359E60  90 01 01 74 */	stw r0, 0x174(r1)
/* 8035CF24 00359E64  4B D2 59 11 */	bl __construct_array
/* 8035CF28 00359E68  80 6D A8 B0 */	lwz r3, gpCamera-_SDA_BASE_(r13)
/* 8035CF2C 00359E6C  C3 A3 00 28 */	lfs f29, 0x28(r3)
/* 8035CF30 00359E70  C3 C3 00 4C */	lfs f30, 0x4c(r3)
/* 8035CF34 00359E74  C3 E3 00 48 */	lfs f31, 0x48(r3)
/* 8035CF38 00359E78  4B FF 60 0D */	bl getFinalAngleZ__15CPolarSubCameraCFv
/* 8035CF3C 00359E7C  80 8D A8 B0 */	lwz r4, gpCamera-_SDA_BASE_(r13)
/* 8035CF40 00359E80  3B 83 00 00 */	addi r28, r3, 0
/* 8035CF44 00359E84  38 61 02 3C */	addi r3, r1, 0x23c
/* 8035CF48 00359E88  38 84 01 48 */	addi r4, r4, 0x148
/* 8035CF4C 00359E8C  4B D8 05 C1 */	bl set__Q29JGeometry8TVec3$$0f$$1FRC3Vec
/* 8035CF50 00359E90  80 8D A8 B0 */	lwz r4, gpCamera-_SDA_BASE_(r13)
/* 8035CF54 00359E94  38 61 02 30 */	addi r3, r1, 0x230
/* 8035CF58 00359E98  38 84 01 24 */	addi r4, r4, 0x124
/* 8035CF5C 00359E9C  4B D8 05 B1 */	bl set__Q29JGeometry8TVec3$$0f$$1FRC3Vec
/* 8035CF60 00359EA0  C0 02 06 D4 */	lfs f0, $$21954-_SDA2_BASE_(r2)
/* 8035CF64 00359EA4  C0 22 06 D0 */	lfs f1, $$21953-_SDA2_BASE_(r2)
/* 8035CF68 00359EA8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8035CF6C 00359EAC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8035CF70 00359EB0  4B E0 FC DD */	bl CLBRoundf$$0s$$1__Ff
/* 8035CF74 00359EB4  7C 7F 1B 78 */	mr r31, r3
/* 8035CF78 00359EB8  4B ED BB 15 */	bl JMASCos__Fs
/* 8035CF7C 00359EBC  C0 02 06 C4 */	lfs f0, $$21950-_SDA2_BASE_(r2)
/* 8035CF80 00359EC0  7F E3 FB 78 */	mr r3, r31
/* 8035CF84 00359EC4  EF E0 08 24 */	fdivs f31, f0, f1
/* 8035CF88 00359EC8  4B ED BA E9 */	bl JMASSin__Fs
/* 8035CF8C 00359ECC  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8035CF90 00359ED0  C0 42 06 D8 */	lfs f2, $$21955-_SDA2_BASE_(r2)
/* 8035CF94 00359ED4  FC 20 E8 90 */	fmr f1, f29
/* 8035CF98 00359ED8  7F 87 E3 78 */	mr r7, r28
/* 8035CF9C 00359EDC  38 61 01 78 */	addi r3, r1, 0x178
/* 8035CFA0 00359EE0  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8035CFA4 00359EE4  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 8035CFA8 00359EE8  38 A1 02 30 */	addi r5, r1, 0x230
/* 8035CFAC 00359EEC  38 C1 02 3C */	addi r6, r1, 0x23c
/* 8035CFB0 00359EF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8035CFB4 00359EF4  39 01 01 0C */	addi r8, r1, 0x10c
/* 8035CFB8 00359EF8  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 8035CFBC 00359EFC  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 8035CFC0 00359F00  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8035CFC4 00359F04  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 8035CFC8 00359F08  4B FF A1 55 */	bl CLBCalcNearNinePos__FPQ29JGeometry8TVec3$$0f$$1P6S16VecRCQ29JGeometry8TVec3$$0f$$1RCQ29JGeometry8TVec3$$0f$$1sfRCQ29JGeometry8TVec2$$0f$$1
/* 8035CFCC 00359F0C  80 AD A8 D0 */	lwz r5, gpSunModel-_SDA_BASE_(r13)
/* 8035CFD0 00359F10  38 61 02 48 */	addi r3, r1, 0x248
/* 8035CFD4 00359F14  C4 25 00 F8 */	lfsu f1, 0xf8(r5)
/* 8035CFD8 00359F18  38 81 01 6C */	addi r4, r1, 0x16c
/* 8035CFDC 00359F1C  C1 21 01 AC */	lfs f9, 0x1ac(r1)
/* 8035CFE0 00359F20  C0 05 00 04 */	lfs f0, 4(r5)
/* 8035CFE4 00359F24  FC 40 08 50 */	fneg f2, f1
/* 8035CFE8 00359F28  C0 FD 00 3C */	lfs f7, 0x3c(r29)
/* 8035CFEC 00359F2C  FC 60 00 50 */	fneg f3, f0
/* 8035CFF0 00359F30  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 8035CFF4 00359F34  C0 21 01 B4 */	lfs f1, 0x1b4(r1)
/* 8035CFF8 00359F38  C1 01 01 A8 */	lfs f8, 0x1a8(r1)
/* 8035CFFC 00359F3C  EC C0 48 28 */	fsubs f6, f0, f9
/* 8035D000 00359F40  EC 87 00 B2 */	fmuls f4, f7, f2
/* 8035D004 00359F44  C0 41 01 84 */	lfs f2, 0x184(r1)
/* 8035D008 00359F48  EC A1 40 28 */	fsubs f5, f1, f8
/* 8035D00C 00359F4C  C0 21 01 88 */	lfs f1, 0x188(r1)
/* 8035D010 00359F50  C0 01 01 BC */	lfs f0, 0x1bc(r1)
/* 8035D014 00359F54  EC A5 01 32 */	fmuls f5, f5, f4
/* 8035D018 00359F58  C1 41 01 B0 */	lfs f10, 0x1b0(r1)
/* 8035D01C 00359F5C  EC 67 00 F2 */	fmuls f3, f7, f3
/* 8035D020 00359F60  EC E0 50 28 */	fsubs f7, f0, f10
/* 8035D024 00359F64  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 8035D028 00359F68  EC C6 01 32 */	fmuls f6, f6, f4
/* 8035D02C 00359F6C  EC 42 40 28 */	fsubs f2, f2, f8
/* 8035D030 00359F70  EC 21 48 28 */	fsubs f1, f1, f9
/* 8035D034 00359F74  EC E7 01 32 */	fmuls f7, f7, f4
/* 8035D038 00359F78  EC 00 50 28 */	fsubs f0, f0, f10
/* 8035D03C 00359F7C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8035D040 00359F80  EF A8 28 2A */	fadds f29, f8, f5
/* 8035D044 00359F84  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8035D048 00359F88  EF C9 30 2A */	fadds f30, f9, f6
/* 8035D04C 00359F8C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8035D050 00359F90  EF EA 38 2A */	fadds f31, f10, f7
/* 8035D054 00359F94  EF BD 10 2A */	fadds f29, f29, f2
/* 8035D058 00359F98  EF DE 08 2A */	fadds f30, f30, f1
/* 8035D05C 00359F9C  EF FF 00 2A */	fadds f31, f31, f0
/* 8035D060 00359FA0  4B D8 04 AD */	bl set__Q29JGeometry8TVec3$$0f$$1FRC3Vec
/* 8035D064 00359FA4  C0 01 02 48 */	lfs f0, 0x248(r1)
/* 8035D068 00359FA8  38 61 02 54 */	addi r3, r1, 0x254
/* 8035D06C 00359FAC  C0 21 02 4C */	lfs f1, 0x24c(r1)
/* 8035D070 00359FB0  38 81 02 10 */	addi r4, r1, 0x210
/* 8035D074 00359FB4  EC 5D 00 28 */	fsubs f2, f29, f0
/* 8035D078 00359FB8  C0 01 02 50 */	lfs f0, 0x250(r1)
/* 8035D07C 00359FBC  EC 3E 08 28 */	fsubs f1, f30, f1
/* 8035D080 00359FC0  D0 41 02 10 */	stfs f2, 0x210(r1)
/* 8035D084 00359FC4  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8035D088 00359FC8  D0 21 02 14 */	stfs f1, 0x214(r1)
/* 8035D08C 00359FCC  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 8035D090 00359FD0  4B D6 8F 01 */	bl MsGetRotFromZaxis__FRCQ29JGeometry8TVec3$$0f$$1
/* 8035D094 00359FD4  80 01 02 54 */	lwz r0, 0x254(r1)
/* 8035D098 00359FD8  80 61 02 58 */	lwz r3, 0x258(r1)
/* 8035D09C 00359FDC  90 01 02 1C */	stw r0, 0x21c(r1)
/* 8035D0A0 00359FE0  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 8035D0A4 00359FE4  90 61 02 20 */	stw r3, 0x220(r1)
/* 8035D0A8 00359FE8  C0 02 06 D0 */	lfs f0, $$21953-_SDA2_BASE_(r2)
/* 8035D0AC 00359FEC  90 01 02 24 */	stw r0, 0x224(r1)
/* 8035D0B0 00359FF0  C0 21 02 1C */	lfs f1, 0x21c(r1)
/* 8035D0B4 00359FF4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8035D0B8 00359FF8  4B E0 FB 95 */	bl CLBRoundf$$0s$$1__Ff
/* 8035D0BC 00359FFC  C0 21 02 20 */	lfs f1, 0x220(r1)
/* 8035D0C0 0035A000  7C 7F 1B 78 */	mr r31, r3
/* 8035D0C4 0035A004  C0 02 06 D0 */	lfs f0, $$21953-_SDA2_BASE_(r2)
/* 8035D0C8 0035A008  EC 20 00 72 */	fmuls f1, f0, f1
/* 8035D0CC 0035A00C  4B E0 FB 81 */	bl CLBRoundf$$0s$$1__Ff
/* 8035D0D0 0035A010  7C 63 07 34 */	extsh r3, r3
/* 8035D0D4 0035A014  C0 C2 06 C0 */	lfs f6, $$21949-_SDA2_BASE_(r2)
/* 8035D0D8 0035A018  7F E0 07 34 */	extsh r0, r31
/* 8035D0DC 0035A01C  C8 62 06 E0 */	lfd f3, $$21958-_SDA2_BASE_(r2)
/* 8035D0E0 0035A020  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8035D0E4 0035A024  C0 82 06 DC */	lfs f4, $$21956-_SDA2_BASE_(r2)
/* 8035D0E8 0035A028  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8035D0EC 0035A02C  90 61 02 84 */	stw r3, 0x284(r1)
/* 8035D0F0 0035A030  3C 80 43 30 */	lis r4, 0x4330
/* 8035D0F4 0035A034  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8035D0F8 0035A038  90 01 02 7C */	stw r0, 0x27c(r1)
/* 8035D0FC 0035A03C  38 61 01 3C */	addi r3, r1, 0x13c
/* 8035D100 0035A040  90 81 02 80 */	stw r4, 0x280(r1)
/* 8035D104 0035A044  D0 01 00 08 */	stfs f0, 8(r1)
/* 8035D108 0035A048  C8 41 02 80 */	lfd f2, 0x280(r1)
/* 8035D10C 0035A04C  90 81 02 78 */	stw r4, 0x278(r1)
/* 8035D110 0035A050  EC 42 18 28 */	fsubs f2, f2, f3
/* 8035D114 0035A054  C0 FD 00 18 */	lfs f7, 0x18(r29)
/* 8035D118 0035A058  C8 21 02 78 */	lfd f1, 0x278(r1)
/* 8035D11C 0035A05C  C1 1D 00 1C */	lfs f8, 0x1c(r29)
/* 8035D120 0035A060  EC 01 18 28 */	fsubs f0, f1, f3
/* 8035D124 0035A064  EC A4 00 B2 */	fmuls f5, f4, f2
/* 8035D128 0035A068  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 8035D12C 0035A06C  C0 41 01 70 */	lfs f2, 0x170(r1)
/* 8035D130 0035A070  EC 84 00 32 */	fmuls f4, f4, f0
/* 8035D134 0035A074  C0 61 01 74 */	lfs f3, 0x174(r1)
/* 8035D138 0035A078  4B D6 8B 6D */	bl MsMtxSetTRS__FPA4_ffffffffff
/* 8035D13C 0035A07C  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8035D140 0035A080  38 61 01 3C */	addi r3, r1, 0x13c
/* 8035D144 0035A084  38 84 00 20 */	addi r4, r4, 0x20
/* 8035D148 0035A088  4B D3 71 95 */	bl PSMTXCopy
/* 8035D14C 0035A08C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035D150 0035A090  81 83 00 00 */	lwz r12, 0(r3)
/* 8035D154 0035A094  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8035D158 0035A098  7D 88 03 A6 */	mtlr r12
/* 8035D15C 0035A09C  4E 80 00 21 */	blrl 
lbl_8035D160:
/* 8035D160 0035A0A0  57 C0 05 AD */	rlwinm. r0, r30, 0, 0x16, 0x16
/* 8035D164 0035A0A4  41 82 00 BC */	beq lbl_8035D220
/* 8035D168 0035A0A8  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8035D16C 0035A0AC  3B 80 00 00 */	li r28, 0
/* 8035D170 0035A0B0  A3 E3 00 24 */	lhz r31, 0x24(r3)
/* 8035D174 0035A0B4  48 00 00 8C */	b lbl_8035D200
lbl_8035D178:
/* 8035D178 0035A0B8  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8035D17C 0035A0BC  57 9B 13 BA */	rlwinm r27, r28, 2, 0xe, 0x1d
/* 8035D180 0035A0C0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8035D184 0035A0C4  7C 63 D8 2E */	lwzx r3, r3, r27
/* 8035D188 0035A0C8  4B CC 80 D9 */	bl change__11J3DMaterialFv
/* 8035D18C 0035A0CC  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8035D190 0035A0D0  38 80 00 00 */	li r4, 0
/* 8035D194 0035A0D4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8035D198 0035A0D8  7C 63 D8 2E */	lwzx r3, r3, r27
/* 8035D19C 0035A0DC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8035D1A0 0035A0E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8035D1A4 0035A0E4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8035D1A8 0035A0E8  7D 88 03 A6 */	mtlr r12
/* 8035D1AC 0035A0EC  4E 80 00 21 */	blrl 
/* 8035D1B0 0035A0F0  80 C3 00 00 */	lwz r6, 0(r3)
/* 8035D1B4 0035A0F4  38 A1 01 34 */	addi r5, r1, 0x134
/* 8035D1B8 0035A0F8  80 03 00 04 */	lwz r0, 4(r3)
/* 8035D1BC 0035A0FC  38 80 00 00 */	li r4, 0
/* 8035D1C0 0035A100  90 C1 01 34 */	stw r6, 0x134(r1)
/* 8035D1C4 0035A104  90 01 01 38 */	stw r0, 0x138(r1)
/* 8035D1C8 0035A108  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8035D1CC 0035A10C  FC 00 00 1E */	fctiwz f0, f0
/* 8035D1D0 0035A110  D8 01 02 78 */	stfd f0, 0x278(r1)
/* 8035D1D4 0035A114  80 01 02 7C */	lwz r0, 0x27c(r1)
/* 8035D1D8 0035A118  B0 01 01 3A */	sth r0, 0x13a(r1)
/* 8035D1DC 0035A11C  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8035D1E0 0035A120  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8035D1E4 0035A124  7C 63 D8 2E */	lwzx r3, r3, r27
/* 8035D1E8 0035A128  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8035D1EC 0035A12C  81 83 00 00 */	lwz r12, 0(r3)
/* 8035D1F0 0035A130  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8035D1F4 0035A134  7D 88 03 A6 */	mtlr r12
/* 8035D1F8 0035A138  4E 80 00 21 */	blrl 
/* 8035D1FC 0035A13C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8035D200:
/* 8035D200 0035A140  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8035D204 0035A144  7C 00 F8 00 */	cmpw r0, r31
/* 8035D208 0035A148  41 80 FF 70 */	blt lbl_8035D178
/* 8035D20C 0035A14C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035D210 0035A150  81 83 00 00 */	lwz r12, 0(r3)
/* 8035D214 0035A154  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8035D218 0035A158  7D 88 03 A6 */	mtlr r12
/* 8035D21C 0035A15C  4E 80 00 21 */	blrl 
lbl_8035D220:
/* 8035D220 0035A160  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 8035D224 0035A164  41 82 00 18 */	beq lbl_8035D23C
/* 8035D228 0035A168  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035D22C 0035A16C  81 83 00 00 */	lwz r12, 0(r3)
/* 8035D230 0035A170  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8035D234 0035A174  7D 88 03 A6 */	mtlr r12
/* 8035D238 0035A178  4E 80 00 21 */	blrl 
lbl_8035D23C:
/* 8035D23C 0035A17C  BB 61 02 8C */	lmw r27, 0x28c(r1)
/* 8035D240 0035A180  80 01 02 BC */	lwz r0, 0x2bc(r1)
/* 8035D244 0035A184  CB E1 02 B0 */	lfd f31, 0x2b0(r1)
/* 8035D248 0035A188  CB C1 02 A8 */	lfd f30, 0x2a8(r1)
/* 8035D24C 0035A18C  7C 08 03 A6 */	mtlr r0
/* 8035D250 0035A190  CB A1 02 A0 */	lfd f29, 0x2a0(r1)
/* 8035D254 0035A194  38 21 02 B8 */	addi r1, r1, 0x2b8
/* 8035D258 0035A198  4E 80 00 20 */	blr 

.global __ct__10TLensFlareFPCc
__ct__10TLensFlareFPCc:
/* 8035D25C 0035A19C  7C 08 02 A6 */	mflr r0
/* 8035D260 0035A1A0  90 01 00 04 */	stw r0, 4(r1)
/* 8035D264 0035A1A4  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8035D268 0035A1A8  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8035D26C 0035A1AC  93 C1 01 18 */	stw r30, 0x118(r1)
/* 8035D270 0035A1B0  90 61 00 08 */	stw r3, 8(r1)
/* 8035D274 0035A1B4  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TNameRef@ha
/* 8035D278 0035A1B8  38 03 A8 60 */	addi r0, r3, __vt__Q26JDrama8TNameRef@l
/* 8035D27C 0035A1BC  83 E1 00 08 */	lwz r31, 8(r1)
/* 8035D280 0035A1C0  38 64 00 00 */	addi r3, r4, 0
/* 8035D284 0035A1C4  90 1F 00 00 */	stw r0, 0(r31)
/* 8035D288 0035A1C8  90 9F 00 04 */	stw r4, 4(r31)
/* 8035D28C 0035A1CC  4B CE 74 01 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 8035D290 0035A1D0  3C 80 80 3B */	lis r4, __vt__Q26JDrama8TViewObj@ha
/* 8035D294 0035A1D4  B0 7F 00 08 */	sth r3, 8(r31)
/* 8035D298 0035A1D8  38 04 A0 C0 */	addi r0, r4, __vt__Q26JDrama8TViewObj@l
/* 8035D29C 0035A1DC  90 1F 00 00 */	stw r0, 0(r31)
/* 8035D2A0 0035A1E0  38 80 00 00 */	li r4, 0
/* 8035D2A4 0035A1E4  3C 60 80 3E */	lis r3, __vt__10TLensFlare@ha
/* 8035D2A8 0035A1E8  B0 9F 00 0C */	sth r4, 0xc(r31)
/* 8035D2AC 0035A1EC  38 03 4B 10 */	addi r0, r3, __vt__10TLensFlare@l
/* 8035D2B0 0035A1F0  90 1F 00 00 */	stw r0, 0(r31)
/* 8035D2B4 0035A1F4  90 9F 00 10 */	stw r4, 0x10(r31)
/* 8035D2B8 0035A1F8  90 9F 00 14 */	stw r4, 0x14(r31)
/* 8035D2BC 0035A1FC  C0 02 06 E8 */	lfs f0, $$21978-_SDA2_BASE_(r2)
/* 8035D2C0 0035A200  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8035D2C4 0035A204  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8035D2C8 0035A208  C0 02 06 EC */	lfs f0, $$21979-_SDA2_BASE_(r2)
/* 8035D2CC 0035A20C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8035D2D0 0035A210  C0 02 06 C0 */	lfs f0, $$21949-_SDA2_BASE_(r2)
/* 8035D2D4 0035A214  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8035D2D8 0035A218  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8035D2DC 0035A21C  C0 22 06 F0 */	lfs f1, $$21980-_SDA2_BASE_(r2)
/* 8035D2E0 0035A220  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8035D2E4 0035A224  C0 02 06 F4 */	lfs f0, $$21981-_SDA2_BASE_(r2)
/* 8035D2E8 0035A228  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8035D2EC 0035A22C  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8035D2F0 0035A230  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8035D2F4 0035A234  C0 02 06 F8 */	lfs f0, $$21982-_SDA2_BASE_(r2)
/* 8035D2F8 0035A238  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8035D2FC 0035A23C  C0 02 06 FC */	lfs f0, $$21983-_SDA2_BASE_(r2)
/* 8035D300 0035A240  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8035D304 0035A244  C0 02 07 00 */	lfs f0, $$21984-_SDA2_BASE_(r2)
/* 8035D308 0035A248  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8035D30C 0035A24C  C0 02 07 04 */	lfs f0, $$21985-_SDA2_BASE_(r2)
/* 8035D310 0035A250  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8035D314 0035A254  80 6D A8 C8 */	lwz r3, gpSunMgr-_SDA_BASE_(r13)
/* 8035D318 0035A258  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8035D31C 0035A25C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8035D320 0035A260  41 82 00 0C */	beq lbl_8035D32C
/* 8035D324 0035A264  7F E3 FB 78 */	mr r3, r31
/* 8035D328 0035A268  48 00 00 64 */	b lbl_8035D38C
lbl_8035D32C:
/* 8035D32C 0035A26C  3C 60 80 3A */	lis r3, $$21987@ha
/* 8035D330 0035A270  80 CD 84 68 */	lwz r6, cSunVolumeName-_SDA_BASE_(r13)
/* 8035D334 0035A274  38 E3 68 F0 */	addi r7, r3, $$21987@l
/* 8035D338 0035A278  4C C6 31 82 */	crclr 6
/* 8035D33C 0035A27C  38 61 00 18 */	addi r3, r1, 0x18
/* 8035D340 0035A280  38 80 01 00 */	li r4, 0x100
/* 8035D344 0035A284  38 A2 07 08 */	addi r5, r2, $$21986-_SDA2_BASE_
/* 8035D348 0035A288  4B D2 6D 7D */	bl snprintf
/* 8035D34C 0035A28C  38 61 00 18 */	addi r3, r1, 0x18
/* 8035D350 0035A290  4B CA E9 6D */	bl getGlbResource__13JKRFileLoaderFPCc
/* 8035D354 0035A294  3C 80 10 02 */	lis r4, 0x1002
/* 8035D358 0035A298  4B CD 37 0D */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 8035D35C 0035A29C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8035D360 0035A2A0  38 60 00 A0 */	li r3, 0xa0
/* 8035D364 0035A2A4  4B CA F5 4D */	bl __nw__FUl
/* 8035D368 0035A2A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8035D36C 0035A2AC  41 82 00 18 */	beq lbl_8035D384
/* 8035D370 0035A2B0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8035D374 0035A2B4  38 7E 00 00 */	addi r3, r30, 0
/* 8035D378 0035A2B8  38 A0 00 00 */	li r5, 0
/* 8035D37C 0035A2BC  38 C0 00 01 */	li r6, 1
/* 8035D380 0035A2C0  4B CC A5 D9 */	bl __ct__8J3DModelFP12J3DModelDataUlUl
lbl_8035D384:
/* 8035D384 0035A2C4  80 61 00 08 */	lwz r3, 8(r1)
/* 8035D388 0035A2C8  93 C3 00 14 */	stw r30, 0x14(r3)
lbl_8035D38C:
/* 8035D38C 0035A2CC  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8035D390 0035A2D0  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8035D394 0035A2D4  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 8035D398 0035A2D8  7C 08 03 A6 */	mtlr r0
/* 8035D39C 0035A2DC  38 21 01 20 */	addi r1, r1, 0x120
/* 8035D3A0 0035A2E0  4E 80 00 20 */	blr 

.global CLBEaseOutInbetween$$0f$$1__Ffff
CLBEaseOutInbetween$$0f$$1__Ffff:
/* 8035D3A4 0035A2E4  7C 08 02 A6 */	mflr r0
/* 8035D3A8 0035A2E8  EC 81 10 28 */	fsubs f4, f1, f2
/* 8035D3AC 0035A2EC  90 01 00 04 */	stw r0, 4(r1)
/* 8035D3B0 0035A2F0  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035D3B4 0035A2F4  4B FF 8B FD */	bl CLBTwoDegreeGeneralInbetween$$0f$$1__Fffff
/* 8035D3B8 0035A2F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035D3BC 0035A2FC  38 21 00 08 */	addi r1, r1, 8
/* 8035D3C0 0035A300  7C 08 03 A6 */	mtlr r0
/* 8035D3C4 0035A304  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21987:
	.incbin "baserom.dol", 0x3A38F0, 0x10

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__10TLensFlare
__vt__10TLensFlare:
	.incbin "baserom.dol", 0x3E1B10, 0x28

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21949:
	.incbin "baserom.dol", 0x3EC3C0, 0x4
$$21950:
	.incbin "baserom.dol", 0x3EC3C4, 0x4
$$21951:
	.incbin "baserom.dol", 0x3EC3C8, 0x4
$$21952:
	.incbin "baserom.dol", 0x3EC3CC, 0x4
$$21953:
	.incbin "baserom.dol", 0x3EC3D0, 0x4
$$21954:
	.incbin "baserom.dol", 0x3EC3D4, 0x4
$$21955:
	.incbin "baserom.dol", 0x3EC3D8, 0x4
$$21956:
	.incbin "baserom.dol", 0x3EC3DC, 0x4
$$21958:
	.incbin "baserom.dol", 0x3EC3E0, 0x8
$$21978:
	.incbin "baserom.dol", 0x3EC3E8, 0x4
$$21979:
	.incbin "baserom.dol", 0x3EC3EC, 0x4
$$21980:
	.incbin "baserom.dol", 0x3EC3F0, 0x4
$$21981:
	.incbin "baserom.dol", 0x3EC3F4, 0x4
$$21982:
	.incbin "baserom.dol", 0x3EC3F8, 0x4
$$21983:
	.incbin "baserom.dol", 0x3EC3FC, 0x4
$$21984:
	.incbin "baserom.dol", 0x3EC400, 0x4
$$21985:
	.incbin "baserom.dol", 0x3EC404, 0x4
$$21986:
	.incbin "baserom.dol", 0x3EC408, 0x8