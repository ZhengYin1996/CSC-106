#Zheng yin
#V00915216
#CSC106
#Assign2
.pos 0x100
                 ld   $t,   r1				# r1 = address of t
                 ld   $array, r3			# r3 = address of array
				 ld		(r3), r3
				 ld   $0,     r5			# r5 = 0
				 ld		$1,		r6			# r6 = 1
                 ld  (r3,r5,4), r2			# r2 = array[0]
				 st		r2,	(r1)			# t = r2
				 ld		(r3,r6,4),	r4		# r4 = array[1]
				 st		r4,		(r3,r5,4)	# array[0] = r4 = array[1]
				 st		r2,		(r3,r6,4)	# array[1] = r2 = t
        halt

.pos 0x1000
t:			.long 0xf           # a = 15
array:      .long 0x2000        # b = 0x2000


.pos 0x2000
array_data:	.long 0x00000005			# array[0] = 5
            .long 0x0000000a			# array[1] = 10