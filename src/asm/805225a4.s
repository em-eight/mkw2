nofralloc
/* 805225A4 80A30000 */ lwz         r5, 0(r3)
/* 805225A8 80040000 */ lwz         r0, 0(r4)
/* 805225AC 7C050000 */ cmpw        r5, r0
/* 805225B0 4182000C */ beq-        lbl_805225bc
/* 805225B4 38600000 */ li          r3, 0
/* 805225B8 4E800020 */ blr         
lbl_805225bc:
/* 805225BC 2C050000 */ cmpwi       r5, 0
/* 805225C0 4180000C */ blt-        lbl_805225cc
/* 805225C4 2C050002 */ cmpwi       r5, 2
/* 805225C8 40810010 */ ble-        lbl_805225d8
lbl_805225cc:
/* 805225CC 2C050003 */ cmpwi       r5, 3
/* 805225D0 418200A0 */ beq-        lbl_80522670
/* 805225D4 480000B4 */ b           lbl_80522688
lbl_805225d8:
/* 805225D8 88A30004 */ lbz         r5, 4(r3)
/* 805225DC 88040004 */ lbz         r0, 4(r4)
/* 805225E0 7C050040 */ cmplw       r5, r0
/* 805225E4 4182000C */ beq-        lbl_805225f0
/* 805225E8 38600000 */ li          r3, 0
/* 805225EC 4E800020 */ blr         
lbl_805225f0:
/* 805225F0 88A30005 */ lbz         r5, 5(r3)
/* 805225F4 88040005 */ lbz         r0, 5(r4)
/* 805225F8 7C050040 */ cmplw       r5, r0
/* 805225FC 4182000C */ beq-        lbl_80522608
/* 80522600 38600000 */ li          r3, 0
/* 80522604 4E800020 */ blr         
lbl_80522608:
/* 80522608 88A30006 */ lbz         r5, 6(r3)
/* 8052260C 88040006 */ lbz         r0, 6(r4)
/* 80522610 7C050040 */ cmplw       r5, r0
/* 80522614 4182000C */ beq-        lbl_80522620
/* 80522618 38600000 */ li          r3, 0
/* 8052261C 4E800020 */ blr         
lbl_80522620:
/* 80522620 88A30007 */ lbz         r5, 7(r3)
/* 80522624 88040007 */ lbz         r0, 7(r4)
/* 80522628 7C050040 */ cmplw       r5, r0
/* 8052262C 4182000C */ beq-        lbl_80522638
/* 80522630 38600000 */ li          r3, 0
/* 80522634 4E800020 */ blr         
lbl_80522638:
/* 80522638 88A30008 */ lbz         r5, 8(r3)
/* 8052263C 88040008 */ lbz         r0, 8(r4)
/* 80522640 7C050040 */ cmplw       r5, r0
/* 80522644 4182000C */ beq-        lbl_80522650
/* 80522648 38600000 */ li          r3, 0
/* 8052264C 4E800020 */ blr         
lbl_80522650:
/* 80522650 88A30009 */ lbz         r5, 9(r3)
/* 80522654 88040009 */ lbz         r0, 9(r4)
/* 80522658 7C050040 */ cmplw       r5, r0
/* 8052265C 4182000C */ beq-        lbl_80522668
/* 80522660 38600000 */ li          r3, 0
/* 80522664 4E800020 */ blr         
lbl_80522668:
/* 80522668 38600001 */ li          r3, 1
/* 8052266C 4E800020 */ blr         
lbl_80522670:
/* 80522670 8063000C */ lwz         r3, 0xc(r3)
/* 80522674 8004000C */ lwz         r0, 0xc(r4)
/* 80522678 7C030050 */ subf        r0, r3, r0
/* 8052267C 7C000034 */ cntlzw      r0, r0
/* 80522680 5403D97E */ srwi        r3, r0, 5
/* 80522684 4E800020 */ blr         
lbl_80522688:
/* 80522688 38600000 */ li          r3, 0
/* 8052268C 4E800020 */ blr         