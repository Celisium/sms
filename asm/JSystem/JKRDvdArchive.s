.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection
__ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection:
/* 80008DB0 00005CF0  7C 08 02 A6 */	mflr r0
/* 80008DB4 00005CF4  90 01 00 04 */	stw r0, 4(r1)
/* 80008DB8 00005CF8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80008DBC 00005CFC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80008DC0 00005D00  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80008DC4 00005D04  3B C5 00 00 */	addi r30, r5, 0
/* 80008DC8 00005D08  38 A0 00 03 */	li r5, 3
/* 80008DCC 00005D0C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80008DD0 00005D10  3B A4 00 00 */	addi r29, r4, 0
/* 80008DD4 00005D14  90 61 00 08 */	stw r3, 8(r1)
/* 80008DD8 00005D18  80 61 00 08 */	lwz r3, 8(r1)
/* 80008DDC 00005D1C  4B FF C8 DD */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 80008DE0 00005D20  83 E1 00 08 */	lwz r31, 8(r1)
/* 80008DE4 00005D24  3C 60 80 3B */	lis r3, __vt__13JKRDvdArchive@ha
/* 80008DE8 00005D28  38 03 84 D8 */	addi r0, r3, __vt__13JKRDvdArchive@l
/* 80008DEC 00005D2C  90 1F 00 00 */	stw r0, 0(r31)
/* 80008DF0 00005D30  38 7F 00 00 */	addi r3, r31, 0
/* 80008DF4 00005D34  38 9D 00 00 */	addi r4, r29, 0
/* 80008DF8 00005D38  93 DF 00 5C */	stw r30, 0x5c(r31)
/* 80008DFC 00005D3C  48 00 01 65 */	bl open__13JKRDvdArchiveFl
/* 80008E00 00005D40  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 80008E04 00005D44  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 80008E08 00005D48  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80008E0C 00005D4C  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80008E10 00005D50  38 63 0B B0 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 80008E14 00005D54  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 80008E18 00005D58  38 9F 00 18 */	addi r4, r31, 0x18
/* 80008E1C 00005D5C  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 80008E20 00005D60  80 05 00 04 */	lwz r0, 4(r5)
/* 80008E24 00005D64  7C 06 02 14 */	add r0, r6, r0
/* 80008E28 00005D68  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80008E2C 00005D6C  48 00 5E D9 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 80008E30 00005D70  38 00 00 01 */	li r0, 1
/* 80008E34 00005D74  98 1F 00 30 */	stb r0, 0x30(r31)
/* 80008E38 00005D78  7F E3 FB 78 */	mr r3, r31
/* 80008E3C 00005D7C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80008E40 00005D80  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80008E44 00005D84  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80008E48 00005D88  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80008E4C 00005D8C  38 21 00 28 */	addi r1, r1, 0x28
/* 80008E50 00005D90  7C 08 03 A6 */	mtlr r0
/* 80008E54 00005D94  4E 80 00 20 */	blr 

.global __dt__13JKRDvdArchiveFv
__dt__13JKRDvdArchiveFv:
/* 80008E58 00005D98  7C 08 02 A6 */	mflr r0
/* 80008E5C 00005D9C  90 01 00 04 */	stw r0, 4(r1)
/* 80008E60 00005DA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80008E64 00005DA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80008E68 00005DA8  3B E4 00 00 */	addi r31, r4, 0
/* 80008E6C 00005DAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80008E70 00005DB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80008E74 00005DB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80008E78 00005DB8  93 81 00 10 */	stw r28, 0x10(r1)
/* 80008E7C 00005DBC  41 82 00 C0 */	beq lbl_80008F3C
/* 80008E80 00005DC0  3C 60 80 3B */	lis r3, __vt__13JKRDvdArchive@ha
/* 80008E84 00005DC4  38 03 84 D8 */	addi r0, r3, __vt__13JKRDvdArchive@l
/* 80008E88 00005DC8  90 1E 00 00 */	stw r0, 0(r30)
/* 80008E8C 00005DCC  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80008E90 00005DD0  28 00 00 01 */	cmplwi r0, 1
/* 80008E94 00005DD4  40 82 00 8C */	bne lbl_80008F20
/* 80008E98 00005DD8  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 80008E9C 00005DDC  28 00 00 00 */	cmplwi r0, 0
/* 80008EA0 00005DE0  41 82 00 44 */	beq lbl_80008EE4
/* 80008EA4 00005DE4  83 BE 00 4C */	lwz r29, 0x4c(r30)
/* 80008EA8 00005DE8  3B 80 00 00 */	li r28, 0
/* 80008EAC 00005DEC  48 00 00 20 */	b lbl_80008ECC
lbl_80008EB0:
/* 80008EB0 00005DF0  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80008EB4 00005DF4  28 03 00 00 */	cmplwi r3, 0
/* 80008EB8 00005DF8  41 82 00 0C */	beq lbl_80008EC4
/* 80008EBC 00005DFC  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80008EC0 00005E00  48 00 36 05 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_80008EC4:
/* 80008EC4 00005E04  3B BD 00 14 */	addi r29, r29, 0x14
/* 80008EC8 00005E08  3B 9C 00 01 */	addi r28, r28, 1
lbl_80008ECC:
/* 80008ECC 00005E0C  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 80008ED0 00005E10  80 03 00 08 */	lwz r0, 8(r3)
/* 80008ED4 00005E14  7C 1C 00 40 */	cmplw r28, r0
/* 80008ED8 00005E18  41 80 FF D8 */	blt lbl_80008EB0
/* 80008EDC 00005E1C  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80008EE0 00005E20  48 00 35 E5 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_80008EE4:
/* 80008EE4 00005E24  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80008EE8 00005E28  28 03 00 00 */	cmplwi r3, 0
/* 80008EEC 00005E2C  41 82 00 1C */	beq lbl_80008F08
/* 80008EF0 00005E30  41 82 00 18 */	beq lbl_80008F08
/* 80008EF4 00005E34  81 83 00 00 */	lwz r12, 0(r3)
/* 80008EF8 00005E38  38 80 00 01 */	li r4, 1
/* 80008EFC 00005E3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80008F00 00005E40  7D 88 03 A6 */	mtlr r12
/* 80008F04 00005E44  4E 80 00 21 */	blrl 
lbl_80008F08:
/* 80008F08 00005E48  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80008F0C 00005E4C  38 63 0B B0 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 80008F10 00005E50  38 9E 00 18 */	addi r4, r30, 0x18
/* 80008F14 00005E54  48 00 60 89 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 80008F18 00005E58  38 00 00 00 */	li r0, 0
/* 80008F1C 00005E5C  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_80008F20:
/* 80008F20 00005E60  38 7E 00 00 */	addi r3, r30, 0
/* 80008F24 00005E64  38 80 00 00 */	li r4, 0
/* 80008F28 00005E68  4B FF C8 49 */	bl __dt__10JKRArchiveFv
/* 80008F2C 00005E6C  7F E0 07 35 */	extsh. r0, r31
/* 80008F30 00005E70  40 81 00 0C */	ble lbl_80008F3C
/* 80008F34 00005E74  7F C3 F3 78 */	mr r3, r30
/* 80008F38 00005E78  48 00 3B 79 */	bl __dl__FPv
lbl_80008F3C:
/* 80008F3C 00005E7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80008F40 00005E80  7F C3 F3 78 */	mr r3, r30
/* 80008F44 00005E84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80008F48 00005E88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80008F4C 00005E8C  7C 08 03 A6 */	mtlr r0
/* 80008F50 00005E90  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80008F54 00005E94  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80008F58 00005E98  38 21 00 20 */	addi r1, r1, 0x20
/* 80008F5C 00005E9C  4E 80 00 20 */	blr 

