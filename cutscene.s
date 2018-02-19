	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"cutscene.c"
	.text
	.align	2
	.global	initCutscene
	.type	initCutscene, %function
initCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	stmfd	sp!, {r4, lr}
	ldr	r2, .L3
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L3+4
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	1027
	.word	fillScreen3
	.size	initCutscene, .-initCutscene
	.align	2
	.global	drawEnter
	.type	drawEnter, %function
drawEnter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L11
	mov	lr, pc
	bx	r3
	ldr	r2, .L11+4
	ldr	r3, .L11+8
	ldr	r1, [r2]
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	rsb	r3, r2, r3, asr #3
	add	r3, r3, r3, lsl #2
	sub	r3, r1, r3, asl #2
	cmp	r3, #9
	ldr	r4, .L11+12
	movgt	r3, #0
	ldrle	r3, .L11+16
	ldr	r2, .L11+20
	mov	r1, #174
	mov	r0, #153
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	waitForVBlank
	.word	enterSeed
	.word	1717986919
	.word	drawString
	.word	32767
	.word	.LC0
	.size	drawEnter, .-drawEnter
	.align	2
	.global	drawCSTextCenter
	.type	drawCSTextCenter, %function
drawCSTextCenter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	ldr	r3, .L15
	sub	sp, sp, #12
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r2, #8
	str	r1, [sp]
	mov	r3, #240
	mov	r0, #76
	ldr	r5, .L15+4
	mov	lr, pc
	bx	r5
	mov	r0, r4
	ldr	r3, .L15+8
	mov	lr, pc
	bx	r3
	add	r0, r0, r0, lsl #1
	bic	r1, r0, #-2147483648
	mov	r2, r4
	rsb	r1, r1, #120
	ldr	r3, .L15+12
	mov	r0, #76
	ldr	r4, .L15+16
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	b	drawEnter
.L16:
	.align	2
.L15:
	.word	waitForVBlank
	.word	drawRect3
	.word	strlen
	.word	32767
	.word	drawString
	.size	drawCSTextCenter, .-drawCSTextCenter
	.align	2
	.global	drawCutscene
	.type	drawCutscene, %function
drawCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L66
	ldr	r3, [r2]
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L66+4
	add	r3, r3, #1
	ldr	r1, .L66+8
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	ldr	r3, [r4]
	cmp	r3, #0
	ldreq	r0, .L66+12
	beq	.L57
	cmp	r3, #1
	ldreq	r0, .L66+16
	beq	.L57
	cmp	r3, #2
	beq	.L62
	cmp	r3, #3
	beq	.L63
	cmp	r3, #4
	beq	.L64
	cmp	r3, #5
	ldreq	r0, .L66+20
	beq	.L57
	cmp	r3, #6
	ldreq	r0, .L66+24
	beq	.L57
	cmp	r3, #7
	ldreq	r0, .L66+28
	beq	.L57
	cmp	r3, #8
	beq	.L65
.L17:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L65:
	ldr	r0, .L66+32
.L57:
	bl	drawCSTextCenter
	ldr	r3, .L66+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L17
.L50:
	ldr	r3, .L66+40
	ldrh	r3, [r3]
	tst	r3, #8
	ldreq	r3, [r4]
	addeq	r3, r3, #1
	streq	r3, [r4]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L63:
	mov	r3, #0
	ldr	r2, .L66+44
	mov	r1, #186
	mov	r0, #72
	ldr	r5, .L66+48
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L66+52
	mov	r1, #168
	mov	r0, #80
	mov	lr, pc
	bx	r5
	bl	drawEnter
	ldr	r3, .L66+36
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L50
	b	.L17
.L62:
	ldr	r3, .L66+56
	ldr	r0, .L66+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	b	.L17
.L64:
	ldr	r3, .L66+64
	mov	r0, #0
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	b	.L17
.L67:
	.align	2
.L66:
	.word	enterSeed
	.word	textSeed
	.word	waitForVBlank
	.word	.LC1
	.word	.LC2
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	oldButtons
	.word	buttons
	.word	.LC3
	.word	drawString
	.word	.LC4
	.word	drawFullscreenImage3
	.word	ghostBitmap
	.word	fillScreen3
	.size	drawCutscene, .-drawCutscene
	.comm	enterSeed,4,4
	.comm	textSeed,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Press Start\000"
.LC1:
	.ascii	"Where am I?\000"
.LC2:
	.ascii	"Am I dead?\000"
	.space	1
.LC3:
	.ascii	"Oh no\000"
	.space	2
.LC4:
	.ascii	"I'm a ghost!\000"
	.space	3
.LC5:
	.ascii	"My stomach doesn't feel good.\000"
	.space	2
.LC6:
	.ascii	"I need to poop!\000"
.LC7:
	.ascii	"I'll need toilet paper too!\000"
.LC8:
	.ascii	"Help me get to the light!\000"
	.ident	"GCC: (devkitARM release 45) 5.3.0"
