nofralloc
/* 80590650 80630000 */ lwz         r3, 0(r3)
/* 80590654 80630004 */ lwz         r3, 4(r3)
/* 80590658 80030014 */ lwz         r0, 0x14(r3)
/* 8059065C 5403FFFE */ rlwinm      r3, r0, 0x1f, 0x1f, 0x1f
/* 80590660 4E800020 */ blr         