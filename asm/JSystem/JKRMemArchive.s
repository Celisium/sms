.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__13JKRMemArchiveFv
__ct__13JKRMemArchiveFv:
/* 8000CBB0 00009AF0  7C 08 02 A6 */	mflr r0
/* 8000CBB4 00009AF4  90 01 00 04 */	stw r0, 4(r1)
/* 8000CBB8 00009AF8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000CBBC 00009AFC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000CBC0 00009B00  7C 7F 1B 78 */	mr r31, r3
/* 8000CBC4 00009B04  4B FF 8A A9 */	bl __ct__10JKRArchiveFv
/* 8000CBC8 00009B08  3C 60 80 3B */	lis r3, __vt__13JKRMemArchive@ha
/* 8000CBCC 00009B0C  38 03 86 48 */	addi r0, r3, __vt__13JKRMemArchive@l
/* 8000CBD0 00009B10  90 1F 00 00 */	stw r0, 0(r31)
/* 8000CBD4 00009B14  7F E3 FB 78 */	mr r3, r31
/* 8000CBD8 00009B18  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000CBDC 00009B1C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000CBE0 00009B20  38 21 00 18 */	addi r1, r1, 0x18
/* 8000CBE4 00009B24  7C 08 03 A6 */	mtlr r0
/* 8000CBE8 00009B28  4E 80 00 20 */	blr 

.global __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
__ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection:
/* 8000CBEC 00009B2C  7C 08 02 A6 */	mflr r0
/* 8000CBF0 00009B30  90 01 00 04 */	stw r0, 4(r1)
/* 8000CBF4 00009B34  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000CBF8 00009B38  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000CBFC 00009B3C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8000CC00 00009B40  3B C5 00 00 */	addi r30, r5, 0
/* 8000CC04 00009B44  38 A0 00 01 */	li r5, 1
/* 8000CC08 00009B48  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8000CC0C 00009B4C  3B A4 00 00 */	addi r29, r4, 0
/* 8000CC10 00009B50  90 61 00 08 */	stw r3, 8(r1)
/* 8000CC14 00009B54  80 61 00 08 */	lwz r3, 8(r1)
/* 8000CC18 00009B58  4B FF 8A A1 */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 8000CC1C 00009B5C  3C 60 80 3B */	lis r3, __vt__13JKRMemArchive@ha
/* 8000CC20 00009B60  83 E1 00 08 */	lwz r31, 8(r1)
/* 8000CC24 00009B64  38 03 86 48 */	addi r0, r3, __vt__13JKRMemArchive@l
/* 8000CC28 00009B68  90 1F 00 00 */	stw r0, 0(r31)
/* 8000CC2C 00009B6C  7F E3 FB 78 */	mr r3, r31
/* 8000CC30 00009B70  7F A4 EB 78 */	mr r4, r29
/* 8000CC34 00009B74  93 DF 00 5C */	stw r30, 0x5c(r31)
/* 8000CC38 00009B78  80 BF 00 5C */	lwz r5, 0x5c(r31)
/* 8000CC3C 00009B7C  48 00 03 41 */	bl open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 8000CC40 00009B80  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 8000CC44 00009B84  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 8000CC48 00009B88  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8000CC4C 00009B8C  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 8000CC50 00009B90  38 63 0B B0 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 8000CC54 00009B94  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 8000CC58 00009B98  38 9F 00 18 */	addi r4, r31, 0x18
/* 8000CC5C 00009B9C  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 8000CC60 00009BA0  80 05 00 04 */	lwz r0, 4(r5)
/* 8000CC64 00009BA4  7C 06 02 14 */	add r0, r6, r0
/* 8000CC68 00009BA8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8000CC6C 00009BAC  48 00 20 99 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8000CC70 00009BB0  38 00 00 01 */	li r0, 1
/* 8000CC74 00009BB4  98 1F 00 30 */	stb r0, 0x30(r31)
/* 8000CC78 00009BB8  7F E3 FB 78 */	mr r3, r31
/* 8000CC7C 00009BBC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000CC80 00009BC0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000CC84 00009BC4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8000CC88 00009BC8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8000CC8C 00009BCC  38 21 00 28 */	addi r1, r1, 0x28
/* 8000CC90 00009BD0  7C 08 03 A6 */	mtlr r0
/* 8000CC94 00009BD4  4E 80 00 20 */	blr 

