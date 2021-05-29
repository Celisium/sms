.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global killHeightPan___15CPolarSubCameraFv
killHeightPan___15CPolarSubCameraFv:
/* 8035602C 00352F6C  A0 03 00 64 */	lhz r0, 0x64(r3)
/* 80356030 00352F70  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80356034 00352F74  B0 03 00 64 */	sth r0, 0x64(r3)
/* 80356038 00352F78  A0 03 00 64 */	lhz r0, 0x64(r3)
/* 8035603C 00352F7C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80356040 00352F80  B0 03 00 64 */	sth r0, 0x64(r3)
/* 80356044 00352F84  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 80356048 00352F88  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 8035604C 00352F8C  C0 02 05 18 */	lfs f0, $$21704@sda21(r2)
/* 80356050 00352F90  D0 03 02 4C */	stfs f0, 0x24c(r3)
/* 80356054 00352F94  4E 80 00 20 */	blr 

.global execHeightPan___15CPolarSubCameraFv
execHeightPan___15CPolarSubCameraFv:
/* 80356058 00352F98  7C 08 02 A6 */	mflr r0
/* 8035605C 00352F9C  90 01 00 04 */	stw r0, 4(r1)
/* 80356060 00352FA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80356064 00352FA4  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 80356068 00352FA8  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8035606C 00352FAC  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80356070 00352FB0  7C 7E 1B 78 */	mr r30, r3
/* 80356074 00352FB4  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80356078 00352FB8  4B DF CA D1 */	bl SMS_IsMarioTouchGround4cm__Fv
/* 8035607C 00352FBC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80356080 00352FC0  C0 22 05 18 */	lfs f1, $$21704@sda21(r2)
/* 80356084 00352FC4  7C 00 00 D0 */	neg r0, r0
/* 80356088 00352FC8  7C 00 00 34 */	cntlzw r0, r0
/* 8035608C 00352FCC  54 1F D9 7E */	srwi r31, r0, 5
/* 80356090 00352FD0  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80356094 00352FD4  41 82 00 0C */	beq lbl_803560A0
/* 80356098 00352FD8  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8035609C 00352FDC  C0 23 00 2C */	lfs f1, 0x2c(r3)
lbl_803560A0:
/* 803560A0 00352FE0  80 9E 00 68 */	lwz r4, 0x68(r30)
/* 803560A4 00352FE4  38 7E 02 4C */	addi r3, r30, 0x24c
/* 803560A8 00352FE8  C0 44 00 30 */	lfs f2, 0x30(r4)
/* 803560AC 00352FEC  4B E1 45 ED */	bl CLBChaseGeneralConstantSpecifySpeed$$0f$$1__FPfff
/* 803560B0 00352FF0  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 803560B4 00352FF4  7F C3 F3 78 */	mr r3, r30
/* 803560B8 00352FF8  C0 1E 02 4C */	lfs f0, 0x24c(r30)
/* 803560BC 00352FFC  3B A0 00 00 */	li r29, 0
/* 803560C0 00353000  EC 01 00 2A */	fadds f0, f1, f0
/* 803560C4 00353004  D0 1E 00 90 */	stfs f0, 0x90(r30)
/* 803560C8 00353008  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 803560CC 0035300C  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 803560D0 00353010  EF E1 00 28 */	fsubs f31, f1, f0
/* 803560D4 00353014  48 00 01 D1 */	bl isNotHeightPanCamMode___15CPolarSubCameraCFv
/* 803560D8 00353018  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803560DC 0035301C  40 82 00 40 */	bne lbl_8035611C
/* 803560E0 00353020  4B DF CA 69 */	bl SMS_IsMarioTouchGround4cm__Fv
/* 803560E4 00353024  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803560E8 00353028  40 82 00 34 */	bne lbl_8035611C
/* 803560EC 0035302C  80 6D A8 B8 */	lwz r3, gpCameraMario@sda21(r13)
/* 803560F0 00353030  48 00 2A A5 */	bl isMarioGoDown__16TCameraMarioDataCFv
/* 803560F4 00353034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803560F8 00353038  40 82 00 24 */	bne lbl_8035611C
/* 803560FC 0035303C  4B DF CA 05 */	bl SMS_IsMarioOnWire__Fv
/* 80356100 00353040  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80356104 00353044  40 82 00 18 */	bne lbl_8035611C
/* 80356108 00353048  4B DF C8 B1 */	bl SMS_GetMarioStatus__Fv
/* 8035610C 0035304C  3C 03 FF E0 */	addis r0, r3, 0xffe0
/* 80356110 00353050  28 00 03 45 */	cmplwi r0, 0x345
/* 80356114 00353054  41 82 00 08 */	beq lbl_8035611C
/* 80356118 00353058  3B A0 00 01 */	li r29, 1
lbl_8035611C:
/* 8035611C 0035305C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80356120 00353060  41 82 00 5C */	beq lbl_8035617C
/* 80356124 00353064  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80356128 00353068  38 7E 00 84 */	addi r3, r30, 0x84
/* 8035612C 0035306C  60 00 00 01 */	ori r0, r0, 1
/* 80356130 00353070  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 80356134 00353074  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80356138 00353078  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8035613C 0035307C  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 80356140 00353080  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80356144 00353084  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 80356148 00353088  80 9E 00 68 */	lwz r4, 0x68(r30)
/* 8035614C 0035308C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80356150 00353090  C0 44 00 34 */	lfs f2, 0x34(r4)
/* 80356154 00353094  C0 62 05 18 */	lfs f3, $$21704@sda21(r2)
/* 80356158 00353098  48 00 26 15 */	bl CLBChaseDecrease__FPffff
/* 8035615C 0035309C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80356160 003530A0  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80356164 003530A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80356168 003530A8  41 82 01 1C */	beq lbl_80356284
/* 8035616C 003530AC  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80356170 003530B0  EC 00 F8 2A */	fadds f0, f0, f31
/* 80356174 003530B4  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 80356178 003530B8  48 00 01 0C */	b lbl_80356284
lbl_8035617C:
/* 8035617C 003530BC  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80356180 003530C0  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80356184 003530C4  41 82 00 F8 */	beq lbl_8035627C
/* 80356188 003530C8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8035618C 003530CC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80356190 003530D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80356194 003530D4  41 82 00 10 */	beq lbl_803561A4
/* 80356198 003530D8  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8035619C 003530DC  EC 00 F8 2A */	fadds f0, f0, f31
/* 803561A0 003530E0  D0 1E 00 84 */	stfs f0, 0x84(r30)
lbl_803561A4:
/* 803561A4 003530E4  A0 7E 00 64 */	lhz r3, 0x64(r30)
/* 803561A8 003530E8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 803561AC 003530EC  41 82 00 74 */	beq lbl_80356220
/* 803561B0 003530F0  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 803561B4 003530F4  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 803561B8 003530F8  38 A0 00 00 */	li r5, 0
/* 803561BC 003530FC  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 803561C0 00353100  2C 00 00 13 */	cmpwi r0, 0x13
/* 803561C4 00353104  41 82 00 14 */	beq lbl_803561D8
/* 803561C8 00353108  40 80 00 28 */	bge lbl_803561F0
/* 803561CC 0035310C  2C 00 00 05 */	cmpwi r0, 5
/* 803561D0 00353110  41 82 00 08 */	beq lbl_803561D8
/* 803561D4 00353114  48 00 00 1C */	b lbl_803561F0
lbl_803561D8:
/* 803561D8 00353118  80 7E 02 D4 */	lwz r3, 0x2d4(r30)
/* 803561DC 0035311C  A8 9E 02 56 */	lha r4, 0x256(r30)
/* 803561E0 00353120  A8 03 00 54 */	lha r0, 0x54(r3)
/* 803561E4 00353124  7C 04 00 00 */	cmpw r4, r0
/* 803561E8 00353128  40 80 00 08 */	bge lbl_803561F0
/* 803561EC 0035312C  38 A0 00 01 */	li r5, 1
lbl_803561F0:
/* 803561F0 00353130  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 803561F4 00353134  41 82 00 20 */	beq lbl_80356214
/* 803561F8 00353138  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 803561FC 0035313C  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 80356200 00353140  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80356204 00353144  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80356208 00353148  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8035620C 0035314C  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 80356210 00353150  48 00 00 10 */	b lbl_80356220
lbl_80356214:
/* 80356214 00353154  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80356218 00353158  60 00 00 02 */	ori r0, r0, 2
/* 8035621C 0035315C  B0 1E 00 64 */	sth r0, 0x64(r30)
lbl_80356220:
/* 80356220 00353160  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80356224 00353164  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80356228 00353168  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8035622C 0035316C  41 82 00 38 */	beq lbl_80356264
/* 80356230 00353170  80 BE 02 D4 */	lwz r5, 0x2d4(r30)
/* 80356234 00353174  38 7E 00 84 */	addi r3, r30, 0x84
/* 80356238 00353178  C0 65 00 40 */	lfs f3, 0x40(r5)
/* 8035623C 0035317C  C0 45 00 2C */	lfs f2, 0x2c(r5)
/* 80356240 00353180  48 00 24 AD */	bl CLBChaseSpecialDecrease__FPffff
/* 80356244 00353184  2C 03 00 00 */	cmpwi r3, 0
/* 80356248 00353188  40 82 00 3C */	bne lbl_80356284
/* 8035624C 0035318C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80356250 00353190  40 82 00 34 */	bne lbl_80356284
/* 80356254 00353194  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80356258 00353198  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8035625C 0035319C  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 80356260 003531A0  48 00 00 24 */	b lbl_80356284
lbl_80356264:
/* 80356264 003531A4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80356268 003531A8  40 82 00 1C */	bne lbl_80356284
/* 8035626C 003531AC  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80356270 003531B0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80356274 003531B4  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 80356278 003531B8  48 00 00 0C */	b lbl_80356284
lbl_8035627C:
/* 8035627C 003531BC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80356280 003531C0  D0 1E 00 84 */	stfs f0, 0x84(r30)
lbl_80356284:
/* 80356284 003531C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80356288 003531C8  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 8035628C 003531CC  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80356290 003531D0  7C 08 03 A6 */	mtlr r0
/* 80356294 003531D4  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80356298 003531D8  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8035629C 003531DC  38 21 00 40 */	addi r1, r1, 0x40
/* 803562A0 003531E0  4E 80 00 20 */	blr 

