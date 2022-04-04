.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode:
/* 80040714 0003D654  80 A5 00 00 */	lwz r5, 0(r5)
/* 80040718 0003D658  80 E5 00 04 */	lwz r7, 4(r5)
/* 8004071C 0003D65C  90 A6 00 00 */	stw r5, 0(r6)
/* 80040720 0003D660  90 E6 00 04 */	stw r7, 4(r6)
/* 80040724 0003D664  90 C5 00 04 */	stw r6, 4(r5)
/* 80040728 0003D668  90 C7 00 00 */	stw r6, 0(r7)
/* 8004072C 0003D66C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80040730 0003D670  38 05 00 01 */	addi r0, r5, 1
/* 80040734 0003D674  90 04 00 00 */	stw r0, 0(r4)
/* 80040738 0003D678  90 C3 00 00 */	stw r6, 0(r3)
/* 8004073C 0003D67C  4E 80 00 20 */	blr 

.global Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode:
/* 80040740 0003D680  80 C5 00 00 */	lwz r6, 0(r5)
/* 80040744 0003D684  80 A5 00 04 */	lwz r5, 4(r5)
/* 80040748 0003D688  90 A6 00 04 */	stw r5, 4(r6)
/* 8004074C 0003D68C  90 C5 00 00 */	stw r6, 0(r5)
/* 80040750 0003D690  80 A4 00 00 */	lwz r5, 0(r4)
/* 80040754 0003D694  38 05 FF FF */	addi r0, r5, -1
/* 80040758 0003D698  90 04 00 00 */	stw r0, 0(r4)
/* 8004075C 0003D69C  90 C3 00 00 */	stw r6, 0(r3)
/* 80040760 0003D6A0  4E 80 00 20 */	blr 

.global Remove__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
Remove__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode:
/* 80040764 0003D6A4  7C 08 02 A6 */	mflr r0
/* 80040768 0003D6A8  90 01 00 04 */	stw r0, 4(r1)
/* 8004076C 0003D6AC  38 00 00 00 */	li r0, 0
/* 80040770 0003D6B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80040774 0003D6B4  90 81 00 24 */	stw r4, 0x24(r1)
/* 80040778 0003D6B8  38 C1 00 18 */	addi r6, r1, 0x18
/* 8004077C 0003D6BC  38 81 00 20 */	addi r4, r1, 0x20
/* 80040780 0003D6C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80040784 0003D6C4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80040788 0003D6C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8004078C 0003D6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80040790 0003D6D0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80040794 0003D6D4  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80040798 0003D6D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004079C 0003D6DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 800407A0 0003D6E0  48 00 00 15 */	bl "Remove_if<Q37JGadget9@unnamed@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>>__Q27JGadget13TNodeLinkListFQ37JGadget9@unnamed@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>RQ27JGadget13TNodeLinkList"
/* 800407A4 0003D6E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800407A8 0003D6E8  38 21 00 30 */	addi r1, r1, 0x30
/* 800407AC 0003D6EC  7C 08 03 A6 */	mtlr r0
/* 800407B0 0003D6F0  4E 80 00 20 */	blr 