.global __ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag
__ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag:
/* 8000CC98 00009BD8  7C 08 02 A6 */	mflr r0
/* 8000CC9C 00009BDC  90 01 00 04 */	stw r0, 4(r1)
/* 8000CCA0 00009BE0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000CCA4 00009BE4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000CCA8 00009BE8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8000CCAC 00009BEC  3B C6 00 00 */	addi r30, r6, 0
/* 8000CCB0 00009BF0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8000CCB4 00009BF4  3B A5 00 00 */	addi r29, r5, 0
/* 8000CCB8 00009BF8  38 A0 00 01 */	li r5, 1
/* 8000CCBC 00009BFC  93 81 00 18 */	stw r28, 0x18(r1)
/* 8000CCC0 00009C00  3B 84 00 00 */	addi r28, r4, 0
/* 8000CCC4 00009C04  90 61 00 08 */	stw r3, 8(r1)
/* 8000CCC8 00009C08  80 61 00 08 */	lwz r3, 8(r1)
/* 8000CCCC 00009C0C  4B FF 89 ED */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 8000CCD0 00009C10  83 E1 00 08 */	lwz r31, 8(r1)
/* 8000CCD4 00009C14  3C 60 80 3B */	lis r3, __vt__13JKRMemArchive@ha
/* 8000CCD8 00009C18  38 03 86 48 */	addi r0, r3, __vt__13JKRMemArchive@l
/* 8000CCDC 00009C1C  90 1F 00 00 */	stw r0, 0(r31)
/* 8000CCE0 00009C20  38 7F 00 00 */	addi r3, r31, 0
/* 8000CCE4 00009C24  38 9C 00 00 */	addi r4, r28, 0
/* 8000CCE8 00009C28  38 BD 00 00 */	addi r5, r29, 0
/* 8000CCEC 00009C2C  38 DE 00 00 */	addi r6, r30, 0
/* 8000CCF0 00009C30  48 00 03 C5 */	bl open__13JKRMemArchiveFPvUl15JKRMemBreakFlag
/* 8000CCF4 00009C34  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 8000CCF8 00009C38  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 8000CCFC 00009C3C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8000CD00 00009C40  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 8000CD04 00009C44  38 63 0B B0 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 8000CD08 00009C48  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 8000CD0C 00009C4C  38 9F 00 18 */	addi r4, r31, 0x18
/* 8000CD10 00009C50  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 8000CD14 00009C54  80 05 00 04 */	lwz r0, 4(r5)
/* 8000CD18 00009C58  7C 06 02 14 */	add r0, r6, r0
/* 8000CD1C 00009C5C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8000CD20 00009C60  48 00 1F E5 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8000CD24 00009C64  38 00 00 01 */	li r0, 1
/* 8000CD28 00009C68  98 1F 00 30 */	stb r0, 0x30(r31)
/* 8000CD2C 00009C6C  7F E3 FB 78 */	mr r3, r31
/* 8000CD30 00009C70  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000CD34 00009C74  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000CD38 00009C78  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8000CD3C 00009C7C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8000CD40 00009C80  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8000CD44 00009C84  38 21 00 28 */	addi r1, r1, 0x28
/* 8000CD48 00009C88  7C 08 03 A6 */	mtlr r0
/* 8000CD4C 00009C8C  4E 80 00 20 */	blr 

.global __dt__13JKRMemArchiveFv
__dt__13JKRMemArchiveFv:
/* 8000CD50 00009C90  7C 08 02 A6 */	mflr r0
/* 8000CD54 00009C94  90 01 00 04 */	stw r0, 4(r1)
/* 8000CD58 00009C98  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000CD5C 00009C9C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000CD60 00009CA0  3B E4 00 00 */	addi r31, r4, 0
/* 8000CD64 00009CA4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8000CD68 00009CA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8000CD6C 00009CAC  41 82 00 70 */	beq lbl_8000CDDC
/* 8000CD70 00009CB0  3C 60 80 3B */	lis r3, __vt__13JKRMemArchive@ha
/* 8000CD74 00009CB4  38 03 86 48 */	addi r0, r3, __vt__13JKRMemArchive@l
/* 8000CD78 00009CB8  90 1E 00 00 */	stw r0, 0(r30)
/* 8000CD7C 00009CBC  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 8000CD80 00009CC0  28 00 00 01 */	cmplwi r0, 1
/* 8000CD84 00009CC4  40 82 00 3C */	bne lbl_8000CDC0
/* 8000CD88 00009CC8  88 1E 00 68 */	lbz r0, 0x68(r30)
/* 8000CD8C 00009CCC  28 00 00 00 */	cmplwi r0, 0
/* 8000CD90 00009CD0  41 82 00 18 */	beq lbl_8000CDA8
/* 8000CD94 00009CD4  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8000CD98 00009CD8  28 03 00 00 */	cmplwi r3, 0
/* 8000CD9C 00009CDC  41 82 00 0C */	beq lbl_8000CDA8
/* 8000CDA0 00009CE0  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 8000CDA4 00009CE4  4B FF F7 21 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_8000CDA8:
/* 8000CDA8 00009CE8  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 8000CDAC 00009CEC  38 63 0B B0 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 8000CDB0 00009CF0  38 9E 00 18 */	addi r4, r30, 0x18
/* 8000CDB4 00009CF4  48 00 21 E9 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8000CDB8 00009CF8  38 00 00 00 */	li r0, 0
/* 8000CDBC 00009CFC  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_8000CDC0:
/* 8000CDC0 00009D00  38 7E 00 00 */	addi r3, r30, 0
/* 8000CDC4 00009D04  38 80 00 00 */	li r4, 0
/* 8000CDC8 00009D08  4B FF 89 A9 */	bl __dt__10JKRArchiveFv
/* 8000CDCC 00009D0C  7F E0 07 35 */	extsh. r0, r31
/* 8000CDD0 00009D10  40 81 00 0C */	ble lbl_8000CDDC
/* 8000CDD4 00009D14  7F C3 F3 78 */	mr r3, r30
/* 8000CDD8 00009D18  4B FF FC D9 */	bl __dl__FPv
lbl_8000CDDC:
/* 8000CDDC 00009D1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000CDE0 00009D20  7F C3 F3 78 */	mr r3, r30
/* 8000CDE4 00009D24  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000CDE8 00009D28  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8000CDEC 00009D2C  7C 08 03 A6 */	mtlr r0
/* 8000CDF0 00009D30  38 21 00 18 */	addi r1, r1, 0x18
/* 8000CDF4 00009D34  4E 80 00 20 */	blr 

