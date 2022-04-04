.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global execSecureView___15CPolarSubCameraFsP3Vec
execSecureView___15CPolarSubCameraFsP3Vec:
/* 80363414 00360354  7C 08 02 A6 */	mflr r0
/* 80363418 00360358  90 01 00 04 */	stw r0, 4(r1)
/* 8036341C 0036035C  94 21 FF 58 */	stwu r1, -0xa8(r1)
/* 80363420 00360360  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80363424 00360364  DB C1 00 98 */	stfd f30, 0x98(r1)
/* 80363428 00360368  93 E1 00 94 */	stw r31, 0x94(r1)
/* 8036342C 0036036C  3B E5 00 00 */	addi r31, r5, 0
/* 80363430 00360370  93 C1 00 90 */	stw r30, 0x90(r1)
/* 80363434 00360374  7C 7E 1B 78 */	mr r30, r3
/* 80363438 00360378  93 A1 00 8C */	stw r29, 0x8c(r1)
/* 8036343C 0036037C  93 81 00 88 */	stw r28, 0x88(r1)
/* 80363440 00360380  7C 9C 23 78 */	mr r28, r4
/* 80363444 00360384  80 CD 98 E4 */	lwz r6, gpMarioAngleY@sda21(r13)
/* 80363448 00360388  80 E3 00 68 */	lwz r7, 0x68(r3)
/* 8036344C 0036038C  A8 66 00 00 */	lha r3, 0(r6)
/* 80363450 00360390  C0 27 00 3C */	lfs f1, 0x3c(r7)
/* 80363454 00360394  38 03 80 00 */	addi r0, r3, -32768
/* 80363458 00360398  C0 47 00 44 */	lfs f2, 0x44(r7)
/* 8036345C 0036039C  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80363460 003603A0  7C 1D 07 34 */	extsh r29, r0
/* 80363464 003603A4  4B E0 71 D1 */	bl "CLBLinearInbetween<f>__Ffff"
/* 80363468 003603A8  7C 7D E0 50 */	subf r3, r29, r28
/* 8036346C 003603AC  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 80363470 003603B0  54 7C 04 3E */	clrlwi r28, r3, 0x10
/* 80363474 003603B4  80 6D 8D F4 */	lwz r3, jmaCosTable@sda21(r13)
/* 80363478 003603B8  7F 80 06 30 */	sraw r0, r28, r0
/* 8036347C 003603BC  C0 02 08 D8 */	lfs f0, "@1839"@sda21(r2)
/* 80363480 003603C0  54 00 10 3A */	slwi r0, r0, 2
/* 80363484 003603C4  FF E0 08 90 */	fmr f31, f1
/* 80363488 003603C8  7F C3 04 2E */	lfsx f30, r3, r0
/* 8036348C 003603CC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80363490 003603D0  4C 41 13 82 */	cror 2, 1, 2
/* 80363494 003603D4  40 82 00 08 */	bne lbl_8036349C
/* 80363498 003603D8  48 00 00 1C */	b lbl_803634B4
lbl_8036349C:
/* 8036349C 003603DC  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 803634A0 003603E0  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 803634A4 003603E4  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 803634A8 003603E8  C0 43 00 48 */	lfs f2, 0x48(r3)
/* 803634AC 003603EC  4B E0 71 89 */	bl "CLBLinearInbetween<f>__Ffff"
/* 803634B0 003603F0  FC 00 08 90 */	fmr f0, f1
lbl_803634B4:
/* 803634B4 003603F4  80 6D 8D EC */	lwz r3, jmaSinShift@sda21(r13)
/* 803634B8 003603F8  EC 60 07 B2 */	fmuls f3, f0, f30
/* 803634BC 003603FC  80 CD 8D F0 */	lwz r6, jmaSinTable@sda21(r13)
/* 803634C0 00360400  7F 80 1E 30 */	sraw r0, r28, r3
/* 803634C4 00360404  C0 02 08 D8 */	lfs f0, "@1839"@sda21(r2)
/* 803634C8 00360408  54 00 10 3A */	slwi r0, r0, 2
/* 803634CC 0036040C  7C 46 04 2E */	lfsx f2, r6, r0
/* 803634D0 00360410  EC 3F 18 BA */	fmadds f1, f31, f2, f3
/* 803634D4 00360414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803634D8 00360418  4C 41 13 82 */	cror 2, 1, 2
/* 803634DC 0036041C  40 82 00 08 */	bne lbl_803634E4
/* 803634E0 00360420  48 00 00 08 */	b lbl_803634E8
lbl_803634E4:
/* 803634E4 00360424  EC 3F 18 BE */	fnmadds f1, f31, f2, f3
lbl_803634E8:
/* 803634E8 00360428  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803634EC 0036042C  80 8D 98 B8 */	lwz r4, gpMarioOriginal@sda21(r13)
/* 803634F0 00360430  7C 00 1E 30 */	sraw r0, r0, r3
/* 803634F4 00360434  80 6D 98 E4 */	lwz r3, gpMarioAngleY@sda21(r13)
/* 803634F8 00360438  54 00 10 3A */	slwi r0, r0, 2
/* 803634FC 0036043C  80 AD 8D F4 */	lwz r5, jmaCosTable@sda21(r13)
/* 80363500 00360440  FC 40 08 50 */	fneg f2, f1
/* 80363504 00360444  7C 26 04 2E */	lfsx f1, r6, r0
/* 80363508 00360448  7C 05 04 2E */	lfsx f0, r5, r0
/* 8036350C 0036044C  A8 84 00 9C */	lha r4, 0x9c(r4)
/* 80363510 00360450  A8 63 00 00 */	lha r3, 0(r3)
/* 80363514 00360454  EC 22 00 72 */	fmuls f1, f2, f1
/* 80363518 00360458  EF C2 00 32 */	fmuls f30, f2, f0
/* 8036351C 0036045C  7C 04 18 51 */	subf. r0, r4, r3
/* 80363520 00360460  41 80 00 0C */	blt lbl_8036352C
/* 80363524 00360464  7C 04 18 50 */	subf r0, r4, r3
/* 80363528 00360468  48 00 00 0C */	b lbl_80363534
lbl_8036352C:
/* 8036352C 0036046C  7C 04 18 50 */	subf r0, r4, r3
/* 80363530 00360470  7C 00 00 D0 */	neg r0, r0
lbl_80363534:
/* 80363534 00360474  7C 00 07 34 */	extsh r0, r0
/* 80363538 00360478  C8 62 08 E8 */	lfd f3, "@1843"@sda21(r2)
/* 8036353C 0036047C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80363540 00360480  C0 82 08 DC */	lfs f4, "@1840"@sda21(r2)
/* 80363544 00360484  90 01 00 84 */	stw r0, 0x84(r1)
/* 80363548 00360488  3C 00 43 30 */	lis r0, 0x4330
/* 8036354C 0036048C  C0 02 08 E0 */	lfs f0, "@1841"@sda21(r2)
/* 80363550 00360490  90 01 00 80 */	stw r0, 0x80(r1)
/* 80363554 00360494  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 80363558 00360498  EC 42 18 28 */	fsubs f2, f2, f3
/* 8036355C 0036049C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80363560 003604A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80363564 003604A4  4C 40 13 82 */	cror 2, 0, 2
/* 80363568 003604A8  40 82 00 0C */	bne lbl_80363574
/* 8036356C 003604AC  FC 60 00 90 */	fmr f3, f0
/* 80363570 003604B0  48 00 00 08 */	b lbl_80363578
lbl_80363574:
/* 80363574 003604B4  EC 60 10 24 */	fdivs f3, f0, f2
lbl_80363578:
/* 80363578 003604B8  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8036357C 003604BC  C0 02 08 E0 */	lfs f0, "@1841"@sda21(r2)
/* 80363580 003604C0  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 80363584 003604C4  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80363588 003604C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8036358C 003604CC  40 81 00 0C */	ble lbl_80363598
/* 80363590 003604D0  FC 40 00 90 */	fmr f2, f0
/* 80363594 003604D4  48 00 00 14 */	b lbl_803635A8
lbl_80363598:
/* 80363598 003604D8  C0 02 08 D8 */	lfs f0, "@1839"@sda21(r2)
/* 8036359C 003604DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803635A0 003604E0  40 80 00 08 */	bge lbl_803635A8
/* 803635A4 003604E4  FC 40 00 90 */	fmr f2, f0
lbl_803635A8:
/* 803635A8 003604E8  FF E0 10 90 */	fmr f31, f2
/* 803635AC 003604EC  C0 62 08 D8 */	lfs f3, "@1839"@sda21(r2)
/* 803635B0 003604F0  38 7E 02 94 */	addi r3, r30, 0x294
/* 803635B4 003604F4  4B FF 51 B9 */	bl CLBChaseDecrease__FPffff
/* 803635B8 003604F8  FC 20 F0 90 */	fmr f1, f30
/* 803635BC 003604FC  C0 62 08 D8 */	lfs f3, "@1839"@sda21(r2)
/* 803635C0 00360500  FC 40 F8 90 */	fmr f2, f31
/* 803635C4 00360504  38 7E 02 98 */	addi r3, r30, 0x298
/* 803635C8 00360508  4B FF 51 A5 */	bl CLBChaseDecrease__FPffff
/* 803635CC 0036050C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803635D0 00360510  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 803635D4 00360514  EC 01 00 2A */	fadds f0, f1, f0
/* 803635D8 00360518  D0 1F 00 00 */	stfs f0, 0(r31)
/* 803635DC 0036051C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 803635E0 00360520  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 803635E4 00360524  EC 01 00 2A */	fadds f0, f1, f0
/* 803635E8 00360528  D0 1F 00 08 */	stfs f0, 8(r31)
/* 803635EC 0036052C  80 01 00 AC */	lwz r0, 0xac(r1)
/* 803635F0 00360530  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 803635F4 00360534  CB C1 00 98 */	lfd f30, 0x98(r1)
/* 803635F8 00360538  83 E1 00 94 */	lwz r31, 0x94(r1)
/* 803635FC 0036053C  83 C1 00 90 */	lwz r30, 0x90(r1)
/* 80363600 00360540  83 A1 00 8C */	lwz r29, 0x8c(r1)
/* 80363604 00360544  83 81 00 88 */	lwz r28, 0x88(r1)
/* 80363608 00360548  38 21 00 A8 */	addi r1, r1, 0xa8
/* 8036360C 0036054C  7C 08 03 A6 */	mtlr r0
/* 80363610 00360550  4E 80 00 20 */	blr 

