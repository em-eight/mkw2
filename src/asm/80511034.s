nofralloc
/* 80511034 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80511038 7C0802A6 */ mflr        r0
/* 8051103C 2C060000 */ cmpwi       r6, 0
/* 80511040 90010034 */ stw         r0, 0x34(r1)
/* 80511044 BEC10008 */ stmw        r22, 8(r1)
/* 80511048 7C771B78 */ mr          r23, r3
/* 8051104C 7CB92B78 */ mr          r25, r5
/* 80511050 7C982378 */ mr          r24, r4
/* 80511054 7CFA3B78 */ mr          r26, r7
/* 80511058 7D1B4378 */ mr          r27, r8
/* 8051105C 7D3C4B78 */ mr          r28, r9
/* 80511060 7D5D5378 */ mr          r29, r10
/* 80511064 3860FFFF */ li          r3, -1
/* 80511068 38A0FFFF */ li          r5, -1
/* 8051106C 41800008 */ blt-        lbl_80511074
/* 80511070 38A60001 */ addi        r5, r6, 1
lbl_80511074:
/* 80511074 38000001 */ li          r0, 1
/* 80511078 7CBF0734 */ extsh       r31, r5
/* 8051107C 7C162030 */ slw         r22, r0, r4
/* 80511080 3BC00000 */ li          r30, 0
/* 80511084 48000068 */ b           lbl_805110ec
lbl_80511088:
/* 80511088 57C0043E */ clrlwi      r0, r30, 0x10
/* 8051108C 7C002000 */ cmpw        r0, r4
/* 80511090 40800014 */ bge-        lbl_805110a4
/* 80511094 57C013BA */ rlwinm      r0, r30, 2, 0xe, 0x1d
/* 80511098 7C9A0214 */ add         r4, r26, r0
/* 8051109C 81040020 */ lwz         r8, 0x20(r4)
/* 805110A0 48000008 */ b           lbl_805110a8
lbl_805110a4:
/* 805110A4 39000000 */ li          r8, 0
lbl_805110a8:
/* 805110A8 2C1D0000 */ cmpwi       r29, 0
/* 805110AC 41820010 */ beq-        lbl_805110bc
/* 805110B0 A0080018 */ lhz         r0, 0x18(r8)
/* 805110B4 7C00B039 */ and.        r0, r0, r22
/* 805110B8 40820030 */ bne-        lbl_805110e8
lbl_805110bc:
/* 805110BC 7EE3BB78 */ mr          r3, r23
/* 805110C0 7F04C378 */ mr          r4, r24
/* 805110C4 7F25CB78 */ mr          r5, r25
/* 805110C8 7FE6FB78 */ mr          r6, r31
/* 805110CC 7F69DB78 */ mr          r9, r27
/* 805110D0 7F8AE378 */ mr          r10, r28
/* 805110D4 38E00001 */ li          r7, 1
/* 805110D8 48000039 */ bl          KmpHolder_findNextCheckpointRec
/* 805110DC 7C600734 */ extsh       r0, r3
/* 805110E0 2C00FFFF */ cmpwi       r0, -1
/* 805110E4 40820018 */ bne-        lbl_805110fc
lbl_805110e8:
/* 805110E8 3BDE0001 */ addi        r30, r30, 1
lbl_805110ec:
/* 805110EC A09A0006 */ lhz         r4, 6(r26)
/* 805110F0 57C0043E */ clrlwi      r0, r30, 0x10
/* 805110F4 7C002040 */ cmplw       r0, r4
/* 805110F8 4180FF90 */ blt+        lbl_80511088
lbl_805110fc:
/* 805110FC BAC10008 */ lmw         r22, 8(r1)
/* 80511100 80010034 */ lwz         r0, 0x34(r1)
/* 80511104 7C0803A6 */ mtlr        r0
/* 80511108 38210030 */ addi        r1, r1, 0x30
/* 8051110C 4E800020 */ blr         