.global open__13JKRDvdArchiveFl
open__13JKRDvdArchiveFl:
/* 80008F60 00005EA0  7C 08 02 A6 */	mflr r0
/* 80008F64 00005EA4  38 A0 00 00 */	li r5, 0
/* 80008F68 00005EA8  90 01 00 04 */	stw r0, 4(r1)
/* 80008F6C 00005EAC  38 00 00 00 */	li r0, 0
/* 80008F70 00005EB0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80008F74 00005EB4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80008F78 00005EB8  3B E3 00 00 */	addi r31, r3, 0
/* 80008F7C 00005EBC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80008F80 00005EC0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80008F84 00005EC4  3B A4 00 00 */	addi r29, r4, 0
/* 80008F88 00005EC8  90 03 00 44 */	stw r0, 0x44(r3)
/* 80008F8C 00005ECC  38 60 00 F8 */	li r3, 0xf8
/* 80008F90 00005ED0  90 1F 00 60 */	stw r0, 0x60(r31)
/* 80008F94 00005ED4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80008F98 00005ED8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80008F9C 00005EDC  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80008FA0 00005EE0  80 8D 8D 68 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 80008FA4 00005EE4  48 00 39 A1 */	bl __nw__FUlP7JKRHeapi
/* 80008FA8 00005EE8  28 03 00 00 */	cmplwi r3, 0
/* 80008FAC 00005EEC  41 82 00 0C */	beq lbl_80008FB8
/* 80008FB0 00005EF0  7F A4 EB 78 */	mr r4, r29
/* 80008FB4 00005EF4  48 00 07 85 */	bl __ct__10JKRDvdFileFl
lbl_80008FB8:
/* 80008FB8 00005EF8  90 7F 00 64 */	stw r3, 0x64(r31)
/* 80008FBC 00005EFC  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 80008FC0 00005F00  28 00 00 00 */	cmplwi r0, 0
/* 80008FC4 00005F04  40 82 00 14 */	bne lbl_80008FD8
/* 80008FC8 00005F08  38 00 00 00 */	li r0, 0
/* 80008FCC 00005F0C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80008FD0 00005F10  38 60 00 00 */	li r3, 0
/* 80008FD4 00005F14  48 00 01 68 */	b lbl_8000913C
lbl_80008FD8:
/* 80008FD8 00005F18  80 6D 8D 68 */	lwz r3, sSystemHeap__7JKRHeap@sda21(r13)
/* 80008FDC 00005F1C  38 80 00 20 */	li r4, 0x20
/* 80008FE0 00005F20  38 A0 00 20 */	li r5, 0x20
/* 80008FE4 00005F24  81 83 00 00 */	lwz r12, 0(r3)
/* 80008FE8 00005F28  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80008FEC 00005F2C  7D 88 03 A6 */	mtlr r12
/* 80008FF0 00005F30  4E 80 00 21 */	blrl 
/* 80008FF4 00005F34  28 03 00 00 */	cmplwi r3, 0
/* 80008FF8 00005F38  3B C3 00 00 */	addi r30, r3, 0
/* 80008FFC 00005F3C  40 82 00 10 */	bne lbl_8000900C
/* 80009000 00005F40  38 00 00 00 */	li r0, 0
/* 80009004 00005F44  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80009008 00005F48  48 00 00 CC */	b lbl_800090D4
lbl_8000900C:
/* 8000900C 00005F4C  38 7D 00 00 */	addi r3, r29, 0
/* 80009010 00005F50  38 9E 00 00 */	addi r4, r30, 0
/* 80009014 00005F54  39 5F 00 58 */	addi r10, r31, 0x58
/* 80009018 00005F58  38 A0 00 01 */	li r5, 1
/* 8000901C 00005F5C  38 C0 00 20 */	li r6, 0x20
/* 80009020 00005F60  38 E0 00 00 */	li r7, 0
/* 80009024 00005F64  39 00 00 01 */	li r8, 1
/* 80009028 00005F68  39 20 00 00 */	li r9, 0
/* 8000902C 00005F6C  48 02 B4 E9 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 80009030 00005F70  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 80009034 00005F74  2C 00 00 01 */	cmpwi r0, 1
/* 80009038 00005F78  40 82 00 0C */	bne lbl_80009044
/* 8000903C 00005F7C  38 00 00 20 */	li r0, 0x20
/* 80009040 00005F80  48 00 00 08 */	b lbl_80009048
lbl_80009044:
/* 80009044 00005F84  38 00 FF E0 */	li r0, -32
lbl_80009048:
/* 80009048 00005F88  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8000904C 00005F8C  7C 04 03 78 */	mr r4, r0
/* 80009050 00005F90  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 80009054 00005F94  48 00 33 F9 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80009058 00005F98  90 7F 00 44 */	stw r3, 0x44(r31)
/* 8000905C 00005F9C  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80009060 00005FA0  28 04 00 00 */	cmplwi r4, 0
/* 80009064 00005FA4  40 82 00 10 */	bne lbl_80009074
/* 80009068 00005FA8  38 00 00 00 */	li r0, 0
/* 8000906C 00005FAC  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80009070 00005FB0  48 00 00 64 */	b lbl_800090D4
lbl_80009074:
/* 80009074 00005FB4  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 80009078 00005FB8  38 7D 00 00 */	addi r3, r29, 0
/* 8000907C 00005FBC  38 A0 00 01 */	li r5, 1
/* 80009080 00005FC0  38 E0 00 00 */	li r7, 0
/* 80009084 00005FC4  39 00 00 01 */	li r8, 1
/* 80009088 00005FC8  39 20 00 20 */	li r9, 0x20
/* 8000908C 00005FCC  39 40 00 00 */	li r10, 0
/* 80009090 00005FD0  48 02 B4 85 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 80009094 00005FD4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80009098 00005FD8  80 03 00 04 */	lwz r0, 4(r3)
/* 8000909C 00005FDC  7C 03 02 14 */	add r0, r3, r0
/* 800090A0 00005FE0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 800090A4 00005FE4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 800090A8 00005FE8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800090AC 00005FEC  7C 03 02 14 */	add r0, r3, r0
/* 800090B0 00005FF0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 800090B4 00005FF4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 800090B8 00005FF8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800090BC 00005FFC  7C 03 02 14 */	add r0, r3, r0
/* 800090C0 00006000  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800090C4 00006004  80 7E 00 08 */	lwz r3, 8(r30)
/* 800090C8 00006008  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800090CC 0000600C  7C 03 02 14 */	add r0, r3, r0
/* 800090D0 00006010  90 1F 00 60 */	stw r0, 0x60(r31)
lbl_800090D4:
/* 800090D4 00006014  28 1E 00 00 */	cmplwi r30, 0
/* 800090D8 00006018  41 82 00 1C */	beq lbl_800090F4
/* 800090DC 0000601C  80 6D 8D 68 */	lwz r3, sSystemHeap__7JKRHeap@sda21(r13)
/* 800090E0 00006020  7F C4 F3 78 */	mr r4, r30
/* 800090E4 00006024  81 83 00 00 */	lwz r12, 0(r3)
/* 800090E8 00006028  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800090EC 0000602C  7D 88 03 A6 */	mtlr r12
/* 800090F0 00006030  4E 80 00 21 */	blrl 
lbl_800090F4:
/* 800090F4 00006034  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 800090F8 00006038  28 00 00 00 */	cmplwi r0, 0
/* 800090FC 0000603C  40 82 00 28 */	bne lbl_80009124
/* 80009100 00006040  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80009104 00006044  28 03 00 00 */	cmplwi r3, 0
/* 80009108 00006048  41 82 00 1C */	beq lbl_80009124
/* 8000910C 0000604C  41 82 00 18 */	beq lbl_80009124
/* 80009110 00006050  81 83 00 00 */	lwz r12, 0(r3)
/* 80009114 00006054  38 80 00 01 */	li r4, 1
/* 80009118 00006058  81 8C 00 08 */	lwz r12, 8(r12)
/* 8000911C 0000605C  7D 88 03 A6 */	mtlr r12
/* 80009120 00006060  4E 80 00 21 */	blrl 
lbl_80009124:
/* 80009124 00006064  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 80009128 00006068  28 00 00 00 */	cmplwi r0, 0
/* 8000912C 0000606C  40 82 00 0C */	bne lbl_80009138
/* 80009130 00006070  38 60 00 00 */	li r3, 0
/* 80009134 00006074  48 00 00 08 */	b lbl_8000913C
lbl_80009138:
/* 80009138 00006078  38 60 00 01 */	li r3, 1
lbl_8000913C:
/* 8000913C 0000607C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80009140 00006080  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80009144 00006084  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80009148 00006088  7C 08 03 A6 */	mtlr r0
/* 8000914C 0000608C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80009150 00006090  38 21 00 28 */	addi r1, r1, 0x28
/* 80009154 00006094  4E 80 00 20 */	blr 

