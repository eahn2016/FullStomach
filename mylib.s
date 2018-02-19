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
	.file	"mylib.c"
	.text
	.align	2
	.global	setPixel3
	.type	setPixel3, %function
setPixel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	mov	r1, r1, asl #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	setPixel3, .-setPixel3
	.align	2
	.global	setPixel4
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	rsb	r0, r0, r0, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	ip, [r3]
	add	r0, r0, r0, lsr #31
	bic	r0, r0, #1
	ldrh	r3, [ip, r0]
	tst	r1, #1
	andne	r3, r3, #255
	andeq	r3, r3, #65280
	orrne	r2, r3, r2, asl #8
	orreq	r2, r3, r2
	strh	r2, [ip, r0]	@ movhi
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect3
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	stmfd	sp!, {r4, r5, lr}
	mov	r4, #0
	ldr	r5, .L17
	add	r2, r0, r2
	rsb	r2, r2, r2, lsl #4
	ldr	ip, [r5]
	rsb	r0, r0, r0, lsl #4
	add	lr, r1, r2, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r2, [r5, #4]
	orr	r3, r3, #-2130706432
	add	lr, ip, lr, lsl #1
	add	r1, ip, r1, lsl #1
.L12:
	add	r0, sp, #12
	str	r4, [r2, #44]
	str	r0, [r2, #36]
	str	r1, [r2, #40]
	add	r1, r1, #480
	cmp	lr, r1
	str	r3, [r2, #44]
	bne	.L12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawRect4
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	ldrb	ip, [sp, #72]	@ zero_extendqisi2
	ldrb	lr, [sp, #72]	@ zero_extendqisi2
	subs	fp, r2, #0
	orr	ip, ip, lr, asl #8
	strh	ip, [sp, #30]	@ movhi
	ble	.L19
	ldr	r2, .L38
	mov	r7, r3, asr #1
	rsb	r0, r0, r0, lsl #4
	ldr	r4, [r2]
	ldr	r2, [r2, #4]
	mov	r0, r0, asl #4
	add	lr, r1, #1
	sub	r10, r7, #1
	str	r2, [sp, #20]
	mov	r5, r0
	add	r2, r1, r0
	add	r6, r3, r3, lsr #31
	add	r0, lr, r0
	orr	lr, r10, #-2130706432
	add	r9, r1, r3
	mov	r6, r6, asr #1
	str	lr, [sp, #16]
	orr	lr, r7, #-2130706432
	sub	r9, r9, #1
	str	lr, [sp, #8]
	orr	lr, r6, #-2130706432
	sub	r8, r3, #1
	str	lr, [sp, #12]
	and	lr, r9, #1
	str	lr, [sp, #4]
	add	lr, r8, r1
	str	lr, [sp]
	mov	ip, #0
	and	r1, r1, #1
	and	r8, r3, #1
	add	r9, sp, #30
	ldr	lr, [sp, #20]
	b	.L31
.L37:
	add	r6, r2, r2, lsr #31
	bic	r6, r6, #1
	cmp	r8, #0
	ldrb	r7, [r4, r6]	@ zero_extendqisi2
	ldrb	r10, [sp, #72]	@ zero_extendqisi2
	beq	.L22
	orr	r7, r7, r10, asl #8
	cmp	r3, #1
	strh	r7, [r4, r6]	@ movhi
	ble	.L23
	mov	r7, #0
	add	r6, r0, r0, lsr #31
	bic	r6, r6, #1
	add	r6, r4, r6
	str	r7, [lr, #44]
	str	r9, [lr, #36]
	str	r6, [lr, #40]
	ldr	r6, [sp, #8]
	str	r6, [lr, #44]
.L23:
	add	ip, ip, #1
	cmp	fp, ip
	add	r2, r2, #240
	add	r0, r0, #240
	add	r5, r5, #240
	beq	.L19
.L31:
	cmp	r1, #0
	bne	.L37
	cmp	r8, #0
	beq	.L27
	cmp	r3, #1
	ble	.L28
	add	r6, r2, r2, lsr #31
	bic	r6, r6, #1
	add	r6, r4, r6
	str	r1, [lr, #44]
	str	r9, [lr, #36]
	str	r6, [lr, #40]
	ldr	r6, [sp, #8]
	str	r6, [lr, #44]
.L28:
	ldr	r6, [sp]
	add	r6, r6, r5
	ldr	r10, [sp, #4]
	add	r6, r6, r6, lsr #31
	bic	r6, r6, #1
	cmp	r10, #0
	ldrb	r7, [sp, #72]	@ zero_extendqisi2
	ldrh	r10, [r4, r6]
	and	r7, r7, #255
	andne	r10, r10, #255
	andeq	r10, r10, #65280
	orrne	r10, r10, r7, asl #8
	orreq	r10, r10, r7
	strh	r10, [r4, r6]	@ movhi
	b	.L23
.L27:
	add	r6, r2, r2, lsr #31
	bic	r6, r6, #1
	add	r6, r4, r6
	str	r8, [lr, #44]
	str	r9, [lr, #36]
	str	r6, [lr, #40]
	ldr	r6, [sp, #12]
	str	r6, [lr, #44]
	b	.L23
.L22:
	orr	r7, r7, r10, asl #8
	cmp	r3, #2
	strh	r7, [r4, r6]	@ movhi
	ble	.L28
	add	r6, r0, r0, lsr #31
	bic	r6, r6, #1
	add	r6, r4, r6
	str	r8, [lr, #44]
	str	r9, [lr, #36]
	str	r6, [lr, #40]
	ldr	r6, [sp, #16]
	str	r6, [lr, #44]
	b	.L28
.L19:
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen3
	.type	fillScreen3, %function
fillScreen3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	sub	sp, sp, #8
	ldr	r1, .L42
	add	r2, sp, #8
	strh	r0, [r2, #-2]!	@ movhi
	ldmia	r1, {r0, r3}
	ldr	r1, .L42+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.word	-2130668032
	.size	fillScreen3, .-fillScreen3
	.align	2
	.global	fillScreen4
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	sub	sp, sp, #16
	strb	r0, [sp, #7]
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	ldr	r1, .L46
	add	r2, sp, #16
	orr	r3, r3, r0, asl #8
	strh	r3, [r2, #-2]!	@ movhi
	ldmia	r1, {r0, r3}
	ldr	r1, .L46+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
	.word	-2130687232
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage3
	.type	drawImage3, %function
drawImage3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, #0
	ldr	r6, .L55
	add	r2, r0, r2
	rsb	r2, r2, r2, lsl #4
	rsb	r0, r0, r0, lsl #4
	ldr	ip, [r6]
	add	r4, r1, r2, lsl #4
	ldr	lr, [sp, #16]
	add	r1, r1, r0, lsl #4
	ldr	r2, [r6, #4]
	orr	r0, r3, #-2147483648
	add	r4, ip, r4, lsl #1
	add	r1, ip, r1, lsl #1
	mov	r3, r3, asl #1
.L50:
	str	r5, [r2, #44]
	str	lr, [r2, #36]
	str	r1, [r2, #40]
	add	r1, r1, #480
	cmp	r4, r1
	str	r0, [r2, #44]
	add	lr, lr, r3
	bne	.L50
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	.LANCHOR0
	.size	drawImage3, .-drawImage3
	.align	2
	.global	drawImage4
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	cmp	r2, #0
	ldr	r6, [sp, #24]
	ble	.L57
	mov	lr, #0
	mov	r8, lr
	ldr	ip, .L63
	add	r5, r0, r2
	add	r2, r3, r3, lsr #31
	rsb	r0, r0, r0, lsl #4
	rsb	r5, r5, r5, lsl #4
	mov	r2, r2, asr #1
	ldr	r7, [ip]
	ldr	r4, [ip, #4]
	add	r5, r1, r5, lsl #4
	add	r1, r1, r0, lsl #4
	orr	r0, r2, #-2147483648
.L59:
	add	ip, lr, lr, lsr #31
	add	r2, r1, r1, lsr #31
	bic	ip, ip, #1
	bic	r2, r2, #1
	add	r1, r1, #240
	add	ip, r6, ip
	add	r2, r7, r2
	cmp	r5, r1
	str	r8, [r4, #44]
	add	lr, lr, r3
	str	ip, [r4, #36]
	str	r2, [r4, #40]
	str	r0, [r4, #44]
	bne	.L59
.L57:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage3
	.type	drawFullscreenImage3, %function
drawFullscreenImage3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L66
	ldr	r1, .L66+4
	ldmia	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.word	-2147445248
	.size	drawFullscreenImage3, .-drawFullscreenImage3
	.align	2
	.global	drawFullscreenImage4
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L69
	ldr	r1, .L69+4
	ldmia	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.word	-2147464448
	.size	drawFullscreenImage4, .-drawFullscreenImage4
	.align	2
	.global	waitForVBlank
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L72:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L72
	mov	r2, #67108864
.L74:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L74
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	flipPage
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r3, [r3]
	tst	r3, #16
	moveq	r1, #100663296
	ldrne	r2, .L80
	ldreq	r2, .L80
	ldrne	r1, .L80+4
	str	r1, [r2]
	mov	r2, #67108864
	eor	r3, r3, #16
	strh	r3, [r2]	@ movhi
	bx	lr
.L81:
	.align	2
.L80:
	.word	.LANCHOR0
	.word	100704256
	.size	flipPage, .-flipPage
	.align	2
	.global	loadPalette
	.type	loadPalette, %function
loadPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	mov	r1, #83886080
	ldr	r3, .L83
	ldr	r2, .L83+4
	ldr	r3, [r3, #4]
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	bx	lr
.L84:
	.align	2
.L83:
	.word	.LANCHOR0
	.word	-2147483392
	.size	loadPalette, .-loadPalette
	.align	2
	.global	DMANow
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #0
	ldr	ip, .L87
	add	r0, r0, r0, lsl #1
	ldr	lr, [ip, #4]
	mov	r0, r0, asl #2
	add	ip, lr, r0
	orr	r3, r3, #-2147483648
	str	r4, [ip, #8]
	str	r1, [lr, r0]
	str	r2, [ip, #4]
	ldmfd	sp!, {r4, lr}
	str	r3, [ip, #8]
	bx	lr
.L88:
	.align	2
.L87:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
	.align	2
	.global	collision
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #4]
	ldr	ip, [sp, #12]
	add	ip, lr, ip
	sub	ip, ip, #1
	cmp	ip, r0
	ble	.L93
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	lr, r0
	blt	.L95
.L93:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L95:
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #16]
	add	r2, r2, r0
	sub	r2, r2, #1
	cmp	r2, r1
	ble	.L93
	add	r0, r1, r3
	ldr	r3, [sp, #8]
	sub	r0, r0, #1
	cmp	r3, r0
	movge	r0, #0
	movlt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	hideSprites
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	mov	r1, #512
	ldr	r2, .L99
.L97:
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L97
	bx	lr
.L100:
	.align	2
.L99:
	.word	shadowOAM
	.size	hideSprites, .-hideSprites
	.global	dma
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.ident	"GCC: (devkitARM release 45) 5.3.0"
