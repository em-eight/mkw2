nofralloc
/* 80588950 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80588954 7C0802A6 */ mflr        r0
/* 80588958 90010014 */ stw         r0, 0x14(r1)
/* 8058895C 93E1000C */ stw         r31, 0xc(r1)
/* 80588960 93C10008 */ stw         r30, 8(r1)
/* 80588964 7C7E1B78 */ mr          r30, r3
/* 80588968 80A30000 */ lwz         r5, 0(r3)
/* 8058896C 80850004 */ lwz         r4, 4(r5)
/* 80588970 80040008 */ lwz         r0, 8(r4)
/* 80588974 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 80588978 41820014 */ beq-        lbl_8058898c
/* 8058897C 80850004 */ lwz         r4, 4(r5)
/* 80588980 80040010 */ lwz         r0, 0x10(r4)
/* 80588984 60000080 */ ori         r0, r0, 0x80
/* 80588988 90040010 */ stw         r0, 0x10(r4)
lbl_8058898c:
/* 8058898C 3BE00000 */ li          r31, 0
/* 80588990 B3E30118 */ sth         r31, 0x118(r3)
/* 80588994 3C808089 */ lis         r4, lbl_80891a00@ha
/* 80588998 80A30000 */ lwz         r5, 0(r3)
/* 8058899C C0041A00 */ lfs         f0, lbl_80891a00@l(r4)
/* 805889A0 80850004 */ lwz         r4, 4(r5)
/* 805889A4 80040004 */ lwz         r0, 4(r4)
/* 805889A8 54000314 */ rlwinm      r0, r0, 0, 0xc, 0xa
/* 805889AC 90040004 */ stw         r0, 4(r4)
/* 805889B0 80830000 */ lwz         r4, 0(r3)
/* 805889B4 80840004 */ lwz         r4, 4(r4)
/* 805889B8 80040008 */ lwz         r0, 8(r4)
/* 805889BC 54000314 */ rlwinm      r0, r0, 0, 0xc, 0xa
/* 805889C0 90040008 */ stw         r0, 8(r4)
/* 805889C4 B3E30102 */ sth         r31, 0x102(r3)
/* 805889C8 80830000 */ lwz         r4, 0(r3)
/* 805889CC D00301B0 */ stfs        f0, 0x1b0(r3)
/* 805889D0 7FC3F378 */ mr          r3, r30
/* 805889D4 80840004 */ lwz         r4, 4(r4)
/* 805889D8 80040004 */ lwz         r0, 4(r4)
/* 805889DC 54000080 */ rlwinm      r0, r0, 0, 2, 0
/* 805889E0 90040004 */ stw         r0, 4(r4)
/* 805889E4 48008475 */ bl          unk_80590e58
/* 805889E8 B3FE01C4 */ sth         r31, 0x1c4(r30)
/* 805889EC 7FC3F378 */ mr          r3, r30
/* 805889F0 80DE0000 */ lwz         r6, 0(r30)
/* 805889F4 38800004 */ li          r4, 4
/* 805889F8 38A00000 */ li          r5, 0
/* 805889FC 80E60004 */ lwz         r7, 4(r6)
/* 80588A00 38C00001 */ li          r6, 1
/* 80588A04 80070004 */ lwz         r0, 4(r7)
/* 80588A08 5400007E */ clrlwi      r0, r0, 1
/* 80588A0C 90070004 */ stw         r0, 4(r7)
/* 80588A10 48008641 */ bl          unk_80591050
/* 80588A14 B3FE012C */ sth         r31, 0x12c(r30)
/* 80588A18 3C608089 */ lis         r3, lbl_80891a04@ha
/* 80588A1C 809E0000 */ lwz         r4, 0(r30)
/* 80588A20 C0031A04 */ lfs         f0, lbl_80891a04@l(r3)
/* 80588A24 7FC3F378 */ mr          r3, r30
/* 80588A28 80840004 */ lwz         r4, 4(r4)
/* 80588A2C 80040008 */ lwz         r0, 8(r4)
/* 80588A30 540004E2 */ rlwinm      r0, r0, 0, 0x13, 0x11
/* 80588A34 90040008 */ stw         r0, 8(r4)
/* 80588A38 A01E0254 */ lhz         r0, 0x254(r30)
/* 80588A3C B3FE014C */ sth         r31, 0x14c(r30)
/* 80588A40 540007B8 */ rlwinm      r0, r0, 0, 0x1e, 0x1c
/* 80588A44 809E0000 */ lwz         r4, 0(r30)
/* 80588A48 540006F2 */ rlwinm      r0, r0, 0, 0x1b, 0x19
/* 80588A4C B3FE014E */ sth         r31, 0x14e(r30)
/* 80588A50 B3FE0150 */ sth         r31, 0x150(r30)
/* 80588A54 B01E0254 */ sth         r0, 0x254(r30)
/* 80588A58 93FE00EC */ stw         r31, 0xec(r30)
/* 80588A5C D01E00F0 */ stfs        f0, 0xf0(r30)
/* 80588A60 80840004 */ lwz         r4, 4(r4)
/* 80588A64 8004000C */ lwz         r0, 0xc(r4)
/* 80588A68 540007FA */ rlwinm      r0, r0, 0, 0x1f, 0x1d
/* 80588A6C 9004000C */ stw         r0, 0xc(r4)
/* 80588A70 809E0000 */ lwz         r4, 0(r30)
/* 80588A74 80840004 */ lwz         r4, 4(r4)
/* 80588A78 8004000C */ lwz         r0, 0xc(r4)
/* 80588A7C 5400003C */ rlwinm      r0, r0, 0, 0, 0x1e
/* 80588A80 9004000C */ stw         r0, 0xc(r4)
/* 80588A84 480083D5 */ bl          unk_80590e58
/* 80588A88 B3FE0148 */ sth         r31, 0x148(r30)
/* 80588A8C 38800000 */ li          r4, 0
/* 80588A90 807E0000 */ lwz         r3, 0(r30)
/* 80588A94 80630004 */ lwz         r3, 4(r3)
/* 80588A98 80030008 */ lwz         r0, 8(r3)
/* 80588A9C 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 80588AA0 90030008 */ stw         r0, 8(r3)
/* 80588AA4 807E0000 */ lwz         r3, 0(r30)
/* 80588AA8 80630004 */ lwz         r3, 4(r3)
/* 80588AAC 8003000C */ lwz         r0, 0xc(r3)
/* 80588AB0 540007B8 */ rlwinm      r0, r0, 0, 0x1e, 0x1c
/* 80588AB4 9003000C */ stw         r0, 0xc(r3)
/* 80588AB8 807E025C */ lwz         r3, 0x25c(r30)
/* 80588ABC 4BFECE29 */ bl          PlayerZipper_end
/* 80588AC0 807E0258 */ lwz         r3, 0x258(r30)
/* 80588AC4 4BFEDBF5 */ bl          PlayerTrick_end
/* 80588AC8 809E0000 */ lwz         r4, 0(r30)
/* 80588ACC 7FC3F378 */ mr          r3, r30
/* 80588AD0 80840004 */ lwz         r4, 4(r4)
/* 80588AD4 80040008 */ lwz         r0, 8(r4)
/* 80588AD8 54000104 */ rlwinm      r0, r0, 0, 4, 2
/* 80588ADC 90040008 */ stw         r0, 8(r4)
/* 80588AE0 809E0000 */ lwz         r4, 0(r30)
/* 80588AE4 80840004 */ lwz         r4, 4(r4)
/* 80588AE8 8004000C */ lwz         r0, 0xc(r4)
/* 80588AEC 54000566 */ rlwinm      r0, r0, 0, 0x15, 0x13
/* 80588AF0 9004000C */ stw         r0, 0xc(r4)
/* 80588AF4 809E0000 */ lwz         r4, 0(r30)
/* 80588AF8 80840004 */ lwz         r4, 4(r4)
/* 80588AFC 8004000C */ lwz         r0, 0xc(r4)
/* 80588B00 54000188 */ rlwinm      r0, r0, 0, 6, 4
/* 80588B04 9004000C */ stw         r0, 0xc(r4)
/* 80588B08 819E000C */ lwz         r12, 0xc(r30)
/* 80588B0C 818C0070 */ lwz         r12, 0x70(r12)
/* 80588B10 7D8903A6 */ mtctr       r12
/* 80588B14 4E800421 */ bctrl       
/* 80588B18 80010014 */ lwz         r0, 0x14(r1)
/* 80588B1C 83E1000C */ lwz         r31, 0xc(r1)
/* 80588B20 83C10008 */ lwz         r30, 8(r1)
/* 80588B24 7C0803A6 */ mtlr        r0
/* 80588B28 38210010 */ addi        r1, r1, 0x10
/* 80588B2C 4E800020 */ blr         