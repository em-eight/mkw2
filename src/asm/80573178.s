nofralloc
/* 80573178 80630004 */ lwz         r3, 4(r3)
/* 8057317C 80630004 */ lwz         r3, 4(r3)
/* 80573180 8003000C */ lwz         r0, 0xc(r3)
/* 80573184 54008FFE */ rlwinm      r0, r0, 0x11, 0x1f, 0x1f
/* 80573188 7C6000D0 */ neg         r3, r0
/* 8057318C 4E800020 */ blr         