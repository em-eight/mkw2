nofralloc
/* 80632080 2C030068 */ cmpwi       r3, 0x68
/* 80632084 40800050 */ bge-        lbl_806320d4
/* 80632088 2C03000F */ cmpwi       r3, 0xf
/* 8063208C 418200B0 */ beq-        lbl_8063213c
/* 80632090 4080001C */ bge-        lbl_806320ac
/* 80632094 2C03000D */ cmpwi       r3, 0xd
/* 80632098 41820094 */ beq-        lbl_8063212c
/* 8063209C 40800098 */ bge-        lbl_80632134
/* 806320A0 2C030000 */ cmpwi       r3, 0
/* 806320A4 40800080 */ bge-        lbl_80632124
/* 806320A8 48000104 */ b           lbl_806321ac
lbl_806320ac:
/* 806320AC 2C030032 */ cmpwi       r3, 0x32
/* 806320B0 40800018 */ bge-        lbl_806320c8
/* 806320B4 2C03001E */ cmpwi       r3, 0x1e
/* 806320B8 4080009C */ bge-        lbl_80632154
/* 806320BC 2C030019 */ cmpwi       r3, 0x19
/* 806320C0 4080008C */ bge-        lbl_8063214c
/* 806320C4 48000080 */ b           lbl_80632144
lbl_806320c8:
/* 806320C8 2C03003B */ cmpwi       r3, 0x3b
/* 806320CC 40800098 */ bge-        lbl_80632164
/* 806320D0 4800008C */ b           lbl_8063215c
lbl_806320d4:
/* 806320D4 2C030078 */ cmpwi       r3, 0x78
/* 806320D8 4080002C */ bge-        lbl_80632104
/* 806320DC 2C03006E */ cmpwi       r3, 0x6e
/* 806320E0 40800018 */ bge-        lbl_806320f8
/* 806320E4 2C03006C */ cmpwi       r3, 0x6c
/* 806320E8 40800094 */ bge-        lbl_8063217c
/* 806320EC 2C03006A */ cmpwi       r3, 0x6a
/* 806320F0 40800084 */ bge-        lbl_80632174
/* 806320F4 48000078 */ b           lbl_8063216c
lbl_806320f8:
/* 806320F8 2C030070 */ cmpwi       r3, 0x70
/* 806320FC 40800090 */ bge-        lbl_8063218c
/* 80632100 48000084 */ b           lbl_80632184
lbl_80632104:
/* 80632104 2C0300AD */ cmpwi       r3, 0xad
/* 80632108 40800010 */ bge-        lbl_80632118
/* 8063210C 2C030095 */ cmpwi       r3, 0x95
/* 80632110 4080008C */ bge-        lbl_8063219c
/* 80632114 48000080 */ b           lbl_80632194
lbl_80632118:
/* 80632118 2C0300B3 */ cmpwi       r3, 0xb3
/* 8063211C 40800090 */ bge-        lbl_806321ac
/* 80632120 48000084 */ b           lbl_806321a4
lbl_80632124:
/* 80632124 38600000 */ li          r3, 0
/* 80632128 4E800020 */ blr         
lbl_8063212c:
/* 8063212C 38600001 */ li          r3, 1
/* 80632130 4E800020 */ blr         
lbl_80632134:
/* 80632134 38600000 */ li          r3, 0
/* 80632138 4E800020 */ blr         
lbl_8063213c:
/* 8063213C 38600001 */ li          r3, 1
/* 80632140 4E800020 */ blr         
lbl_80632144:
/* 80632144 38600000 */ li          r3, 0
/* 80632148 4E800020 */ blr         
lbl_8063214c:
/* 8063214C 38600002 */ li          r3, 2
/* 80632150 4E800020 */ blr         
lbl_80632154:
/* 80632154 38600003 */ li          r3, 3
/* 80632158 4E800020 */ blr         
lbl_8063215c:
/* 8063215C 38600001 */ li          r3, 1
/* 80632160 4E800020 */ blr         
lbl_80632164:
/* 80632164 38600000 */ li          r3, 0
/* 80632168 4E800020 */ blr         
lbl_8063216c:
/* 8063216C 38600003 */ li          r3, 3
/* 80632170 4E800020 */ blr         
lbl_80632174:
/* 80632174 38600001 */ li          r3, 1
/* 80632178 4E800020 */ blr         
lbl_8063217c:
/* 8063217C 38600003 */ li          r3, 3
/* 80632180 4E800020 */ blr         
lbl_80632184:
/* 80632184 38600001 */ li          r3, 1
/* 80632188 4E800020 */ blr         
lbl_8063218c:
/* 8063218C 38600003 */ li          r3, 3
/* 80632190 4E800020 */ blr         
lbl_80632194:
/* 80632194 38600000 */ li          r3, 0
/* 80632198 4E800020 */ blr         
lbl_8063219c:
/* 8063219C 38600000 */ li          r3, 0
/* 806321A0 4E800020 */ blr         
lbl_806321a4:
/* 806321A4 38600000 */ li          r3, 0
/* 806321A8 4E800020 */ blr         
lbl_806321ac:
/* 806321AC 38600000 */ li          r3, 0
/* 806321B0 4E800020 */ blr         