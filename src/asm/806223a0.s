nofralloc
/* 806223A0 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806223A4 7C0802A6 */ mflr        r0
/* 806223A8 90010024 */ stw         r0, 0x24(r1)
/* 806223AC 93E1001C */ stw         r31, 0x1c(r1)
/* 806223B0 93C10018 */ stw         r30, 0x18(r1)
/* 806223B4 3BC00000 */ li          r30, 0
/* 806223B8 93A10014 */ stw         r29, 0x14(r1)
/* 806223BC 93810010 */ stw         r28, 0x10(r1)
/* 806223C0 7C7C1B78 */ mr          r28, r3
/* 806223C4 7F9FE378 */ mr          r31, r28
lbl_806223c8:
/* 806223C8 83BF0380 */ lwz         r29, 0x380(r31)
/* 806223CC 2C1D0000 */ cmpwi       r29, 0
/* 806223D0 41820054 */ beq-        lbl_80622424
lbl_806223d4:
/* 806223D4 7FA3EB78 */ mr          r3, r29
/* 806223D8 4BFDF94D */ bl          unk_80601d24
/* 806223DC 801D0008 */ lwz         r0, 8(r29)
/* 806223E0 2C000006 */ cmpwi       r0, 6
/* 806223E4 4082000C */ bne-        lbl_806223f0
/* 806223E8 7FA3EB78 */ mr          r3, r29
/* 806223EC 4BFDF81D */ bl          Page_deactivate
lbl_806223f0:
/* 806223F0 801D0008 */ lwz         r0, 8(r29)
/* 806223F4 2C000001 */ cmpwi       r0, 1
/* 806223F8 4082002C */ bne-        lbl_80622424
/* 806223FC 819D0000 */ lwz         r12, 0(r29)
/* 80622400 7FA3EB78 */ mr          r3, r29
/* 80622404 818C0064 */ lwz         r12, 0x64(r12)
/* 80622408 7D8903A6 */ mtctr       r12
/* 8062240C 4E800421 */ bctrl       
/* 80622410 2C030000 */ cmpwi       r3, 0
/* 80622414 41820010 */ beq-        lbl_80622424
/* 80622418 7FA3EB78 */ mr          r3, r29
/* 8062241C 4BFDF6D1 */ bl          Page_activate
/* 80622420 4BFFFFB4 */ b           lbl_806223d4
lbl_80622424:
/* 80622424 3BDE0001 */ addi        r30, r30, 1
/* 80622428 3BFF0004 */ addi        r31, r31, 4
/* 8062242C 2C1E0002 */ cmpwi       r30, 2
/* 80622430 4180FF98 */ blt+        lbl_806223c8
/* 80622434 881C0389 */ lbz         r0, 0x389(r28)
/* 80622438 3BE00001 */ li          r31, 1
/* 8062243C 2C000000 */ cmpwi       r0, 0
/* 80622440 40820014 */ bne-        lbl_80622454
/* 80622444 881C038A */ lbz         r0, 0x38a(r28)
/* 80622448 2C000000 */ cmpwi       r0, 0
/* 8062244C 40820008 */ bne-        lbl_80622454
/* 80622450 3BE00000 */ li          r31, 0
lbl_80622454:
/* 80622454 807C0000 */ lwz         r3, 0(r28)
/* 80622458 4800F131 */ bl          Section_getSceneId
/* 8062245C 2C030002 */ cmpwi       r3, 2
/* 80622460 40820048 */ bne-        lbl_806224a8
/* 80622464 2C1F0000 */ cmpwi       r31, 0
/* 80622468 40820020 */ bne-        lbl_80622488
/* 8062246C 881C038B */ lbz         r0, 0x38b(r28)
/* 80622470 28000001 */ cmplwi      r0, 1
/* 80622474 40820014 */ bne-        lbl_80622488
/* 80622478 3C60809C */ lis         r3, lbl_809c2850@ha
/* 8062247C 80632850 */ lwz         r3, lbl_809c2850@l(r3)
/* 80622480 480F3AE1 */ bl          unk_80715f60
/* 80622484 48000024 */ b           lbl_806224a8
lbl_80622488:
/* 80622488 281F0001 */ cmplwi      r31, 1
/* 8062248C 4082001C */ bne-        lbl_806224a8
/* 80622490 881C038B */ lbz         r0, 0x38b(r28)
/* 80622494 2C000000 */ cmpwi       r0, 0
/* 80622498 40820010 */ bne-        lbl_806224a8
/* 8062249C 3C60809C */ lis         r3, lbl_809c2850@ha
/* 806224A0 80632850 */ lwz         r3, lbl_809c2850@l(r3)
/* 806224A4 480F3A29 */ bl          unk_80715ecc
lbl_806224a8:
/* 806224A8 881C0389 */ lbz         r0, 0x389(r28)
/* 806224AC 38600000 */ li          r3, 0
/* 806224B0 9BFC038B */ stb         r31, 0x38b(r28)
/* 806224B4 2C000000 */ cmpwi       r0, 0
/* 806224B8 40820010 */ bne-        lbl_806224c8
/* 806224BC 881C0388 */ lbz         r0, 0x388(r28)
/* 806224C0 2C000000 */ cmpwi       r0, 0
/* 806224C4 41820008 */ beq-        lbl_806224cc
lbl_806224c8:
/* 806224C8 38600001 */ li          r3, 1
lbl_806224cc:
/* 806224CC 881C0388 */ lbz         r0, 0x388(r28)
/* 806224D0 987C038C */ stb         r3, 0x38c(r28)
/* 806224D4 981C038D */ stb         r0, 0x38d(r28)
/* 806224D8 83E1001C */ lwz         r31, 0x1c(r1)
/* 806224DC 83C10018 */ lwz         r30, 0x18(r1)
/* 806224E0 83A10014 */ lwz         r29, 0x14(r1)
/* 806224E4 83810010 */ lwz         r28, 0x10(r1)
/* 806224E8 80010024 */ lwz         r0, 0x24(r1)
/* 806224EC 7C0803A6 */ mtlr        r0
/* 806224F0 38210020 */ addi        r1, r1, 0x20
/* 806224F4 4E800020 */ blr         