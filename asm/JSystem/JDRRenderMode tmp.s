.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global IsEqualRenderModeVIParams__6JDramaFRC16_GXRenderModeObjRC16_GXRenderModeObj
IsEqualRenderModeVIParams__6JDramaFRC16_GXRenderModeObjRC16_GXRenderModeObj:
/* 80045A94 000429D4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80045A98 000429D8  38 C0 00 00 */	li r6, 0
/* 80045A9C 000429DC  38 E6 00 00 */	addi r7, r6, 0
/* 80045AA0 000429E0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80045AA4 000429E4  39 06 00 00 */	addi r8, r6, 0
/* 80045AA8 000429E8  39 26 00 00 */	addi r9, r6, 0
/* 80045AAC 000429EC  80 A3 00 00 */	lwz r5, 0(r3)
/* 80045AB0 000429F0  39 46 00 00 */	addi r10, r6, 0
/* 80045AB4 000429F4  80 04 00 00 */	lwz r0, 0(r4)
/* 80045AB8 000429F8  39 66 00 00 */	addi r11, r6, 0
/* 80045ABC 000429FC  39 86 00 00 */	addi r12, r6, 0
/* 80045AC0 00042A00  7C 05 00 00 */	cmpw r5, r0
/* 80045AC4 00042A04  3B E6 00 00 */	addi r31, r6, 0
/* 80045AC8 00042A08  40 82 00 18 */	bne lbl_80045AE0
/* 80045ACC 00042A0C  A0 A3 00 04 */	lhz r5, 4(r3)
/* 80045AD0 00042A10  A0 04 00 04 */	lhz r0, 4(r4)
/* 80045AD4 00042A14  7C 05 00 40 */	cmplw r5, r0
/* 80045AD8 00042A18  40 82 00 08 */	bne lbl_80045AE0
/* 80045ADC 00042A1C  3B E0 00 01 */	li r31, 1
lbl_80045AE0:
/* 80045AE0 00042A20  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80045AE4 00042A24  41 82 00 18 */	beq lbl_80045AFC
/* 80045AE8 00042A28  A0 A3 00 06 */	lhz r5, 6(r3)
/* 80045AEC 00042A2C  A0 04 00 06 */	lhz r0, 6(r4)
/* 80045AF0 00042A30  7C 05 00 40 */	cmplw r5, r0
/* 80045AF4 00042A34  40 82 00 08 */	bne lbl_80045AFC
/* 80045AF8 00042A38  39 80 00 01 */	li r12, 1
lbl_80045AFC:
/* 80045AFC 00042A3C  55 80 06 3F */	clrlwi. r0, r12, 0x18
/* 80045B00 00042A40  41 82 00 18 */	beq lbl_80045B18
/* 80045B04 00042A44  A0 A3 00 08 */	lhz r5, 8(r3)
/* 80045B08 00042A48  A0 04 00 08 */	lhz r0, 8(r4)
/* 80045B0C 00042A4C  7C 05 00 40 */	cmplw r5, r0
/* 80045B10 00042A50  40 82 00 08 */	bne lbl_80045B18
/* 80045B14 00042A54  39 60 00 01 */	li r11, 1
lbl_80045B18:
/* 80045B18 00042A58  55 60 06 3F */	clrlwi. r0, r11, 0x18
/* 80045B1C 00042A5C  41 82 00 18 */	beq lbl_80045B34
/* 80045B20 00042A60  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 80045B24 00042A64  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 80045B28 00042A68  7C 05 00 40 */	cmplw r5, r0
/* 80045B2C 00042A6C  40 82 00 08 */	bne lbl_80045B34
/* 80045B30 00042A70  39 40 00 01 */	li r10, 1
lbl_80045B34:
/* 80045B34 00042A74  55 40 06 3F */	clrlwi. r0, r10, 0x18
/* 80045B38 00042A78  41 82 00 18 */	beq lbl_80045B50
/* 80045B3C 00042A7C  A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 80045B40 00042A80  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 80045B44 00042A84  7C 05 00 40 */	cmplw r5, r0
/* 80045B48 00042A88  40 82 00 08 */	bne lbl_80045B50
/* 80045B4C 00042A8C  39 20 00 01 */	li r9, 1
lbl_80045B50:
/* 80045B50 00042A90  55 20 06 3F */	clrlwi. r0, r9, 0x18
/* 80045B54 00042A94  41 82 00 18 */	beq lbl_80045B6C
/* 80045B58 00042A98  A0 A3 00 0E */	lhz r5, 0xe(r3)
/* 80045B5C 00042A9C  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 80045B60 00042AA0  7C 05 00 40 */	cmplw r5, r0
/* 80045B64 00042AA4  40 82 00 08 */	bne lbl_80045B6C
/* 80045B68 00042AA8  39 00 00 01 */	li r8, 1
lbl_80045B6C:
/* 80045B6C 00042AAC  55 00 06 3F */	clrlwi. r0, r8, 0x18
/* 80045B70 00042AB0  41 82 00 18 */	beq lbl_80045B88
/* 80045B74 00042AB4  A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 80045B78 00042AB8  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 80045B7C 00042ABC  7C 05 00 40 */	cmplw r5, r0
/* 80045B80 00042AC0  40 82 00 08 */	bne lbl_80045B88
/* 80045B84 00042AC4  38 E0 00 01 */	li r7, 1
lbl_80045B88:
/* 80045B88 00042AC8  54 E0 06 3F */	clrlwi. r0, r7, 0x18
/* 80045B8C 00042ACC  41 82 00 18 */	beq lbl_80045BA4
/* 80045B90 00042AD0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80045B94 00042AD4  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80045B98 00042AD8  7C 03 00 00 */	cmpw r3, r0
/* 80045B9C 00042ADC  40 82 00 08 */	bne lbl_80045BA4
/* 80045BA0 00042AE0  38 C0 00 01 */	li r6, 1
lbl_80045BA4:
/* 80045BA4 00042AE4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80045BA8 00042AE8  7C C3 33 78 */	mr r3, r6
/* 80045BAC 00042AEC  38 21 00 18 */	addi r1, r1, 0x18
/* 80045BB0 00042AF0  4E 80 00 20 */	blr 

