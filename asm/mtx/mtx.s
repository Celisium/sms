.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global PSMTXIdentity
PSMTXIdentity:
/* 800942B0 000911F0  C0 02 8A 9C */	lfs f0, "@95"@sda21(r2)
/* 800942B4 000911F4  C0 22 8A 98 */	lfs f1, "@94"@sda21(r2)
/* 800942B8 000911F8  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800942BC 000911FC  10 40 0C 60 */	ps_merge01 f2, f0, f1
/* 800942C0 00091200  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800942C4 00091204  10 21 04 A0 */	ps_merge10 f1, f1, f0
/* 800942C8 00091208  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800942CC 0009120C  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 800942D0 00091210  F0 23 00 00 */	psq_st f1, 0(r3), 0, qr0
/* 800942D4 00091214  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 800942D8 00091218  4E 80 00 20 */	blr 

.global PSMTXCopy
PSMTXCopy:
/* 800942DC 0009121C  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800942E0 00091220  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 800942E4 00091224  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800942E8 00091228  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 800942EC 0009122C  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800942F0 00091230  F0 44 00 10 */	psq_st f2, 16(r4), 0, qr0
/* 800942F4 00091234  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800942F8 00091238  F0 64 00 18 */	psq_st f3, 24(r4), 0, qr0
/* 800942FC 0009123C  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 80094300 00091240  F0 84 00 20 */	psq_st f4, 32(r4), 0, qr0
/* 80094304 00091244  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 80094308 00091248  F0 A4 00 28 */	psq_st f5, 40(r4), 0, qr0
/* 8009430C 0009124C  4E 80 00 20 */	blr 

.global PSMTXConcat
PSMTXConcat:
/* 80094310 00091250  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80094314 00091254  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 80094318 00091258  D9 C1 00 08 */	stfd f14, 8(r1)
/* 8009431C 0009125C  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 80094320 00091260  3C C0 80 41 */	lis r6, Unit01@ha
/* 80094324 00091264  E0 E4 00 08 */	psq_l f7, 8(r4), 0, qr0
/* 80094328 00091268  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 8009432C 0009126C  38 C6 8D 20 */	addi r6, r6, Unit01@l
/* 80094330 00091270  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80094334 00091274  E1 04 00 10 */	psq_l f8, 16(r4), 0, qr0
/* 80094338 00091278  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 8009433C 0009127C  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 80094340 00091280  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 80094344 00091284  E3 E6 00 00 */	psq_l f31, 0(r6), 0, qr0
/* 80094348 00091288  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 8009434C 0009128C  E1 24 00 18 */	psq_l f9, 24(r4), 0, qr0
/* 80094350 00091290  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 80094354 00091294  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 80094358 00091298  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 8009435C 0009129C  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 80094360 000912A0  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 80094364 000912A4  E1 44 00 20 */	psq_l f10, 32(r4), 0, qr0
/* 80094368 000912A8  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 8009436C 000912AC  E1 64 00 28 */	psq_l f11, 40(r4), 0, qr0
/* 80094370 000912B0  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 80094374 000912B4  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 80094378 000912B8  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8009437C 000912BC  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 80094380 000912C0  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 80094384 000912C4  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 80094388 000912C8  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 8009438C 000912CC  F1 85 00 00 */	psq_st f12, 0(r5), 0, qr0
/* 80094390 000912D0  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 80094394 000912D4  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 80094398 000912D8  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 8009439C 000912DC  F1 C5 00 10 */	psq_st f14, 16(r5), 0, qr0
/* 800943A0 000912E0  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 800943A4 000912E4  F1 A5 00 08 */	psq_st f13, 8(r5), 0, qr0
/* 800943A8 000912E8  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 800943AC 000912EC  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 800943B0 000912F0  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 800943B4 000912F4  C9 C1 00 08 */	lfd f14, 8(r1)
/* 800943B8 000912F8  F1 E5 00 18 */	psq_st f15, 24(r5), 0, qr0
/* 800943BC 000912FC  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 800943C0 00091300  F0 45 00 20 */	psq_st f2, 32(r5), 0, qr0
/* 800943C4 00091304  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 800943C8 00091308  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 800943CC 0009130C  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 800943D0 00091310  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 800943D4 00091314  38 21 00 40 */	addi r1, r1, 0x40
/* 800943D8 00091318  4E 80 00 20 */	blr 

