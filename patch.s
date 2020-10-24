.arm.little

.open "code_orig.bin","code.bin",0x100000


.org 0x23DC2c
	cmp		r4,#0xB
	cmpne	r4,#0xC
	
.org 0x23DC78
	cmp		r4,#0xB
	
.org 0x23DC84
	cmp		r4,#0xBC
	
	
.org 0x2891a0
	b		landMini
	
.org 0x289330
	mov		r1,#0xE7 ;Changes the Custom Screen mini portrait index for gunners

.org 0x34dd28
	mov	r2,#0x1a ; Controls background index of Guild creation

.org 0x2BCC64
	.word 0x6590 ; Controls background index of Guild creation

.org 0x2BC530 
	mov r1,#0xB ; Controls how many Names and slots to draw
	

	
.org 0x2bc6ac
	cmp		r4,#0xB
	cmpne	r4,#0xC


.org 0x36a7ec
	cmp		r4,#0xB
	cmpne	r4,#0xC
	
.org 0x36aa04 ;
	.word 0x3FB ; Draws a bigger table and has select blocks in correct place	

.org 0x36a720 ; Y value of when they start drawing class names
	movne	r8,#0x8

.org 0x23DCA4 ;Gunner and Highlander ID check always return false now
	mov		r0,#1
	bx lr
landMini:
	mov		r1,#0x97
	add		r0,r1,r4
	pop		{r4,PC}
	
.Close
