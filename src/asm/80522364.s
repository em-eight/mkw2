nofralloc
/* 80522364 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80522368 7C0802A6 */ mflr        r0
/* 8052236C 90010024 */ stw         r0, 0x24(r1)
/* 80522370 3800FFFF */ li          r0, -1
/* 80522374 93E1001C */ stw         r31, 0x1c(r1)
/* 80522378 7C9F2378 */ mr          r31, r4
/* 8052237C 93C10018 */ stw         r30, 0x18(r1)
/* 80522380 7C7E1B78 */ mr          r30, r3
/* 80522384 90030000 */ stw         r0, 0(r3)
/* 80522388 7FE3FB78 */ mr          r3, r31
/* 8052238C 819F0000 */ lwz         r12, 0(r31)
/* 80522390 818C0010 */ lwz         r12, 0x10(r12)
/* 80522394 7D8903A6 */ mtctr       r12
/* 80522398 4E800421 */ bctrl       
/* 8052239C 28030002 */ cmplwi      r3, 2
/* 805223A0 40810010 */ ble-        lbl_805223b0
/* 805223A4 2C030003 */ cmpwi       r3, 3
/* 805223A8 41820088 */ beq-        lbl_80522430
/* 805223AC 480000D0 */ b           lbl_8052247c
lbl_805223b0:
/* 805223B0 819F0000 */ lwz         r12, 0(r31)
/* 805223B4 7FE3FB78 */ mr          r3, r31
/* 805223B8 818C0034 */ lwz         r12, 0x34(r12)
/* 805223BC 7D8903A6 */ mtctr       r12
/* 805223C0 4E800421 */ bctrl       
/* 805223C4 2C030000 */ cmpwi       r3, 0
/* 805223C8 418000B4 */ blt-        lbl_8052247c
/* 805223CC 819F0000 */ lwz         r12, 0(r31)
/* 805223D0 7FE3FB78 */ mr          r3, r31
/* 805223D4 818C0010 */ lwz         r12, 0x10(r12)
/* 805223D8 7D8903A6 */ mtctr       r12
/* 805223DC 4E800421 */ bctrl       
/* 805223E0 907E0000 */ stw         r3, 0(r30)
/* 805223E4 7FE3FB78 */ mr          r3, r31
/* 805223E8 819F0000 */ lwz         r12, 0(r31)
/* 805223EC 818C0034 */ lwz         r12, 0x34(r12)
/* 805223F0 7D8903A6 */ mtctr       r12
/* 805223F4 4E800421 */ bctrl       
/* 805223F8 547F063E */ clrlwi      r31, r3, 0x18
/* 805223FC 38810008 */ addi        r4, r1, 8
/* 80522400 7FE3FB78 */ mr          r3, r31
/* 80522404 4BC9E58D */ bl          WPADProbe
/* 80522408 2C030000 */ cmpwi       r3, 0
/* 8052240C 40820070 */ bne-        lbl_8052247c
/* 80522410 387E0004 */ addi        r3, r30, 4
/* 80522414 38800000 */ li          r4, 0
/* 80522418 38A00006 */ li          r5, 6
/* 8052241C 4BAE3C1D */ bl          memset
/* 80522420 7FE3FB78 */ mr          r3, r31
/* 80522424 389E0004 */ addi        r4, r30, 4
/* 80522428 4BC9D26D */ bl          FUN_801bf694
/* 8052242C 48000050 */ b           lbl_8052247c
lbl_80522430:
/* 80522430 819F0000 */ lwz         r12, 0(r31)
/* 80522434 7FE3FB78 */ mr          r3, r31
/* 80522438 818C0034 */ lwz         r12, 0x34(r12)
/* 8052243C 7D8903A6 */ mtctr       r12
/* 80522440 4E800421 */ bctrl       
/* 80522444 2C030000 */ cmpwi       r3, 0
/* 80522448 41800034 */ blt-        lbl_8052247c
/* 8052244C 819F0000 */ lwz         r12, 0(r31)
/* 80522450 7FE3FB78 */ mr          r3, r31
/* 80522454 818C0010 */ lwz         r12, 0x10(r12)
/* 80522458 7D8903A6 */ mtctr       r12
/* 8052245C 4E800421 */ bctrl       
/* 80522460 907E0000 */ stw         r3, 0(r30)
/* 80522464 7FE3FB78 */ mr          r3, r31
/* 80522468 819F0000 */ lwz         r12, 0(r31)
/* 8052246C 818C0034 */ lwz         r12, 0x34(r12)
/* 80522470 7D8903A6 */ mtctr       r12
/* 80522474 4E800421 */ bctrl       
/* 80522478 907E000C */ stw         r3, 0xc(r30)
lbl_8052247c:
/* 8052247C 80010024 */ lwz         r0, 0x24(r1)
/* 80522480 83E1001C */ lwz         r31, 0x1c(r1)
/* 80522484 83C10018 */ lwz         r30, 0x18(r1)
/* 80522488 7C0803A6 */ mtlr        r0
/* 8052248C 38210020 */ addi        r1, r1, 0x20
/* 80522490 4E800020 */ blr         