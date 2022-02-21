.pos 0x100
                 ld   $2,   r0            # r0 = 2
                 ld   $a,   r1            # r1 = address of a
                 st   r0,  (r1)           # a = value in r0 (2)
                 ld   (r1), r2            # r2 = value at address of a
                 ld   $b, r3              # r3 = address of b
                 ld   (r3), r3            # r3 = value of b = address of b[0]
                 st   r2, (r3, r2, 4)     # b[a] = a
                 halt                     # halt
.pos 0x1000
a:               .long 0x4                # a = 4
b:               .long 0x2000             # b = address of b[0]
.pos 0x2000
b_data:          .long 0xffffffff         # b[0] = -1
                 .long 0xffffffff         # b[1] = -1
                 .long 0xffffffff         # b[2] = -1
                 .long 0xffffffff         # b[3] = -1
                 .long 0xffffffff         # b[4] = -1
                 .long 0xffffffff         # b[5] = -1
                 .long 0xffffffff         # b[6] = -1
                 .long 0xffffffff         # b[7] = -1
                 .long 0xffffffff         # b[8] = -1
                 .long 0xffffffff         # b[9] = -1
