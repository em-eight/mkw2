nofralloc
/* 8057DA18 80830000 */ lwz         r4, 0(r3)
/* 8057DA1C 38600000 */ li          r3, 0
/* 8057DA20 38A00000 */ li          r5, 0
/* 8057DA24 80840004 */ lwz         r4, 4(r4)
/* 8057DA28 80C40004 */ lwz         r6, 4(r4)
/* 8057DA2C 54C00631 */ rlwinm.     r0, r6, 0, 0x18, 0x18
/* 8057DA30 41820010 */ beq-        lbl_8057da40
/* 8057DA34 54C0035B */ rlwinm.     r0, r6, 0, 0xd, 0xd
/* 8057DA38 41820008 */ beq-        lbl_8057da40
/* 8057DA3C 38A00001 */ li          r5, 1
lbl_8057da40:
/* 8057DA40 2C050000 */ cmpwi       r5, 0
/* 8057DA44 4D820020 */ beqlr-      
/* 8057DA48 80040008 */ lwz         r0, 8(r4)
/* 8057DA4C 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057DA50 4C820020 */ bnelr-      
/* 8057DA54 38600001 */ li          r3, 1
/* 8057DA58 4E800020 */ blr         