.global calcSecureViewTarget___15CPolarSubCameraFsPfPf
calcSecureViewTarget___15CPolarSubCameraFsPfPf:
/* 80363614 00360554  7C 08 02 A6 */	mflr r0
/* 80363618 00360558  90 01 00 04 */	stw r0, 4(r1)
/* 8036361C 0036055C  94 21 FF 98 */	stwu r1, -0x68(r1)
/* 80363620 00360560  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80363624 00360564  DB C1 00 58 */	stfd f30, 0x58(r1)
/* 80363628 00360568  BF 61 00 44 */	stmw r27, 0x44(r1)
/* 8036362C 0036056C  7C 7B 1B 78 */	mr r27, r3
/* 80363630 00360570  7C 9D 23 78 */	mr r29, r4
/* 80363634 00360574  3B C5 00 00 */	addi r30, r5, 0
/* 80363638 00360578  3B E6 00 00 */	addi r31, r6, 0
/* 8036363C 0036057C  80 ED 98 E4 */	lwz r7, gpMarioAngleY@sda21(r13)
/* 80363640 00360580  81 03 00 68 */	lwz r8, 0x68(r3)
/* 80363644 00360584  A8 67 00 00 */	lha r3, 0(r7)
/* 80363648 00360588  C0 28 00 3C */	lfs f1, 0x3c(r8)
/* 8036364C 0036058C  38 03 80 00 */	addi r0, r3, -32768
/* 80363650 00360590  C0 48 00 44 */	lfs f2, 0x44(r8)
/* 80363654 00360594  C0 7B 00 A8 */	lfs f3, 0xa8(r27)
/* 80363658 00360598  7C 1C 07 34 */	extsh r28, r0
/* 8036365C 0036059C  4B E0 6F D9 */	bl "CLBLinearInbetween<f>__Ffff"
/* 80363660 003605A0  7C 7C E8 50 */	subf r3, r28, r29
/* 80363664 003605A4  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 80363668 003605A8  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 8036366C 003605AC  80 6D 8D F4 */	lwz r3, jmaCosTable@sda21(r13)
/* 80363670 003605B0  7F A0 06 30 */	sraw r0, r29, r0
/* 80363674 003605B4  C0 02 08 D8 */	lfs f0, "@1839"@sda21(r2)
/* 80363678 003605B8  54 00 10 3A */	slwi r0, r0, 2
/* 8036367C 003605BC  FF E0 08 90 */	fmr f31, f1
/* 80363680 003605C0  7F C3 04 2E */	lfsx f30, r3, r0
/* 80363684 003605C4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80363688 003605C8  4C 41 13 82 */	cror 2, 1, 2
/* 8036368C 003605CC  40 82 00 0C */	bne lbl_80363698
/* 80363690 003605D0  FC 20 00 90 */	fmr f1, f0
/* 80363694 003605D4  48 00 00 18 */	b lbl_803636AC
lbl_80363698:
/* 80363698 003605D8  80 7B 00 68 */	lwz r3, 0x68(r27)
/* 8036369C 003605DC  C0 7B 00 A8 */	lfs f3, 0xa8(r27)
/* 803636A0 003605E0  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 803636A4 003605E4  C0 43 00 48 */	lfs f2, 0x48(r3)
/* 803636A8 003605E8  4B E0 6F 8D */	bl "CLBLinearInbetween<f>__Ffff"
lbl_803636AC:
/* 803636AC 003605EC  80 6D 8D EC */	lwz r3, jmaSinShift@sda21(r13)
/* 803636B0 003605F0  80 8D 8D F0 */	lwz r4, jmaSinTable@sda21(r13)
/* 803636B4 003605F4  7F A0 1E 30 */	sraw r0, r29, r3
/* 803636B8 003605F8  C0 02 08 D8 */	lfs f0, "@1839"@sda21(r2)
/* 803636BC 003605FC  54 00 10 3A */	slwi r0, r0, 2
/* 803636C0 00360600  7C 44 04 2E */	lfsx f2, r4, r0
/* 803636C4 00360604  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 803636C8 00360608  EC 21 17 BA */	fmadds f1, f1, f30, f2
/* 803636CC 0036060C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803636D0 00360610  4C 41 13 82 */	cror 2, 1, 2
/* 803636D4 00360614  40 82 00 08 */	bne lbl_803636DC
/* 803636D8 00360618  48 00 00 08 */	b lbl_803636E0
lbl_803636DC:
/* 803636DC 0036061C  FC 20 08 50 */	fneg f1, f1
lbl_803636E0:
/* 803636E0 00360620  57 85 04 3E */	clrlwi r5, r28, 0x10
/* 803636E4 00360624  FC 20 08 50 */	fneg f1, f1
/* 803636E8 00360628  7C A0 1E 30 */	sraw r0, r5, r3
/* 803636EC 0036062C  54 00 10 3A */	slwi r0, r0, 2
/* 803636F0 00360630  7C 04 04 2E */	lfsx f0, r4, r0
/* 803636F4 00360634  EC 01 00 32 */	fmuls f0, f1, f0
/* 803636F8 00360638  D0 1E 00 00 */	stfs f0, 0(r30)
/* 803636FC 0036063C  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 80363700 00360640  80 6D 8D F4 */	lwz r3, jmaCosTable@sda21(r13)
/* 80363704 00360644  7C A0 06 30 */	sraw r0, r5, r0
/* 80363708 00360648  54 00 10 3A */	slwi r0, r0, 2
/* 8036370C 0036064C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80363710 00360650  EC 01 00 32 */	fmuls f0, f1, f0
/* 80363714 00360654  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80363718 00360658  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8036371C 0036065C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80363720 00360660  CB C1 00 58 */	lfd f30, 0x58(r1)
/* 80363724 00360664  BB 61 00 44 */	lmw r27, 0x44(r1)
/* 80363728 00360668  38 21 00 68 */	addi r1, r1, 0x68
/* 8036372C 0036066C  7C 08 03 A6 */	mtlr r0
/* 80363730 00360670  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@1839":
  .4byte 0
"@1840":
	.incbin "baserom.dol", 0x3EC5DC, 0x4
"@1841":
	.incbin "baserom.dol", 0x3EC5E0, 0x8
"@1843":
	.incbin "baserom.dol", 0x3EC5E8, 0x8