.global PSMTXInverse
PSMTXInverse:
/* 800943DC 0009131C  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 800943E0 00091320  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 800943E4 00091324  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 800943E8 00091328  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 800943EC 0009132C  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 800943F0 00091330  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 800943F4 00091334  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 800943F8 00091338  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 800943FC 0009133C  11 63 01 B2 */	ps_mul f11, f3, f6
/* 80094400 00091340  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 80094404 00091344  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 80094408 00091348  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 8009440C 0009134C  11 81 02 32 */	ps_mul f12, f1, f8
/* 80094410 00091350  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 80094414 00091354  11 43 01 32 */	ps_mul f10, f3, f4
/* 80094418 00091358  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 8009441C 0009135C  11 20 01 72 */	ps_mul f9, f0, f5
/* 80094420 00091360  11 01 00 B2 */	ps_mul f8, f1, f2
/* 80094424 00091364  10 C6 30 28 */	ps_sub f6, f6, f6
/* 80094428 00091368  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 8009442C 0009136C  10 E0 03 72 */	ps_mul f7, f0, f13
/* 80094430 00091370  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 80094434 00091374  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 80094438 00091378  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 8009443C 0009137C  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 80094440 00091380  10 07 30 40 */	ps_cmpo0 cr0, f7, f6
/* 80094444 00091384  40 82 00 0C */	bne lbl_80094450
/* 80094448 00091388  38 60 00 00 */	li r3, 0
/* 8009444C 0009138C  4E 80 00 20 */	blr 
lbl_80094450:
/* 80094450 00091390  EC 00 38 30 */	fres f0, f7
/* 80094454 00091394  10 C0 00 2A */	ps_add f6, f0, f0
/* 80094458 00091398  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8009445C 0009139C  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 80094460 000913A0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80094464 000913A4  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 80094468 000913A8  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8009446C 000913AC  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 80094470 000913B0  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80094474 000913B4  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 80094478 000913B8  10 AD 64 20 */	ps_merge00 f5, f13, f12
/* 8009447C 000913BC  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 80094480 000913C0  10 8D 64 E0 */	ps_merge11 f4, f13, f12
/* 80094484 000913C4  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 80094488 000913C8  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 8009448C 000913CC  10 CD 00 72 */	ps_mul f6, f13, f1
/* 80094490 000913D0  F0 84 00 10 */	psq_st f4, 16(r4), 0, qr0
/* 80094494 000913D4  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 80094498 000913D8  10 CC 30 BA */	ps_madd f6, f12, f2, f6
/* 8009449C 000913DC  F1 44 80 20 */	psq_st f10, 32(r4), 1, qr0
/* 800944A0 000913E0  10 CB 30 FE */	ps_nmadd f6, f11, f3, f6
/* 800944A4 000913E4  F1 24 80 24 */	psq_st f9, 36(r4), 1, qr0
/* 800944A8 000913E8  10 EA 00 72 */	ps_mul f7, f10, f1
/* 800944AC 000913EC  10 AB 34 20 */	ps_merge00 f5, f11, f6
/* 800944B0 000913F0  F1 04 80 28 */	psq_st f8, 40(r4), 1, qr0
/* 800944B4 000913F4  10 8B 34 E0 */	ps_merge11 f4, f11, f6
/* 800944B8 000913F8  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800944BC 000913FC  10 E9 38 BA */	ps_madd f7, f9, f2, f7
/* 800944C0 00091400  F0 84 00 18 */	psq_st f4, 24(r4), 0, qr0
/* 800944C4 00091404  10 E8 38 FE */	ps_nmadd f7, f8, f3, f7
/* 800944C8 00091408  38 60 00 01 */	li r3, 1
/* 800944CC 0009140C  F0 E4 80 2C */	psq_st f7, 44(r4), 1, qr0
/* 800944D0 00091410  4E 80 00 20 */	blr 

.global PSMTXRotRad
PSMTXRotRad:
/* 800944D4 00091414  7C 08 02 A6 */	mflr r0
/* 800944D8 00091418  90 01 00 04 */	stw r0, 4(r1)
/* 800944DC 0009141C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800944E0 00091420  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800944E4 00091424  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800944E8 00091428  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800944EC 0009142C  FF E0 08 90 */	fmr f31, f1
/* 800944F0 00091430  7C 7E 1B 78 */	mr r30, r3
/* 800944F4 00091434  7C 9F 23 78 */	mr r31, r4
/* 800944F8 00091438  FC 20 F8 90 */	fmr f1, f31
/* 800944FC 0009143C  4B FF 2C 09 */	bl sinf
/* 80094500 00091440  FC 00 08 90 */	fmr f0, f1
/* 80094504 00091444  FC 20 F8 90 */	fmr f1, f31
/* 80094508 00091448  FF E0 00 90 */	fmr f31, f0
/* 8009450C 0009144C  4B FF 2A 65 */	bl cosf
/* 80094510 00091450  FC 00 08 90 */	fmr f0, f1
/* 80094514 00091454  7F C3 F3 78 */	mr r3, r30
/* 80094518 00091458  FC 20 F8 90 */	fmr f1, f31
/* 8009451C 0009145C  7F E4 FB 78 */	mr r4, r31
/* 80094520 00091460  FC 40 00 90 */	fmr f2, f0
/* 80094524 00091464  48 00 00 21 */	bl PSMTXRotTrig
/* 80094528 00091468  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8009452C 0009146C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80094530 00091470  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80094534 00091474  7C 08 03 A6 */	mtlr r0
/* 80094538 00091478  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8009453C 0009147C  38 21 00 28 */	addi r1, r1, 0x28
/* 80094540 00091480  4E 80 00 20 */	blr 

