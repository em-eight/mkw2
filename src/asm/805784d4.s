nofralloc
/* 805784D4 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805784D8 7C0802A6 */ mflr        r0
/* 805784DC 90010024 */ stw         r0, 0x24(r1)
/* 805784E0 93E1001C */ stw         r31, 0x1c(r1)
/* 805784E4 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 805784E8 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 805784EC 93C10018 */ stw         r30, 0x18(r1)
/* 805784F0 7C7E1B78 */ mr          r30, r3
/* 805784F4 93A10014 */ stw         r29, 0x14(r1)
/* 805784F8 7CBD2B78 */ mr          r29, r5
/* 805784FC 93810010 */ stw         r28, 0x10(r1)
/* 80578500 7C9C2378 */ mr          r28, r4
/* 80578504 48018371 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 80578508 C0230018 */ lfs         f1, 0x18(r3)
/* 8057850C 3D00802A */ lis         r8, RKSystem_ey@ha
/* 80578510 C01E0010 */ lfs         f0, 0x10(r30)
/* 80578514 3CC0802A */ lis         r6, lbl_802a4148@ha
/* 80578518 C0FF0000 */ lfs         f7, 0(r31)
/* 8057851C 3C80802A */ lis         r4, lbl_802a4100@ha
/* 80578520 EC000072 */ fmuls       f0, f0, f1
/* 80578524 D0FE0024 */ stfs        f7, 0x24(r30)
/* 80578528 3D20808B */ lis         r9, lbl_808b59f4@ha
/* 8057852C C0DF0004 */ lfs         f6, 4(r31)
/* 80578530 D01E0014 */ stfs        f0, 0x14(r30)
/* 80578534 38E84130 */ addi        r7, r8, RKSystem_ey@l
/* 80578538 D01E001C */ stfs        f0, 0x1c(r30)
/* 8057853C 38A64148 */ addi        r5, r6, lbl_802a4148@l
/* 80578540 38644100 */ addi        r3, r4, lbl_802a4100@l
/* 80578544 38000000 */ li          r0, 0
/* 80578548 D01E0018 */ stfs        f0, 0x18(r30)
/* 8057854C 2C1D0000 */ cmpwi       r29, 0
/* 80578550 D0FE0028 */ stfs        f7, 0x28(r30)
/* 80578554 D0FE0020 */ stfs        f7, 0x20(r30)
/* 80578558 C00959F4 */ lfs         f0, lbl_808b59f4@l(r9)
/* 8057855C D01E002C */ stfs        f0, 0x2c(r30)
/* 80578560 D0FE0030 */ stfs        f7, 0x30(r30)
/* 80578564 D0DE0034 */ stfs        f6, 0x34(r30)
/* 80578568 C0484130 */ lfs         f2, RKSystem_ey@l(r8)
/* 8057856C D05E0044 */ stfs        f2, 0x44(r30)
/* 80578570 C0270004 */ lfs         f1, 4(r7)
/* 80578574 D03E0048 */ stfs        f1, 0x48(r30)
/* 80578578 C0070008 */ lfs         f0, 8(r7)
/* 8057857C D01E004C */ stfs        f0, 0x4c(r30)
/* 80578580 D05E0038 */ stfs        f2, 0x38(r30)
/* 80578584 D03E003C */ stfs        f1, 0x3c(r30)
/* 80578588 D01E0040 */ stfs        f0, 0x40(r30)
/* 8057858C C0A64148 */ lfs         f5, lbl_802a4148@l(r6)
/* 80578590 D0BE0080 */ stfs        f5, 0x80(r30)
/* 80578594 FC402818 */ frsp        f2, f5
/* 80578598 C0850004 */ lfs         f4, 4(r5)
/* 8057859C D09E0084 */ stfs        f4, 0x84(r30)
/* 805785A0 FC202018 */ frsp        f1, f4
/* 805785A4 C0650008 */ lfs         f3, 8(r5)
/* 805785A8 D07E0088 */ stfs        f3, 0x88(r30)
/* 805785AC FC001818 */ frsp        f0, f3
/* 805785B0 D0BE0074 */ stfs        f5, 0x74(r30)
/* 805785B4 D09E0078 */ stfs        f4, 0x78(r30)
/* 805785B8 D07E007C */ stfs        f3, 0x7c(r30)
/* 805785BC D0BE0068 */ stfs        f5, 0x68(r30)
/* 805785C0 D09E006C */ stfs        f4, 0x6c(r30)
/* 805785C4 D07E0070 */ stfs        f3, 0x70(r30)
/* 805785C8 D0BE005C */ stfs        f5, 0x5c(r30)
/* 805785CC D09E0060 */ stfs        f4, 0x60(r30)
/* 805785D0 D07E0064 */ stfs        f3, 0x64(r30)
/* 805785D4 D05E0050 */ stfs        f2, 0x50(r30)
/* 805785D8 D03E0054 */ stfs        f1, 0x54(r30)
/* 805785DC D01E0058 */ stfs        f0, 0x58(r30)
/* 805785E0 C0044100 */ lfs         f0, lbl_802a4100@l(r4)
/* 805785E4 D01E008C */ stfs        f0, 0x8c(r30)
/* 805785E8 C0030004 */ lfs         f0, 4(r3)
/* 805785EC D01E0090 */ stfs        f0, 0x90(r30)
/* 805785F0 C0030008 */ lfs         f0, 8(r3)
/* 805785F4 D01E0094 */ stfs        f0, 0x94(r30)
/* 805785F8 981E0098 */ stb         r0, 0x98(r30)
/* 805785FC D0FE009C */ stfs        f7, 0x9c(r30)
/* 80578600 D0FE00A0 */ stfs        f7, 0xa0(r30)
/* 80578604 C0064148 */ lfs         f0, lbl_802a4148@l(r6)
/* 80578608 D01E00A4 */ stfs        f0, 0xa4(r30)
/* 8057860C C0050004 */ lfs         f0, 4(r5)
/* 80578610 D01E00A8 */ stfs        f0, 0xa8(r30)
/* 80578614 C0050008 */ lfs         f0, 8(r5)
/* 80578618 D01E00AC */ stfs        f0, 0xac(r30)
/* 8057861C D0FE00B4 */ stfs        f7, 0xb4(r30)
/* 80578620 D0FE00B0 */ stfs        f7, 0xb0(r30)
/* 80578624 D0DE00B8 */ stfs        f6, 0xb8(r30)
/* 80578628 D0DE00BC */ stfs        f6, 0xbc(r30)
/* 8057862C D0DE00C0 */ stfs        f6, 0xc0(r30)
/* 80578630 D0DE00C4 */ stfs        f6, 0xc4(r30)
/* 80578634 40820008 */ bne-        lbl_8057863c
/* 80578638 B01E00C8 */ sth         r0, 0xc8(r30)
lbl_8057863c:
/* 8057863C 38000000 */ li          r0, 0
/* 80578640 901E00CC */ stw         r0, 0xcc(r30)
/* 80578644 3CC0802A */ lis         r6, RKSystem_ey@ha
/* 80578648 3C80802A */ lis         r4, lbl_802a4148@ha
/* 8057864C 901E00D0 */ stw         r0, 0xd0(r30)
/* 80578650 38A64130 */ addi        r5, r6, RKSystem_ey@l
/* 80578654 38644148 */ addi        r3, r4, lbl_802a4148@l
/* 80578658 2C1C0000 */ cmpwi       r28, 0
/* 8057865C C0064130 */ lfs         f0, RKSystem_ey@l(r6)
/* 80578660 D01E00D4 */ stfs        f0, 0xd4(r30)
/* 80578664 C05F0004 */ lfs         f2, 4(r31)
/* 80578668 C0050004 */ lfs         f0, 4(r5)
/* 8057866C D01E00D8 */ stfs        f0, 0xd8(r30)
/* 80578670 C03F0000 */ lfs         f1, 0(r31)
/* 80578674 C0050008 */ lfs         f0, 8(r5)
/* 80578678 D01E00DC */ stfs        f0, 0xdc(r30)
/* 8057867C C01F000C */ lfs         f0, 0xc(r31)
/* 80578680 C0644148 */ lfs         f3, lbl_802a4148@l(r4)
/* 80578684 D07E00E0 */ stfs        f3, 0xe0(r30)
/* 80578688 C0630004 */ lfs         f3, 4(r3)
/* 8057868C D07E00E4 */ stfs        f3, 0xe4(r30)
/* 80578690 C0630008 */ lfs         f3, 8(r3)
/* 80578694 D07E00E8 */ stfs        f3, 0xe8(r30)
/* 80578698 901E00EC */ stw         r0, 0xec(r30)
/* 8057869C D05E00F0 */ stfs        f2, 0xf0(r30)
/* 805786A0 D03E00F4 */ stfs        f1, 0xf4(r30)
/* 805786A4 D03E00F8 */ stfs        f1, 0xf8(r30)
/* 805786A8 B01E00FC */ sth         r0, 0xfc(r30)
/* 805786AC B01E0100 */ sth         r0, 0x100(r30)
/* 805786B0 B01E00FE */ sth         r0, 0xfe(r30)
/* 805786B4 B01E0102 */ sth         r0, 0x102(r30)
/* 805786B8 D03E0104 */ stfs        f1, 0x104(r30)
/* 805786BC B01E010C */ sth         r0, 0x10c(r30)
/* 805786C0 B01E010E */ sth         r0, 0x10e(r30)
/* 805786C4 B01E0110 */ sth         r0, 0x110(r30)
/* 805786C8 B01E0112 */ sth         r0, 0x112(r30)
/* 805786CC B01E0114 */ sth         r0, 0x114(r30)
/* 805786D0 B01E0116 */ sth         r0, 0x116(r30)
/* 805786D4 D05E011C */ stfs        f2, 0x11c(r30)
/* 805786D8 D05E0120 */ stfs        f2, 0x120(r30)
/* 805786DC D01E0128 */ stfs        f0, 0x128(r30)
/* 805786E0 B01E012C */ sth         r0, 0x12c(r30)
/* 805786E4 B01E012E */ sth         r0, 0x12e(r30)
/* 805786E8 D03E0140 */ stfs        f1, 0x140(r30)
/* 805786EC B01E0148 */ sth         r0, 0x148(r30)
/* 805786F0 B01E014C */ sth         r0, 0x14c(r30)
/* 805786F4 B01E014E */ sth         r0, 0x14e(r30)
/* 805786F8 B01E0150 */ sth         r0, 0x150(r30)
/* 805786FC B01E0152 */ sth         r0, 0x152(r30)
/* 80578700 D03E0158 */ stfs        f1, 0x158(r30)
/* 80578704 D03E015C */ stfs        f1, 0x15c(r30)
/* 80578708 D05E0160 */ stfs        f2, 0x160(r30)
/* 8057870C 40820070 */ bne-        lbl_8057877c
/* 80578710 C01F0038 */ lfs         f0, 0x38(r31)
/* 80578714 3C80802A */ lis         r4, lbl_802a4100@ha
/* 80578718 D05E0164 */ stfs        f2, 0x164(r30)
/* 8057871C 38644100 */ addi        r3, r4, lbl_802a4100@l
/* 80578720 D05E0168 */ stfs        f2, 0x168(r30)
/* 80578724 D05E016C */ stfs        f2, 0x16c(r30)
/* 80578728 D05E0170 */ stfs        f2, 0x170(r30)
/* 8057872C D05E0174 */ stfs        f2, 0x174(r30)
/* 80578730 D05E0178 */ stfs        f2, 0x178(r30)
/* 80578734 D05E017C */ stfs        f2, 0x17c(r30)
/* 80578738 D05E0180 */ stfs        f2, 0x180(r30)
/* 8057873C D05E0184 */ stfs        f2, 0x184(r30)
/* 80578740 B01E0188 */ sth         r0, 0x188(r30)
/* 80578744 B01E018A */ sth         r0, 0x18a(r30)
/* 80578748 B01E018C */ sth         r0, 0x18c(r30)
/* 8057874C B01E018E */ sth         r0, 0x18e(r30)
/* 80578750 981E0190 */ stb         r0, 0x190(r30)
/* 80578754 B01E0192 */ sth         r0, 0x192(r30)
/* 80578758 B01E0194 */ sth         r0, 0x194(r30)
/* 8057875C 981E0196 */ stb         r0, 0x196(r30)
/* 80578760 D01E0198 */ stfs        f0, 0x198(r30)
/* 80578764 C0044100 */ lfs         f0, lbl_802a4100@l(r4)
/* 80578768 D01E019C */ stfs        f0, 0x19c(r30)
/* 8057876C C0030004 */ lfs         f0, 4(r3)
/* 80578770 D01E01A0 */ stfs        f0, 0x1a0(r30)
/* 80578774 C0030008 */ lfs         f0, 8(r3)
/* 80578778 D01E01A4 */ stfs        f0, 0x1a4(r30)
lbl_8057877c:
/* 8057877C C05F0000 */ lfs         f2, 0(r31)
/* 80578780 3BA00000 */ li          r29, 0
/* 80578784 C01E0018 */ lfs         f0, 0x18(r30)
/* 80578788 387E01D0 */ addi        r3, r30, 0x1d0
/* 8057878C FC601090 */ fmr         f3, f2
/* 80578790 B3BE01A8 */ sth         r29, 0x1a8(r30)
/* 80578794 FC801090 */ fmr         f4, f2
/* 80578798 C03F0004 */ lfs         f1, 4(r31)
/* 8057879C B3BE01AA */ sth         r29, 0x1aa(r30)
/* 805787A0 B3BE01AC */ sth         r29, 0x1ac(r30)
/* 805787A4 D05E01B0 */ stfs        f2, 0x1b0(r30)
/* 805787A8 D05E01B4 */ stfs        f2, 0x1b4(r30)
/* 805787AC D05E01B8 */ stfs        f2, 0x1b8(r30)
/* 805787B0 D01E01BC */ stfs        f0, 0x1bc(r30)
/* 805787B4 93BE01C0 */ stw         r29, 0x1c0(r30)
/* 805787B8 B3BE01C4 */ sth         r29, 0x1c4(r30)
/* 805787BC D05E01C8 */ stfs        f2, 0x1c8(r30)
/* 805787C0 B3BE01CC */ sth         r29, 0x1cc(r30)
/* 805787C4 4BCC1639 */ bl          set__Q23EGG5QuatfFffff
/* 805787C8 C03F0000 */ lfs         f1, 0(r31)
/* 805787CC 3CE0802A */ lis         r7, lbl_802a4100@ha
/* 805787D0 D03E01E0 */ stfs        f1, 0x1e0(r30)
/* 805787D4 3CA0802A */ lis         r5, RKSystem_ey@ha
/* 805787D8 38C74100 */ addi        r6, r7, lbl_802a4100@l
/* 805787DC 807E0258 */ lwz         r3, 0x258(r30)
/* 805787E0 D03E01E4 */ stfs        f1, 0x1e4(r30)
/* 805787E4 38854130 */ addi        r4, r5, RKSystem_ey@l
/* 805787E8 C0074100 */ lfs         f0, lbl_802a4100@l(r7)
/* 805787EC D01E01E8 */ stfs        f0, 0x1e8(r30)
/* 805787F0 C0060004 */ lfs         f0, 4(r6)
/* 805787F4 D01E01EC */ stfs        f0, 0x1ec(r30)
/* 805787F8 C0060008 */ lfs         f0, 8(r6)
/* 805787FC D01E01F0 */ stfs        f0, 0x1f0(r30)
/* 80578800 C0074100 */ lfs         f0, lbl_802a4100@l(r7)
/* 80578804 D01E01F4 */ stfs        f0, 0x1f4(r30)
/* 80578808 C0060004 */ lfs         f0, 4(r6)
/* 8057880C D01E01F8 */ stfs        f0, 0x1f8(r30)
/* 80578810 C0060008 */ lfs         f0, 8(r6)
/* 80578814 D01E01FC */ stfs        f0, 0x1fc(r30)
/* 80578818 C0054130 */ lfs         f0, RKSystem_ey@l(r5)
/* 8057881C D01E0200 */ stfs        f0, 0x200(r30)
/* 80578820 C0040004 */ lfs         f0, 4(r4)
/* 80578824 D01E0204 */ stfs        f0, 0x204(r30)
/* 80578828 C0040008 */ lfs         f0, 8(r4)
/* 8057882C D01E0208 */ stfs        f0, 0x208(r30)
/* 80578830 C0074100 */ lfs         f0, lbl_802a4100@l(r7)
/* 80578834 D01E020C */ stfs        f0, 0x20c(r30)
/* 80578838 C0060004 */ lfs         f0, 4(r6)
/* 8057883C D01E0210 */ stfs        f0, 0x210(r30)
/* 80578840 C0060008 */ lfs         f0, 8(r6)
/* 80578844 D01E0214 */ stfs        f0, 0x214(r30)
/* 80578848 93BE0218 */ stw         r29, 0x218(r30)
/* 8057884C B3BE021C */ sth         r29, 0x21c(r30)
/* 80578850 D03E0158 */ stfs        f1, 0x158(r30)
/* 80578854 D03E0224 */ stfs        f1, 0x224(r30)
/* 80578858 D03E0220 */ stfs        f1, 0x220(r30)
/* 8057885C D03E0228 */ stfs        f1, 0x228(r30)
/* 80578860 D03E022C */ stfs        f1, 0x22c(r30)
/* 80578864 D03E0230 */ stfs        f1, 0x230(r30)
/* 80578868 B3BE0234 */ sth         r29, 0x234(r30)
/* 8057886C B3BE0236 */ sth         r29, 0x236(r30)
/* 80578870 B3BE0238 */ sth         r29, 0x238(r30)
/* 80578874 B3BE023A */ sth         r29, 0x23a(r30)
/* 80578878 B3BE023C */ sth         r29, 0x23c(r30)
/* 8057887C B3BE023E */ sth         r29, 0x23e(r30)
/* 80578880 D03E0240 */ stfs        f1, 0x240(r30)
/* 80578884 B3BE0244 */ sth         r29, 0x244(r30)
/* 80578888 93BE0248 */ stw         r29, 0x248(r30)
/* 8057888C B3BE024C */ sth         r29, 0x24c(r30)
/* 80578890 93BE0250 */ stw         r29, 0x250(r30)
/* 80578894 B3BE0254 */ sth         r29, 0x254(r30)
/* 80578898 4BFFD251 */ bl          PlayerTrick_reset
/* 8057889C 807E025C */ lwz         r3, 0x25c(r30)
/* 805788A0 4BFFB911 */ bl          unk_805741b0
/* 805788A4 C01F0000 */ lfs         f0, 0(r31)
/* 805788A8 7FC3F378 */ mr          r3, r30
/* 805788AC D01E0288 */ stfs        f0, 0x288(r30)
/* 805788B0 D01E028C */ stfs        f0, 0x28c(r30)
/* 805788B4 B3BE0290 */ sth         r29, 0x290(r30)
/* 805788B8 48018621 */ bl          unk_80590ed8
/* 805788BC 80010024 */ lwz         r0, 0x24(r1)
/* 805788C0 83E1001C */ lwz         r31, 0x1c(r1)
/* 805788C4 83C10018 */ lwz         r30, 0x18(r1)
/* 805788C8 83A10014 */ lwz         r29, 0x14(r1)
/* 805788CC 83810010 */ lwz         r28, 0x10(r1)
/* 805788D0 7C0803A6 */ mtlr        r0
/* 805788D4 38210020 */ addi        r1, r1, 0x20
/* 805788D8 4E800020 */ blr         