.global IsRenderModeHalfAspectRatio__6JDramaFRC16_GXRenderModeObj
IsRenderModeHalfAspectRatio__6JDramaFRC16_GXRenderModeObj:
/* 80045BB4 00042AF4  A0 03 00 08 */	lhz r0, 8(r3)
/* 80045BB8 00042AF8  A0 63 00 10 */	lhz r3, 0x10(r3)
/* 80045BBC 00042AFC  54 00 08 3C */	slwi r0, r0, 1
/* 80045BC0 00042B00  7C 03 00 50 */	subf r0, r3, r0
/* 80045BC4 00042B04  7C 00 00 34 */	cntlzw r0, r0
/* 80045BC8 00042B08  54 03 D9 7E */	srwi r3, r0, 5
/* 80045BCC 00042B0C  4E 80 00 20 */	blr 

.global GetRenderModeYScale__6JDramaFRC16_GXRenderModeObj
GetRenderModeYScale__6JDramaFRC16_GXRenderModeObj:
/* 80045BD0 00042B10  7C 08 02 A6 */	mflr r0
/* 80045BD4 00042B14  7C 65 1B 78 */	mr r5, r3
/* 80045BD8 00042B18  90 01 00 04 */	stw r0, 4(r1)
/* 80045BDC 00042B1C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80045BE0 00042B20  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80045BE4 00042B24  88 03 00 19 */	lbz r0, 0x19(r3)
/* 80045BE8 00042B28  38 60 00 00 */	li r3, 0
/* 80045BEC 00042B2C  C3 E2 83 F0 */	lfs f31, $$248-_SDA2_BASE_(r2)
/* 80045BF0 00042B30  28 00 00 01 */	cmplwi r0, 1
/* 80045BF4 00042B34  40 82 00 30 */	bne lbl_80045C24
/* 80045BF8 00042B38  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80045BFC 00042B3C  38 80 00 01 */	li r4, 1
/* 80045C00 00042B40  2C 00 00 01 */	cmpwi r0, 1
/* 80045C04 00042B44  41 82 00 14 */	beq lbl_80045C18
/* 80045C08 00042B48  80 05 00 00 */	lwz r0, 0(r5)
/* 80045C0C 00042B4C  2C 00 00 02 */	cmpwi r0, 2
/* 80045C10 00042B50  41 82 00 08 */	beq lbl_80045C18
/* 80045C14 00042B54  7C 64 1B 78 */	mr r4, r3
lbl_80045C18:
/* 80045C18 00042B58  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80045C1C 00042B5C  41 82 00 08 */	beq lbl_80045C24
/* 80045C20 00042B60  38 60 00 01 */	li r3, 1
lbl_80045C24:
/* 80045C24 00042B64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80045C28 00042B68  41 82 00 24 */	beq lbl_80045C4C
/* 80045C2C 00042B6C  3C 60 80 37 */	lis r3, $$249@ha
/* 80045C30 00042B70  4C C6 31 82 */	crclr 6
/* 80045C34 00042B74  3C 80 80 37 */	lis r4, $$250@ha
/* 80045C38 00042B78  38 A4 10 AC */	addi r5, r4, $$250@l
/* 80045C3C 00042B7C  38 63 10 98 */	addi r3, r3, $$249@l
/* 80045C40 00042B80  38 80 00 37 */	li r4, 0x37
/* 80045C44 00042B84  48 04 93 A1 */	bl OSPanic
/* 80045C48 00042B88  48 00 00 14 */	b lbl_80045C5C
lbl_80045C4C:
/* 80045C4C 00042B8C  A0 65 00 06 */	lhz r3, 6(r5)
/* 80045C50 00042B90  A0 85 00 08 */	lhz r4, 8(r5)
/* 80045C54 00042B94  48 06 34 01 */	bl GXGetYScaleFactor
/* 80045C58 00042B98  FF E0 08 90 */	fmr f31, f1
lbl_80045C5C:
/* 80045C5C 00042B9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80045C60 00042BA0  FC 20 F8 90 */	fmr f1, f31
/* 80045C64 00042BA4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80045C68 00042BA8  38 21 00 18 */	addi r1, r1, 0x18
/* 80045C6C 00042BAC  7C 08 03 A6 */	mtlr r0
/* 80045C70 00042BB0  4E 80 00 20 */	blr 

