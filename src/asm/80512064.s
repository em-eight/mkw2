nofralloc
/* 80512064 9421FF80 */ stwu        r1, -0x80(r1)
/* 80512068 7C0802A6 */ mflr        r0
/* 8051206C 90010084 */ stw         r0, 0x84(r1)
/* 80512070 DBE10070 */ stfd        f31, 0x70(r1)
/* 80512074 F3E10078 */ psq_st      f31, 0x78(r1), 0, 0
/* 80512078 DBC10060 */ stfd        f30, 0x60(r1)
/* 8051207C F3C10068 */ psq_st      f30, 0x68(r1), 0, 0
/* 80512080 DBA10050 */ stfd        f29, 0x50(r1)
/* 80512084 F3A10058 */ psq_st      f29, 0x58(r1), 0, 0
/* 80512088 DB810040 */ stfd        f28, 0x40(r1)
/* 8051208C F3810048 */ psq_st      f28, 0x48(r1), 0, 0
/* 80512090 39610040 */ addi        r11, r1, 0x40
/* 80512094 4BB0F4FD */ bl          _savegpr_23
/* 80512098 A0030004 */ lhz         r0, 4(r3)
/* 8051209C 3CA08089 */ lis         r5, lbl_8088f8d0@ha
/* 805120A0 C385F8D0 */ lfs         f28, lbl_8088f8d0@l(r5)
/* 805120A4 7C781B78 */ mr          r24, r3
/* 805120A8 7C040040 */ cmplw       r4, r0
/* 805120AC 40800014 */ bge-        lbl_805120c0
/* 805120B0 80630000 */ lwz         r3, 0(r3)
/* 805120B4 548013BA */ rlwinm      r0, r4, 2, 0xe, 0x1d
/* 805120B8 7FC3002E */ lwzx        r30, r3, r0
/* 805120BC 48000008 */ b           lbl_805120c4
lbl_805120c0:
/* 805120C0 3BC00000 */ li          r30, 0
lbl_805120c4:
/* 805120C4 3C608089 */ lis         r3, lbl_8088f8e0@ha
/* 805120C8 3B200000 */ li          r25, 0
/* 805120CC CBE3F8E0 */ lfd         f31, lbl_8088f8e0@l(r3)
/* 805120D0 3FE08089 */ lis         r31, lbl_8088f8d0@ha
/* 805120D4 3EE04330 */ lis         r23, 0x4330
/* 805120D8 4800022C */ b           lbl_80512304
lbl_805120dc:
/* 805120DC 5720043E */ clrlwi      r0, r25, 0x10
/* 805120E0 7C002800 */ cmpw        r0, r5
/* 805120E4 40800014 */ bge-        lbl_805120f8
/* 805120E8 1C000018 */ mulli       r0, r0, 0x18
/* 805120EC 7C7E0214 */ add         r3, r30, r0
/* 805120F0 C003004C */ lfs         f0, 0x4c(r3)
/* 805120F4 48000008 */ b           lbl_805120fc
lbl_805120f8:
/* 805120F8 C01FF8D0 */ lfs         f0, lbl_8088f8d0@l(r31)
lbl_805120fc:
/* 805120FC 5720043E */ clrlwi      r0, r25, 0x10
/* 80512100 EF9C002A */ fadds       f28, f28, f0
/* 80512104 7C002800 */ cmpw        r0, r5
/* 80512108 A098000E */ lhz         r4, 0xe(r24)
/* 8051210C 40800014 */ bge-        lbl_80512120
/* 80512110 1C000018 */ mulli       r0, r0, 0x18
/* 80512114 7C7E0214 */ add         r3, r30, r0
/* 80512118 80630038 */ lwz         r3, 0x38(r3)
/* 8051211C 48000008 */ b           lbl_80512124
lbl_80512120:
/* 80512120 38600000 */ li          r3, 0
lbl_80512124:
/* 80512124 A003001A */ lhz         r0, 0x1a(r3)
/* 80512128 7C040040 */ cmplw       r4, r0
/* 8051212C 418201D4 */ beq-        lbl_80512300
/* 80512130 5720043E */ clrlwi      r0, r25, 0x10
/* 80512134 7C002800 */ cmpw        r0, r5
/* 80512138 40800014 */ bge-        lbl_8051214c
/* 8051213C 1C000018 */ mulli       r0, r0, 0x18
/* 80512140 7C7E0214 */ add         r3, r30, r0
/* 80512144 80630038 */ lwz         r3, 0x38(r3)
/* 80512148 48000008 */ b           lbl_80512150
lbl_8051214c:
/* 8051214C 38600000 */ li          r3, 0
lbl_80512150:
/* 80512150 A083001A */ lhz         r4, 0x1a(r3)
/* 80512154 A0180004 */ lhz         r0, 4(r24)
/* 80512158 C3DFF8D0 */ lfs         f30, lbl_8088f8d0@l(r31)
/* 8051215C 7C040040 */ cmplw       r4, r0
/* 80512160 40800014 */ bge-        lbl_80512174
/* 80512164 80780000 */ lwz         r3, 0(r24)
/* 80512168 548013BA */ rlwinm      r0, r4, 2, 0xe, 0x1d
/* 8051216C 7F83002E */ lwzx        r28, r3, r0
/* 80512170 48000008 */ b           lbl_80512178
lbl_80512174:
/* 80512174 3B800000 */ li          r28, 0
lbl_80512178:
/* 80512178 3BA00000 */ li          r29, 0
/* 8051217C 4800015C */ b           lbl_805122d8
lbl_80512180:
/* 80512180 57A0043E */ clrlwi      r0, r29, 0x10
/* 80512184 7C002800 */ cmpw        r0, r5
/* 80512188 40800014 */ bge-        lbl_8051219c
/* 8051218C 1C000018 */ mulli       r0, r0, 0x18
/* 80512190 7C7C0214 */ add         r3, r28, r0
/* 80512194 C003004C */ lfs         f0, 0x4c(r3)
/* 80512198 48000008 */ b           lbl_805121a0
lbl_8051219c:
/* 8051219C C01FF8D0 */ lfs         f0, lbl_8088f8d0@l(r31)
lbl_805121a0:
/* 805121A0 57A0043E */ clrlwi      r0, r29, 0x10
/* 805121A4 EFDE002A */ fadds       f30, f30, f0
/* 805121A8 7C002800 */ cmpw        r0, r5
/* 805121AC A098000E */ lhz         r4, 0xe(r24)
/* 805121B0 40800014 */ bge-        lbl_805121c4
/* 805121B4 1C000018 */ mulli       r0, r0, 0x18
/* 805121B8 7C7C0214 */ add         r3, r28, r0
/* 805121BC 80630038 */ lwz         r3, 0x38(r3)
/* 805121C0 48000008 */ b           lbl_805121c8
lbl_805121c4:
/* 805121C4 38600000 */ li          r3, 0
lbl_805121c8:
/* 805121C8 A003001A */ lhz         r0, 0x1a(r3)
/* 805121CC 7C040040 */ cmplw       r4, r0
/* 805121D0 41820104 */ beq-        lbl_805122d4
/* 805121D4 57A0043E */ clrlwi      r0, r29, 0x10
/* 805121D8 7C002800 */ cmpw        r0, r5
/* 805121DC 40800014 */ bge-        lbl_805121f0
/* 805121E0 1C000018 */ mulli       r0, r0, 0x18
/* 805121E4 7C7C0214 */ add         r3, r28, r0
/* 805121E8 80630038 */ lwz         r3, 0x38(r3)
/* 805121EC 48000008 */ b           lbl_805121f4
lbl_805121f0:
/* 805121F0 38600000 */ li          r3, 0
lbl_805121f4:
/* 805121F4 A083001A */ lhz         r4, 0x1a(r3)
/* 805121F8 A0180004 */ lhz         r0, 4(r24)
/* 805121FC C3BFF8D0 */ lfs         f29, lbl_8088f8d0@l(r31)
/* 80512200 7C040040 */ cmplw       r4, r0
/* 80512204 40800014 */ bge-        lbl_80512218
/* 80512208 80780000 */ lwz         r3, 0(r24)
/* 8051220C 548013BA */ rlwinm      r0, r4, 2, 0xe, 0x1d
/* 80512210 7F43002E */ lwzx        r26, r3, r0
/* 80512214 48000008 */ b           lbl_8051221c
lbl_80512218:
/* 80512218 3B400000 */ li          r26, 0
lbl_8051221c:
/* 8051221C 3B600000 */ li          r27, 0
/* 80512220 4800008C */ b           lbl_805122ac
lbl_80512224:
/* 80512224 5760043E */ clrlwi      r0, r27, 0x10
/* 80512228 7C002800 */ cmpw        r0, r5
/* 8051222C 40800014 */ bge-        lbl_80512240
/* 80512230 1C000018 */ mulli       r0, r0, 0x18
/* 80512234 7C7A0214 */ add         r3, r26, r0
/* 80512238 C003004C */ lfs         f0, 0x4c(r3)
/* 8051223C 48000008 */ b           lbl_80512244
lbl_80512240:
/* 80512240 C01FF8D0 */ lfs         f0, lbl_8088f8d0@l(r31)
lbl_80512244:
/* 80512244 5760043E */ clrlwi      r0, r27, 0x10
/* 80512248 EFBD002A */ fadds       f29, f29, f0
/* 8051224C 7C002800 */ cmpw        r0, r5
/* 80512250 A098000E */ lhz         r4, 0xe(r24)
/* 80512254 40800014 */ bge-        lbl_80512268
/* 80512258 1C000018 */ mulli       r0, r0, 0x18
/* 8051225C 7C7A0214 */ add         r3, r26, r0
/* 80512260 80630038 */ lwz         r3, 0x38(r3)
/* 80512264 48000008 */ b           lbl_8051226c
lbl_80512268:
/* 80512268 38600000 */ li          r3, 0
lbl_8051226c:
/* 8051226C A003001A */ lhz         r0, 0x1a(r3)
/* 80512270 7C040040 */ cmplw       r4, r0
/* 80512274 41820034 */ beq-        lbl_805122a8
/* 80512278 5760043E */ clrlwi      r0, r27, 0x10
/* 8051227C 7F03C378 */ mr          r3, r24
/* 80512280 7C002800 */ cmpw        r0, r5
/* 80512284 40800014 */ bge-        lbl_80512298
/* 80512288 1C000018 */ mulli       r0, r0, 0x18
/* 8051228C 7C9A0214 */ add         r4, r26, r0
/* 80512290 80840038 */ lwz         r4, 0x38(r4)
/* 80512294 48000008 */ b           lbl_8051229c
lbl_80512298:
/* 80512298 38800000 */ li          r4, 0
lbl_8051229c:
/* 8051229C A084001A */ lhz         r4, 0x1a(r4)
/* 805122A0 4BFFFDC5 */ bl          unk_80512064
/* 805122A4 EFBD082A */ fadds       f29, f29, f1
lbl_805122a8:
/* 805122A8 3B7B0001 */ addi        r27, r27, 1
lbl_805122ac:
/* 805122AC A0BA0004 */ lhz         r5, 4(r26)
/* 805122B0 5760043E */ clrlwi      r0, r27, 0x10
/* 805122B4 7C002840 */ cmplw       r0, r5
/* 805122B8 4180FF6C */ blt+        lbl_80512224
/* 805122BC 90A1000C */ stw         r5, 0xc(r1)
/* 805122C0 92E10008 */ stw         r23, 8(r1)
/* 805122C4 C8010008 */ lfd         f0, 8(r1)
/* 805122C8 EC00F828 */ fsubs       f0, f0, f31
/* 805122CC EFBD0024 */ fdivs       f29, f29, f0
/* 805122D0 EFDEE82A */ fadds       f30, f30, f29
lbl_805122d4:
/* 805122D4 3BBD0001 */ addi        r29, r29, 1
lbl_805122d8:
/* 805122D8 A0BC0004 */ lhz         r5, 4(r28)
/* 805122DC 57A0043E */ clrlwi      r0, r29, 0x10
/* 805122E0 7C002840 */ cmplw       r0, r5
/* 805122E4 4180FE9C */ blt+        lbl_80512180
/* 805122E8 90A1000C */ stw         r5, 0xc(r1)
/* 805122EC 92E10008 */ stw         r23, 8(r1)
/* 805122F0 C8010008 */ lfd         f0, 8(r1)
/* 805122F4 EC00F828 */ fsubs       f0, f0, f31
/* 805122F8 EFDE0024 */ fdivs       f30, f30, f0
/* 805122FC EF9CF02A */ fadds       f28, f28, f30
lbl_80512300:
/* 80512300 3B390001 */ addi        r25, r25, 1
lbl_80512304:
/* 80512304 A0BE0004 */ lhz         r5, 4(r30)
/* 80512308 5720043E */ clrlwi      r0, r25, 0x10
/* 8051230C 7C002840 */ cmplw       r0, r5
/* 80512310 4180FDCC */ blt+        lbl_805120dc
/* 80512314 3C004330 */ lis         r0, 0x4330
/* 80512318 90A1000C */ stw         r5, 0xc(r1)
/* 8051231C 3C608089 */ lis         r3, lbl_8088f8e0@ha
/* 80512320 90010008 */ stw         r0, 8(r1)
/* 80512324 C823F8E0 */ lfd         f1, lbl_8088f8e0@l(r3)
/* 80512328 C8010008 */ lfd         f0, 8(r1)
/* 8051232C EC000828 */ fsubs       f0, f0, f1
/* 80512330 EF9C0024 */ fdivs       f28, f28, f0
/* 80512334 FC20E090 */ fmr         f1, f28
/* 80512338 E3E10078 */ psq_l       f31, 0x78(r1), 0, 0
/* 8051233C CBE10070 */ lfd         f31, 0x70(r1)
/* 80512340 E3C10068 */ psq_l       f30, 0x68(r1), 0, 0
/* 80512344 CBC10060 */ lfd         f30, 0x60(r1)
/* 80512348 E3A10058 */ psq_l       f29, 0x58(r1), 0, 0
/* 8051234C CBA10050 */ lfd         f29, 0x50(r1)
/* 80512350 E3810048 */ psq_l       f28, 0x48(r1), 0, 0
/* 80512354 CB810040 */ lfd         f28, 0x40(r1)
/* 80512358 39610040 */ addi        r11, r1, 0x40
/* 8051235C 4BB0F281 */ bl          _restgpr_23
/* 80512360 80010084 */ lwz         r0, 0x84(r1)
/* 80512364 7C0803A6 */ mtlr        r0
/* 80512368 38210080 */ addi        r1, r1, 0x80
/* 8051236C 4E800020 */ blr         