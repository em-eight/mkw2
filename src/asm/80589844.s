nofralloc
/* 80589844 80630000 */ lwz         r3, 0(r3)
/* 80589848 80630004 */ lwz         r3, 4(r3)
/* 8058984C 80030008 */ lwz         r0, 8(r3)
/* 80589850 64000004 */ oris        r0, r0, 4
/* 80589854 90030008 */ stw         r0, 8(r3)
/* 80589858 4E800020 */ blr         