.global mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag:
/* 8000CDF8 00009D38  7C 08 02 A6 */	mflr r0
/* 8000CDFC 00009D3C  90 01 00 04 */	stw r0, 4(r1)
/* 8000CE00 00009D40  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000CE04 00009D44  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000CE08 00009D48  3B E3 00 00 */	addi r31, r3, 0
/* 8000CE0C 00009D4C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8000CE10 00009D50  3B C5 00 00 */	addi r30, r5, 0
/* 8000CE14 00009D54  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8000CE18 00009D58  3B A4 00 00 */	addi r29, r4, 0
/* 8000CE1C 00009D5C  38 7D 00 00 */	addi r3, r29, 0
/* 8000CE20 00009D60  4B FF AA B9 */	bl check_mount_already__10JKRArchiveFl
/* 8000CE24 00009D64  28 03 00 00 */	cmplwi r3, 0
/* 8000CE28 00009D68  41 82 00 0C */	beq lbl_8000CE34
/* 8000CE2C 00009D6C  38 60 00 00 */	li r3, 0
/* 8000CE30 00009D70  48 00 00 BC */	b lbl_8000CEEC
lbl_8000CE34:
/* 8000CE34 00009D74  38 80 00 00 */	li r4, 0
/* 8000CE38 00009D78  98 9F 00 30 */	stb r4, 0x30(r31)
/* 8000CE3C 00009D7C  38 60 00 01 */	li r3, 1
/* 8000CE40 00009D80  38 00 00 02 */	li r0, 2
/* 8000CE44 00009D84  98 7F 00 3C */	stb r3, 0x3c(r31)
/* 8000CE48 00009D88  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8000CE4C 00009D8C  90 1F 00 54 */	stw r0, 0x54(r31)
/* 8000CE50 00009D90  80 0D 8D 6C */	lwz r0, sCurrentHeap__7JKRHeap@sda21(r13)
/* 8000CE54 00009D94  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8000CE58 00009D98  93 BF 00 40 */	stw r29, 0x40(r31)
/* 8000CE5C 00009D9C  80 0D 8D 60 */	lwz r0, sCurrentVolume__13JKRFileLoader@sda21(r13)
/* 8000CE60 00009DA0  28 00 00 00 */	cmplwi r0, 0
/* 8000CE64 00009DA4  40 82 00 0C */	bne lbl_8000CE70
/* 8000CE68 00009DA8  93 ED 8D 60 */	stw r31, sCurrentVolume__13JKRFileLoader@sda21(r13)
/* 8000CE6C 00009DAC  90 8D 8D 00 */	stw r4, sCurrentDirID__10JKRArchive@sda21(r13)
lbl_8000CE70:
/* 8000CE70 00009DB0  3C A0 00 01 */	lis r5, 0x0000FFFF@ha
/* 8000CE74 00009DB4  38 7F 00 00 */	addi r3, r31, 0
/* 8000CE78 00009DB8  38 9D 00 00 */	addi r4, r29, 0
/* 8000CE7C 00009DBC  38 DE 00 00 */	addi r6, r30, 0
/* 8000CE80 00009DC0  38 A5 FF FF */	addi r5, r5, 0x0000FFFF@l
/* 8000CE84 00009DC4  48 00 02 31 */	bl open__13JKRMemArchiveFPvUl15JKRMemBreakFlag
/* 8000CE88 00009DC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8000CE8C 00009DCC  40 82 00 0C */	bne lbl_8000CE98
/* 8000CE90 00009DD0  38 60 00 00 */	li r3, 0
/* 8000CE94 00009DD4  48 00 00 58 */	b lbl_8000CEEC
lbl_8000CE98:
/* 8000CE98 00009DD8  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 8000CE9C 00009DDC  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 8000CEA0 00009DE0  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8000CEA4 00009DE4  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 8000CEA8 00009DE8  38 63 0B B0 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 8000CEAC 00009DEC  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 8000CEB0 00009DF0  38 9F 00 18 */	addi r4, r31, 0x18
/* 8000CEB4 00009DF4  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 8000CEB8 00009DF8  80 05 00 04 */	lwz r0, 4(r5)
/* 8000CEBC 00009DFC  7C 06 02 14 */	add r0, r6, r0
/* 8000CEC0 00009E00  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8000CEC4 00009E04  48 00 1E 41 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8000CEC8 00009E08  2C 1E 00 01 */	cmpwi r30, 1
/* 8000CECC 00009E0C  40 82 00 0C */	bne lbl_8000CED8
/* 8000CED0 00009E10  38 00 00 01 */	li r0, 1
/* 8000CED4 00009E14  48 00 00 08 */	b lbl_8000CEDC
lbl_8000CED8:
/* 8000CED8 00009E18  38 00 00 00 */	li r0, 0
lbl_8000CEDC:
/* 8000CEDC 00009E1C  98 1F 00 68 */	stb r0, 0x68(r31)
/* 8000CEE0 00009E20  38 00 00 01 */	li r0, 1
/* 8000CEE4 00009E24  38 60 00 01 */	li r3, 1
/* 8000CEE8 00009E28  98 1F 00 30 */	stb r0, 0x30(r31)
lbl_8000CEEC:
/* 8000CEEC 00009E2C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000CEF0 00009E30  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000CEF4 00009E34  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8000CEF8 00009E38  7C 08 03 A6 */	mtlr r0
/* 8000CEFC 00009E3C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8000CF00 00009E40  38 21 00 28 */	addi r1, r1, 0x28
/* 8000CF04 00009E44  4E 80 00 20 */	blr 