.global fetchResource__13JKRDvdArchiveFPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRDvdArchiveFPQ210JKRArchive12SDIFileEntryPUl:
/* 80009158 00006098  7C 08 02 A6 */	mflr r0
/* 8000915C 0000609C  39 03 00 00 */	addi r8, r3, 0
/* 80009160 000060A0  90 01 00 04 */	stw r0, 4(r1)
/* 80009164 000060A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80009168 000060A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8000916C 000060AC  3B E5 00 00 */	addi r31, r5, 0
/* 80009170 000060B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80009174 000060B4  7C 9E 23 78 */	mr r30, r4
/* 80009178 000060B8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8000917C 000060BC  28 00 00 00 */	cmplwi r0, 0
/* 80009180 000060C0  40 82 00 6C */	bne lbl_800091EC
/* 80009184 000060C4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80009188 000060C8  54 03 46 3E */	srwi r3, r0, 0x18
/* 8000918C 000060CC  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 80009190 000060D0  40 82 00 0C */	bne lbl_8000919C
/* 80009194 000060D4  38 E0 00 00 */	li r7, 0
/* 80009198 000060D8  48 00 00 18 */	b lbl_800091B0
lbl_8000919C:
/* 8000919C 000060DC  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 800091A0 000060E0  41 82 00 0C */	beq lbl_800091AC
/* 800091A4 000060E4  38 E0 00 02 */	li r7, 2
/* 800091A8 000060E8  48 00 00 08 */	b lbl_800091B0
lbl_800091AC:
/* 800091AC 000060EC  38 E0 00 01 */	li r7, 1
lbl_800091B0:
/* 800091B0 000060F0  80 88 00 60 */	lwz r4, 0x60(r8)
/* 800091B4 000060F4  39 21 00 14 */	addi r9, r1, 0x14
/* 800091B8 000060F8  80 1E 00 08 */	lwz r0, 8(r30)
/* 800091BC 000060FC  80 68 00 40 */	lwz r3, 0x40(r8)
/* 800091C0 00006100  80 C8 00 38 */	lwz r6, 0x38(r8)
/* 800091C4 00006104  7C 84 02 14 */	add r4, r4, r0
/* 800091C8 00006108  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 800091CC 0000610C  81 08 00 58 */	lwz r8, 0x58(r8)
/* 800091D0 00006110  48 00 03 11 */	bl fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc
/* 800091D4 00006114  28 1F 00 00 */	cmplwi r31, 0
/* 800091D8 00006118  41 82 00 08 */	beq lbl_800091E0
/* 800091DC 0000611C  90 7F 00 00 */	stw r3, 0(r31)
lbl_800091E0:
/* 800091E0 00006120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800091E4 00006124  90 1E 00 10 */	stw r0, 0x10(r30)
/* 800091E8 00006128  48 00 00 14 */	b lbl_800091FC
lbl_800091EC:
/* 800091EC 0000612C  28 1F 00 00 */	cmplwi r31, 0
/* 800091F0 00006130  41 82 00 0C */	beq lbl_800091FC
/* 800091F4 00006134  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800091F8 00006138  90 1F 00 00 */	stw r0, 0(r31)
lbl_800091FC:
/* 800091FC 0000613C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80009200 00006140  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80009204 00006144  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80009208 00006148  7C 08 03 A6 */	mtlr r0
/* 8000920C 0000614C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80009210 00006150  38 21 00 20 */	addi r1, r1, 0x20
/* 80009214 00006154  4E 80 00 20 */	blr 

