nofralloc
/* 8058160C 9421FFC0 */ stwu        r1, -0x40(r1)
/* 80581610 7C0802A6 */ mflr        r0
/* 80581614 90010044 */ stw         r0, 0x44(r1)
/* 80581618 93E1003C */ stw         r31, 0x3c(r1)
/* 8058161C 7C7F1B78 */ mr          r31, r3
/* 80581620 80630260 */ lwz         r3, 0x260(r3)
/* 80581624 4BFE9BF5 */ bl          unk_8056b218
/* 80581628 80BF0260 */ lwz         r5, 0x260(r31)
/* 8058162C 7FE3FB78 */ mr          r3, r31
/* 80581630 C07F0160 */ lfs         f3, 0x160(r31)
/* 80581634 38810008 */ addi        r4, r1, 8
/* 80581638 C045002C */ lfs         f2, 0x2c(r5)
/* 8058163C C0250030 */ lfs         f1, 0x30(r5)
/* 80581640 ECA300B2 */ fmuls       f5, f3, f2
/* 80581644 C0050034 */ lfs         f0, 0x34(r5)
/* 80581648 EC830072 */ fmuls       f4, f3, f1
/* 8058164C C0250070 */ lfs         f1, 0x70(r5)
/* 80581650 EC630032 */ fmuls       f3, f3, f0
/* 80581654 C0050074 */ lfs         f0, 0x74(r5)
/* 80581658 C045006C */ lfs         f2, 0x6c(r5)
/* 8058165C ECC40072 */ fmuls       f6, f4, f1
/* 80581660 D0A10020 */ stfs        f5, 0x20(r1)
/* 80581664 ECE30032 */ fmuls       f7, f3, f0
/* 80581668 ECA500B2 */ fmuls       f5, f5, f2
/* 8058166C D0810024 */ stfs        f4, 0x24(r1)
/* 80581670 D0610028 */ stfs        f3, 0x28(r1)
/* 80581674 D0410014 */ stfs        f2, 0x14(r1)
/* 80581678 D0210018 */ stfs        f1, 0x18(r1)
/* 8058167C D001001C */ stfs        f0, 0x1c(r1)
/* 80581680 D0A10008 */ stfs        f5, 8(r1)
/* 80581684 D0C1000C */ stfs        f6, 0xc(r1)
/* 80581688 D0E10010 */ stfs        f7, 0x10(r1)
/* 8058168C 48000095 */ bl          setScale__Q24Kart8KartMoveFQ23EGG8Vector3f
/* 80581690 C03F0178 */ lfs         f1, 0x178(r31)
/* 80581694 C01F017C */ lfs         f0, 0x17c(r31)
/* 80581698 C05F0180 */ lfs         f2, 0x180(r31)
/* 8058169C EC610032 */ fmuls       f3, f1, f0
/* 805816A0 C03F0160 */ lfs         f1, 0x160(r31)
/* 805816A4 C0010028 */ lfs         f0, 0x28(r1)
/* 805816A8 EC4200F2 */ fmuls       f2, f2, f3
/* 805816AC EC4100B2 */ fmuls       f2, f1, f2
/* 805816B0 D05F0170 */ stfs        f2, 0x170(r31)
/* 805816B4 FC001040 */ fcmpo       cr0, f0, f2
/* 805816B8 40800008 */ bge-        lbl_805816c0
/* 805816BC 48000008 */ b           lbl_805816c4
lbl_805816c0:
/* 805816C0 FC400090 */ fmr         f2, f0
lbl_805816c4:
/* 805816C4 3C608089 */ lis         r3, lbl_80891a04@ha
/* 805816C8 C0010028 */ lfs         f0, 0x28(r1)
/* 805816CC C0231A04 */ lfs         f1, lbl_80891a04@l(r3)
/* 805816D0 D05F0174 */ stfs        f2, 0x174(r31)
/* 805816D4 FC010000 */ fcmpu       cr0, f1, f0
/* 805816D8 41820010 */ beq-        lbl_805816e8
/* 805816DC 7FE3FB78 */ mr          r3, r31
/* 805816E0 389F0164 */ addi        r4, r31, 0x164
/* 805816E4 4800FF81 */ bl          PlayerPointers_resetInertia
lbl_805816e8:
/* 805816E8 3C608089 */ lis         r3, lbl_80891a04@ha
/* 805816EC C01F016C */ lfs         f0, 0x16c(r31)
/* 805816F0 C0231A04 */ lfs         f1, lbl_80891a04@l(r3)
/* 805816F4 FC000840 */ fcmpo       cr0, f0, f1
/* 805816F8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 805816FC 40820008 */ bne-        lbl_80581704
/* 80581700 48000008 */ b           lbl_80581708
lbl_80581704:
/* 80581704 EC210024 */ fdivs       f1, f1, f0
lbl_80581708:
/* 80581708 D03F0184 */ stfs        f1, 0x184(r31)
/* 8058170C 83E1003C */ lwz         r31, 0x3c(r1)
/* 80581710 80010044 */ lwz         r0, 0x44(r1)
/* 80581714 7C0803A6 */ mtlr        r0
/* 80581718 38210040 */ addi        r1, r1, 0x40
/* 8058171C 4E800020 */ blr         