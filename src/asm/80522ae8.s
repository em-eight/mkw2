nofralloc
/* 80522AE8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80522AEC 7C0802A6 */ mflr        r0
/* 80522AF0 90010024 */ stw         r0, 0x24(r1)
/* 80522AF4 93E1001C */ stw         r31, 0x1c(r1)
/* 80522AF8 7C9F2378 */ mr          r31, r4
/* 80522AFC 93C10018 */ stw         r30, 0x18(r1)
/* 80522B00 7C7E1B78 */ mr          r30, r3
/* 80522B04 93A10014 */ stw         r29, 0x14(r1)
/* 80522B08 93810010 */ stw         r28, 0x10(r1)
/* 80522B0C 80030014 */ lwz         r0, 0x14(r3)
/* 80522B10 2C000000 */ cmpwi       r0, 0
/* 80522B14 40820128 */ bne-        lbl_80522c3c
/* 80522B18 83A30008 */ lwz         r29, 8(r3)
/* 80522B1C 3B800000 */ li          r28, 0
/* 80522B20 2C1D0000 */ cmpwi       r29, 0
/* 80522B24 40800014 */ bge-        lbl_80522b38
/* 80522B28 38000000 */ li          r0, 0
/* 80522B2C 90030008 */ stw         r0, 8(r3)
/* 80522B30 3B800001 */ li          r28, 1
/* 80522B34 4800008C */ b           lbl_80522bc0
lbl_80522b38:
/* 80522B38 4080000C */ bge-        lbl_80522b44
/* 80522B3C 38800000 */ li          r4, 0
/* 80522B40 48000020 */ b           lbl_80522b60
lbl_80522b44:
/* 80522B44 81830000 */ lwz         r12, 0(r3)
/* 80522B48 818C0010 */ lwz         r12, 0x10(r12)
/* 80522B4C 7D8903A6 */ mtctr       r12
/* 80522B50 4E800421 */ bctrl       
/* 80522B54 7C7D19D6 */ mullw       r3, r29, r3
/* 80522B58 801E0004 */ lwz         r0, 4(r30)
/* 80522B5C 7C801A14 */ add         r4, r0, r3
lbl_80522b60:
/* 80522B60 819E0000 */ lwz         r12, 0(r30)
/* 80522B64 7FC3F378 */ mr          r3, r30
/* 80522B68 7FE5FB78 */ mr          r5, r31
/* 80522B6C 818C001C */ lwz         r12, 0x1c(r12)
/* 80522B70 7D8903A6 */ mtctr       r12
/* 80522B74 4E800421 */ bctrl       
/* 80522B78 2C030000 */ cmpwi       r3, 0
/* 80522B7C 41820044 */ beq-        lbl_80522bc0
/* 80522B80 809E0008 */ lwz         r4, 8(r30)
/* 80522B84 7FC3F378 */ mr          r3, r30
/* 80522B88 3B800001 */ li          r28, 1
/* 80522B8C 38040001 */ addi        r0, r4, 1
/* 80522B90 901E0008 */ stw         r0, 8(r30)
/* 80522B94 819E0000 */ lwz         r12, 0(r30)
/* 80522B98 818C0010 */ lwz         r12, 0x10(r12)
/* 80522B9C 7D8903A6 */ mtctr       r12
/* 80522BA0 4E800421 */ bctrl       
/* 80522BA4 809E0008 */ lwz         r4, 8(r30)
/* 80522BA8 801E000C */ lwz         r0, 0xc(r30)
/* 80522BAC 7C6419D6 */ mullw       r3, r4, r3
/* 80522BB0 7C030040 */ cmplw       r3, r0
/* 80522BB4 4081000C */ ble-        lbl_80522bc0
/* 80522BB8 38000002 */ li          r0, 2
/* 80522BBC 901E0014 */ stw         r0, 0x14(r30)
lbl_80522bc0:
/* 80522BC0 801E0014 */ lwz         r0, 0x14(r30)
/* 80522BC4 2C000000 */ cmpwi       r0, 0
/* 80522BC8 40820074 */ bne-        lbl_80522c3c
/* 80522BCC 83BE0008 */ lwz         r29, 8(r30)
/* 80522BD0 2C1D0000 */ cmpwi       r29, 0
/* 80522BD4 4080000C */ bge-        lbl_80522be0
/* 80522BD8 3BA00000 */ li          r29, 0
/* 80522BDC 48000024 */ b           lbl_80522c00
lbl_80522be0:
/* 80522BE0 819E0000 */ lwz         r12, 0(r30)
/* 80522BE4 7FC3F378 */ mr          r3, r30
/* 80522BE8 818C0010 */ lwz         r12, 0x10(r12)
/* 80522BEC 7D8903A6 */ mtctr       r12
/* 80522BF0 4E800421 */ bctrl       
/* 80522BF4 7C7D19D6 */ mullw       r3, r29, r3
/* 80522BF8 801E0004 */ lwz         r0, 4(r30)
/* 80522BFC 7FA01A14 */ add         r29, r0, r3
lbl_80522c00:
/* 80522C00 2C1C0000 */ cmpwi       r28, 0
/* 80522C04 41820020 */ beq-        lbl_80522c24
/* 80522C08 819E0000 */ lwz         r12, 0(r30)
/* 80522C0C 7FC3F378 */ mr          r3, r30
/* 80522C10 7FA4EB78 */ mr          r4, r29
/* 80522C14 7FE5FB78 */ mr          r5, r31
/* 80522C18 818C0014 */ lwz         r12, 0x14(r12)
/* 80522C1C 7D8903A6 */ mtctr       r12
/* 80522C20 4E800421 */ bctrl       
lbl_80522c24:
/* 80522C24 819E0000 */ lwz         r12, 0(r30)
/* 80522C28 7FC3F378 */ mr          r3, r30
/* 80522C2C 7FA4EB78 */ mr          r4, r29
/* 80522C30 818C0018 */ lwz         r12, 0x18(r12)
/* 80522C34 7D8903A6 */ mtctr       r12
/* 80522C38 4E800421 */ bctrl       
lbl_80522c3c:
/* 80522C3C 80010024 */ lwz         r0, 0x24(r1)
/* 80522C40 83E1001C */ lwz         r31, 0x1c(r1)
/* 80522C44 83C10018 */ lwz         r30, 0x18(r1)
/* 80522C48 83A10014 */ lwz         r29, 0x14(r1)
/* 80522C4C 83810010 */ lwz         r28, 0x10(r1)
/* 80522C50 7C0803A6 */ mtlr        r0
/* 80522C54 38210020 */ addi        r1, r1, 0x20
/* 80522C58 4E800020 */ blr         