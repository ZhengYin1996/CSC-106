#Zheng yin
#V00915216
#CSC106
#Assign2
.pos 0x100
                 ld   $a,   r1            # r1 = address of a
                 ld   (r1), r2            # r2 = value at address of a
                 ld   $b, r3              # r3 = address of b
                 ld   (r3), r4            # r3 = value of b = address of b[0]
                 add  r4,   r2
				 st   r2,  (r1)
                 halt                     # halt
.pos 0x1000
a:				.long 0x4
b:				.long 0x20