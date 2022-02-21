#Zheng yin
#V00915216
#CSC106
#Assign2
.pos 0x100
                 ld   $a,   r1            
                 ld   (r1), r2            
                 ld   $b,   r3              
                 ld   (r3), r4            
                 ld   $1,   r5
				 add  r5,   r4
				 ld   $4,   r5
				 add  r5,   r4
				 shr  $1,   r4
				 ld   (r3), r6 
				 and  r6,	r4
				 shl  $1,   r4
				 st   r4,   (r1)
                 halt                     
.pos 0x1000
a:				.long 0x4
b:				.long 0x20