nofralloc
/* 8078E588 9421FFB0 */ stwu        r1, -0x50(r1)
/* 8078E58C 7C0802A6 */ mflr        r0
/* 8078E590 90010054 */ stw         r0, 0x54(r1)
/* 8078E594 BE810020 */ stmw        r20, 0x20(r1)
/* 8078E598 3FC0808D */ lis         r30, lbl_808d1860@ha
/* 8078E59C 7C7D1B78 */ mr          r29, r3
/* 8078E5A0 3B800000 */ li          r28, 0
/* 8078E5A4 3BDE1860 */ addi        r30, r30, lbl_808d1860@l
/* 8078E5A8 3BE00000 */ li          r31, 0
/* 8078E5AC 3EA0808B */ lis         r21, lbl_808b4840@ha
/* 8078E5B0 3EC0808B */ lis         r22, lbl_808b4820@ha
/* 8078E5B4 3EE0808B */ lis         r23, lbl_808b4818@ha
/* 8078E5B8 3F00808D */ lis         r24, lbl_808d18c8@ha
/* 8078E5BC 3F20808B */ lis         r25, lbl_808b7190@ha
/* 8078E5C0 3F40808B */ lis         r26, lbl_808b7168@ha
/* 8078E5C4 3F60809C */ lis         r27, lbl_809c2f40@ha
/* 8078E5C8 480000AC */ b           lbl_8078e674
lbl_8078e5cc:
/* 8078E5CC 80BD0000 */ lwz         r5, 0(r29)
/* 8078E5D0 3861000C */ addi        r3, r1, 0xc
/* 8078E5D4 809E0000 */ lwz         r4, 0(r30)
/* 8078E5D8 8005000C */ lwz         r0, 0xc(r5)
/* 8078E5DC 9001000C */ stw         r0, 0xc(r1)
/* 8078E5E0 4B8C0311 */ bl          unk_8004e8f0
/* 8078E5E4 2C030000 */ cmpwi       r3, 0
/* 8078E5E8 7C741B78 */ mr          r20, r3
/* 8078E5EC 41820080 */ beq-        lbl_8078e66c
/* 8078E5F0 40820020 */ bne-        lbl_8078e610
/* 8078E5F4 38754840 */ addi        r3, r21, lbl_808b4840@l
/* 8078E5F8 38B64820 */ addi        r5, r22, lbl_808b4820@l
/* 8078E5FC 38D74818 */ addi        r6, r23, lbl_808b4818@l
/* 8078E600 38F818C8 */ addi        r7, r24, lbl_808d18c8@l
/* 8078E604 3880026D */ li          r4, 0x26d
/* 8078E608 4CC63182 */ crclr       cr1eq
/* 8078E60C 4B8979A5 */ bl          Panic
lbl_8078e610:
/* 8078E610 8014003C */ lwz         r0, 0x3c(r20)
/* 8078E614 2C000000 */ cmpwi       r0, 0
/* 8078E618 4182000C */ beq-        lbl_8078e624
/* 8078E61C 7C740214 */ add         r3, r20, r0
/* 8078E620 48000008 */ b           lbl_8078e628
lbl_8078e624:
/* 8078E624 38600000 */ li          r3, 0
lbl_8078e628:
/* 8078E628 3A830020 */ addi        r20, r3, 0x20
/* 8078E62C 568006FF */ clrlwi.     r0, r20, 0x1b
/* 8078E630 41820018 */ beq-        lbl_8078e648
/* 8078E634 38797190 */ addi        r3, r25, lbl_808b7190@l
/* 8078E638 38BA7168 */ addi        r5, r26, lbl_808b7168@l
/* 8078E63C 3880017A */ li          r4, 0x17a
/* 8078E640 4CC63182 */ crclr       cr1eq
/* 8078E644 4B89796D */ bl          Panic
lbl_8078e648:
/* 8078E648 92810008 */ stw         r20, 8(r1)
/* 8078E64C 38610008 */ addi        r3, r1, 8
/* 8078E650 38A10010 */ addi        r5, r1, 0x10
/* 8078E654 38800001 */ li          r4, 1
/* 8078E658 93810010 */ stw         r28, 0x10(r1)
/* 8078E65C 4B8C2845 */ bl          unk_80050ea0
/* 8078E660 38610008 */ addi        r3, r1, 8
/* 8078E664 38800000 */ li          r4, 0
/* 8078E668 4B8C1E09 */ bl          unk_80050470
lbl_8078e66c:
/* 8078E66C 3BDE0004 */ addi        r30, r30, 4
/* 8078E670 3BFF0001 */ addi        r31, r31, 1
lbl_8078e674:
/* 8078E674 801B2F40 */ lwz         r0, lbl_809c2f40@l(r27)
/* 8078E678 7C1F0000 */ cmpw        r31, r0
/* 8078E67C 4180FF50 */ blt+        lbl_8078e5cc
/* 8078E680 BA810020 */ lmw         r20, 0x20(r1)
/* 8078E684 80010054 */ lwz         r0, 0x54(r1)
/* 8078E688 7C0803A6 */ mtlr        r0
/* 8078E68C 38210050 */ addi        r1, r1, 0x50
/* 8078E690 4E800020 */ blr         