.global PSMTXRotTrig
PSMTXRotTrig:
/* 80094544 00091484  C0 02 8A 9C */	lfs f0, "@95"@sda21(r2)
/* 80094548 00091488  C0 62 8A 98 */	lfs f3, "@94"@sda21(r2)
/* 8009454C 0009148C  60 80 00 20 */	ori r0, r4, 0x20
/* 80094550 00091490  10 80 08 50 */	ps_neg f4, f1
/* 80094554 00091494  28 00 00 78 */	cmplwi r0, 0x78
/* 80094558 00091498  41 82 00 18 */	beq lbl_80094570
/* 8009455C 0009149C  28 00 00 79 */	cmplwi r0, 0x79
/* 80094560 000914A0  41 82 00 38 */	beq lbl_80094598
/* 80094564 000914A4  28 00 00 7A */	cmplwi r0, 0x7a
/* 80094568 000914A8  41 82 00 5C */	beq lbl_800945C4
/* 8009456C 000914AC  48 00 00 7C */	b lbl_800945E8
lbl_80094570:
/* 80094570 000914B0  F0 63 80 00 */	psq_st f3, 0(r3), 1, qr0
/* 80094574 000914B4  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 80094578 000914B8  10 A1 14 20 */	ps_merge00 f5, f1, f2
/* 8009457C 000914BC  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 80094580 000914C0  10 42 24 20 */	ps_merge00 f2, f2, f4
/* 80094584 000914C4  F0 03 00 1C */	psq_st f0, 28(r3), 0, qr0
/* 80094588 000914C8  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 8009458C 000914CC  F0 A3 00 24 */	psq_st f5, 36(r3), 0, qr0
/* 80094590 000914D0  F0 43 00 14 */	psq_st f2, 20(r3), 0, qr0
/* 80094594 000914D4  48 00 00 54 */	b lbl_800945E8
lbl_80094598:
/* 80094598 000914D8  10 A2 04 20 */	ps_merge00 f5, f2, f0
/* 8009459C 000914DC  10 40 1C 20 */	ps_merge00 f2, f0, f3
/* 800945A0 000914E0  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800945A4 000914E4  F0 A3 00 00 */	psq_st f5, 0(r3), 0, qr0
/* 800945A8 000914E8  10 84 04 20 */	ps_merge00 f4, f4, f0
/* 800945AC 000914EC  10 01 04 20 */	ps_merge00 f0, f1, f0
/* 800945B0 000914F0  F0 A3 00 28 */	psq_st f5, 40(r3), 0, qr0
/* 800945B4 000914F4  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 800945B8 000914F8  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800945BC 000914FC  F0 83 00 20 */	psq_st f4, 32(r3), 0, qr0
/* 800945C0 00091500  48 00 00 28 */	b lbl_800945E8
lbl_800945C4:
/* 800945C4 00091504  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800945C8 00091508  10 A1 14 20 */	ps_merge00 f5, f1, f2
/* 800945CC 0009150C  10 82 24 20 */	ps_merge00 f4, f2, f4
/* 800945D0 00091510  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800945D4 00091514  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800945D8 00091518  10 43 04 20 */	ps_merge00 f2, f3, f0
/* 800945DC 0009151C  F0 A3 00 10 */	psq_st f5, 16(r3), 0, qr0
/* 800945E0 00091520  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 800945E4 00091524  F0 43 00 28 */	psq_st f2, 40(r3), 0, qr0
lbl_800945E8:
/* 800945E8 00091528  4E 80 00 20 */	blr 