.global fetchResource__13JKRDvdArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRDvdArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl:
/* 80009218 00006158  7C 08 02 A6 */	mflr r0
/* 8000921C 0000615C  54 AA 00 34 */	rlwinm r10, r5, 0, 0, 0x1a
/* 80009220 00006160  90 01 00 04 */	stw r0, 4(r1)
/* 80009224 00006164  39 63 00 00 */	addi r11, r3, 0
/* 80009228 00006168  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000922C 0000616C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80009230 00006170  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80009234 00006174  3B C7 00 00 */	addi r30, r7, 0
/* 80009238 00006178  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8000923C 0000617C  3B A4 00 00 */	addi r29, r4, 0
/* 80009240 00006180  81 26 00 0C */	lwz r9, 0xc(r6)
/* 80009244 00006184  38 09 00 1F */	addi r0, r9, 0x1f
/* 80009248 00006188  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8000924C 0000618C  7C 00 50 40 */	cmplw r0, r10
/* 80009250 00006190  7C 1F 03 78 */	mr r31, r0
/* 80009254 00006194  40 81 00 08 */	ble lbl_8000925C
/* 80009258 00006198  7D 5F 53 78 */	mr r31, r10
lbl_8000925C:
/* 8000925C 0000619C  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80009260 000061A0  28 04 00 00 */	cmplwi r4, 0
/* 80009264 000061A4  40 82 00 60 */	bne lbl_800092C4
/* 80009268 000061A8  80 06 00 04 */	lwz r0, 4(r6)
/* 8000926C 000061AC  54 03 46 3E */	srwi r3, r0, 0x18
/* 80009270 000061B0  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 80009274 000061B4  40 82 00 0C */	bne lbl_80009280
/* 80009278 000061B8  38 60 00 00 */	li r3, 0
/* 8000927C 000061BC  48 00 00 18 */	b lbl_80009294
lbl_80009280:
/* 80009280 000061C0  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80009284 000061C4  41 82 00 0C */	beq lbl_80009290
/* 80009288 000061C8  38 60 00 02 */	li r3, 2
/* 8000928C 000061CC  48 00 00 08 */	b lbl_80009294
lbl_80009290:
/* 80009290 000061D0  38 60 00 01 */	li r3, 1
lbl_80009294:
/* 80009294 000061D4  80 06 00 08 */	lwz r0, 8(r6)
/* 80009298 000061D8  7C 68 1B 78 */	mr r8, r3
/* 8000929C 000061DC  80 8B 00 60 */	lwz r4, 0x60(r11)
/* 800092A0 000061E0  7D 25 4B 78 */	mr r5, r9
/* 800092A4 000061E4  80 6B 00 40 */	lwz r3, 0x40(r11)
/* 800092A8 000061E8  81 2B 00 58 */	lwz r9, 0x58(r11)
/* 800092AC 000061EC  38 DD 00 00 */	addi r6, r29, 0
/* 800092B0 000061F0  38 EA 00 00 */	addi r7, r10, 0
/* 800092B4 000061F4  7C 84 02 14 */	add r4, r4, r0
/* 800092B8 000061F8  48 00 00 45 */	bl fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii
/* 800092BC 000061FC  7C 7F 1B 78 */	mr r31, r3
/* 800092C0 00006200  48 00 00 10 */	b lbl_800092D0
lbl_800092C4:
/* 800092C4 00006204  38 7D 00 00 */	addi r3, r29, 0
/* 800092C8 00006208  38 BF 00 00 */	addi r5, r31, 0
/* 800092CC 0000620C  48 00 35 25 */	bl copyMemory__7JKRHeapFPvPvUl
lbl_800092D0:
/* 800092D0 00006210  28 1E 00 00 */	cmplwi r30, 0
/* 800092D4 00006214  41 82 00 08 */	beq lbl_800092DC
/* 800092D8 00006218  93 FE 00 00 */	stw r31, 0(r30)
lbl_800092DC:
/* 800092DC 0000621C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800092E0 00006220  7F A3 EB 78 */	mr r3, r29
/* 800092E4 00006224  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800092E8 00006228  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800092EC 0000622C  7C 08 03 A6 */	mtlr r0
/* 800092F0 00006230  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800092F4 00006234  38 21 00 30 */	addi r1, r1, 0x30
/* 800092F8 00006238  4E 80 00 20 */	blr 

