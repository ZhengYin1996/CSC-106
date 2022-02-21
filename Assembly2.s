.pos 0x100
                 ld   $a,   r1            
                 ld   (r1), r2
				 shr	$1,	r2
				 st		r2,	(r1)            
				
                 halt                     
.pos 0x1000
a:				.long 0x4
b:				.long 0x20