nofralloc
/* 8059074C 80630000 */ lwz         r3, 0(r3)
/* 80590750 5480103A */ slwi        r0, r4, 2
/* 80590754 80630010 */ lwz         r3, 0x10(r3)
/* 80590758 7C63002E */ lwzx        r3, r3, r0
/* 8059075C 80630098 */ lwz         r3, 0x98(r3)
/* 80590760 4E800020 */ blr         