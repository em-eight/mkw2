nofralloc
/* 80631A58 2C030058 */ cmpwi       r3, 0x58
/* 80631A5C 4080002C */ bge-        lbl_80631a88
/* 80631A60 2C030048 */ cmpwi       r3, 0x48
/* 80631A64 40800018 */ bge-        lbl_80631a7c
/* 80631A68 2C030010 */ cmpwi       r3, 0x10
/* 80631A6C 4080004C */ bge-        lbl_80631ab8
/* 80631A70 2C030000 */ cmpwi       r3, 0
/* 80631A74 4080003C */ bge-        lbl_80631ab0
/* 80631A78 48000078 */ b           lbl_80631af0
lbl_80631a7c:
/* 80631A7C 2C030055 */ cmpwi       r3, 0x55
/* 80631A80 40800048 */ bge-        lbl_80631ac8
/* 80631A84 4800003C */ b           lbl_80631ac0
lbl_80631a88:
/* 80631A88 2C030068 */ cmpwi       r3, 0x68
/* 80631A8C 40800018 */ bge-        lbl_80631aa4
/* 80631A90 2C03005E */ cmpwi       r3, 0x5e
/* 80631A94 4080004C */ bge-        lbl_80631ae0
/* 80631A98 2C03005A */ cmpwi       r3, 0x5a
/* 80631A9C 4080003C */ bge-        lbl_80631ad8
/* 80631AA0 48000030 */ b           lbl_80631ad0
lbl_80631aa4:
/* 80631AA4 2C030095 */ cmpwi       r3, 0x95
/* 80631AA8 40800048 */ bge-        lbl_80631af0
/* 80631AAC 4800003C */ b           lbl_80631ae8
lbl_80631ab0:
/* 80631AB0 38600000 */ li          r3, 0
/* 80631AB4 4E800020 */ blr         
lbl_80631ab8:
/* 80631AB8 38600000 */ li          r3, 0
/* 80631ABC 4E800020 */ blr         
lbl_80631ac0:
/* 80631AC0 38600001 */ li          r3, 1
/* 80631AC4 4E800020 */ blr         
lbl_80631ac8:
/* 80631AC8 38600000 */ li          r3, 0
/* 80631ACC 4E800020 */ blr         
lbl_80631ad0:
/* 80631AD0 38600001 */ li          r3, 1
/* 80631AD4 4E800020 */ blr         
lbl_80631ad8:
/* 80631AD8 38600000 */ li          r3, 0
/* 80631ADC 4E800020 */ blr         
lbl_80631ae0:
/* 80631AE0 38600001 */ li          r3, 1
/* 80631AE4 4E800020 */ blr         
lbl_80631ae8:
/* 80631AE8 38600000 */ li          r3, 0
/* 80631AEC 4E800020 */ blr         
lbl_80631af0:
/* 80631AF0 38600000 */ li          r3, 0
/* 80631AF4 4E800020 */ blr         