.global PSMTXRotAxisRad
PSMTXRotAxisRad:
/* 800945EC 0009152C  7C 08 02 A6 */	mflr r0
/* 800945F0 00091530  90 01 00 04 */	stw r0, 4(r1)
/* 800945F4 00091534  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 800945F8 00091538  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800945FC 0009153C  DB C1 00 48 */	stfd f30, 0x48(r1)
/* 80094600 00091540  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80094604 00091544  DB 81 00 38 */	stfd f28, 0x38(r1)
/* 80094608 00091548  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 8009460C 0009154C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80094610 00091550  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80094614 00091554  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80094618 00091558  FF 60 08 90 */	fmr f27, f1
/* 8009461C 0009155C  7C 7D 1B 78 */	mr r29, r3
/* 80094620 00091560  7C 9E 23 78 */	mr r30, r4
/* 80094624 00091564  FC 20 D8 90 */	fmr f1, f27
/* 80094628 00091568  C3 82 8A 9C */	lfs f28, "@95"@sda21(r2)
/* 8009462C 0009156C  3B E1 00 14 */	addi r31, r1, 0x14
/* 80094630 00091570  4B FF 2A D5 */	bl sinf
/* 80094634 00091574  FF C0 08 90 */	fmr f30, f1
/* 80094638 00091578  FC 20 D8 90 */	fmr f1, f27
/* 8009463C 0009157C  4B FF 29 35 */	bl cosf
/* 80094640 00091580  FF E0 08 90 */	fmr f31, f1
/* 80094644 00091584  C0 02 8A 98 */	lfs f0, "@94"@sda21(r2)
/* 80094648 00091588  7F C3 F3 78 */	mr r3, r30
/* 8009464C 0009158C  7F E4 FB 78 */	mr r4, r31
/* 80094650 00091590  EF A0 F8 28 */	fsubs f29, f0, f31
/* 80094654 00091594  48 00 08 9D */	bl PSVECNormalize
/* 80094658 00091598  E3 7F 00 00 */	psq_l f27, 0(r31), 0, qr0
/* 8009465C 0009159C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80094660 000915A0  10 1F FC 20 */	ps_merge00 f0, f31, f31
/* 80094664 000915A4  10 9B 07 58 */	ps_muls0 f4, f27, f29
/* 80094668 000915A8  10 A1 07 58 */	ps_muls0 f5, f1, f29
/* 8009466C 000915AC  10 64 06 DA */	ps_muls1 f3, f4, f27
/* 80094670 000915B0  10 44 06 D8 */	ps_muls0 f2, f4, f27
/* 80094674 000915B4  13 7B 07 98 */	ps_muls0 f27, f27, f30
/* 80094678 000915B8  10 84 00 58 */	ps_muls0 f4, f4, f1
/* 8009467C 000915BC  EC C1 1F BC */	fnmsubs f6, f1, f30, f3
/* 80094680 000915C0  EC E1 1F BA */	fmadds f7, f1, f30, f3
/* 80094684 000915C4  11 20 D8 50 */	ps_neg f9, f27
/* 80094688 000915C8  11 04 DF 14 */	ps_sum0 f8, f4, f28, f27
/* 8009468C 000915CC  10 42 01 94 */	ps_sum0 f2, f2, f6, f0
/* 80094690 000915D0  10 60 19 D6 */	ps_sum1 f3, f0, f7, f3
/* 80094694 000915D4  10 C9 27 14 */	ps_sum0 f6, f9, f28, f4
/* 80094698 000915D8  11 24 49 14 */	ps_sum0 f9, f4, f4, f9
/* 8009469C 000915DC  F1 1D 00 08 */	psq_st f8, 8(r29), 0, qr0
/* 800946A0 000915E0  10 A5 00 58 */	ps_muls0 f5, f5, f1
/* 800946A4 000915E4  F0 5D 00 00 */	psq_st f2, 0(r29), 0, qr0
/* 800946A8 000915E8  10 9B 22 56 */	ps_sum1 f4, f27, f9, f4
/* 800946AC 000915EC  F0 7D 00 10 */	psq_st f3, 16(r29), 0, qr0
/* 800946B0 000915F0  10 A5 07 14 */	ps_sum0 f5, f5, f28, f0
/* 800946B4 000915F4  F0 DD 00 18 */	psq_st f6, 24(r29), 0, qr0
/* 800946B8 000915F8  F0 9D 00 20 */	psq_st f4, 32(r29), 0, qr0
/* 800946BC 000915FC  F0 BD 00 28 */	psq_st f5, 40(r29), 0, qr0
/* 800946C0 00091600  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 800946C4 00091604  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800946C8 00091608  CB C1 00 48 */	lfd f30, 0x48(r1)
/* 800946CC 0009160C  7C 08 03 A6 */	mtlr r0
/* 800946D0 00091610  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800946D4 00091614  CB 81 00 38 */	lfd f28, 0x38(r1)
/* 800946D8 00091618  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 800946DC 0009161C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800946E0 00091620  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800946E4 00091624  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800946E8 00091628  38 21 00 58 */	addi r1, r1, 0x58
/* 800946EC 0009162C  4E 80 00 20 */	blr 

.global PSMTXTrans
PSMTXTrans:
/* 800946F0 00091630  C0 02 8A 9C */	lfs f0, "@95"@sda21(r2)
/* 800946F4 00091634  C0 82 8A 98 */	lfs f4, "@94"@sda21(r2)
/* 800946F8 00091638  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 800946FC 0009163C  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 80094700 00091640  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 80094704 00091644  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 80094708 00091648  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8009470C 0009164C  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 80094710 00091650  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80094714 00091654  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 80094718 00091658  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8009471C 0009165C  D0 83 00 00 */	stfs f4, 0(r3)
/* 80094720 00091660  4E 80 00 20 */	blr 

.global PSMTXTransApply
PSMTXTransApply:
/* 80094724 00091664  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 80094728 00091668  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 8009472C 0009166C  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 80094730 00091670  E1 03 00 28 */	psq_l f8, 40(r3), 0, qr0
/* 80094734 00091674  10 A1 29 56 */	ps_sum1 f5, f1, f5, f5
/* 80094738 00091678  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 8009473C 0009167C  10 E2 39 D6 */	ps_sum1 f7, f2, f7, f7
/* 80094740 00091680  E1 23 00 20 */	psq_l f9, 32(r3), 0, qr0
/* 80094744 00091684  11 03 42 16 */	ps_sum1 f8, f3, f8, f8
/* 80094748 00091688  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 8009474C 0009168C  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 80094750 00091690  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 80094754 00091694  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 80094758 00091698  F1 24 00 20 */	psq_st f9, 32(r4), 0, qr0
/* 8009475C 0009169C  F1 04 00 28 */	psq_st f8, 40(r4), 0, qr0
/* 80094760 000916A0  4E 80 00 20 */	blr 