.global CalcRenderModeXFBHeight__6JDramaFP16_GXRenderModeObjUs
CalcRenderModeXFBHeight__6JDramaFP16_GXRenderModeObjUs:
/* 80045C74 00042BB4  7C 08 02 A6 */	mflr r0
/* 80045C78 00042BB8  90 01 00 04 */	stw r0, 4(r1)
/* 80045C7C 00042BBC  94 21 FF E0 */	stwu r1, -32(r1)
/* 80045C80 00042BC0  93 E1 00 1C */	stw r31, 28(r1)
/* 80045C84 00042BC4  7C 7F 1B 78 */	mr r31, r3
/* 80045C88 00042BC8  93 C1 00 18 */	stw r30, 24(r1)
/* 80045C8C 00042BCC  93 A1 00 14 */	stw r29, 20(r1)
/* 80045C90 00042BD0  3B A4 00 00 */	addi r29, r4, 0
/* 80045C94 00042BD4  88 03 00 19 */	lbz r0, 25(r3)
/* 80045C98 00042BD8  38 60 00 00 */	li r3, 0
/* 80045C9C 00042BDC  28 00 00 01 */	cmplwi r0, 1
/* 80045CA0 00042BE0  40 82 00 30 */	bne lbl_80045CD0
/* 80045CA4 00042BE4  80 1F 00 14 */	lwz r0, 20(r31)
/* 80045CA8 00042BE8  38 80 00 01 */	li r4, 1
/* 80045CAC 00042BEC  2C 00 00 01 */	cmpwi r0, 1
/* 80045CB0 00042BF0  41 82 00 14 */	beq lbl_80045CC4
/* 80045CB4 00042BF4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80045CB8 00042BF8  2C 00 00 02 */	cmpwi r0, 2
/* 80045CBC 00042BFC  41 82 00 08 */	beq lbl_80045CC4
/* 80045CC0 00042C00  7C 64 1B 78 */	mr r4, r3
lbl_80045CC4:
/* 80045CC4 00042C04  54 80 06 3F */	clrlwi. r0, r4, 24
/* 80045CC8 00042C08  41 82 00 08 */	beq lbl_80045CD0
/* 80045CCC 00042C0C  38 60 00 01 */	li r3, 1
lbl_80045CD0:
/* 80045CD0 00042C10  54 60 06 3F */	clrlwi. r0, r3, 24
/* 80045CD4 00042C14  41 82 00 20 */	beq lbl_80045CF4
/* 80045CD8 00042C18  3C 60 80 37 */	lis r3, $$249@ha
/* 80045CDC 00042C1C  4C C6 31 82 */	crclr 6
/* 80045CE0 00042C20  3C 80 80 37 */	lis r4, $$261@ha
/* 80045CE4 00042C24  38 A4 10 C4 */	addi r5, r4, $$261@l
/* 80045CE8 00042C28  38 63 10 98 */	addi r3, r3, $$249@l
/* 80045CEC 00042C2C  38 80 00 48 */	li r4, 72
/* 80045CF0 00042C30  48 04 92 F5 */	bl OSPanic
lbl_80045CF4:
/* 80045CF4 00042C34  88 1F 00 18 */	lbz r0, 24(r31)
/* 80045CF8 00042C38  28 00 00 00 */	cmplwi r0, 0
/* 80045CFC 00042C3C  41 82 00 0C */	beq lbl_80045D08
/* 80045D00 00042C40  3B C0 00 02 */	li r30, 2
/* 80045D04 00042C44  48 00 00 08 */	b lbl_80045D0C
lbl_80045D08:
/* 80045D08 00042C48  3B C0 00 01 */	li r30, 1
lbl_80045D0C:
/* 80045D0C 00042C4C  57 A0 04 3E */	clrlwi r0, r29, 16
/* 80045D10 00042C50  A0 7F 00 06 */	lhz r3, 6(r31)
/* 80045D14 00042C54  7C 00 F3 D6 */	divw r0, r0, r30
/* 80045D18 00042C58  54 04 04 3E */	clrlwi r4, r0, 16
/* 80045D1C 00042C5C  48 06 33 39 */	bl GXGetYScaleFactor
/* 80045D20 00042C60  A0 7F 00 06 */	lhz r3, 6(r31)
/* 80045D24 00042C64  48 06 32 A1 */	bl GXGetNumXfbLines
/* 80045D28 00042C68  B0 7F 00 08 */	sth r3, 8(r31)
/* 80045D2C 00042C6C  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80045D30 00042C70  7C 00 F1 D6 */	mullw r0, r0, r30
/* 80045D34 00042C74  B0 1F 00 10 */	sth r0, 16(r31)
/* 80045D38 00042C78  80 01 00 24 */	lwz r0, 36(r1)
/* 80045D3C 00042C7C  83 E1 00 1C */	lwz r31, 28(r1)
/* 80045D40 00042C80  83 C1 00 18 */	lwz r30, 24(r1)
/* 80045D44 00042C84  83 A1 00 14 */	lwz r29, 20(r1)
/* 80045D48 00042C88  38 21 00 20 */	addi r1, r1, 32
/* 80045D4C 00042C8C  7C 08 03 A6 */	mtlr r0
/* 80045D50 00042C90  4E 80 00 20 */	blr 