.global fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii
fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii:
/* 800092FC 0000623C  7C 08 02 A6 */	mflr r0
/* 80009300 00006240  2C 09 00 01 */	cmpwi r9, 1
/* 80009304 00006244  90 01 00 04 */	stw r0, 4(r1)
/* 80009308 00006248  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8000930C 0000624C  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 80009310 00006250  3B 45 00 00 */	addi r26, r5, 0
/* 80009314 00006254  3C A0 80 37 */	lis r5, "@438"@ha
/* 80009318 00006258  38 1A 00 1F */	addi r0, r26, 0x1f
/* 8000931C 0000625C  38 A5 00 D8 */	addi r5, r5, "@438"@l
/* 80009320 00006260  3B 83 00 00 */	addi r28, r3, 0
/* 80009324 00006264  3B A4 00 00 */	addi r29, r4, 0
/* 80009328 00006268  3B C6 00 00 */	addi r30, r6, 0
/* 8000932C 0000626C  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 80009330 00006270  54 FF 00 34 */	rlwinm r31, r7, 0, 0, 0x1a
/* 80009334 00006274  41 82 01 64 */	beq lbl_80009498
/* 80009338 00006278  40 80 00 10 */	bge lbl_80009348
/* 8000933C 0000627C  2C 09 00 00 */	cmpwi r9, 0
/* 80009340 00006280  40 80 00 14 */	bge lbl_80009354
/* 80009344 00006284  48 00 01 70 */	b lbl_800094B4
lbl_80009348:
/* 80009348 00006288  2C 09 00 03 */	cmpwi r9, 3
/* 8000934C 0000628C  40 80 01 68 */	bge lbl_800094B4
/* 80009350 00006290  48 00 01 10 */	b lbl_80009460
lbl_80009354:
/* 80009354 00006294  2C 08 00 00 */	cmpwi r8, 0
/* 80009358 00006298  41 82 00 14 */	beq lbl_8000936C
/* 8000935C 0000629C  41 80 01 04 */	blt lbl_80009460
/* 80009360 000062A0  2C 08 00 03 */	cmpwi r8, 3
/* 80009364 000062A4  40 80 00 FC */	bge lbl_80009460
/* 80009368 000062A8  48 00 00 3C */	b lbl_800093A4
lbl_8000936C:
/* 8000936C 000062AC  7C 1B F8 40 */	cmplw r27, r31
/* 80009370 000062B0  40 81 00 08 */	ble lbl_80009378
/* 80009374 000062B4  7F FB FB 78 */	mr r27, r31
lbl_80009378:
/* 80009378 000062B8  38 7C 00 00 */	addi r3, r28, 0
/* 8000937C 000062BC  38 9E 00 00 */	addi r4, r30, 0
/* 80009380 000062C0  38 DB 00 00 */	addi r6, r27, 0
/* 80009384 000062C4  39 3D 00 00 */	addi r9, r29, 0
/* 80009388 000062C8  38 A0 00 00 */	li r5, 0
/* 8000938C 000062CC  38 E0 00 00 */	li r7, 0
/* 80009390 000062D0  39 00 00 01 */	li r8, 1
/* 80009394 000062D4  39 40 00 00 */	li r10, 0
/* 80009398 000062D8  48 02 B1 7D */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 8000939C 000062DC  7F 63 DB 78 */	mr r3, r27
/* 800093A0 000062E0  48 00 01 2C */	b lbl_800094CC
lbl_800093A4:
/* 800093A4 000062E4  80 6D 8D 68 */	lwz r3, sSystemHeap__7JKRHeap@sda21(r13)
/* 800093A8 000062E8  38 80 00 20 */	li r4, 0x20
/* 800093AC 000062EC  38 A0 00 20 */	li r5, 0x20
/* 800093B0 000062F0  81 83 00 00 */	lwz r12, 0(r3)
/* 800093B4 000062F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800093B8 000062F8  7D 88 03 A6 */	mtlr r12
/* 800093BC 000062FC  4E 80 00 21 */	blrl 
/* 800093C0 00006300  3B 63 00 00 */	addi r27, r3, 0
/* 800093C4 00006304  38 7C 00 00 */	addi r3, r28, 0
/* 800093C8 00006308  38 9B 00 00 */	addi r4, r27, 0
/* 800093CC 0000630C  39 3D 00 00 */	addi r9, r29, 0
/* 800093D0 00006310  38 A0 00 02 */	li r5, 2
/* 800093D4 00006314  38 C0 00 20 */	li r6, 0x20
/* 800093D8 00006318  38 E0 00 00 */	li r7, 0
/* 800093DC 0000631C  39 00 00 01 */	li r8, 1
/* 800093E0 00006320  39 40 00 00 */	li r10, 0
/* 800093E4 00006324  48 02 B1 31 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 800093E8 00006328  80 6D 8D 68 */	lwz r3, sSystemHeap__7JKRHeap@sda21(r13)
/* 800093EC 0000632C  7F 64 DB 78 */	mr r4, r27
/* 800093F0 00006330  88 1B 00 05 */	lbz r0, 5(r27)
/* 800093F4 00006334  81 83 00 00 */	lwz r12, 0(r3)
/* 800093F8 00006338  88 BB 00 04 */	lbz r5, 4(r27)
/* 800093FC 0000633C  54 00 80 1E */	slwi r0, r0, 0x10
/* 80009400 00006340  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80009404 00006344  88 DB 00 06 */	lbz r6, 6(r27)
/* 80009408 00006348  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 8000940C 0000634C  88 FB 00 07 */	lbz r7, 7(r27)
/* 80009410 00006350  7D 88 03 A6 */	mtlr r12
/* 80009414 00006354  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 80009418 00006358  7C FB 03 78 */	or r27, r7, r0
/* 8000941C 0000635C  4E 80 00 21 */	blrl 
/* 80009420 00006360  38 1B 00 1F */	addi r0, r27, 0x1f
/* 80009424 00006364  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 80009428 00006368  7C 00 F8 40 */	cmplw r0, r31
/* 8000942C 0000636C  7C 06 03 78 */	mr r6, r0
/* 80009430 00006370  40 81 00 08 */	ble lbl_80009438
/* 80009434 00006374  7F E6 FB 78 */	mr r6, r31
lbl_80009438:
/* 80009438 00006378  38 7C 00 00 */	addi r3, r28, 0
/* 8000943C 0000637C  38 9E 00 00 */	addi r4, r30, 0
/* 80009440 00006380  39 3D 00 00 */	addi r9, r29, 0
/* 80009444 00006384  38 A0 00 00 */	li r5, 0
/* 80009448 00006388  38 E0 00 00 */	li r7, 0
/* 8000944C 0000638C  39 00 00 01 */	li r8, 1
/* 80009450 00006390  39 40 00 00 */	li r10, 0
/* 80009454 00006394  48 02 B0 C1 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 80009458 00006398  7F 63 DB 78 */	mr r3, r27
/* 8000945C 0000639C  48 00 00 70 */	b lbl_800094CC
lbl_80009460:
/* 80009460 000063A0  7C 1A F8 40 */	cmplw r26, r31
/* 80009464 000063A4  40 81 00 08 */	ble lbl_8000946C
/* 80009468 000063A8  7F FA FB 78 */	mr r26, r31
lbl_8000946C:
/* 8000946C 000063AC  38 7C 00 00 */	addi r3, r28, 0
/* 80009470 000063B0  38 9E 00 00 */	addi r4, r30, 0
/* 80009474 000063B4  38 DA 00 00 */	addi r6, r26, 0
/* 80009478 000063B8  39 3D 00 00 */	addi r9, r29, 0
/* 8000947C 000063BC  38 A0 00 01 */	li r5, 1
/* 80009480 000063C0  38 E0 00 00 */	li r7, 0
/* 80009484 000063C4  39 00 00 01 */	li r8, 1
/* 80009488 000063C8  39 40 00 00 */	li r10, 0
/* 8000948C 000063CC  48 02 B0 89 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 80009490 000063D0  7F 43 D3 78 */	mr r3, r26
/* 80009494 000063D4  48 00 00 38 */	b lbl_800094CC
lbl_80009498:
/* 80009498 000063D8  38 65 00 00 */	addi r3, r5, 0
/* 8000949C 000063DC  4C C6 31 82 */	crclr 6
/* 800094A0 000063E0  38 A5 00 14 */	addi r5, r5, 0x14
/* 800094A4 000063E4  38 80 02 15 */	li r4, 0x215
/* 800094A8 000063E8  48 08 5B 3D */	bl OSPanic
/* 800094AC 000063EC  38 60 00 00 */	li r3, 0
/* 800094B0 000063F0  48 00 00 1C */	b lbl_800094CC
lbl_800094B4:
/* 800094B4 000063F4  38 65 00 00 */	addi r3, r5, 0
/* 800094B8 000063F8  4C C6 31 82 */	crclr 6
/* 800094BC 000063FC  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800094C0 00006400  38 80 02 1E */	li r4, 0x21e
/* 800094C4 00006404  48 08 5B 21 */	bl OSPanic
/* 800094C8 00006408  38 60 00 00 */	li r3, 0
lbl_800094CC:
/* 800094CC 0000640C  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 800094D0 00006410  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800094D4 00006414  38 21 00 40 */	addi r1, r1, 0x40
/* 800094D8 00006418  7C 08 03 A6 */	mtlr r0
/* 800094DC 0000641C  4E 80 00 20 */	blr 