.global PSMTXScale
PSMTXScale:
/* 80094764 000916A4  C0 02 8A 9C */	lfs f0, "@95"@sda21(r2)
/* 80094768 000916A8  D0 23 00 00 */	stfs f1, 0(r3)
/* 8009476C 000916AC  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 80094770 000916B0  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 80094774 000916B4  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 80094778 000916B8  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8009477C 000916BC  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 80094780 000916C0  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80094784 000916C4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80094788 000916C8  4E 80 00 20 */	blr 

.global PSMTXScaleApply
PSMTXScaleApply:
/* 8009478C 000916CC  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 80094790 000916D0  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 80094794 000916D4  10 84 00 58 */	ps_muls0 f4, f4, f1
/* 80094798 000916D8  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 8009479C 000916DC  10 A5 00 58 */	ps_muls0 f5, f5, f1
/* 800947A0 000916E0  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 800947A4 000916E4  10 C6 00 98 */	ps_muls0 f6, f6, f2
/* 800947A8 000916E8  E1 03 00 20 */	psq_l f8, 32(r3), 0, qr0
/* 800947AC 000916EC  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800947B0 000916F0  10 E7 00 98 */	ps_muls0 f7, f7, f2
/* 800947B4 000916F4  E0 43 00 28 */	psq_l f2, 40(r3), 0, qr0
/* 800947B8 000916F8  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800947BC 000916FC  11 08 00 D8 */	ps_muls0 f8, f8, f3
/* 800947C0 00091700  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 800947C4 00091704  10 42 00 D8 */	ps_muls0 f2, f2, f3
/* 800947C8 00091708  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 800947CC 0009170C  F1 04 00 20 */	psq_st f8, 32(r4), 0, qr0
/* 800947D0 00091710  F0 44 00 28 */	psq_st f2, 40(r4), 0, qr0
/* 800947D4 00091714  4E 80 00 20 */	blr 

.global PSMTXQuat
PSMTXQuat:
/* 800947D8 00091718  C0 22 8A 98 */	lfs f1, "@94"@sda21(r2)
/* 800947DC 0009171C  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 800947E0 00091720  E0 A4 00 08 */	psq_l f5, 8(r4), 0, qr0
/* 800947E4 00091724  EC 01 08 28 */	fsubs f0, f1, f1
/* 800947E8 00091728  EC 41 08 2A */	fadds f2, f1, f1
/* 800947EC 0009172C  10 C4 01 32 */	ps_mul f6, f4, f4
/* 800947F0 00091730  11 24 24 A0 */	ps_merge10 f9, f4, f4
/* 800947F4 00091734  11 05 31 7A */	ps_madd f8, f5, f5, f6
/* 800947F8 00091738  10 E5 01 72 */	ps_mul f7, f5, f5
/* 800947FC 0009173C  10 68 42 14 */	ps_sum0 f3, f8, f8, f8
/* 80094800 00091740  11 49 01 5A */	ps_muls1 f10, f9, f5
/* 80094804 00091744  ED 60 18 30 */	fres f11, f3
/* 80094808 00091748  11 07 32 16 */	ps_sum1 f8, f7, f8, f6
/* 8009480C 0009174C  10 63 12 FC */	ps_nmsub f3, f3, f11, f2
/* 80094810 00091750  10 E5 01 5A */	ps_muls1 f7, f5, f5
/* 80094814 00091754  10 6B 00 F2 */	ps_mul f3, f11, f3
/* 80094818 00091758  10 C6 31 94 */	ps_sum0 f6, f6, f6, f6
/* 8009481C 0009175C  EC 63 00 B2 */	fmuls f3, f3, f2
/* 80094820 00091760  11 64 3A 7A */	ps_madd f11, f4, f9, f7
/* 80094824 00091764  10 E4 3A 78 */	ps_msub f7, f4, f9, f7
/* 80094828 00091768  F0 03 80 0C */	psq_st f0, 12(r3), 1, qr0
/* 8009482C 0009176C  10 C6 08 FC */	ps_nmsub f6, f6, f3, f1
/* 80094830 00091770  11 08 08 FC */	ps_nmsub f8, f8, f3, f1
/* 80094834 00091774  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 80094838 00091778  11 6B 00 F2 */	ps_mul f11, f11, f3
/* 8009483C 0009177C  10 E7 00 F2 */	ps_mul f7, f7, f3
/* 80094840 00091780  F0 C3 80 28 */	psq_st f6, 40(r3), 1, qr0
/* 80094844 00091784  11 24 51 5C */	ps_madds0 f9, f4, f5, f10
/* 80094848 00091788  10 AB 44 20 */	ps_merge00 f5, f11, f8
/* 8009484C 0009178C  11 4A 48 BC */	ps_nmsub f10, f10, f2, f9
/* 80094850 00091790  10 88 3C A0 */	ps_merge10 f4, f8, f7
/* 80094854 00091794  F0 A3 00 10 */	psq_st f5, 16(r3), 0, qr0
/* 80094858 00091798  11 29 00 F2 */	ps_mul f9, f9, f3
/* 8009485C 0009179C  11 4A 00 F2 */	ps_mul f10, f10, f3
/* 80094860 000917A0  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 80094864 000917A4  F1 23 80 08 */	psq_st f9, 8(r3), 1, qr0
/* 80094868 000917A8  10 EA 04 A0 */	ps_merge10 f7, f10, f0
/* 8009486C 000917AC  11 6A 4C 60 */	ps_merge01 f11, f10, f9
/* 80094870 000917B0  F0 E3 00 18 */	psq_st f7, 24(r3), 0, qr0
/* 80094874 000917B4  F1 63 00 20 */	psq_st f11, 32(r3), 0, qr0
/* 80094878 000917B8  4E 80 00 20 */	blr 