.global unmountFixed__13JKRMemArchiveFv
unmountFixed__13JKRMemArchiveFv:
/* 8000CF08 00009E48  7C 08 02 A6 */	mflr r0
/* 8000CF0C 00009E4C  90 01 00 04 */	stw r0, 4(r1)
/* 8000CF10 00009E50  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000CF14 00009E54  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000CF18 00009E58  3B E3 00 00 */	addi r31, r3, 0
/* 8000CF1C 00009E5C  80 0D 8D 60 */	lwz r0, sCurrentVolume__13JKRFileLoader@sda21(r13)
/* 8000CF20 00009E60  7C 00 F8 40 */	cmplw r0, r31
/* 8000CF24 00009E64  40 82 00 0C */	bne lbl_8000CF30
/* 8000CF28 00009E68  38 00 00 00 */	li r0, 0
/* 8000CF2C 00009E6C  90 0D 8D 60 */	stw r0, sCurrentVolume__13JKRFileLoader@sda21(r13)
lbl_8000CF30:
/* 8000CF30 00009E70  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 8000CF34 00009E74  28 00 00 00 */	cmplwi r0, 0
/* 8000CF38 00009E78  41 82 00 18 */	beq lbl_8000CF50
/* 8000CF3C 00009E7C  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8000CF40 00009E80  28 03 00 00 */	cmplwi r3, 0
/* 8000CF44 00009E84  41 82 00 0C */	beq lbl_8000CF50
/* 8000CF48 00009E88  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8000CF4C 00009E8C  4B FF F5 79 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_8000CF50:
/* 8000CF50 00009E90  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 8000CF54 00009E94  38 63 0B B0 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 8000CF58 00009E98  38 9F 00 18 */	addi r4, r31, 0x18
/* 8000CF5C 00009E9C  48 00 20 41 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8000CF60 00009EA0  38 00 00 00 */	li r0, 0
/* 8000CF64 00009EA4  98 1F 00 30 */	stb r0, 0x30(r31)
/* 8000CF68 00009EA8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000CF6C 00009EAC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000CF70 00009EB0  38 21 00 18 */	addi r1, r1, 0x18
/* 8000CF74 00009EB4  7C 08 03 A6 */	mtlr r0
/* 8000CF78 00009EB8  4E 80 00 20 */	blr 

