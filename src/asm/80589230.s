nofralloc
/* 80589230 80A30010 */ lwz         r5, 0x10(r3)
/* 80589234 38A50001 */ addi        r5, r5, 1
/* 80589238 90A30010 */ stw         r5, 0x10(r3)
/* 8058923C 7C042850 */ subf        r0, r4, r5
/* 80589240 7CA32338 */ orc         r3, r5, r4
/* 80589244 5400F87E */ srwi        r0, r0, 1
/* 80589248 7C001850 */ subf        r0, r0, r3
/* 8058924C 54030FFE */ srwi        r3, r0, 0x1f
/* 80589250 4E800020 */ blr         