nofralloc
/* 80582F7C 38000000 */ li          r0, 0
/* 80582F80 B0030148 */ sth         r0, 0x148(r3)
/* 80582F84 80630000 */ lwz         r3, 0(r3)
/* 80582F88 80630004 */ lwz         r3, 4(r3)
/* 80582F8C 80030008 */ lwz         r0, 8(r3)
/* 80582F90 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 80582F94 90030008 */ stw         r0, 8(r3)
/* 80582F98 4E800020 */ blr         