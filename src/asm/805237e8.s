nofralloc
/* 805237E8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805237EC 7C0802A6 */ mflr        r0
/* 805237F0 90010024 */ stw         r0, 0x24(r1)
/* 805237F4 BF61000C */ stmw        r27, 0xc(r1)
/* 805237F8 7C7E1B78 */ mr          r30, r3
/* 805237FC 7C9F2378 */ mr          r31, r4
/* 80523800 3BA00000 */ li          r29, 0
lbl_80523804:
/* 80523804 57A0063E */ clrlwi      r0, r29, 0x18
/* 80523808 1C000920 */ mulli       r0, r0, 0x920
/* 8052380C 7C7E0214 */ add         r3, r30, r0
/* 80523810 38631720 */ addi        r3, r3, 0x1720
/* 80523814 4BFFB501 */ bl          calc__Q26System14KPadControllerFv
/* 80523818 3BBD0001 */ addi        r29, r29, 1
/* 8052381C 281D0004 */ cmplwi      r29, 4
/* 80523820 4180FFE4 */ blt+        lbl_80523804
/* 80523824 3FA08089 */ lis         r29, lbl_8088fd10@ha
/* 80523828 3B800000 */ li          r28, 0
/* 8052382C 3BBDFD10 */ addi        r29, r29, lbl_8088fd10@l
/* 80523830 3B600000 */ li          r27, 0
lbl_80523834:
/* 80523834 5760063E */ clrlwi      r0, r27, 0x18
/* 80523838 1C0000B0 */ mulli       r0, r0, 0xb0
/* 8052383C 7C7E0214 */ add         r3, r30, r0
/* 80523840 38633BA0 */ addi        r3, r3, 0x3ba0
/* 80523844 4BFFB4D1 */ bl          calc__Q26System14KPadControllerFv
/* 80523848 5760063E */ clrlwi      r0, r27, 0x18
/* 8052384C 1C00000C */ mulli       r0, r0, 0xc
/* 80523850 7C7E0214 */ add         r3, r30, r0
/* 80523854 8803412A */ lbz         r0, 0x412a(r3)
/* 80523858 7C000775 */ extsb.      r0, r0
/* 8052385C 41820010 */ beq-        lbl_8052386c
/* 80523860 2C00FFFF */ cmpwi       r0, -1
/* 80523864 41820010 */ beq-        lbl_80523874
/* 80523868 48000014 */ b           lbl_8052387c
lbl_8052386c:
/* 8052386C 38000000 */ li          r0, 0
/* 80523870 48000010 */ b           lbl_80523880
lbl_80523874:
/* 80523874 38000002 */ li          r0, 2
/* 80523878 48000008 */ b           lbl_80523880
lbl_8052387c:
/* 8052387C 38000001 */ li          r0, 1
lbl_80523880:
/* 80523880 2C000002 */ cmpwi       r0, 2
/* 80523884 40820010 */ bne-        lbl_80523894
/* 80523888 576015BA */ rlwinm      r0, r27, 2, 0x16, 0x1d
/* 8052388C 7C1D002E */ lwzx        r0, r29, r0
/* 80523890 7F9C0378 */ or          r28, r28, r0
lbl_80523894:
/* 80523894 3B7B0001 */ addi        r27, r27, 1
/* 80523898 281B0004 */ cmplwi      r27, 4
/* 8052389C 4180FF98 */ blt+        lbl_80523834
/* 805238A0 2C1C0000 */ cmpwi       r28, 0
/* 805238A4 4182000C */ beq-        lbl_805238b0
/* 805238A8 7F83E378 */ mr          r3, r28
/* 805238AC 4BC8B831 */ bl          PADReset
lbl_805238b0:
/* 805238B0 2C1F0000 */ cmpwi       r31, 0
/* 805238B4 40820028 */ bne-        lbl_805238dc
/* 805238B8 3B600000 */ li          r27, 0
lbl_805238bc:
/* 805238BC 5760063E */ clrlwi      r0, r27, 0x18
/* 805238C0 1C0000A8 */ mulli       r0, r0, 0xa8
/* 805238C4 7C7E0214 */ add         r3, r30, r0
/* 805238C8 38633E60 */ addi        r3, r3, 0x3e60
/* 805238CC 4BFFB449 */ bl          calc__Q26System14KPadControllerFv
/* 805238D0 3B7B0001 */ addi        r27, r27, 1
/* 805238D4 281B0004 */ cmplwi      r27, 4
/* 805238D8 4180FFE4 */ blt+        lbl_805238bc
lbl_805238dc:
/* 805238DC BB61000C */ lmw         r27, 0xc(r1)
/* 805238E0 80010024 */ lwz         r0, 0x24(r1)
/* 805238E4 7C0803A6 */ mtlr        r0
/* 805238E8 38210020 */ addi        r1, r1, 0x20
/* 805238EC 4E800020 */ blr         