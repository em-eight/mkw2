nofralloc
/* 80590734 80630000 */ lwz         r3, 0(r3)
/* 80590738 5480103A */ slwi        r0, r4, 2
/* 8059073C 80630010 */ lwz         r3, 0x10(r3)
/* 80590740 7C63002E */ lwzx        r3, r3, r0
/* 80590744 80630098 */ lwz         r3, 0x98(r3)
/* 80590748 4E800020 */ blr         