nofralloc
/* 80594704 80030008 */ lwz         r0, 8(r3)
/* 80594708 3C808089 */ lis         r4, lbl_80891ef0@ha
/* 8059470C C0041EF0 */ lfs         f0, lbl_80891ef0@l(r4)
/* 80594710 3CE0FE80 */ lis         r7, 0xfe80
/* 80594714 54060524 */ rlwinm      r6, r0, 0, 0x14, 0x12
/* 80594718 3CA03FC0 */ lis         r5, 0x3fc0
/* 8059471C 81030004 */ lwz         r8, 4(r3)
/* 80594720 38E79C78 */ addi        r7, r7, -0x6388
/* 80594724 3805EFFF */ addi        r0, r5, -0x1001
/* 80594728 8083000C */ lwz         r4, 0xc(r3)
/* 8059472C 7D053838 */ and         r5, r8, r7
/* 80594730 90A30004 */ stw         r5, 4(r3)
/* 80594734 7C800038 */ and         r0, r4, r0
/* 80594738 90C30008 */ stw         r6, 8(r3)
/* 8059473C 9003000C */ stw         r0, 0xc(r3)
/* 80594740 D003008C */ stfs        f0, 0x8c(r3)
/* 80594744 D0030088 */ stfs        f0, 0x88(r3)
/* 80594748 4E800020 */ blr         