.global C_MTXLookAt
C_MTXLookAt:
/* 8009487C 000917BC  7C 08 02 A6 */	mflr r0
/* 80094880 000917C0  90 01 00 04 */	stw r0, 4(r1)
/* 80094884 000917C4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80094888 000917C8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8009488C 000917CC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80094890 000917D0  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80094894 000917D4  7C 7D 1B 78 */	mr r29, r3
/* 80094898 000917D8  7C 9E 23 78 */	mr r30, r4
/* 8009489C 000917DC  7C BF 2B 78 */	mr r31, r5
/* 800948A0 000917E0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 800948A4 000917E4  38 61 00 30 */	addi r3, r1, 0x30
/* 800948A8 000917E8  C0 06 00 00 */	lfs f0, 0(r6)
/* 800948AC 000917EC  7C 64 1B 78 */	mr r4, r3
/* 800948B0 000917F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800948B4 000917F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800948B8 000917F8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 800948BC 000917FC  C0 06 00 04 */	lfs f0, 4(r6)
/* 800948C0 00091800  EC 01 00 28 */	fsubs f0, f1, f0
/* 800948C4 00091804  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800948C8 00091808  C0 3E 00 08 */	lfs f1, 8(r30)
/* 800948CC 0009180C  C0 06 00 08 */	lfs f0, 8(r6)
/* 800948D0 00091810  EC 01 00 28 */	fsubs f0, f1, f0
/* 800948D4 00091814  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800948D8 00091818  48 00 06 19 */	bl PSVECNormalize
/* 800948DC 0009181C  7F E3 FB 78 */	mr r3, r31
/* 800948E0 00091820  38 81 00 30 */	addi r4, r1, 0x30
/* 800948E4 00091824  38 A1 00 24 */	addi r5, r1, 0x24
/* 800948E8 00091828  48 00 06 A9 */	bl PSVECCrossProduct
/* 800948EC 0009182C  38 61 00 24 */	addi r3, r1, 0x24
/* 800948F0 00091830  7C 64 1B 78 */	mr r4, r3
/* 800948F4 00091834  48 00 05 FD */	bl PSVECNormalize
/* 800948F8 00091838  38 61 00 30 */	addi r3, r1, 0x30
/* 800948FC 0009183C  38 81 00 24 */	addi r4, r1, 0x24
/* 80094900 00091840  38 A1 00 18 */	addi r5, r1, 0x18
/* 80094904 00091844  48 00 06 8D */	bl PSVECCrossProduct
/* 80094908 00091848  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8009490C 0009184C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80094910 00091850  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80094914 00091854  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80094918 00091858  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8009491C 0009185C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80094920 00091860  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80094924 00091864  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80094928 00091868  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8009492C 0009186C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80094930 00091870  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80094934 00091874  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80094938 00091878  EC 01 00 32 */	fmuls f0, f1, f0
/* 8009493C 0009187C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80094940 00091880  EC 23 00 72 */	fmuls f1, f3, f1
/* 80094944 00091884  EC 02 00 2A */	fadds f0, f2, f0
/* 80094948 00091888  EC 01 00 2A */	fadds f0, f1, f0
/* 8009494C 0009188C  FC 00 00 50 */	fneg f0, f0
/* 80094950 00091890  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80094954 00091894  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80094958 00091898  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8009495C 0009189C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80094960 000918A0  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80094964 000918A4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80094968 000918A8  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8009496C 000918AC  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80094970 000918B0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80094974 000918B4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80094978 000918B8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8009497C 000918BC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80094980 000918C0  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80094984 000918C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80094988 000918C8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8009498C 000918CC  EC 23 00 72 */	fmuls f1, f3, f1
/* 80094990 000918D0  EC 02 00 2A */	fadds f0, f2, f0
/* 80094994 000918D4  EC 01 00 2A */	fadds f0, f1, f0
/* 80094998 000918D8  FC 00 00 50 */	fneg f0, f0
/* 8009499C 000918DC  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 800949A0 000918E0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800949A4 000918E4  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 800949A8 000918E8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800949AC 000918EC  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 800949B0 000918F0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800949B4 000918F4  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 800949B8 000918F8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 800949BC 000918FC  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 800949C0 00091900  C0 3E 00 04 */	lfs f1, 4(r30)
/* 800949C4 00091904  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800949C8 00091908  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800949CC 0009190C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 800949D0 00091910  EC 01 00 32 */	fmuls f0, f1, f0
/* 800949D4 00091914  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 800949D8 00091918  EC 23 00 72 */	fmuls f1, f3, f1
/* 800949DC 0009191C  EC 02 00 2A */	fadds f0, f2, f0
/* 800949E0 00091920  EC 01 00 2A */	fadds f0, f1, f0
/* 800949E4 00091924  FC 00 00 50 */	fneg f0, f0
/* 800949E8 00091928  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 800949EC 0009192C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800949F0 00091930  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800949F4 00091934  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800949F8 00091938  7C 08 03 A6 */	mtlr r0
/* 800949FC 0009193C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80094A00 00091940  38 21 00 50 */	addi r1, r1, 0x50
/* 80094A04 00091944  4E 80 00 20 */	blr 

