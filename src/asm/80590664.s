nofralloc
/* 80590664 80630000 */ lwz         r3, 0(r3)
/* 80590668 80630004 */ lwz         r3, 4(r3)
/* 8059066C 80030014 */ lwz         r0, 0x14(r3)
/* 80590670 540307FE */ clrlwi      r3, r0, 0x1f
/* 80590674 4E800020 */ blr         