nofralloc
/* 8057829C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805782A0 7C0802A6 */ mflr        r0
/* 805782A4 38800000 */ li          r4, 0
/* 805782A8 38A00000 */ li          r5, 0
/* 805782AC 90010014 */ stw         r0, 0x14(r1)
/* 805782B0 93E1000C */ stw         r31, 0xc(r1)
/* 805782B4 7C7F1B78 */ mr          r31, r3
/* 805782B8 93C10008 */ stw         r30, 8(r1)
/* 805782BC 8183000C */ lwz         r12, 0xc(r3)
/* 805782C0 818C0014 */ lwz         r12, 0x14(r12)
/* 805782C4 7D8903A6 */ mtctr       r12
/* 805782C8 4E800421 */ bctrl       
/* 805782CC 7FE3FB78 */ mr          r3, r31
/* 805782D0 389F005C */ addi        r4, r31, 0x5c
/* 805782D4 480189C1 */ bl          PlayerPointers_getBodyFront
/* 805782D8 C0BF005C */ lfs         f5, 0x5c(r31)
/* 805782DC 7FE3FB78 */ mr          r3, r31
/* 805782E0 C09F0060 */ lfs         f4, 0x60(r31)
/* 805782E4 C07F0064 */ lfs         f3, 0x64(r31)
/* 805782E8 FC402818 */ frsp        f2, f5
/* 805782EC FC202018 */ frsp        f1, f4
/* 805782F0 D0BF0068 */ stfs        f5, 0x68(r31)
/* 805782F4 FC001818 */ frsp        f0, f3
/* 805782F8 D09F006C */ stfs        f4, 0x6c(r31)
/* 805782FC D07F0070 */ stfs        f3, 0x70(r31)
/* 80578300 D0BF0074 */ stfs        f5, 0x74(r31)
/* 80578304 D09F0078 */ stfs        f4, 0x78(r31)
/* 80578308 D07F007C */ stfs        f3, 0x7c(r31)
/* 8057830C D0BF0050 */ stfs        f5, 0x50(r31)
/* 80578310 D09F0054 */ stfs        f4, 0x54(r31)
/* 80578314 D07F0058 */ stfs        f3, 0x58(r31)
/* 80578318 D0BF0080 */ stfs        f5, 0x80(r31)
/* 8057831C D09F0084 */ stfs        f4, 0x84(r31)
/* 80578320 D07F0088 */ stfs        f3, 0x88(r31)
/* 80578324 D05F00A4 */ stfs        f2, 0xa4(r31)
/* 80578328 D03F00A8 */ stfs        f1, 0xa8(r31)
/* 8057832C D01F00AC */ stfs        f0, 0xac(r31)
/* 80578330 480186E1 */ bl          PlayerPointers_getVehicleType
/* 80578334 2C030000 */ cmpwi       r3, 0
/* 80578338 41820018 */ beq-        lbl_80578350
/* 8057833C 28030001 */ cmplwi      r3, 1
/* 80578340 41820020 */ beq-        lbl_80578360
/* 80578344 28030002 */ cmplwi      r3, 2
/* 80578348 4182002C */ beq-        lbl_80578374
/* 8057834C 48000038 */ b           lbl_80578384
lbl_80578350:
/* 80578350 3C60808B */ lis         r3, lbl_808b5a18@ha
/* 80578354 38635A18 */ addi        r3, r3, lbl_808b5a18@l
/* 80578358 907F0284 */ stw         r3, 0x284(r31)
/* 8057835C 48000028 */ b           lbl_80578384
lbl_80578360:
/* 80578360 3C60808B */ lis         r3, lbl_808b5a18@ha
/* 80578364 38635A18 */ addi        r3, r3, lbl_808b5a18@l
/* 80578368 38030010 */ addi        r0, r3, 0x10
/* 8057836C 901F0284 */ stw         r0, 0x284(r31)
/* 80578370 48000014 */ b           lbl_80578384
lbl_80578374:
/* 80578374 3C60808B */ lis         r3, lbl_808b5a18@ha
/* 80578378 38635A18 */ addi        r3, r3, lbl_808b5a18@l
/* 8057837C 38030020 */ addi        r0, r3, 0x20
/* 80578380 901F0284 */ stw         r0, 0x284(r31)
lbl_80578384:
/* 80578384 809F0000 */ lwz         r4, 0(r31)
/* 80578388 7FE3FB78 */ mr          r3, r31
/* 8057838C 38A00000 */ li          r5, 0
/* 80578390 38C00001 */ li          r6, 1
/* 80578394 80840004 */ lwz         r4, 4(r4)
/* 80578398 38E00000 */ li          r7, 0
/* 8057839C 80040014 */ lwz         r0, 0x14(r4)
/* 805783A0 5400041A */ rlwinm      r0, r0, 0, 0x10, 0xd
/* 805783A4 90040014 */ stw         r0, 0x14(r4)
/* 805783A8 809F0000 */ lwz         r4, 0(r31)
/* 805783AC 80840004 */ lwz         r4, 4(r4)
/* 805783B0 80040014 */ lwz         r0, 0x14(r4)
/* 805783B4 540004E6 */ rlwinm      r0, r0, 0, 0x13, 0x13
/* 805783B8 7C000034 */ cntlzw      r0, r0
/* 805783BC 5404D97E */ srwi        r4, r0, 5
/* 805783C0 480186DD */ bl          unk_80590a9c
/* 805783C4 807F0260 */ lwz         r3, 0x260(r31)
/* 805783C8 4BFF2B49 */ bl          unk_8056af10
/* 805783CC 7FE3FB78 */ mr          r3, r31
/* 805783D0 48018C69 */ bl          unk_80591038
/* 805783D4 3BC00000 */ li          r30, 0
/* 805783D8 9BDF0190 */ stb         r30, 0x190(r31)
/* 805783DC 7FE3FB78 */ mr          r3, r31
/* 805783E0 48019049 */ bl          kartAccessor_44__Q24Kart15KartObjectProxyFv
/* 805783E4 3C808089 */ lis         r4, lbl_80891a04@ha
/* 805783E8 9BC30054 */ stb         r30, 0x54(r3)
/* 805783EC C0041A04 */ lfs         f0, lbl_80891a04@l(r4)
/* 805783F0 D0030050 */ stfs        f0, 0x50(r3)
/* 805783F4 7FE3FB78 */ mr          r3, r31
/* 805783F8 48018C95 */ bl          kartBlink__Q24Kart15KartObjectProxyFv
/* 805783FC 38800001 */ li          r4, 1
/* 80578400 4BFF1F01 */ bl          unk_8056a300
/* 80578404 7FE3FB78 */ mr          r3, r31
/* 80578408 48018C9D */ bl          kartAccessor_5c__Q24Kart15KartObjectProxyFv
/* 8057840C 38800001 */ li          r4, 1
/* 80578410 4BFF22C9 */ bl          unk_8056a6d8
/* 80578414 7FE3FB78 */ mr          r3, r31
/* 80578418 38800009 */ li          r4, 9
/* 8057841C 38A00001 */ li          r5, 1
/* 80578420 38C00000 */ li          r6, 0
/* 80578424 48018C2D */ bl          unk_80591050
/* 80578428 7FE3FB78 */ mr          r3, r31
/* 8057842C 480188F5 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 80578430 38800001 */ li          r4, 1
/* 80578434 4BFEF655 */ bl          unk_80567a88
/* 80578438 807F0000 */ lwz         r3, 0(r31)
/* 8057843C 80630004 */ lwz         r3, 4(r3)
/* 80578440 8003000C */ lwz         r0, 0xc(r3)
/* 80578444 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 80578448 41820010 */ beq-        lbl_80578458
/* 8057844C 7FE3FB78 */ mr          r3, r31
/* 80578450 480191C9 */ bl          kartAccessor_60__Q24Kart15KartObjectProxyFv
/* 80578454 48023CC5 */ bl          cancelBullet
lbl_80578458:
/* 80578458 809F0000 */ lwz         r4, 0(r31)
/* 8057845C 80640004 */ lwz         r3, 4(r4)
/* 80578460 8003000C */ lwz         r0, 0xc(r3)
/* 80578464 5400018D */ rlwinm.     r0, r0, 0, 6, 6
/* 80578468 41820024 */ beq-        lbl_8057848c
/* 8057846C 80840004 */ lwz         r4, 4(r4)
/* 80578470 7FE3FB78 */ mr          r3, r31
/* 80578474 8004000C */ lwz         r0, 0xc(r4)
/* 80578478 540001CA */ rlwinm      r0, r0, 0, 7, 5
/* 8057847C 9004000C */ stw         r0, 0xc(r4)
/* 80578480 48017F4D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80578484 38000000 */ li          r0, 0
/* 80578488 98030171 */ stb         r0, 0x171(r3)
lbl_8057848c:
/* 8057848C 7FE3FB78 */ mr          r3, r31
/* 80578490 389F0164 */ addi        r4, r31, 0x164
/* 80578494 480191D1 */ bl          PlayerPointers_resetInertia
/* 80578498 809F0000 */ lwz         r4, 0(r31)
/* 8057849C 80640004 */ lwz         r3, 4(r4)
/* 805784A0 80030014 */ lwz         r0, 0x14(r3)
/* 805784A4 540004E7 */ rlwinm.     r0, r0, 0, 0x13, 0x13
/* 805784A8 41820014 */ beq-        lbl_805784bc
/* 805784AC 80640004 */ lwz         r3, 4(r4)
/* 805784B0 8003000C */ lwz         r0, 0xc(r3)
/* 805784B4 64000008 */ oris        r0, r0, 8
/* 805784B8 9003000C */ stw         r0, 0xc(r3)
lbl_805784bc:
/* 805784BC 80010014 */ lwz         r0, 0x14(r1)
/* 805784C0 83E1000C */ lwz         r31, 0xc(r1)
/* 805784C4 83C10008 */ lwz         r30, 8(r1)
/* 805784C8 7C0803A6 */ mtlr        r0
/* 805784CC 38210010 */ addi        r1, r1, 0x10
/* 805784D0 4E800020 */ blr         