.global C_MTXLightFrustum
C_MTXLightFrustum:
/* 80094A08 00091948  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80094A0C 0009194C  C1 81 00 38 */	lfs f12, 0x38(r1)
/* 80094A10 00091950  ED 44 18 28 */	fsubs f10, f4, f3
/* 80094A14 00091954  C1 62 8A 98 */	lfs f11, "@94"@sda21(r2)
/* 80094A18 00091958  EC 01 10 28 */	fsubs f0, f1, f2
/* 80094A1C 0009195C  C1 22 8A A0 */	lfs f9, "@193"@sda21(r2)
/* 80094A20 00091960  EC 64 18 2A */	fadds f3, f4, f3
/* 80094A24 00091964  ED 4B 50 24 */	fdivs f10, f11, f10
/* 80094A28 00091968  EC A9 01 72 */	fmuls f5, f9, f5
/* 80094A2C 0009196C  ED 2B 00 24 */	fdivs f9, f11, f0
/* 80094A30 00091970  EC 85 02 B2 */	fmuls f4, f5, f10
/* 80094A34 00091974  EC 6A 00 F2 */	fmuls f3, f10, f3
/* 80094A38 00091978  EC 01 10 2A */	fadds f0, f1, f2
/* 80094A3C 0009197C  EC 26 01 32 */	fmuls f1, f6, f4
/* 80094A40 00091980  EC 46 00 F2 */	fmuls f2, f6, f3
/* 80094A44 00091984  EC 09 00 32 */	fmuls f0, f9, f0
/* 80094A48 00091988  D0 23 00 00 */	stfs f1, 0(r3)
/* 80094A4C 0009198C  EC 25 02 72 */	fmuls f1, f5, f9
/* 80094A50 00091990  EC 42 40 28 */	fsubs f2, f2, f8
/* 80094A54 00091994  C0 62 8A 9C */	lfs f3, "@95"@sda21(r2)
/* 80094A58 00091998  EC 07 00 32 */	fmuls f0, f7, f0
/* 80094A5C 0009199C  D0 63 00 04 */	stfs f3, 4(r3)
/* 80094A60 000919A0  EC 27 00 72 */	fmuls f1, f7, f1
/* 80094A64 000919A4  D0 43 00 08 */	stfs f2, 8(r3)
/* 80094A68 000919A8  EC 00 60 28 */	fsubs f0, f0, f12
/* 80094A6C 000919AC  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 80094A70 000919B0  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 80094A74 000919B4  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80094A78 000919B8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80094A7C 000919BC  D0 63 00 1C */	stfs f3, 0x1c(r3)
/* 80094A80 000919C0  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80094A84 000919C4  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80094A88 000919C8  C0 02 8A A4 */	lfs f0, "@214"@sda21(r2)
/* 80094A8C 000919CC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80094A90 000919D0  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 80094A94 000919D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80094A98 000919D8  4E 80 00 20 */	blr 

.global C_MTXLightPerspective
C_MTXLightPerspective:
/* 80094A9C 000919DC  7C 08 02 A6 */	mflr r0
/* 80094AA0 000919E0  90 01 00 04 */	stw r0, 4(r1)
/* 80094AA4 000919E4  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 80094AA8 000919E8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80094AAC 000919EC  DB C1 00 48 */	stfd f30, 0x48(r1)
/* 80094AB0 000919F0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80094AB4 000919F4  DB 81 00 38 */	stfd f28, 0x38(r1)
/* 80094AB8 000919F8  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 80094ABC 000919FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80094AC0 00091A00  FF 60 10 90 */	fmr f27, f2
/* 80094AC4 00091A04  7C 7F 1B 78 */	mr r31, r3
/* 80094AC8 00091A08  FF 80 18 90 */	fmr f28, f3
/* 80094ACC 00091A0C  FF A0 20 90 */	fmr f29, f4
/* 80094AD0 00091A10  FF C0 28 90 */	fmr f30, f5
/* 80094AD4 00091A14  FF E0 30 90 */	fmr f31, f6
/* 80094AD8 00091A18  C0 42 8A A8 */	lfs f2, "@217"@sda21(r2)
/* 80094ADC 00091A1C  C0 02 8A AC */	lfs f0, "@218"@sda21(r2)
/* 80094AE0 00091A20  EC 22 00 72 */	fmuls f1, f2, f1
/* 80094AE4 00091A24  EC 20 00 72 */	fmuls f1, f0, f1
/* 80094AE8 00091A28  4B FF 24 05 */	bl tanf
/* 80094AEC 00091A2C  C0 62 8A 98 */	lfs f3, "@94"@sda21(r2)
/* 80094AF0 00091A30  FC 40 F0 50 */	fneg f2, f30
/* 80094AF4 00091A34  FC 00 F8 50 */	fneg f0, f31
/* 80094AF8 00091A38  EC 83 08 24 */	fdivs f4, f3, f1
/* 80094AFC 00091A3C  EC 24 D8 24 */	fdivs f1, f4, f27
/* 80094B00 00091A40  EC 7C 00 72 */	fmuls f3, f28, f1
/* 80094B04 00091A44  EC 24 07 72 */	fmuls f1, f4, f29
/* 80094B08 00091A48  D0 7F 00 00 */	stfs f3, 0(r31)
/* 80094B0C 00091A4C  C0 62 8A 9C */	lfs f3, "@95"@sda21(r2)
/* 80094B10 00091A50  D0 7F 00 04 */	stfs f3, 4(r31)
/* 80094B14 00091A54  D0 5F 00 08 */	stfs f2, 8(r31)
/* 80094B18 00091A58  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 80094B1C 00091A5C  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 80094B20 00091A60  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 80094B24 00091A64  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80094B28 00091A68  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 80094B2C 00091A6C  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 80094B30 00091A70  D0 7F 00 24 */	stfs f3, 0x24(r31)
/* 80094B34 00091A74  C0 02 8A A4 */	lfs f0, "@214"@sda21(r2)
/* 80094B38 00091A78  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80094B3C 00091A7C  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 80094B40 00091A80  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80094B44 00091A84  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80094B48 00091A88  CB C1 00 48 */	lfd f30, 0x48(r1)
/* 80094B4C 00091A8C  7C 08 03 A6 */	mtlr r0
/* 80094B50 00091A90  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80094B54 00091A94  CB 81 00 38 */	lfd f28, 0x38(r1)
/* 80094B58 00091A98  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 80094B5C 00091A9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80094B60 00091AA0  38 21 00 58 */	addi r1, r1, 0x58
/* 80094B64 00091AA4  4E 80 00 20 */	blr 

