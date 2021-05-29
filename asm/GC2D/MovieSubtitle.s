.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __dt__14TMovieSubTitleFv
__dt__14TMovieSubTitleFv:
/* 802432BC 002401FC  7C 08 02 A6 */	mflr r0
/* 802432C0 00240200  90 01 00 04 */	stw r0, 4(r1)
/* 802432C4 00240204  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802432C8 00240208  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802432CC 0024020C  3B E4 00 00 */	addi r31, r4, 0
/* 802432D0 00240210  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802432D4 00240214  7C 7E 1B 79 */	or. r30, r3, r3
/* 802432D8 00240218  41 82 00 3C */	beq lbl_80243314
/* 802432DC 0024021C  3C 60 80 3D */	lis r3, __vt__14TMovieSubTitle@ha
/* 802432E0 00240220  38 03 20 68 */	addi r0, r3, __vt__14TMovieSubTitle@l
/* 802432E4 00240224  90 1E 00 00 */	stw r0, 0(r30)
/* 802432E8 00240228  41 82 00 1C */	beq lbl_80243304
/* 802432EC 0024022C  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 802432F0 00240230  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 802432F4 00240234  90 1E 00 00 */	stw r0, 0(r30)
/* 802432F8 00240238  38 7E 00 00 */	addi r3, r30, 0
/* 802432FC 0024023C  38 80 00 00 */	li r4, 0
/* 80243300 00240240  4B E0 14 FD */	bl __dt__Q26JDrama8TNameRefFv
lbl_80243304:
/* 80243304 00240244  7F E0 07 35 */	extsh. r0, r31
/* 80243308 00240248  40 81 00 0C */	ble lbl_80243314
/* 8024330C 0024024C  7F C3 F3 78 */	mr r3, r30
/* 80243310 00240250  4B DC 97 A1 */	bl __dl__FPv
lbl_80243314:
/* 80243314 00240254  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80243318 00240258  7F C3 F3 78 */	mr r3, r30
/* 8024331C 0024025C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80243320 00240260  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80243324 00240264  7C 08 03 A6 */	mtlr r0
/* 80243328 00240268  38 21 00 18 */	addi r1, r1, 0x18
/* 8024332C 0024026C  4E 80 00 20 */	blr 

.global setCurMessage__14TMovieSubTitleFv
setCurMessage__14TMovieSubTitleFv:
/* 80243330 00240270  7C 08 02 A6 */	mflr r0
/* 80243334 00240274  90 01 00 04 */	stw r0, 4(r1)
/* 80243338 00240278  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8024333C 0024027C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80243340 00240280  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80243344 00240284  7C 7E 1B 78 */	mr r30, r3
/* 80243348 00240288  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8024334C 0024028C  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 80243350 00240290  A0 03 00 00 */	lhz r0, 0(r3)
/* 80243354 00240294  7C 00 20 40 */	cmplw r0, r4
/* 80243358 00240298  41 81 00 0C */	bgt lbl_80243364
/* 8024335C 0024029C  38 60 00 00 */	li r3, 0
/* 80243360 002402A0  48 00 00 08 */	b lbl_80243368
lbl_80243364:
/* 80243364 002402A4  4B FD 53 C5 */	bl getMessageEntry__14TMessageLoaderFUl
lbl_80243368:
/* 80243368 002402A8  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8024336C 002402AC  80 03 00 00 */	lwz r0, 0(r3)
/* 80243370 002402B0  80 84 00 04 */	lwz r4, 4(r4)
/* 80243374 002402B4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80243378 002402B8  7F E4 02 14 */	add r31, r4, r0
/* 8024337C 002402BC  4B DD 69 A1 */	bl getStringPtr__10J2DTextBoxCFv
/* 80243380 002402C0  4C C6 31 82 */	crclr 6
/* 80243384 002402C4  38 DF 00 00 */	addi r6, r31, 0
/* 80243388 002402C8  38 80 01 00 */	li r4, 0x100
/* 8024338C 002402CC  38 A2 DB B0 */	addi r5, r2, $$21605@sda21
/* 80243390 002402D0  4B E4 0D 35 */	bl snprintf
/* 80243394 002402D4  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80243398 002402D8  4B DD 69 85 */	bl getStringPtr__10J2DTextBoxCFv
/* 8024339C 002402DC  4C C6 31 82 */	crclr 6
/* 802433A0 002402E0  38 DF 00 00 */	addi r6, r31, 0
/* 802433A4 002402E4  38 80 01 00 */	li r4, 0x100
/* 802433A8 002402E8  38 A2 DB B0 */	addi r5, r2, $$21605@sda21
/* 802433AC 002402EC  4B E4 0D 19 */	bl snprintf
/* 802433B0 002402F0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802433B4 002402F4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802433B8 002402F8  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 802433BC 002402FC  7C 08 03 A6 */	mtlr r0
/* 802433C0 00240300  38 21 00 28 */	addi r1, r1, 0x28
/* 802433C4 00240304  4E 80 00 20 */	blr 