.global isNotHeightPanCamMode___15CPolarSubCameraCFv
isNotHeightPanCamMode___15CPolarSubCameraCFv:
/* 803562A4 003531E4  7C 08 02 A6 */	mflr r0
/* 803562A8 003531E8  90 01 00 04 */	stw r0, 4(r1)
/* 803562AC 003531EC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803562B0 003531F0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803562B4 003531F4  3B E0 00 00 */	li r31, 0
/* 803562B8 003531F8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803562BC 003531FC  7C 7E 1B 78 */	mr r30, r3
/* 803562C0 00353200  80 83 00 50 */	lwz r4, 0x50(r3)
/* 803562C4 00353204  48 00 D1 3D */	bl isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
/* 803562C8 00353208  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803562CC 0035320C  40 82 00 18 */	bne lbl_803562E4
/* 803562D0 00353210  7F C3 F3 78 */	mr r3, r30
/* 803562D4 00353214  80 9E 00 50 */	lwz r4, 0x50(r30)
/* 803562D8 00353218  48 00 CD F5 */	bl isRailCameraSpecifyMode__15CPolarSubCameraCFi
/* 803562DC 0035321C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803562E0 00353220  41 82 00 0C */	beq lbl_803562EC
lbl_803562E4:
/* 803562E4 00353224  3B E0 00 01 */	li r31, 1
/* 803562E8 00353228  48 00 00 30 */	b lbl_80356318
lbl_803562EC:
/* 803562EC 0035322C  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 803562F0 00353230  38 03 FF F8 */	addi r0, r3, -8
/* 803562F4 00353234  28 00 00 39 */	cmplwi r0, 0x39
/* 803562F8 00353238  41 81 00 20 */	bgt lbl_80356318
/* 803562FC 0035323C  3C 60 80 3E */	lis r3, $$21767@ha
/* 80356300 00353240  38 63 49 18 */	addi r3, r3, $$21767@l
/* 80356304 00353244  54 00 10 3A */	slwi r0, r0, 2
/* 80356308 00353248  7C 03 00 2E */	lwzx r0, r3, r0
/* 8035630C 0035324C  7C 09 03 A6 */	mtctr r0
/* 80356310 00353250  4E 80 04 20 */	bctr 
lbl_80356314:
/* 80356314 00353254  3B E0 00 01 */	li r31, 1
lbl_80356318:
/* 80356318 00353258  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035631C 0035325C  7F E3 FB 78 */	mr r3, r31
/* 80356320 00353260  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80356324 00353264  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80356328 00353268  7C 08 03 A6 */	mtlr r0
/* 8035632C 0035326C  38 21 00 18 */	addi r1, r1, 0x18
/* 80356330 00353270  4E 80 00 20 */	blr 