.global open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection:
/* 8000CF7C 00009EBC  7C 08 02 A6 */	mflr r0
/* 8000CF80 00009EC0  90 01 00 04 */	stw r0, 4(r1)
/* 8000CF84 00009EC4  38 00 00 00 */	li r0, 0
/* 8000CF88 00009EC8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000CF8C 00009ECC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000CF90 00009ED0  3B E3 00 00 */	addi r31, r3, 0
/* 8000CF94 00009ED4  90 03 00 60 */	stw r0, 0x60(r3)
/* 8000CF98 00009ED8  90 03 00 44 */	stw r0, 0x44(r3)
/* 8000CF9C 00009EDC  90 03 00 64 */	stw r0, 0x64(r3)
/* 8000CFA0 00009EE0  90 03 00 48 */	stw r0, 0x48(r3)
/* 8000CFA4 00009EE4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8000CFA8 00009EE8  90 03 00 50 */	stw r0, 0x50(r3)
/* 8000CFAC 00009EEC  98 03 00 68 */	stb r0, 0x68(r3)
/* 8000CFB0 00009EF0  90 A3 00 5C */	stw r5, 0x5c(r3)
/* 8000CFB4 00009EF4  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 8000CFB8 00009EF8  2C 00 00 01 */	cmpwi r0, 1
/* 8000CFBC 00009EFC  40 82 00 30 */	bne lbl_8000CFEC
/* 8000CFC0 00009F00  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 8000CFC4 00009F04  38 64 00 00 */	addi r3, r4, 0
/* 8000CFC8 00009F08  39 5F 00 58 */	addi r10, r31, 0x58
/* 8000CFCC 00009F0C  38 80 00 00 */	li r4, 0
/* 8000CFD0 00009F10  38 A0 00 01 */	li r5, 1
/* 8000CFD4 00009F14  38 C0 00 00 */	li r6, 0
/* 8000CFD8 00009F18  39 00 00 01 */	li r8, 1
/* 8000CFDC 00009F1C  39 20 00 00 */	li r9, 0
/* 8000CFE0 00009F20  48 02 75 35 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 8000CFE4 00009F24  90 7F 00 60 */	stw r3, 0x60(r31)
/* 8000CFE8 00009F28  48 00 00 2C */	b lbl_8000D014
lbl_8000CFEC:
/* 8000CFEC 00009F2C  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 8000CFF0 00009F30  38 64 00 00 */	addi r3, r4, 0
/* 8000CFF4 00009F34  39 5F 00 58 */	addi r10, r31, 0x58
/* 8000CFF8 00009F38  38 80 00 00 */	li r4, 0
/* 8000CFFC 00009F3C  38 A0 00 01 */	li r5, 1
/* 8000D000 00009F40  38 C0 00 00 */	li r6, 0
/* 8000D004 00009F44  39 00 00 02 */	li r8, 2
/* 8000D008 00009F48  39 20 00 00 */	li r9, 0
/* 8000D00C 00009F4C  48 02 75 09 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 8000D010 00009F50  90 7F 00 60 */	stw r3, 0x60(r31)
lbl_8000D014:
/* 8000D014 00009F54  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 8000D018 00009F58  28 04 00 00 */	cmplwi r4, 0
/* 8000D01C 00009F5C  40 82 00 10 */	bne lbl_8000D02C
/* 8000D020 00009F60  38 00 00 00 */	li r0, 0
/* 8000D024 00009F64  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 8000D028 00009F68  48 00 00 60 */	b lbl_8000D088
lbl_8000D02C:
/* 8000D02C 00009F6C  80 64 00 08 */	lwz r3, 8(r4)
/* 8000D030 00009F70  38 00 00 01 */	li r0, 1
/* 8000D034 00009F74  7C 64 1A 14 */	add r3, r4, r3
/* 8000D038 00009F78  90 7F 00 44 */	stw r3, 0x44(r31)
/* 8000D03C 00009F7C  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8000D040 00009F80  80 64 00 04 */	lwz r3, 4(r4)
/* 8000D044 00009F84  7C 64 1A 14 */	add r3, r4, r3
/* 8000D048 00009F88  90 7F 00 48 */	stw r3, 0x48(r31)
/* 8000D04C 00009F8C  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8000D050 00009F90  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8000D054 00009F94  7C 64 1A 14 */	add r3, r4, r3
/* 8000D058 00009F98  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 8000D05C 00009F9C  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8000D060 00009FA0  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8000D064 00009FA4  7C 64 1A 14 */	add r3, r4, r3
/* 8000D068 00009FA8  90 7F 00 50 */	stw r3, 0x50(r31)
/* 8000D06C 00009FAC  80 BF 00 60 */	lwz r5, 0x60(r31)
/* 8000D070 00009FB0  80 85 00 0C */	lwz r4, 0xc(r5)
/* 8000D074 00009FB4  80 65 00 08 */	lwz r3, 8(r5)
/* 8000D078 00009FB8  7C 63 22 14 */	add r3, r3, r4
/* 8000D07C 00009FBC  7C 65 1A 14 */	add r3, r5, r3
/* 8000D080 00009FC0  90 7F 00 64 */	stw r3, 0x64(r31)
/* 8000D084 00009FC4  98 1F 00 68 */	stb r0, 0x68(r31)
lbl_8000D088:
/* 8000D088 00009FC8  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 8000D08C 00009FCC  28 00 00 00 */	cmplwi r0, 0
/* 8000D090 00009FD0  40 82 00 0C */	bne lbl_8000D09C
/* 8000D094 00009FD4  38 60 00 00 */	li r3, 0
/* 8000D098 00009FD8  48 00 00 08 */	b lbl_8000D0A0
lbl_8000D09C:
/* 8000D09C 00009FDC  38 60 00 01 */	li r3, 1
lbl_8000D0A0:
/* 8000D0A0 00009FE0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000D0A4 00009FE4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000D0A8 00009FE8  38 21 00 28 */	addi r1, r1, 0x28
/* 8000D0AC 00009FEC  7C 08 03 A6 */	mtlr r0
/* 8000D0B0 00009FF0  4E 80 00 20 */	blr 

.global open__13JKRMemArchiveFPvUl15JKRMemBreakFlag
open__13JKRMemArchiveFPvUl15JKRMemBreakFlag:
/* 8000D0B4 00009FF4  7C 08 02 A6 */	mflr r0
/* 8000D0B8 00009FF8  2C 06 00 01 */	cmpwi r6, 1
/* 8000D0BC 00009FFC  90 01 00 04 */	stw r0, 4(r1)
/* 8000D0C0 0000A000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000D0C4 0000A004  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8000D0C8 0000A008  7C 7F 1B 78 */	mr r31, r3
/* 8000D0CC 0000A00C  90 83 00 60 */	stw r4, 0x60(r3)
/* 8000D0D0 0000A010  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8000D0D4 0000A014  80 03 00 08 */	lwz r0, 8(r3)
/* 8000D0D8 0000A018  7C 03 02 14 */	add r0, r3, r0
/* 8000D0DC 0000A01C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8000D0E0 0000A020  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8000D0E4 0000A024  80 03 00 04 */	lwz r0, 4(r3)
/* 8000D0E8 0000A028  7C 03 02 14 */	add r0, r3, r0
/* 8000D0EC 0000A02C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8000D0F0 0000A030  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8000D0F4 0000A034  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8000D0F8 0000A038  7C 03 02 14 */	add r0, r3, r0
/* 8000D0FC 0000A03C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8000D100 0000A040  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8000D104 0000A044  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8000D108 0000A048  7C 03 02 14 */	add r0, r3, r0
/* 8000D10C 0000A04C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8000D110 0000A050  80 BF 00 60 */	lwz r5, 0x60(r31)
/* 8000D114 0000A054  80 65 00 0C */	lwz r3, 0xc(r5)
/* 8000D118 0000A058  80 05 00 08 */	lwz r0, 8(r5)
/* 8000D11C 0000A05C  7C 00 1A 14 */	add r0, r0, r3
/* 8000D120 0000A060  7C 05 02 14 */	add r0, r5, r0
/* 8000D124 0000A064  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8000D128 0000A068  40 82 00 0C */	bne lbl_8000D134
/* 8000D12C 0000A06C  38 00 00 01 */	li r0, 1
/* 8000D130 0000A070  48 00 00 08 */	b lbl_8000D138
lbl_8000D134:
/* 8000D134 0000A074  38 00 00 00 */	li r0, 0
lbl_8000D138:
/* 8000D138 0000A078  98 1F 00 68 */	stb r0, 0x68(r31)
/* 8000D13C 0000A07C  7C 83 23 78 */	mr r3, r4
/* 8000D140 0000A080  4B FF F4 2D */	bl findFromRoot__7JKRHeapFPv
/* 8000D144 0000A084  90 7F 00 38 */	stw r3, 0x38(r31)
/* 8000D148 0000A088  38 00 00 00 */	li r0, 0
/* 8000D14C 0000A08C  38 60 00 01 */	li r3, 1
/* 8000D150 0000A090  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8000D154 0000A094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000D158 0000A098  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8000D15C 0000A09C  38 21 00 20 */	addi r1, r1, 0x20
/* 8000D160 0000A0A0  7C 08 03 A6 */	mtlr r0
/* 8000D164 0000A0A4  4E 80 00 20 */	blr 