.global C_MTXLightOrtho
C_MTXLightOrtho:
/* 80094B68 00091AA8  ED 44 18 28 */	fsubs f10, f4, f3
/* 80094B6C 00091AAC  C1 62 8A 98 */	lfs f11, "@94"@sda21(r2)
/* 80094B70 00091AB0  EC 01 10 28 */	fsubs f0, f1, f2
/* 80094B74 00091AB4  C1 22 8A A0 */	lfs f9, "@193"@sda21(r2)
/* 80094B78 00091AB8  EC 64 18 2A */	fadds f3, f4, f3
/* 80094B7C 00091ABC  ED 8B 50 24 */	fdivs f12, f11, f10
/* 80094B80 00091AC0  ED 4B 00 24 */	fdivs f10, f11, f0
/* 80094B84 00091AC4  EC 89 03 32 */	fmuls f4, f9, f12
/* 80094B88 00091AC8  FC 60 18 50 */	fneg f3, f3
/* 80094B8C 00091ACC  EC 01 10 2A */	fadds f0, f1, f2
/* 80094B90 00091AD0  EC 24 01 72 */	fmuls f1, f4, f5
/* 80094B94 00091AD4  EC 4C 00 F2 */	fmuls f2, f12, f3
/* 80094B98 00091AD8  FC 00 00 50 */	fneg f0, f0
/* 80094B9C 00091ADC  D0 23 00 00 */	stfs f1, 0(r3)
/* 80094BA0 00091AE0  EC 29 02 B2 */	fmuls f1, f9, f10
/* 80094BA4 00091AE4  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80094BA8 00091AE8  C0 62 8A 9C */	lfs f3, "@95"@sda21(r2)
/* 80094BAC 00091AEC  EC 0A 00 32 */	fmuls f0, f10, f0
/* 80094BB0 00091AF0  D0 63 00 04 */	stfs f3, 4(r3)
/* 80094BB4 00091AF4  EC 47 10 2A */	fadds f2, f7, f2
/* 80094BB8 00091AF8  EC 21 01 B2 */	fmuls f1, f1, f6
/* 80094BBC 00091AFC  D0 63 00 08 */	stfs f3, 8(r3)
/* 80094BC0 00091B00  EC 06 00 32 */	fmuls f0, f6, f0
/* 80094BC4 00091B04  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80094BC8 00091B08  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 80094BCC 00091B0C  EC 08 00 2A */	fadds f0, f8, f0
/* 80094BD0 00091B10  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80094BD4 00091B14  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 80094BD8 00091B18  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80094BDC 00091B1C  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80094BE0 00091B20  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80094BE4 00091B24  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80094BE8 00091B28  D1 63 00 2C */	stfs f11, 0x2c(r3)
/* 80094BEC 00091B2C  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x80408AC0 - 0x804097C0
Unit01:
	.incbin "baserom.dol", 0x3E3260, 0x8

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@94":
	.incbin "baserom.dol", 0x3E4798, 0x4
"@95":
  .4byte 0
"@193":
	.incbin "baserom.dol", 0x3E47A0, 0x4
"@214":
	.incbin "baserom.dol", 0x3E47A4, 0x4
"@217":
	.incbin "baserom.dol", 0x3E47A8, 0x4
"@218":
	.incbin "baserom.dol", 0x3E47AC, 0x4