.global perform__14TMovieSubTitleFUlPQ26JDrama9TGraphics
perform__14TMovieSubTitleFUlPQ26JDrama9TGraphics:
/* 802433C8 00240308  7C 08 02 A6 */	mflr r0
/* 802433CC 0024030C  90 01 00 04 */	stw r0, 4(r1)
/* 802433D0 00240310  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 802433D4 00240314  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 802433D8 00240318  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 802433DC 0024031C  3B E3 00 00 */	addi r31, r3, 0
/* 802433E0 00240320  93 C1 01 48 */	stw r30, 0x148(r1)
/* 802433E4 00240324  3B C4 00 00 */	addi r30, r4, 0
/* 802433E8 00240328  93 A1 01 44 */	stw r29, 0x144(r1)
/* 802433EC 0024032C  3B A5 00 00 */	addi r29, r5, 0
/* 802433F0 00240330  93 81 01 40 */	stw r28, 0x140(r1)
/* 802433F4 00240334  41 82 01 00 */	beq lbl_802434F4
/* 802433F8 00240338  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 802433FC 0024033C  28 00 00 00 */	cmplwi r0, 0
/* 80243400 00240340  41 82 00 80 */	beq lbl_80243480
/* 80243404 00240344  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80243408 00240348  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8024340C 0024034C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80243410 00240350  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80243414 00240354  83 85 00 20 */	lwz r28, 0x20(r5)
/* 80243418 00240358  7C 00 20 40 */	cmplw r0, r4
/* 8024341C 0024035C  41 81 00 0C */	bgt lbl_80243428
/* 80243420 00240360  38 60 00 00 */	li r3, 0
/* 80243424 00240364  48 00 00 08 */	b lbl_8024342C
lbl_80243428:
/* 80243428 00240368  4B FD 53 01 */	bl getMessageEntry__14TMessageLoaderFUl
lbl_8024342C:
/* 8024342C 0024036C  28 03 00 00 */	cmplwi r3, 0
/* 80243430 00240370  41 82 00 C4 */	beq lbl_802434F4
/* 80243434 00240374  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80243438 00240378  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8024343C 0024037C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80243440 00240380  7C 00 20 40 */	cmplw r0, r4
/* 80243444 00240384  41 81 00 0C */	bgt lbl_80243450
/* 80243448 00240388  38 60 00 00 */	li r3, 0
/* 8024344C 0024038C  48 00 00 08 */	b lbl_80243454
lbl_80243450:
/* 80243450 00240390  4B FD 52 D9 */	bl getMessageEntry__14TMessageLoaderFUl
lbl_80243454:
/* 80243454 00240394  A8 03 00 06 */	lha r0, 6(r3)
/* 80243458 00240398  7C 00 E0 00 */	cmpw r0, r28
/* 8024345C 0024039C  41 81 00 98 */	bgt lbl_802434F4
/* 80243460 002403A0  38 00 00 00 */	li r0, 0
/* 80243464 002403A4  98 1F 00 28 */	stb r0, 0x28(r31)
/* 80243468 002403A8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8024346C 002403AC  98 03 00 0C */	stb r0, 0xc(r3)
/* 80243470 002403B0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80243474 002403B4  38 03 00 01 */	addi r0, r3, 1
/* 80243478 002403B8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8024347C 002403BC  48 00 00 78 */	b lbl_802434F4
lbl_80243480:
/* 80243480 002403C0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80243484 002403C4  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 80243488 002403C8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8024348C 002403CC  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80243490 002403D0  83 85 00 20 */	lwz r28, 0x20(r5)
/* 80243494 002403D4  7C 00 20 40 */	cmplw r0, r4
/* 80243498 002403D8  41 81 00 0C */	bgt lbl_802434A4
/* 8024349C 002403DC  38 60 00 00 */	li r3, 0
/* 802434A0 002403E0  48 00 00 08 */	b lbl_802434A8
lbl_802434A4:
/* 802434A4 002403E4  4B FD 52 85 */	bl getMessageEntry__14TMessageLoaderFUl
lbl_802434A8:
/* 802434A8 002403E8  28 03 00 00 */	cmplwi r3, 0
/* 802434AC 002403EC  41 82 00 48 */	beq lbl_802434F4
/* 802434B0 002403F0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802434B4 002403F4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802434B8 002403F8  A0 03 00 00 */	lhz r0, 0(r3)
/* 802434BC 002403FC  7C 00 20 40 */	cmplw r0, r4
/* 802434C0 00240400  41 81 00 0C */	bgt lbl_802434CC
/* 802434C4 00240404  38 60 00 00 */	li r3, 0
/* 802434C8 00240408  48 00 00 08 */	b lbl_802434D0
lbl_802434CC:
/* 802434CC 0024040C  4B FD 52 5D */	bl getMessageEntry__14TMessageLoaderFUl
lbl_802434D0:
/* 802434D0 00240410  A8 03 00 04 */	lha r0, 4(r3)
/* 802434D4 00240414  7C 00 E0 00 */	cmpw r0, r28
/* 802434D8 00240418  41 81 00 1C */	bgt lbl_802434F4
/* 802434DC 0024041C  38 00 00 01 */	li r0, 1
/* 802434E0 00240420  98 1F 00 28 */	stb r0, 0x28(r31)
/* 802434E4 00240424  7F E3 FB 78 */	mr r3, r31
/* 802434E8 00240428  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802434EC 0024042C  98 04 00 0C */	stb r0, 0xc(r4)
/* 802434F0 00240430  4B FF FE 41 */	bl setCurMessage__14TMovieSubTitleFv
lbl_802434F4:
/* 802434F4 00240434  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 802434F8 00240438  41 82 00 44 */	beq lbl_8024353C
/* 802434FC 0024043C  38 9D 00 54 */	addi r4, r29, 0x54
/* 80243500 00240440  38 61 00 4C */	addi r3, r1, 0x4c
/* 80243504 00240444  4B DF 36 35 */	bl __ct__13J2DOrthoGraphFRC7JUTRect
/* 80243508 00240448  38 61 00 4C */	addi r3, r1, 0x4c
/* 8024350C 0024044C  4B DF 1D 1D */	bl setup2D__14J2DGrafContextFv
/* 80243510 00240450  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80243514 00240454  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80243518 00240458  38 80 00 00 */	li r4, 0
/* 8024351C 0024045C  38 A0 00 00 */	li r5, 0
/* 80243520 00240460  4B DD 59 45 */	bl draw__9J2DScreenFiiPC14J2DGrafContext
/* 80243524 00240464  3C 60 80 3B */	lis r3, __vt__13J2DOrthoGraph@ha
/* 80243528 00240468  38 03 9B B0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 8024352C 0024046C  3C 60 80 3B */	lis r3, __vt__14J2DGrafContext@ha
/* 80243530 00240470  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80243534 00240474  38 03 9B 48 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 80243538 00240478  90 01 00 4C */	stw r0, 0x4c(r1)
lbl_8024353C:
/* 8024353C 0024047C  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80243540 00240480  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 80243544 00240484  83 C1 01 48 */	lwz r30, 0x148(r1)
/* 80243548 00240488  7C 08 03 A6 */	mtlr r0
/* 8024354C 0024048C  83 A1 01 44 */	lwz r29, 0x144(r1)
/* 80243550 00240490  83 81 01 40 */	lwz r28, 0x140(r1)
/* 80243554 00240494  38 21 01 50 */	addi r1, r1, 0x150
/* 80243558 00240498  4E 80 00 20 */	blr 