.global killHeightPanWhenChangeCamMode___15CPolarSubCameraFv
killHeightPanWhenChangeCamMode___15CPolarSubCameraFv:
/* 80356334 00353274  7C 08 02 A6 */	mflr r0
/* 80356338 00353278  90 01 00 04 */	stw r0, 4(r1)
/* 8035633C 0035327C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80356340 00353280  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80356344 00353284  3B E0 00 00 */	li r31, 0
/* 80356348 00353288  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035634C 0035328C  3B C0 00 00 */	li r30, 0
/* 80356350 00353290  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80356354 00353294  7C 7D 1B 78 */	mr r29, r3
/* 80356358 00353298  80 83 00 50 */	lwz r4, 0x50(r3)
/* 8035635C 0035329C  48 00 D0 A5 */	bl isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
/* 80356360 003532A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80356364 003532A4  40 82 00 18 */	bne lbl_8035637C
/* 80356368 003532A8  7F A3 EB 78 */	mr r3, r29
/* 8035636C 003532AC  80 9D 00 50 */	lwz r4, 0x50(r29)
/* 80356370 003532B0  48 00 CD 5D */	bl isRailCameraSpecifyMode__15CPolarSubCameraCFi
/* 80356374 003532B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80356378 003532B8  41 82 00 0C */	beq lbl_80356384
lbl_8035637C:
/* 8035637C 003532BC  3B E0 00 01 */	li r31, 1
/* 80356380 003532C0  48 00 00 30 */	b lbl_803563B0
lbl_80356384:
/* 80356384 003532C4  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 80356388 003532C8  38 03 FF F8 */	addi r0, r3, -8
/* 8035638C 003532CC  28 00 00 39 */	cmplwi r0, 0x39
/* 80356390 003532D0  41 81 00 20 */	bgt lbl_803563B0
/* 80356394 003532D4  3C 60 80 3E */	lis r3, $$21790@ha
/* 80356398 003532D8  38 63 4A 00 */	addi r3, r3, $$21790@l
/* 8035639C 003532DC  54 00 10 3A */	slwi r0, r0, 2
/* 803563A0 003532E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 803563A4 003532E4  7C 09 03 A6 */	mtctr r0
/* 803563A8 003532E8  4E 80 04 20 */	bctr 
lbl_803563AC:
/* 803563AC 003532EC  3B E0 00 01 */	li r31, 1
lbl_803563B0:
/* 803563B0 003532F0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 803563B4 003532F4  41 82 00 08 */	beq lbl_803563BC
/* 803563B8 003532F8  3B C0 00 01 */	li r30, 1
lbl_803563BC:
/* 803563BC 003532FC  80 1D 00 54 */	lwz r0, 0x54(r29)
/* 803563C0 00353300  2C 00 00 3E */	cmpwi r0, 0x3e
/* 803563C4 00353304  41 82 00 14 */	beq lbl_803563D8
/* 803563C8 00353308  40 80 00 14 */	bge lbl_803563DC
/* 803563CC 0035330C  2C 00 00 0F */	cmpwi r0, 0xf
/* 803563D0 00353310  41 82 00 08 */	beq lbl_803563D8
/* 803563D4 00353314  48 00 00 08 */	b lbl_803563DC
lbl_803563D8:
/* 803563D8 00353318  3B C0 00 01 */	li r30, 1
lbl_803563DC:
/* 803563DC 0035331C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 803563E0 00353320  41 82 00 2C */	beq lbl_8035640C
/* 803563E4 00353324  A0 1D 00 64 */	lhz r0, 0x64(r29)
/* 803563E8 00353328  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 803563EC 0035332C  B0 1D 00 64 */	sth r0, 0x64(r29)
/* 803563F0 00353330  A0 1D 00 64 */	lhz r0, 0x64(r29)
/* 803563F4 00353334  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 803563F8 00353338  B0 1D 00 64 */	sth r0, 0x64(r29)
/* 803563FC 0035333C  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 80356400 00353340  D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 80356404 00353344  C0 02 05 18 */	lfs f0, $$21704@sda21(r2)
/* 80356408 00353348  D0 1D 02 4C */	stfs f0, 0x24c(r29)
lbl_8035640C:
/* 8035640C 0035334C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80356410 00353350  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80356414 00353354  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80356418 00353358  7C 08 03 A6 */	mtlr r0
/* 8035641C 0035335C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80356420 00353360  38 21 00 20 */	addi r1, r1, 0x20
/* 80356424 00353364  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
$$21767:
    .4byte lbl_80356314
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356314
    .4byte lbl_80356318
    .4byte lbl_80356314
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356314
    .4byte lbl_80356314
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356314
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356314
    .4byte lbl_80356318
    .4byte lbl_80356314
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356314
    .4byte lbl_80356318
    .4byte lbl_80356318
    .4byte lbl_80356314
$$21790:
    .4byte lbl_803563AC
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563AC
    .4byte lbl_803563B0
    .4byte lbl_803563AC
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563AC
    .4byte lbl_803563AC
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563AC
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563AC
    .4byte lbl_803563B0
    .4byte lbl_803563AC
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563AC
    .4byte lbl_803563B0
    .4byte lbl_803563B0
    .4byte lbl_803563AC
.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21704:
  .4byte 0
  .4byte 0