.global "Remove_if<Q37JGadget9@unnamed@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>>__Q27JGadget13TNodeLinkListFQ37JGadget9@unnamed@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>RQ27JGadget13TNodeLinkList"
"Remove_if<Q37JGadget9@unnamed@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>>__Q27JGadget13TNodeLinkListFQ37JGadget9@unnamed@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>RQ27JGadget13TNodeLinkList":
/* 800407B4 0003D6F4  7C 08 02 A6 */	mflr r0
/* 800407B8 0003D6F8  90 01 00 04 */	stw r0, 4(r1)
/* 800407BC 0003D6FC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 800407C0 0003D700  BF 21 00 A4 */	stmw r25, 0xa4(r1)
/* 800407C4 0003D704  7C 7A 1B 78 */	mr r26, r3
/* 800407C8 0003D708  3B 85 00 00 */	addi r28, r5, 0
/* 800407CC 0003D70C  3B 64 00 00 */	addi r27, r4, 0
/* 800407D0 0003D710  3B A1 00 74 */	addi r29, r1, 0x74
/* 800407D4 0003D714  3B FC 00 04 */	addi r31, r28, 4
/* 800407D8 0003D718  3B 3A 00 04 */	addi r25, r26, 4
/* 800407DC 0003D71C  80 03 00 04 */	lwz r0, 4(r3)
/* 800407E0 0003D720  90 01 00 9C */	stw r0, 0x9c(r1)
/* 800407E4 0003D724  48 00 00 B8 */	b lbl_8004089C
lbl_800407E8:
/* 800407E8 0003D728  80 61 00 9C */	lwz r3, 0x9c(r1)
/* 800407EC 0003D72C  80 1B 00 00 */	lwz r0, 0(r27)
/* 800407F0 0003D730  7C 03 00 40 */	cmplw r3, r0
/* 800407F4 0003D734  40 82 00 A0 */	bne lbl_80040894
/* 800407F8 0003D738  90 61 00 98 */	stw r3, 0x98(r1)
/* 800407FC 0003D73C  80 83 00 00 */	lwz r4, 0(r3)
/* 80040800 0003D740  80 61 00 98 */	lwz r3, 0x98(r1)
/* 80040804 0003D744  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80040808 0003D748  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8004080C 0003D74C  90 61 00 88 */	stw r3, 0x88(r1)
/* 80040810 0003D750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80040814 0003D754  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80040818 0003D758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004081C 0003D75C  90 81 00 9C */	stw r4, 0x9c(r1)
/* 80040820 0003D760  90 01 00 90 */	stw r0, 0x90(r1)
/* 80040824 0003D764  80 9E 00 00 */	lwz r4, 0(r30)
/* 80040828 0003D768  90 61 00 60 */	stw r3, 0x60(r1)
/* 8004082C 0003D76C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80040830 0003D770  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80040834 0003D774  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 80040838 0003D778  90 81 00 58 */	stw r4, 0x58(r1)
/* 8004083C 0003D77C  7C 03 00 40 */	cmplw r3, r0
/* 80040840 0003D780  41 82 00 5C */	beq lbl_8004089C
/* 80040844 0003D784  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80040848 0003D788  80 01 00 90 */	lwz r0, 0x90(r1)
/* 8004084C 0003D78C  90 61 00 68 */	stw r3, 0x68(r1)
/* 80040850 0003D790  90 01 00 64 */	stw r0, 0x64(r1)
/* 80040854 0003D794  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80040858 0003D798  80 61 00 64 */	lwz r3, 0x64(r1)
/* 8004085C 0003D79C  7C 03 00 40 */	cmplw r3, r0
/* 80040860 0003D7A0  41 82 00 3C */	beq lbl_8004089C
/* 80040864 0003D7A4  38 9A 00 00 */	addi r4, r26, 0
/* 80040868 0003D7A8  38 BE 00 00 */	addi r5, r30, 0
/* 8004086C 0003D7AC  38 61 00 6C */	addi r3, r1, 0x6c
/* 80040870 0003D7B0  4B FF FE D1 */	bl Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
/* 80040874 0003D7B4  80 01 00 90 */	lwz r0, 0x90(r1)
/* 80040878 0003D7B8  38 9C 00 00 */	addi r4, r28, 0
/* 8004087C 0003D7BC  38 BD 00 00 */	addi r5, r29, 0
/* 80040880 0003D7C0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80040884 0003D7C4  38 DE 00 00 */	addi r6, r30, 0
/* 80040888 0003D7C8  38 61 00 70 */	addi r3, r1, 0x70
/* 8004088C 0003D7CC  4B FF FE 89 */	bl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
/* 80040890 0003D7D0  48 00 00 0C */	b lbl_8004089C
lbl_80040894:
/* 80040894 0003D7D4  80 03 00 00 */	lwz r0, 0(r3)
/* 80040898 0003D7D8  90 01 00 9C */	stw r0, 0x9c(r1)
lbl_8004089C:
/* 8004089C 0003D7DC  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 800408A0 0003D7E0  90 01 00 7C */	stw r0, 0x7c(r1)
/* 800408A4 0003D7E4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 800408A8 0003D7E8  90 01 00 80 */	stw r0, 0x80(r1)
/* 800408AC 0003D7EC  80 01 00 80 */	lwz r0, 0x80(r1)
/* 800408B0 0003D7F0  90 01 00 84 */	stw r0, 0x84(r1)
/* 800408B4 0003D7F4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800408B8 0003D7F8  7C 00 C8 40 */	cmplw r0, r25
/* 800408BC 0003D7FC  40 82 FF 2C */	bne lbl_800407E8
/* 800408C0 0003D800  BB 21 00 A4 */	lmw r25, 0xa4(r1)
/* 800408C4 0003D804  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 800408C8 0003D808  38 21 00 C0 */	addi r1, r1, 0xc0
/* 800408CC 0003D80C  7C 08 03 A6 */	mtlr r0
/* 800408D0 0003D810  4E 80 00 20 */	blr 
