nofralloc
/* 80590C6C 80630000 */ lwz         r3, 0(r3)
/* 80590C70 80630008 */ lwz         r3, 8(r3)
/* 80590C74 80630090 */ lwz         r3, 0x90(r3)
/* 80590C78 C00300A0 */ lfs         f0, 0xa0(r3)
/* 80590C7C D0040000 */ stfs        f0, 0(r4)
/* 80590C80 C00300B0 */ lfs         f0, 0xb0(r3)
/* 80590C84 D0040004 */ stfs        f0, 4(r4)
/* 80590C88 C00300C0 */ lfs         f0, 0xc0(r3)
/* 80590C8C D0040008 */ stfs        f0, 8(r4)
/* 80590C90 4E800020 */ blr         