.global fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl:
/* 8000D168 0000A0A8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8000D16C 0000A0AC  28 00 00 00 */	cmplwi r0, 0
/* 8000D170 0000A0B0  40 82 00 14 */	bne lbl_8000D184
/* 8000D174 0000A0B4  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8000D178 0000A0B8  80 04 00 08 */	lwz r0, 8(r4)
/* 8000D17C 0000A0BC  7C 03 02 14 */	add r0, r3, r0
/* 8000D180 0000A0C0  90 04 00 10 */	stw r0, 0x10(r4)
lbl_8000D184:
/* 8000D184 0000A0C4  28 05 00 00 */	cmplwi r5, 0
/* 8000D188 0000A0C8  41 82 00 0C */	beq lbl_8000D194
/* 8000D18C 0000A0CC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8000D190 0000A0D0  90 05 00 00 */	stw r0, 0(r5)
lbl_8000D194:
/* 8000D194 0000A0D4  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8000D198 0000A0D8  4E 80 00 20 */	blr 

.global fetchResource__13JKRMemArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRMemArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl:
/* 8000D19C 0000A0DC  7C 08 02 A6 */	mflr r0
/* 8000D1A0 0000A0E0  54 A9 00 34 */	rlwinm r9, r5, 0, 0, 0x1a
/* 8000D1A4 0000A0E4  90 01 00 04 */	stw r0, 4(r1)
/* 8000D1A8 0000A0E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000D1AC 0000A0EC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8000D1B0 0000A0F0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8000D1B4 0000A0F4  3B C7 00 00 */	addi r30, r7, 0
/* 8000D1B8 0000A0F8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8000D1BC 0000A0FC  3B A4 00 00 */	addi r29, r4, 0
/* 8000D1C0 0000A100  81 06 00 0C */	lwz r8, 0xc(r6)
/* 8000D1C4 0000A104  38 08 00 1F */	addi r0, r8, 0x1f
/* 8000D1C8 0000A108  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8000D1CC 0000A10C  7C 00 48 40 */	cmplw r0, r9
/* 8000D1D0 0000A110  7C 1F 03 78 */	mr r31, r0
/* 8000D1D4 0000A114  40 81 00 08 */	ble lbl_8000D1DC
/* 8000D1D8 0000A118  7D 3F 4B 78 */	mr r31, r9
lbl_8000D1DC:
/* 8000D1DC 0000A11C  80 86 00 10 */	lwz r4, 0x10(r6)
/* 8000D1E0 0000A120  28 04 00 00 */	cmplwi r4, 0
/* 8000D1E4 0000A124  41 82 00 14 */	beq lbl_8000D1F8
/* 8000D1E8 0000A128  38 7D 00 00 */	addi r3, r29, 0
/* 8000D1EC 0000A12C  38 BF 00 00 */	addi r5, r31, 0
/* 8000D1F0 0000A130  4B FF F6 01 */	bl copyMemory__7JKRHeapFPvPvUl
/* 8000D1F4 0000A134  48 00 00 54 */	b lbl_8000D248
lbl_8000D1F8:
/* 8000D1F8 0000A138  80 06 00 04 */	lwz r0, 4(r6)
/* 8000D1FC 0000A13C  54 04 46 3E */	srwi r4, r0, 0x18
/* 8000D200 0000A140  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 8000D204 0000A144  40 82 00 0C */	bne lbl_8000D210
/* 8000D208 0000A148  38 80 00 00 */	li r4, 0
/* 8000D20C 0000A14C  48 00 00 18 */	b lbl_8000D224
lbl_8000D210:
/* 8000D210 0000A150  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 8000D214 0000A154  41 82 00 0C */	beq lbl_8000D220
/* 8000D218 0000A158  38 80 00 02 */	li r4, 2
/* 8000D21C 0000A15C  48 00 00 08 */	b lbl_8000D224
lbl_8000D220:
/* 8000D220 0000A160  38 80 00 01 */	li r4, 1
lbl_8000D224:
/* 8000D224 0000A164  80 06 00 08 */	lwz r0, 8(r6)
/* 8000D228 0000A168  7C 87 23 78 */	mr r7, r4
/* 8000D22C 0000A16C  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8000D230 0000A170  38 9F 00 00 */	addi r4, r31, 0
/* 8000D234 0000A174  38 BD 00 00 */	addi r5, r29, 0
/* 8000D238 0000A178  38 C9 00 00 */	addi r6, r9, 0
/* 8000D23C 0000A17C  7C 63 02 14 */	add r3, r3, r0
/* 8000D240 0000A180  48 00 00 C1 */	bl fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
/* 8000D244 0000A184  7C 7F 1B 78 */	mr r31, r3
lbl_8000D248:
/* 8000D248 0000A188  28 1E 00 00 */	cmplwi r30, 0
/* 8000D24C 0000A18C  41 82 00 08 */	beq lbl_8000D254
/* 8000D250 0000A190  93 FE 00 00 */	stw r31, 0(r30)
lbl_8000D254:
/* 8000D254 0000A194  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000D258 0000A198  7F A3 EB 78 */	mr r3, r29
/* 8000D25C 0000A19C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8000D260 0000A1A0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8000D264 0000A1A4  7C 08 03 A6 */	mtlr r0
/* 8000D268 0000A1A8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8000D26C 0000A1AC  38 21 00 30 */	addi r1, r1, 0x30
/* 8000D270 0000A1B0  4E 80 00 20 */	blr 