.global setupResource__14TMovieSubTitleFPCcP10JKRArchive
setupResource__14TMovieSubTitleFPCcP10JKRArchive:
/* 8024355C 0024049C  7C 08 02 A6 */	mflr r0
/* 80243560 002404A0  3C C0 80 3E */	lis r6, gpApplication@ha
/* 80243564 002404A4  90 01 00 04 */	stw r0, 4(r1)
/* 80243568 002404A8  38 C6 60 00 */	addi r6, r6, gpApplication@l
/* 8024356C 002404AC  3C E0 80 39 */	lis r7, $$21490@ha
/* 80243570 002404B0  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80243574 002404B4  BF 61 01 2C */	stmw r27, 0x12c(r1)
/* 80243578 002404B8  3B E3 00 00 */	addi r31, r3, 0
/* 8024357C 002404BC  3B 64 00 00 */	addi r27, r4, 0
/* 80243580 002404C0  3B A5 00 00 */	addi r29, r5, 0
/* 80243584 002404C4  3B 87 45 90 */	addi r28, r7, $$21490@l
/* 80243588 002404C8  81 06 00 18 */	lwz r8, 0x18(r6)
/* 8024358C 002404CC  38 C2 DB A0 */	addi r6, r2, cLongHeightMovieIdList__9$$2unnamed$$2@sda21
/* 80243590 002404D0  38 66 00 08 */	addi r3, r6, 8
/* 80243594 002404D4  48 00 00 08 */	b lbl_8024359C
lbl_80243598:
/* 80243598 002404D8  38 C6 00 04 */	addi r6, r6, 4
lbl_8024359C:
/* 8024359C 002404DC  7C 06 18 40 */	cmplw r6, r3
/* 802435A0 002404E0  41 82 00 10 */	beq lbl_802435B0
/* 802435A4 002404E4  80 06 00 00 */	lwz r0, 0(r6)
/* 802435A8 002404E8  7C 00 40 40 */	cmplw r0, r8
/* 802435AC 002404EC  40 82 FF EC */	bne lbl_80243598
lbl_802435B0:
/* 802435B0 002404F0  7C 06 18 40 */	cmplw r6, r3
/* 802435B4 002404F4  41 82 00 2C */	beq lbl_802435E0
/* 802435B8 002404F8  38 60 00 F4 */	li r3, 0xf4
/* 802435BC 002404FC  4B DC 92 F5 */	bl __nw__FUl
/* 802435C0 00240500  7C 7E 1B 79 */	or. r30, r3, r3
/* 802435C4 00240504  41 82 00 14 */	beq lbl_802435D8
/* 802435C8 00240508  38 7E 00 00 */	addi r3, r30, 0
/* 802435CC 0024050C  38 BD 00 00 */	addi r5, r29, 0
/* 802435D0 00240510  38 9C 00 30 */	addi r4, r28, 0x30
/* 802435D4 00240514  4B DD 5B 69 */	bl __ct__12J2DSetScreenFPCcP10JKRArchive
lbl_802435D8:
/* 802435D8 00240518  93 DF 00 14 */	stw r30, 0x14(r31)
/* 802435DC 0024051C  48 00 00 28 */	b lbl_80243604
lbl_802435E0:
/* 802435E0 00240520  38 60 00 F4 */	li r3, 0xf4
/* 802435E4 00240524  4B DC 92 CD */	bl __nw__FUl
/* 802435E8 00240528  7C 7E 1B 79 */	or. r30, r3, r3
/* 802435EC 0024052C  41 82 00 14 */	beq lbl_80243600
/* 802435F0 00240530  38 7E 00 00 */	addi r3, r30, 0
/* 802435F4 00240534  38 BD 00 00 */	addi r5, r29, 0
/* 802435F8 00240538  38 9C 00 3C */	addi r4, r28, 0x3c
/* 802435FC 0024053C  4B DD 5B 41 */	bl __ct__12J2DSetScreenFPCcP10JKRArchive
lbl_80243600:
/* 80243600 00240540  93 DF 00 14 */	stw r30, 0x14(r31)
lbl_80243604:
/* 80243604 00240544  3B A0 00 00 */	li r29, 0
/* 80243608 00240548  9B BF 00 28 */	stb r29, 0x28(r31)
/* 8024360C 0024054C  3F C0 6D 65 */	lis r30, 0x6D655F61@ha
/* 80243610 00240550  38 9E 5F 61 */	addi r4, r30, 0x6D655F61@l
/* 80243614 00240554  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80243618 00240558  9B A3 00 0C */	stb r29, 0xc(r3)
/* 8024361C 0024055C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80243620 00240560  81 83 00 00 */	lwz r12, 0(r3)
/* 80243624 00240564  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80243628 00240568  7D 88 03 A6 */	mtlr r12
/* 8024362C 0024056C  4E 80 00 21 */	blrl 
/* 80243630 00240570  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80243634 00240574  38 9E 5F 62 */	addi r4, r30, 0x5f62
/* 80243638 00240578  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8024363C 0024057C  81 83 00 00 */	lwz r12, 0(r3)
/* 80243640 00240580  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80243644 00240584  7D 88 03 A6 */	mtlr r12
/* 80243648 00240588  4E 80 00 21 */	blrl 
/* 8024364C 0024058C  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80243650 00240590  38 61 00 28 */	addi r3, r1, 0x28
/* 80243654 00240594  38 80 00 20 */	li r4, 0x20
/* 80243658 00240598  38 A0 01 00 */	li r5, 0x100
/* 8024365C 0024059C  4B DB FA A5 */	bl memset
/* 80243660 002405A0  9B A1 01 27 */	stb r29, 0x127(r1)
/* 80243664 002405A4  38 81 00 28 */	addi r4, r1, 0x28
/* 80243668 002405A8  4C C6 31 82 */	crclr 6
/* 8024366C 002405AC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80243670 002405B0  4B DD 66 B5 */	bl setString__10J2DTextBoxFPCce
/* 80243674 002405B4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80243678 002405B8  38 81 00 28 */	addi r4, r1, 0x28
/* 8024367C 002405BC  4C C6 31 82 */	crclr 6
/* 80243680 002405C0  4B DD 66 A5 */	bl setString__10J2DTextBoxFPCce
/* 80243684 002405C4  38 60 0B FC */	li r3, 0xbfc
/* 80243688 002405C8  4B DC 92 29 */	bl __nw__FUl
/* 8024368C 002405CC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80243690 002405D0  41 82 00 0C */	beq lbl_8024369C
/* 80243694 002405D4  7F A3 EB 78 */	mr r3, r29
/* 80243698 002405D8  4B FD 53 F1 */	bl __ct__14TMessageLoaderFv
lbl_8024369C:
/* 8024369C 002405DC  93 BF 00 20 */	stw r29, 0x20(r31)
/* 802436A0 002405E0  38 BB 00 00 */	addi r5, r27, 0
/* 802436A4 002405E4  38 61 00 28 */	addi r3, r1, 0x28
/* 802436A8 002405E8  4C C6 31 82 */	crclr 6
/* 802436AC 002405EC  38 9C 00 20 */	addi r4, r28, 0x20
/* 802436B0 002405F0  4B E4 09 41 */	bl sprintf
/* 802436B4 002405F4  38 61 00 28 */	addi r3, r1, 0x28
/* 802436B8 002405F8  38 80 00 2E */	li r4, 0x2e
/* 802436BC 002405FC  4B E4 25 29 */	bl strrchr
/* 802436C0 00240600  38 82 DB A8 */	addi r4, r2, $$21592@sda21
/* 802436C4 00240604  4B E4 27 2D */	bl strcpy
/* 802436C8 00240608  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802436CC 0024060C  38 81 00 28 */	addi r4, r1, 0x28
/* 802436D0 00240610  4B FD 52 D9 */	bl loadMessageData__14TMessageLoaderFPCc
/* 802436D4 00240614  38 00 00 00 */	li r0, 0
/* 802436D8 00240618  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802436DC 0024061C  BB 61 01 2C */	lmw r27, 0x12c(r1)
/* 802436E0 00240620  80 01 01 44 */	lwz r0, 0x144(r1)
/* 802436E4 00240624  38 21 01 40 */	addi r1, r1, 0x140
/* 802436E8 00240628  7C 08 03 A6 */	mtlr r0
/* 802436EC 0024062C  4E 80 00 20 */	blr 

