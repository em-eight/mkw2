nofralloc
/* 80524A58 A0030094 */ lhz         r0, 0x94(r3)
/* 80524A5C B0040004 */ sth         r0, 4(r4)
/* 80524A60 A0030096 */ lhz         r0, 0x96(r3)
/* 80524A64 B0040006 */ sth         r0, 6(r4)
/* 80524A68 C0030098 */ lfs         f0, 0x98(r3)
/* 80524A6C D0040008 */ stfs        f0, 8(r4)
/* 80524A70 C003009C */ lfs         f0, 0x9c(r3)
/* 80524A74 D004000C */ stfs        f0, 0xc(r4)
/* 80524A78 880300A0 */ lbz         r0, 0xa0(r3)
/* 80524A7C 98040010 */ stb         r0, 0x10(r4)
/* 80524A80 880300A1 */ lbz         r0, 0xa1(r3)
/* 80524A84 98040011 */ stb         r0, 0x11(r4)
/* 80524A88 880300A2 */ lbz         r0, 0xa2(r3)
/* 80524A8C 98040012 */ stb         r0, 0x12(r4)
/* 80524A90 880300A3 */ lbz         r0, 0xa3(r3)
/* 80524A94 98040013 */ stb         r0, 0x13(r4)
/* 80524A98 880300A4 */ lbz         r0, 0xa4(r3)
/* 80524A9C 60000080 */ ori         r0, r0, 0x80
/* 80524AA0 98040014 */ stb         r0, 0x14(r4)
/* 80524AA4 4E800020 */ blr         