.global removeResourceAll__13JKRMemArchiveFv
removeResourceAll__13JKRMemArchiveFv:
/* 8000D274 0000A1B4  80 03 00 44 */	lwz r0, 0x44(r3)
/* 8000D278 0000A1B8  28 00 00 00 */	cmplwi r0, 0
/* 8000D27C 0000A1BC  4D 82 00 20 */	beqlr 
/* 8000D280 0000A1C0  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8000D284 0000A1C4  28 00 00 01 */	cmplwi r0, 1
/* 8000D288 0000A1C8  4D 82 00 20 */	beqlr 
/* 8000D28C 0000A1CC  80 C3 00 4C */	lwz r6, 0x4c(r3)
/* 8000D290 0000A1D0  38 E0 00 00 */	li r7, 0
/* 8000D294 0000A1D4  38 A0 00 00 */	li r5, 0
/* 8000D298 0000A1D8  48 00 00 18 */	b lbl_8000D2B0
lbl_8000D29C:
/* 8000D29C 0000A1DC  80 06 00 10 */	lwz r0, 0x10(r6)
/* 8000D2A0 0000A1E0  28 00 00 00 */	cmplwi r0, 0
/* 8000D2A4 0000A1E4  41 82 00 08 */	beq lbl_8000D2AC
/* 8000D2A8 0000A1E8  90 A6 00 10 */	stw r5, 0x10(r6)
lbl_8000D2AC:
/* 8000D2AC 0000A1EC  38 E7 00 01 */	addi r7, r7, 1
lbl_8000D2B0:
/* 8000D2B0 0000A1F0  80 83 00 44 */	lwz r4, 0x44(r3)
/* 8000D2B4 0000A1F4  80 04 00 08 */	lwz r0, 8(r4)
/* 8000D2B8 0000A1F8  7C 07 00 40 */	cmplw r7, r0
/* 8000D2BC 0000A1FC  41 80 FF E0 */	blt lbl_8000D29C
/* 8000D2C0 0000A200  4E 80 00 20 */	blr 

.global removeResource__13JKRMemArchiveFPv
removeResource__13JKRMemArchiveFPv:
/* 8000D2C4 0000A204  7C 08 02 A6 */	mflr r0
/* 8000D2C8 0000A208  90 01 00 04 */	stw r0, 4(r1)
/* 8000D2CC 0000A20C  94 21 FF F8 */	stwu r1, -8(r1)
/* 8000D2D0 0000A210  4B FF 89 A9 */	bl findPtrResource__10JKRArchiveCFPCv
/* 8000D2D4 0000A214  28 03 00 00 */	cmplwi r3, 0
/* 8000D2D8 0000A218  40 82 00 0C */	bne lbl_8000D2E4
/* 8000D2DC 0000A21C  38 60 00 00 */	li r3, 0
/* 8000D2E0 0000A220  48 00 00 10 */	b lbl_8000D2F0
lbl_8000D2E4:
/* 8000D2E4 0000A224  38 00 00 00 */	li r0, 0
/* 8000D2E8 0000A228  90 03 00 10 */	stw r0, 0x10(r3)
/* 8000D2EC 0000A22C  38 60 00 01 */	li r3, 1
lbl_8000D2F0:
/* 8000D2F0 0000A230  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000D2F4 0000A234  38 21 00 08 */	addi r1, r1, 8
/* 8000D2F8 0000A238  7C 08 03 A6 */	mtlr r0
/* 8000D2FC 0000A23C  4E 80 00 20 */	blr 