.global fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc
fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc:
/* 800094E0 00006420  7C 08 02 A6 */	mflr r0
/* 800094E4 00006424  2C 08 00 01 */	cmpwi r8, 1
/* 800094E8 00006428  90 01 00 04 */	stw r0, 4(r1)
/* 800094EC 0000642C  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 800094F0 00006430  BF 21 00 2C */	stmw r25, 0x2c(r1)
/* 800094F4 00006434  3B 25 00 00 */	addi r25, r5, 0
/* 800094F8 00006438  3C A0 80 37 */	lis r5, "@438"@ha
/* 800094FC 0000643C  38 19 00 1F */	addi r0, r25, 0x1f
/* 80009500 00006440  38 A5 00 D8 */	addi r5, r5, "@438"@l
/* 80009504 00006444  3B 83 00 00 */	addi r28, r3, 0
/* 80009508 00006448  3B A4 00 00 */	addi r29, r4, 0
/* 8000950C 0000644C  3B C6 00 00 */	addi r30, r6, 0
/* 80009510 00006450  3B E9 00 00 */	addi r31, r9, 0
/* 80009514 00006454  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
/* 80009518 00006458  41 82 01 6C */	beq lbl_80009684
/* 8000951C 0000645C  40 80 00 10 */	bge lbl_8000952C
/* 80009520 00006460  2C 08 00 00 */	cmpwi r8, 0
/* 80009524 00006464  40 80 00 14 */	bge lbl_80009538
/* 80009528 00006468  48 00 01 78 */	b lbl_800096A0
lbl_8000952C:
/* 8000952C 0000646C  2C 08 00 03 */	cmpwi r8, 3
/* 80009530 00006470  40 80 01 70 */	bge lbl_800096A0
/* 80009534 00006474  48 00 01 0C */	b lbl_80009640
lbl_80009538:
/* 80009538 00006478  2C 07 00 00 */	cmpwi r7, 0
/* 8000953C 0000647C  41 82 00 14 */	beq lbl_80009550
/* 80009540 00006480  41 80 01 00 */	blt lbl_80009640
/* 80009544 00006484  2C 07 00 03 */	cmpwi r7, 3
/* 80009548 00006488  40 80 00 F8 */	bge lbl_80009640
/* 8000954C 0000648C  48 00 00 48 */	b lbl_80009594
lbl_80009550:
/* 80009550 00006490  38 7A 00 00 */	addi r3, r26, 0
/* 80009554 00006494  38 BE 00 00 */	addi r5, r30, 0
/* 80009558 00006498  38 80 00 20 */	li r4, 0x20
/* 8000955C 0000649C  48 00 2E F1 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80009560 000064A0  3B 63 00 00 */	addi r27, r3, 0
/* 80009564 000064A4  38 7C 00 00 */	addi r3, r28, 0
/* 80009568 000064A8  38 9B 00 00 */	addi r4, r27, 0
/* 8000956C 000064AC  38 DA 00 00 */	addi r6, r26, 0
/* 80009570 000064B0  39 3D 00 00 */	addi r9, r29, 0
/* 80009574 000064B4  38 A0 00 00 */	li r5, 0
/* 80009578 000064B8  38 E0 00 00 */	li r7, 0
/* 8000957C 000064BC  39 00 00 01 */	li r8, 1
/* 80009580 000064C0  39 40 00 00 */	li r10, 0
/* 80009584 000064C4  48 02 AF 91 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 80009588 000064C8  93 7F 00 00 */	stw r27, 0(r31)
/* 8000958C 000064CC  7F 43 D3 78 */	mr r3, r26
/* 80009590 000064D0  48 00 01 28 */	b lbl_800096B8
lbl_80009594:
/* 80009594 000064D4  38 BE 00 00 */	addi r5, r30, 0
/* 80009598 000064D8  38 60 00 20 */	li r3, 0x20
/* 8000959C 000064DC  38 80 00 20 */	li r4, 0x20
/* 800095A0 000064E0  48 00 2E AD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 800095A4 000064E4  3B 43 00 00 */	addi r26, r3, 0
/* 800095A8 000064E8  38 7C 00 00 */	addi r3, r28, 0
/* 800095AC 000064EC  38 9A 00 00 */	addi r4, r26, 0
/* 800095B0 000064F0  39 3D 00 00 */	addi r9, r29, 0
/* 800095B4 000064F4  38 A0 00 02 */	li r5, 2
/* 800095B8 000064F8  38 C0 00 20 */	li r6, 0x20
/* 800095BC 000064FC  38 E0 00 00 */	li r7, 0
/* 800095C0 00006500  39 00 00 01 */	li r8, 1
/* 800095C4 00006504  39 40 00 00 */	li r10, 0
/* 800095C8 00006508  48 02 AF 4D */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 800095CC 0000650C  88 1A 00 05 */	lbz r0, 5(r26)
/* 800095D0 00006510  7F 43 D3 78 */	mr r3, r26
/* 800095D4 00006514  88 BA 00 04 */	lbz r5, 4(r26)
/* 800095D8 00006518  7F C4 F3 78 */	mr r4, r30
/* 800095DC 0000651C  54 00 80 1E */	slwi r0, r0, 0x10
/* 800095E0 00006520  88 DA 00 06 */	lbz r6, 6(r26)
/* 800095E4 00006524  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 800095E8 00006528  88 FA 00 07 */	lbz r7, 7(r26)
/* 800095EC 0000652C  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 800095F0 00006530  7C FB 03 78 */	or r27, r7, r0
/* 800095F4 00006534  3B 5B 00 00 */	addi r26, r27, 0
/* 800095F8 00006538  48 00 2E CD */	bl free__7JKRHeapFPvP7JKRHeap
/* 800095FC 0000653C  38 7A 00 00 */	addi r3, r26, 0
/* 80009600 00006540  38 BE 00 00 */	addi r5, r30, 0
/* 80009604 00006544  38 80 00 20 */	li r4, 0x20
/* 80009608 00006548  48 00 2E 45 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 8000960C 0000654C  3B C3 00 00 */	addi r30, r3, 0
/* 80009610 00006550  38 7C 00 00 */	addi r3, r28, 0
/* 80009614 00006554  38 9E 00 00 */	addi r4, r30, 0
/* 80009618 00006558  38 DA 00 00 */	addi r6, r26, 0
/* 8000961C 0000655C  39 3D 00 00 */	addi r9, r29, 0
/* 80009620 00006560  38 A0 00 01 */	li r5, 1
/* 80009624 00006564  38 E0 00 00 */	li r7, 0
/* 80009628 00006568  39 00 00 01 */	li r8, 1
/* 8000962C 0000656C  39 40 00 00 */	li r10, 0
/* 80009630 00006570  48 02 AE E5 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 80009634 00006574  93 DF 00 00 */	stw r30, 0(r31)
/* 80009638 00006578  7F 63 DB 78 */	mr r3, r27
/* 8000963C 0000657C  48 00 00 7C */	b lbl_800096B8
lbl_80009640:
/* 80009640 00006580  38 7A 00 00 */	addi r3, r26, 0
/* 80009644 00006584  38 BE 00 00 */	addi r5, r30, 0
/* 80009648 00006588  38 80 00 20 */	li r4, 0x20
/* 8000964C 0000658C  48 00 2E 01 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80009650 00006590  3B 63 00 00 */	addi r27, r3, 0
/* 80009654 00006594  38 7C 00 00 */	addi r3, r28, 0
/* 80009658 00006598  38 9B 00 00 */	addi r4, r27, 0
/* 8000965C 0000659C  38 D9 00 00 */	addi r6, r25, 0
/* 80009660 000065A0  39 3D 00 00 */	addi r9, r29, 0
/* 80009664 000065A4  38 A0 00 01 */	li r5, 1
/* 80009668 000065A8  38 E0 00 00 */	li r7, 0
/* 8000966C 000065AC  39 00 00 01 */	li r8, 1
/* 80009670 000065B0  39 40 00 00 */	li r10, 0
/* 80009674 000065B4  48 02 AE A1 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 80009678 000065B8  93 7F 00 00 */	stw r27, 0(r31)
/* 8000967C 000065BC  7F 43 D3 78 */	mr r3, r26
/* 80009680 000065C0  48 00 00 38 */	b lbl_800096B8
lbl_80009684:
/* 80009684 000065C4  38 65 00 00 */	addi r3, r5, 0
/* 80009688 000065C8  4C C6 31 82 */	crclr 6
/* 8000968C 000065CC  38 A5 00 14 */	addi r5, r5, 0x14
/* 80009690 000065D0  38 80 02 60 */	li r4, 0x260
/* 80009694 000065D4  48 08 59 51 */	bl OSPanic
/* 80009698 000065D8  38 60 00 00 */	li r3, 0
/* 8000969C 000065DC  48 00 00 1C */	b lbl_800096B8
lbl_800096A0:
/* 800096A0 000065E0  38 65 00 00 */	addi r3, r5, 0
/* 800096A4 000065E4  4C C6 31 82 */	crclr 6
/* 800096A8 000065E8  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800096AC 000065EC  38 80 02 65 */	li r4, 0x265
/* 800096B0 000065F0  48 08 59 35 */	bl OSPanic
/* 800096B4 000065F4  38 60 00 00 */	li r3, 0
lbl_800096B8:
/* 800096B8 000065F8  BB 21 00 2C */	lmw r25, 0x2c(r1)
/* 800096BC 000065FC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 800096C0 00006600  38 21 00 48 */	addi r1, r1, 0x48
/* 800096C4 00006604  7C 08 03 A6 */	mtlr r0
/* 800096C8 00006608  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x8036FFA0 - 0x803A8380
.balign 8
"@438":
	.incbin "baserom.dol", 0x36D0D8, 0x14
"@439":
	.incbin "baserom.dol", 0x36D0EC, 0x28
"@440":
	.incbin "baserom.dol", 0x36D114, 0x1C

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__13JKRDvdArchive
__vt__13JKRDvdArchive:
  .4byte 0
  .4byte 0
  .4byte __dt__13JKRDvdArchiveFv
  .4byte unmount__13JKRFileLoaderFv
  .4byte becomeCurrent__10JKRArchiveFPCc
  .4byte getResource__10JKRArchiveFPCc
  .4byte getResource__10JKRArchiveFUlPCc
  .4byte readResource__10JKRArchiveFPvUlPCc
  .4byte readResource__10JKRArchiveFPvUlUlPCc
  .4byte removeResourceAll__10JKRArchiveFv
  .4byte removeResource__10JKRArchiveFPv
  .4byte detachResource__10JKRArchiveFPv
  .4byte getResSize__10JKRArchiveCFPCv
  .4byte countFile__10JKRArchiveCFPCc
  .4byte getFirstFile__10JKRArchiveCFPCc
  .4byte fetchResource__13JKRDvdArchiveFPQ210JKRArchive12SDIFileEntryPUl
  .4byte fetchResource__13JKRDvdArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
  .4byte 0
