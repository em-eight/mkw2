nofralloc
/* 80588E24 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80588E28 3D808089 */ lis         r12, lbl_80891a00@ha
/* 80588E2C 398C1A00 */ addi        r12, r12, lbl_80891a00@l
/* 80588E30 3CA0808B */ lis         r5, lbl_808b58f0@ha
/* 80588E34 93E1001C */ stw         r31, 0x1c(r1)
/* 80588E38 38A558F0 */ addi        r5, r5, lbl_808b58f0@l
/* 80588E3C 38000003 */ li          r0, 3
/* 80588E40 C02C0004 */ lfs         f1, 4(r12)
/* 80588E44 93C10018 */ stw         r30, 0x18(r1)
/* 80588E48 39050370 */ addi        r8, r5, 0x370
/* 80588E4C C00C000C */ lfs         f0, 0xc(r12)
/* 80588E50 38E50388 */ addi        r7, r5, 0x388
/* 80588E54 93A10014 */ stw         r29, 0x14(r1)
/* 80588E58 38C503B8 */ addi        r6, r5, 0x3b8
/* 80588E5C 3BE00000 */ li          r31, 0
/* 80588E60 3BC00000 */ li          r30, 0
/* 80588E64 93810010 */ stw         r28, 0x10(r1)
/* 80588E68 3BA00000 */ li          r29, 0
/* 80588E6C 3B800000 */ li          r28, 0
/* 80588E70 39400001 */ li          r10, 1
/* 80588E74 D0230014 */ stfs        f1, 0x14(r3)
/* 80588E78 D0230018 */ stfs        f1, 0x18(r3)
/* 80588E7C D0030020 */ stfs        f0, 0x20(r3)
/* 80588E80 7C0903A6 */ mtctr       r0
lbl_80588e84:
/* 80588E84 5780063E */ clrlwi      r0, r28, 0x18
/* 80588E88 578B0DFC */ rlwinm      r11, r28, 1, 0x17, 0x1e
/* 80588E8C 7D400030 */ slw         r0, r10, r0
/* 80588E90 A0A30010 */ lhz         r5, 0x10(r3)
/* 80588E94 5409043E */ clrlwi      r9, r0, 0x10
/* 80588E98 7D635A14 */ add         r11, r3, r11
/* 80588E9C 7CA04839 */ and.        r0, r5, r9
/* 80588EA0 41820050 */ beq-        lbl_80588ef0
/* 80588EA4 578015BA */ rlwinm      r0, r28, 2, 0x16, 0x1d
/* 80588EA8 7C08042E */ lfsx        f0, r8, r0
/* 80588EAC EC01002A */ fadds       f0, f1, f0
/* 80588EB0 D0030014 */ stfs        f0, 0x14(r3)
/* 80588EB4 7C07042E */ lfsx        f0, r7, r0
/* 80588EB8 D0030018 */ stfs        f0, 0x18(r3)
/* 80588EBC 7C06042E */ lfsx        f0, r6, r0
/* 80588EC0 D0030020 */ stfs        f0, 0x20(r3)
/* 80588EC4 A8AB0004 */ lha         r5, 4(r11)
/* 80588EC8 3805FFFF */ addi        r0, r5, -1
/* 80588ECC B00B0004 */ sth         r0, 4(r11)
/* 80588ED0 7C000735 */ extsh.      r0, r0
/* 80588ED4 41810018 */ bgt-        lbl_80588eec
/* 80588ED8 A0030010 */ lhz         r0, 0x10(r3)
/* 80588EDC 3BC00001 */ li          r30, 1
/* 80588EE0 7C004878 */ andc        r0, r0, r9
/* 80588EE4 B0030010 */ sth         r0, 0x10(r3)
/* 80588EE8 48000008 */ b           lbl_80588ef0
lbl_80588eec:
/* 80588EEC 3BA00001 */ li          r29, 1
lbl_80588ef0:
/* 80588EF0 3B9C0001 */ addi        r28, r28, 1
/* 80588EF4 A0A30010 */ lhz         r5, 0x10(r3)
/* 80588EF8 5780063E */ clrlwi      r0, r28, 0x18
/* 80588EFC 7D400030 */ slw         r0, r10, r0
/* 80588F00 578B0DFC */ rlwinm      r11, r28, 1, 0x17, 0x1e
/* 80588F04 5409043E */ clrlwi      r9, r0, 0x10
/* 80588F08 7CA04839 */ and.        r0, r5, r9
/* 80588F0C 7D635A14 */ add         r11, r3, r11
/* 80588F10 41820050 */ beq-        lbl_80588f60
/* 80588F14 578015BA */ rlwinm      r0, r28, 2, 0x16, 0x1d
/* 80588F18 7C08042E */ lfsx        f0, r8, r0
/* 80588F1C EC01002A */ fadds       f0, f1, f0
/* 80588F20 D0030014 */ stfs        f0, 0x14(r3)
/* 80588F24 7C07042E */ lfsx        f0, r7, r0
/* 80588F28 D0030018 */ stfs        f0, 0x18(r3)
/* 80588F2C 7C06042E */ lfsx        f0, r6, r0
/* 80588F30 D0030020 */ stfs        f0, 0x20(r3)
/* 80588F34 A8AB0004 */ lha         r5, 4(r11)
/* 80588F38 3805FFFF */ addi        r0, r5, -1
/* 80588F3C B00B0004 */ sth         r0, 4(r11)
/* 80588F40 7C000735 */ extsh.      r0, r0
/* 80588F44 41810018 */ bgt-        lbl_80588f5c
/* 80588F48 A0030010 */ lhz         r0, 0x10(r3)
/* 80588F4C 3BC00001 */ li          r30, 1
/* 80588F50 7C004878 */ andc        r0, r0, r9
/* 80588F54 B0030010 */ sth         r0, 0x10(r3)
/* 80588F58 48000008 */ b           lbl_80588f60
lbl_80588f5c:
/* 80588F5C 3BA00001 */ li          r29, 1
lbl_80588f60:
/* 80588F60 3B9C0001 */ addi        r28, r28, 1
/* 80588F64 4200FF20 */ bdnz        lbl_80588e84
/* 80588F68 C0230014 */ lfs         f1, 0x14(r3)
/* 80588F6C C00C0004 */ lfs         f0, 4(r12)
/* 80588F70 FC010040 */ fcmpo       cr0, f1, f0
/* 80588F74 41810014 */ bgt-        lbl_80588f88
/* 80588F78 C0230020 */ lfs         f1, 0x20(r3)
/* 80588F7C C00C0000 */ lfs         f0, 0(r12)
/* 80588F80 FC010040 */ fcmpo       cr0, f1, f0
/* 80588F84 40810008 */ ble-        lbl_80588f8c
lbl_80588f88:
/* 80588F88 3BE00001 */ li          r31, 1
lbl_80588f8c:
/* 80588F8C 2C1E0000 */ cmpwi       r30, 0
/* 80588F90 41820014 */ beq-        lbl_80588fa4
/* 80588F94 2C1D0000 */ cmpwi       r29, 0
/* 80588F98 4082000C */ bne-        lbl_80588fa4
/* 80588F9C 38000001 */ li          r0, 1
/* 80588FA0 98040000 */ stb         r0, 0(r4)
lbl_80588fa4:
/* 80588FA4 7FE3FB78 */ mr          r3, r31
/* 80588FA8 83E1001C */ lwz         r31, 0x1c(r1)
/* 80588FAC 83C10018 */ lwz         r30, 0x18(r1)
/* 80588FB0 83A10014 */ lwz         r29, 0x14(r1)
/* 80588FB4 83810010 */ lwz         r28, 0x10(r1)
/* 80588FB8 38210020 */ addi        r1, r1, 0x20
/* 80588FBC 4E800020 */ blr         