.global CalcRenderModeVIXOrigin__6JDramaFP16_GXRenderModeObj
CalcRenderModeVIXOrigin__6JDramaFP16_GXRenderModeObj:
/* 80045D54 00042C94  7C 08 02 A6 */	mflr r0
/* 80045D58 00042C98  90 01 00 04 */	stw r0, 4(r1)
/* 80045D5C 00042C9C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80045D60 00042CA0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80045D64 00042CA4  7C 7F 1B 78 */	mr r31, r3
/* 80045D68 00042CA8  48 00 00 C5 */	bl GetVIWidthMax__6JDramaF8VITVMode
/* 80045D6C 00042CAC  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 80045D70 00042CB0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80045D74 00042CB4  7C 00 18 50 */	subf r0, r0, r3
/* 80045D78 00042CB8  7C 00 0E 70 */	srawi r0, r0, 1
/* 80045D7C 00042CBC  7C 00 01 94 */	addze r0, r0
/* 80045D80 00042CC0  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 80045D84 00042CC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80045D88 00042CC8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80045D8C 00042CCC  38 21 00 18 */	addi r1, r1, 0x18
/* 80045D90 00042CD0  7C 08 03 A6 */	mtlr r0
/* 80045D94 00042CD4  4E 80 00 20 */	blr 