.global __ct__14TMovieSubTitleFPC10TTHPRender
__ct__14TMovieSubTitleFPC10TTHPRender:
/* 802436F0 00240630  7C 08 02 A6 */	mflr r0
/* 802436F4 00240634  3C A0 80 3B */	lis r5, __vt__Q26JDrama8TNameRef@ha
/* 802436F8 00240638  90 01 00 04 */	stw r0, 4(r1)
/* 802436FC 0024063C  38 05 A8 60 */	addi r0, r5, __vt__Q26JDrama8TNameRef@l
/* 80243700 00240640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80243704 00240644  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80243708 00240648  7C 9F 23 78 */	mr r31, r4
/* 8024370C 0024064C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80243710 00240650  3B C3 00 00 */	addi r30, r3, 0
/* 80243714 00240654  3C 60 80 39 */	lis r3, $$21851@ha
/* 80243718 00240658  90 1E 00 00 */	stw r0, 0(r30)
/* 8024371C 0024065C  38 63 45 D8 */	addi r3, r3, $$21851@l
/* 80243720 00240660  90 7E 00 04 */	stw r3, 4(r30)
/* 80243724 00240664  4B E0 0F 69 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 80243728 00240668  B0 7E 00 08 */	sth r3, 8(r30)
/* 8024372C 0024066C  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 80243730 00240670  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 80243734 00240674  90 1E 00 00 */	stw r0, 0(r30)
/* 80243738 00240678  38 80 00 00 */	li r4, 0
/* 8024373C 0024067C  3C 60 80 3D */	lis r3, __vt__14TMovieSubTitle@ha
/* 80243740 00240680  B0 9E 00 0C */	sth r4, 0xc(r30)
/* 80243744 00240684  38 03 20 68 */	addi r0, r3, __vt__14TMovieSubTitle@l
/* 80243748 00240688  38 7E 00 00 */	addi r3, r30, 0
/* 8024374C 0024068C  90 1E 00 00 */	stw r0, 0(r30)
/* 80243750 00240690  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80243754 00240694  90 9E 00 14 */	stw r4, 0x14(r30)
/* 80243758 00240698  90 9E 00 18 */	stw r4, 0x18(r30)
/* 8024375C 0024069C  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 80243760 002406A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80243764 002406A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80243768 002406A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8024376C 002406AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80243770 002406B0  7C 08 03 A6 */	mtlr r0
/* 80243774 002406B4  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21490:
  .4byte 0
  .4byte 0
  .4byte 0
$$21526:
	.incbin "baserom.dol", 0x39159C, 0x14
$$21591:
	.incbin "baserom.dol", 0x3915B0, 0x10
$$21842:
	.incbin "baserom.dol", 0x3915C0, 0xC
$$21843:
	.incbin "baserom.dol", 0x3915CC, 0xC
$$21851:
	.incbin "baserom.dol", 0x3915D8, 0x10

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__14TMovieSubTitle
__vt__14TMovieSubTitle:
  .4byte 0
  .4byte 0
  .4byte __dt__14TMovieSubTitleFv
  .4byte getType__Q26JDrama8TNameRefCFv
  .4byte load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
  .4byte save__Q26JDrama8TNameRefFR21JSUMemoryOutputStream
  .4byte loadAfter__Q26JDrama8TNameRefFv
  .4byte searchF__Q26JDrama8TNameRefFUsPCc
  .4byte perform__14TMovieSubTitleFUlPQ26JDrama9TGraphics
  .4byte 0

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
cLongHeightMovieIdList__9$$2unnamed$$2:
	.incbin "baserom.dol", 0x3E98A0, 0x8
$$21592:
	.incbin "baserom.dol", 0x3E98A8, 0x8
$$21605:
	.incbin "baserom.dol", 0x3E98B0, 0x8
