nofralloc
/* 80573190 80830004 */ lwz         r4, 4(r3)
/* 80573194 3860FFFF */ li          r3, -1
/* 80573198 80840004 */ lwz         r4, 4(r4)
/* 8057319C 8004000C */ lwz         r0, 0xc(r4)
/* 805731A0 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 805731A4 4C820020 */ bnelr-      
/* 805731A8 38600002 */ li          r3, 2
/* 805731AC 4E800020 */ blr         