.global fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli:
/* 8000D300 0000A240  7C 08 02 A6 */	mflr r0
/* 8000D304 0000A244  2C 07 00 00 */	cmpwi r7, 0
/* 8000D308 0000A248  90 01 00 04 */	stw r0, 4(r1)
/* 8000D30C 0000A24C  38 04 00 1F */	addi r0, r4, 0x1f
/* 8000D310 0000A250  38 83 00 00 */	addi r4, r3, 0
/* 8000D314 0000A254  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000D318 0000A258  54 C8 00 34 */	rlwinm r8, r6, 0, 0, 0x1a
/* 8000D31C 0000A25C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000D320 0000A260  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 8000D324 0000A264  41 82 00 14 */	beq lbl_8000D338
/* 8000D328 0000A268  41 80 00 7C */	blt lbl_8000D3A4
/* 8000D32C 0000A26C  2C 07 00 03 */	cmpwi r7, 3
/* 8000D330 0000A270  40 80 00 74 */	bge lbl_8000D3A4
/* 8000D334 0000A274  48 00 00 24 */	b lbl_8000D358
lbl_8000D338:
/* 8000D338 0000A278  7C 1F 40 40 */	cmplw r31, r8
/* 8000D33C 0000A27C  40 81 00 08 */	ble lbl_8000D344
/* 8000D340 0000A280  7D 1F 43 78 */	mr r31, r8
lbl_8000D344:
/* 8000D344 0000A284  38 65 00 00 */	addi r3, r5, 0
/* 8000D348 0000A288  38 BF 00 00 */	addi r5, r31, 0
/* 8000D34C 0000A28C  4B FF F4 A5 */	bl copyMemory__7JKRHeapFPvPvUl
/* 8000D350 0000A290  7F E3 FB 78 */	mr r3, r31
/* 8000D354 0000A294  48 00 00 70 */	b lbl_8000D3C4
lbl_8000D358:
/* 8000D358 0000A298  88 04 00 05 */	lbz r0, 5(r4)
/* 8000D35C 0000A29C  88 64 00 04 */	lbz r3, 4(r4)
/* 8000D360 0000A2A0  54 00 80 1E */	slwi r0, r0, 0x10
/* 8000D364 0000A2A4  88 C4 00 06 */	lbz r6, 6(r4)
/* 8000D368 0000A2A8  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 8000D36C 0000A2AC  88 E4 00 07 */	lbz r7, 7(r4)
/* 8000D370 0000A2B0  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 8000D374 0000A2B4  7C E0 03 78 */	or r0, r7, r0
/* 8000D378 0000A2B8  7C 00 40 40 */	cmplw r0, r8
/* 8000D37C 0000A2BC  7C 1F 03 78 */	mr r31, r0
/* 8000D380 0000A2C0  40 81 00 08 */	ble lbl_8000D388
/* 8000D384 0000A2C4  7D 1F 43 78 */	mr r31, r8
lbl_8000D388:
/* 8000D388 0000A2C8  38 64 00 00 */	addi r3, r4, 0
/* 8000D38C 0000A2CC  38 85 00 00 */	addi r4, r5, 0
/* 8000D390 0000A2D0  38 BF 00 00 */	addi r5, r31, 0
/* 8000D394 0000A2D4  38 C0 00 00 */	li r6, 0
/* 8000D398 0000A2D8  48 02 92 FD */	bl orderSync__9JKRDecompFPUcPUcUlUl
/* 8000D39C 0000A2DC  7F E3 FB 78 */	mr r3, r31
/* 8000D3A0 0000A2E0  48 00 00 24 */	b lbl_8000D3C4
lbl_8000D3A4:
/* 8000D3A4 0000A2E4  3C 60 80 37 */	lis r3, "@1643"@ha
/* 8000D3A8 0000A2E8  4C C6 31 82 */	crclr 6
/* 8000D3AC 0000A2EC  3C 80 80 37 */	lis r4, "@1644"@ha
/* 8000D3B0 0000A2F0  38 A4 05 34 */	addi r5, r4, "@1644"@l
/* 8000D3B4 0000A2F4  38 63 05 20 */	addi r3, r3, "@1643"@l
/* 8000D3B8 0000A2F8  38 80 02 D0 */	li r4, 0x2d0
/* 8000D3BC 0000A2FC  48 08 1C 29 */	bl OSPanic
/* 8000D3C0 0000A300  38 60 00 00 */	li r3, 0
lbl_8000D3C4:
/* 8000D3C4 0000A304  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000D3C8 0000A308  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000D3CC 0000A30C  38 21 00 28 */	addi r1, r1, 0x28
/* 8000D3D0 0000A310  7C 08 03 A6 */	mtlr r0
/* 8000D3D4 0000A314  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x8036FFA0 - 0x803A8380
.balign 8
"@1643":
	.incbin "baserom.dol", 0x36D520, 0x14
"@1644":
	.incbin "baserom.dol", 0x36D534, 0x1C

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__13JKRMemArchive
__vt__13JKRMemArchive:
  .4byte 0
  .4byte 0
  .4byte __dt__13JKRMemArchiveFv
  .4byte unmount__13JKRFileLoaderFv
  .4byte becomeCurrent__10JKRArchiveFPCc
  .4byte getResource__10JKRArchiveFPCc
  .4byte getResource__10JKRArchiveFUlPCc
  .4byte readResource__10JKRArchiveFPvUlPCc
  .4byte readResource__10JKRArchiveFPvUlUlPCc
  .4byte removeResourceAll__13JKRMemArchiveFv
  .4byte removeResource__13JKRMemArchiveFPv
  .4byte detachResource__10JKRArchiveFPv
  .4byte getResSize__10JKRArchiveCFPCv
  .4byte countFile__10JKRArchiveCFPCc
  .4byte getFirstFile__10JKRArchiveCFPCc
  .4byte fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl
  .4byte fetchResource__13JKRMemArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
  .4byte 0