.global CalcRenderModeVIYOrigin__6JDramaFP16_GXRenderModeObj
CalcRenderModeVIYOrigin__6JDramaFP16_GXRenderModeObj:
/* 80045D98 00042CD8  7C 08 02 A6 */	mflr r0
/* 80045D9C 00042CDC  90 01 00 04 */	stw r0, 4(r1)
/* 80045DA0 00042CE0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80045DA4 00042CE4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80045DA8 00042CE8  7C 7F 1B 78 */	mr r31, r3
/* 80045DAC 00042CEC  48 00 00 E5 */	bl GetVIHeightMax__6JDramaF8VITVMode
/* 80045DB0 00042CF0  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 80045DB4 00042CF4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80045DB8 00042CF8  7C 00 18 50 */	subf r0, r0, r3
/* 80045DBC 00042CFC  7C 00 0E 70 */	srawi r0, r0, 1
/* 80045DC0 00042D00  7C 00 01 94 */	addze r0, r0
/* 80045DC4 00042D04  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 80045DC8 00042D08  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80045DCC 00042D0C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80045DD0 00042D10  38 21 00 18 */	addi r1, r1, 0x18
/* 80045DD4 00042D14  7C 08 03 A6 */	mtlr r0
/* 80045DD8 00042D18  4E 80 00 20 */	blr 

.global CopyRenderModeSamplePattern__6JDramaFP16_GXRenderModeObjPA2_CUc
CopyRenderModeSamplePattern__6JDramaFP16_GXRenderModeObjPA2_CUc:
/* 80045DDC 00042D1C  7C 08 02 A6 */	mflr r0
/* 80045DE0 00042D20  38 63 00 1A */	addi r3, r3, 0x1a
/* 80045DE4 00042D24  90 01 00 04 */	stw r0, 4(r1)
/* 80045DE8 00042D28  38 A0 00 18 */	li r5, 0x18
/* 80045DEC 00042D2C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80045DF0 00042D30  4B FB D4 05 */	bl memcpy
/* 80045DF4 00042D34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80045DF8 00042D38  38 21 00 08 */	addi r1, r1, 8
/* 80045DFC 00042D3C  7C 08 03 A6 */	mtlr r0
/* 80045E00 00042D40  4E 80 00 20 */	blr 

.global CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc
CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc:
/* 80045E04 00042D44  7C 08 02 A6 */	mflr r0
/* 80045E08 00042D48  38 63 00 32 */	addi r3, r3, 0x32
/* 80045E0C 00042D4C  90 01 00 04 */	stw r0, 4(r1)
/* 80045E10 00042D50  38 A0 00 07 */	li r5, 7
/* 80045E14 00042D54  94 21 FF F8 */	stwu r1, -8(r1)
/* 80045E18 00042D58  4B FB D3 DD */	bl memcpy
/* 80045E1C 00042D5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80045E20 00042D60  38 21 00 08 */	addi r1, r1, 8
/* 80045E24 00042D64  7C 08 03 A6 */	mtlr r0
/* 80045E28 00042D68  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$249:
	.incbin "baserom.dol", 0x36E098, 0x14
$$250:
	.incbin "baserom.dol", 0x36E0AC, 0x18
$$261:
	.incbin "baserom.dol", 0x36E0C4, 0x1C

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$248:
	.incbin "baserom.dol", 0x3E40F0, 0x8
