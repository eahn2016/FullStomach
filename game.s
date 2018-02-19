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
	.file	"game.c"
	.text
	.align	2
	.type	drawEnemy.part.3, %function
drawEnemy.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r1, r0, #32
	ldmia	r1, {r1, r3}
	ldr	r2, [r0, #12]
	add	r3, r3, r1, lsl #5
	ldr	r1, [r0, #44]
	ldr	ip, .L3
	mov	r3, r3, asl #1
	mov	r2, r2, asl #23
	str	lr, [sp, #-4]!
	mov	r1, r1, asl #3
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	add	r3, r3, #13
	mov	r2, r2, lsr #23
	add	r0, ip, r1
	orr	r3, r3, #12288
	orr	r2, r2, #16384
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	shadowOAM
	.size	drawEnemy.part.3, .-drawEnemy.part.3
	.align	2
	.type	drawShooter.part.5, %function
drawShooter.part.5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #276
	ldr	r2, .L7
	ldr	r3, [r2, #28]
	ldrb	r1, [r2, #12]	@ zero_extendqisi2
	ldr	ip, .L7+4
	ldr	r2, [r2, #8]
	mov	r3, r3, asl #3
	add	r0, ip, r3
	orr	r1, r1, #16384
	bic	r2, r2, #65024
	strh	r1, [ip, r3]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	shooter
	.word	shadowOAM
	.size	drawShooter.part.5, .-drawShooter.part.5
	.align	2
	.type	drawBullet.part.6, %function
drawBullet.part.6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L11
	ldr	r3, [r1, #28]
	ldr	r2, [r1, #12]
	ldr	r0, .L11+4
	str	lr, [sp, #-4]!
	mov	r3, r3, asl #3
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	ldr	ip, .L11+8
	add	r1, r0, r3
	bic	r2, r2, #65024
	strh	lr, [r0, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	bullet
	.word	shadowOAM
	.word	278
	.size	drawBullet.part.6, .-drawBullet.part.6
	.align	2
	.type	drawButtons.part.7, %function
drawButtons.part.7:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #36]
	ldr	r2, [r0, #28]
	add	r3, r3, #8
	ldr	r1, [r0, #20]
	ldr	ip, .L15
	mov	r3, r3, asl #5
	str	lr, [sp, #-4]!
	mov	r2, r2, asl #3
	ldrb	lr, [r0, #16]	@ zero_extendqisi2
	add	r3, r3, #26
	add	r0, ip, r2
	orr	r3, r3, #28672
	bic	r1, r1, #65024
	strh	lr, [ip, r2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	shadowOAM
	.size	drawButtons.part.7, .-drawButtons.part.7
	.align	2
	.type	drawThoughts.part.8, %function
drawThoughts.part.8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r1, r0, #28
	ldmia	r1, {r1, r3}
	ldr	r2, [r0, #20]
	ldr	ip, .L19
	mov	r2, r2, asl #23
	mov	r3, r3, asl #6
	str	lr, [sp, #-4]!
	mov	r1, r1, asl #3
	ldrb	lr, [r0, #16]	@ zero_extendqisi2
	mov	r2, r2, lsr #23
	add	r3, r3, #280
	add	r0, ip, r1
	orr	r2, r2, #16384
	orr	r3, r3, #28672
	strh	lr, [ip, r1]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L20:
	.align	2
.L19:
	.word	shadowOAM
	.size	drawThoughts.part.8, .-drawThoughts.part.8
	.align	2
	.type	drawRock.part.9, %function
drawRock.part.9:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L23
	ldrb	r3, [r1, #32]	@ zero_extendqisi2
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r1, #24]
	ldr	ip, .L23+4
	ldr	r1, [r1, #36]
	str	lr, [sp, #-4]!
	mov	r2, r2, asl #3
	ldr	lr, .L23+8
	add	r0, ip, r2
	bic	r1, r1, #65024
	strh	r3, [ip, r2]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L24:
	.align	2
.L23:
	.word	rock
	.word	shadowOAM
	.word	24884
	.size	drawRock.part.9, .-drawRock.part.9
	.align	2
	.type	drawBossHealth.part.11, %function
drawBossHealth.part.11:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L27
	ldr	r0, .L27+4
	ldr	r3, [r3]
	ldr	r2, [r0, #16]
	ldr	r1, [r0, #28]
	rsb	r3, r3, #13
	str	lr, [sp, #-4]!
	ldrb	r0, [r0, #20]	@ zero_extendqisi2
	ldr	lr, .L27+8
	mov	r3, r3, asl #5
	mov	r2, r2, asl #23
	mov	r1, r1, asl #3
	add	r3, r3, #28
	mov	r2, r2, lsr #23
	add	ip, lr, r1
	orr	r3, r3, #28672
	orr	r0, r0, #16384
	orr	r2, r2, #16384
	strh	r0, [lr, r1]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L28:
	.align	2
.L27:
	.word	bosslives
	.word	bHealth
	.word	shadowOAM
	.size	drawBossHealth.part.11, .-drawBossHealth.part.11
	.align	2
	.type	drawTP.part.12, %function
drawTP.part.12:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L31
	add	r1, r0, #24
	ldmia	r1, {r1, r3}
	ldr	r2, [r0, #12]
	ldr	ip, .L31+4
	mov	r2, r2, asl #23
	mov	r3, r3, asl #6
	str	lr, [sp, #-4]!
	mov	r1, r1, asl #3
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	mov	r2, r2, lsr #23
	add	r3, r3, #520
	add	r0, ip, r1
	orr	r2, r2, #16384
	orr	r3, r3, #8192
	strh	lr, [ip, r1]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	tp
	.word	shadowOAM
	.size	drawTP.part.12, .-drawTP.part.12
	.align	2
	.global	initPlayer
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	ip, #111
	mov	r7, #31
	mov	r6, #22
	mov	r5, #4
	mov	r4, #30
	mov	lr, #64
	mov	r0, #20
	mov	r1, #1
	ldr	r3, .L35
	str	r7, [r3, #16]
	str	r6, [r3, #20]
	str	r5, [r3, #40]
	str	r4, [r3, #52]
	str	lr, [r3, #56]
	str	ip, [r3]
	str	ip, [r3, #8]
	str	r0, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L43
	ldr	r3, [r2, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	ldr	ip, [r2, #64]
	ldr	r1, .L43+4
	ldr	r0, [r2]
	cmp	ip, #0
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	beq	.L42
	ldr	r3, [r2, #44]
	cmp	r3, #0
	moveq	r3, #516
	ldrne	r2, [r2, #36]
	addne	r3, r3, r2, lsl #5
	addne	r3, r3, #34
	movne	r3, r3, asl #2
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L42:
	ldr	r0, [r2, #36]
	ldr	r3, [r2, #44]
	add	r3, r3, r0, lsl #5
	mov	r3, r3, asl #2
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L44:
	.align	2
.L43:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	shootPoop
	.type	shootPoop, %function
shootPoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L53
	mov	r3, #0
	mov	r2, r0
.L48:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L52
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bne	.L48
	bx	lr
.L52:
	stmfd	sp!, {r4, r5, lr}
	mov	r4, #1
	ldr	lr, .L53+4
	ldr	r2, [lr, #20]
	add	r1, lr, #12
	ldmia	r1, {r1, r5}
	ldr	ip, [lr, #8]
	add	r3, r3, r3, lsl #3
	add	r2, r2, r2, lsr #31
	add	ip, ip, r5
	add	r2, r1, r2, asr r4
	mov	r3, r3, asl #2
	sub	r1, ip, #5
	sub	r2, r2, #4
	add	ip, r0, r3
	str	r4, [ip, #28]
	str	r1, [r0, r3]
	str	r2, [ip, #4]
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	poops
	.word	player
	.size	shootPoop, .-shootPoop
	.align	2
	.global	initPoop
	.type	initPoop, %function
initPoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #2
	str	lr, [sp, #-4]!
	mov	ip, r2
	mov	lr, #5
	mov	r0, #7
	mov	r1, #0
	ldr	r3, .L59
.L56:
	str	r2, [r3, #32]
	add	r2, r2, #1
	cmp	r2, #7
	str	lr, [r3, #24]
	str	r0, [r3, #20]
	str	ip, [r3, #16]
	str	r1, [r3, #28]
	add	r3, r3, #36
	bne	.L56
	ldr	lr, [sp], #4
	bx	lr
.L60:
	.align	2
.L59:
	.word	poops
	.size	initPoop, .-initPoop
	.align	2
	.global	updatePoop
	.type	updatePoop, %function
updatePoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #28]
	cmp	r3, #0
	str	lr, [sp, #-4]!
	beq	.L85
	ldr	r3, [r0]
	cmp	r3, #137
	ble	.L86
	mov	r1, #0
	ldr	r2, [r0, #4]
	str	r1, [r0, #28]
.L63:
	ldr	ip, .L87
	ldr	r1, .L87+4
	ldr	ip, [ip]
	ldr	r1, [r1]
	rsb	r2, ip, r2
	rsb	r3, r1, r3
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	ldr	lr, [sp], #4
	bx	lr
.L86:
	ldr	r2, .L87+8
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L65
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #4]
	add	r1, r3, r1
	mov	r1, r1, asl #9
	add	ip, r1, r2
	ldr	lr, .L87+12
	mov	ip, ip, asl #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L68
.L84:
	ldr	ip, [r0, #20]
	add	r1, r1, ip
	add	r1, r1, r2
	add	r1, lr, r1, lsl #1
	ldrh	r1, [r1, #-2]
	cmp	r1, #0
	beq	.L68
	ldr	r1, [r0, #16]
	add	r3, r3, r1
	str	r3, [r0]
	b	.L63
.L85:
	ldr	r2, [r0, #4]
	ldr	r3, [r0]
	b	.L63
.L65:
	cmp	r2, #1
	ldrne	r2, [r0, #4]
	bne	.L63
.L67:
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #4]
	add	r1, r3, r1
	mov	r1, r1, asl #9
	add	ip, r1, r2
	ldr	lr, .L87+16
	mov	ip, ip, asl #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	bne	.L84
.L68:
	mov	r1, #0
	str	r1, [r0, #28]
	b	.L63
.L88:
	.align	2
.L87:
	.word	hOff
	.word	vOff
	.word	level
	.word	GameBG0CollisionMapBitmap
	.word	GameBG1CollisionMapBitmap
	.size	updatePoop, .-updatePoop
	.align	2
	.global	drawPoop
	.type	drawPoop, %function
drawPoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L94
	mov	r1, #512
	ldr	r3, [r0, #32]
	ldr	r2, .L95
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L94:
	ldr	r3, [r0, #32]
	ldr	r1, .L95
	add	ip, r0, #8
	str	lr, [sp, #-4]!
	mov	r3, r3, asl #3
	ldmia	ip, {ip, lr}
	ldr	r0, .L95+4
	add	r2, r1, r3
	strh	lr, [r1, r3]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L96:
	.align	2
.L95:
	.word	shadowOAM
	.word	4108
	.size	drawPoop, .-drawPoop
	.align	2
	.global	initPortal
	.type	initPortal, %function
initPortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	r0, #32
	mov	ip, #4
	ldr	r3, .L107
	ldr	r1, [r3]
	ldr	r3, .L107+4
	cmp	r1, r2
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, #112
	mov	lr, #7
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #28]
	mov	r0, #0
	str	r2, [r3, #32]
	moveq	r2, #1
	str	ip, [r3, #36]
	mov	r7, #112
	mov	ip, #32
	mov	r6, #8
	mov	r5, #4
	str	r4, [r3, #8]
	str	lr, [r3, #24]
	ldr	r4, [r3, #40]
	ldr	r8, [r3, #84]
	ldr	lr, [r3, #12]
	moveq	r8, r1
	moveq	r4, r2
	ldreq	lr, .L107+8
	cmp	r1, r0
	str	r7, [r3, #52]
	str	ip, [r3, #60]
	str	ip, [r3, #64]
	str	r6, [r3, #68]
	str	r0, [r3, #72]
	str	r0, [r3, #76]
	str	r5, [r3, #80]
	beq	.L102
	cmp	r2, r0
	movne	r1, r8
	bne	.L99
.L97:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L102:
	mov	r4, #1
	ldr	lr, .L107+8
.L99:
	str	r4, [r3, #40]
	str	r1, [r3, #84]
	str	lr, [r3, #12]
	b	.L97
.L108:
	.align	2
.L107:
	.word	level
	.word	portal
	.word	309
	.size	initPortal, .-initPortal
	.global	__aeabi_idivmod
	.align	2
	.global	updatePortal
	.type	updatePortal, %function
updatePortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L115
	ldr	r3, [r3]
	cmp	r3, #1
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	beq	.L114
.L110:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	ldr	r5, [r4, #28]
	beq	.L112
	ldr	r3, .L115+4
	smull	r1, r2, r3, r5
	mov	r3, r5, asr #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, asl #2
	bne	.L112
	ldr	r0, [r4, #32]
	ldr	r3, .L115+8
	add	r0, r0, #1
	ldr	r1, [r4, #36]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #32]
.L112:
	ldr	r2, .L115+12
	ldr	r3, .L115+16
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	add	r5, r5, #1
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r5, [r4, #28]
	str	r2, [r4, #4]
	str	r3, [r4]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L114:
	mov	r0, #0
	mov	r1, #488
	ldr	r2, .L115+20
	str	r0, [r2, #40]
	str	r3, [r2, #84]
	str	r1, [r2, #56]
	b	.L110
.L116:
	.align	2
.L115:
	.word	level
	.word	1717986919
	.word	__aeabi_idivmod
	.word	hOff
	.word	vOff
	.word	portal
	.size	updatePortal, .-updatePortal
	.align	2
	.global	drawPortal
	.type	drawPortal, %function
drawPortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #40]
	cmp	r3, #0
	bne	.L122
	mov	r1, #512
	ldr	r3, [r0, #24]
	ldr	r2, .L123
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L122:
	ldr	r2, [r0, #4]
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	ldr	r3, [r0, #32]
	ldr	r1, [r0, #24]
	ldr	ip, .L123
	add	r3, r3, #4
	str	lr, [sp, #-4]!
	mov	r1, r1, asl #3
	ldr	lr, [r0]
	mov	r3, r3, asl #7
	add	r0, ip, r1
	orr	r3, r3, #8192
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L124:
	.align	2
.L123:
	.word	shadowOAM
	.size	drawPortal, .-drawPortal
	.align	2
	.global	initEnemy
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L131
	mov	r6, #9
	mov	r5, r4
	mov	fp, r4
	mov	r10, #50
	ldr	r9, .L131+4
	ldr	r8, .L131+8
.L127:
	mov	r0, #206
	mov	r7, #13
	mov	lr, #15
	str	r7, [r5, #20]
	str	lr, [r5, #24]
	str	r0, [r4, #56]
	mov	r0, #215
	str	r0, [r4, #108]
	mov	r0, #240
	str	r0, [r4, #160]
	mov	r0, #250
	mov	ip, #105
	mov	r2, #130
	str	r0, [r4, #212]
	mov	r0, #260
	mov	r1, #416
	mov	r3, #0
	str	ip, [r4, #4]
	str	r0, [r4, #264]
	add	ip, ip, #280
	add	r0, r0, r2
	str	r9, [r4, #316]
	str	r8, [r4, #368]
	str	r9, [r4, #524]
	str	r8, [r4, #576]
	str	r1, [r4, #472]
	str	ip, [r4, #420]
	str	r0, [r4, #628]
.L126:
	str	r2, [r4, r3]
	add	r3, r3, #52
	cmp	r3, #520
	bne	.L126
	mov	r3, #1
	mov	r7, #0
	str	r10, [fp, #520]
	str	r10, [fp, #572]
	str	r10, [fp, #624]
	str	r3, [r5, #28]
	str	r3, [r5, #16]
	str	r7, [r5, #32]
	ldr	r3, .L131+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L131+16
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	str	r6, [r5, #44]
	add	r3, r3, r3, lsl #1
	add	r6, r6, #1
	rsb	r3, r3, r0
	cmp	r6, #22
	str	r7, [r5, #40]
	str	r7, [r5, #48]
	str	r3, [r5, #36]
	add	r5, r5, #52
	bne	.L127
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L132:
	.align	2
.L131:
	.word	enemies
	.word	350
	.word	370
	.word	rand
	.word	1431655766
	.size	initEnemy, .-initEnemy
	.align	2
	.global	updateEnemy
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	sub	sp, sp, #16
	mov	r5, r0
	beq	.L161
	ldr	r2, [r0, #40]
	ldr	r3, .L212
	smull	r1, r3, r2, r3
	mov	r1, r2, asr #31
	rsb	r3, r1, r3, asr #4
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, asl #3
	cmp	r3, #19
	movle	r3, #0
	movgt	r3, #1
	ldr	r4, [r0, #48]
	tst	r4, #1
	str	r3, [r0, #32]
	beq	.L206
.L138:
	mov	r8, #0
	ldr	r4, .L212+4
	ldr	r7, .L212+8
	add	r6, r4, #180
.L155:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L207
.L159:
	add	r4, r4, #36
	cmp	r6, r4
	bne	.L155
.L161:
	ldr	r2, .L212+12
	ldr	r3, .L212+16
	ldr	lr, [r2]
	ldr	ip, [r3]
	ldr	r2, [r5, #48]
	ldr	r3, [r5, #40]
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	rsb	r0, lr, r0
	rsb	r1, ip, r1
	add	r2, r2, #1
	add	r3, r3, #1
	str	r0, [r5, #12]
	str	r1, [r5, #8]
	str	r2, [r5, #48]
	str	r3, [r5, #40]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L207:
	ldr	lr, [r4, #20]
	add	r2, r5, #20
	ldr	ip, [r4, #24]
	ldmia	r2, {r2, r3}
	ldmia	r5, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	strne	r8, [r4, #28]
	strne	r8, [r5, #28]
	b	.L159
.L206:
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bne	.L139
	ldr	r3, .L212
	smull	ip, r0, r3, r4
	mov	r3, r4, asr #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	sub	r4, r4, r3, asl #1
	cmp	r4, #2
	bgt	.L138
	ldr	r3, .L212+20
	smull	r0, r3, r2, r3
	rsb	r1, r1, r3, asr #5
	add	r1, r1, r1, lsl #2
	add	r1, r1, r1, lsl #2
	sub	r1, r2, r1, asl #2
	cmp	r1, #19
	movle	r3, #1
	strle	r3, [r5, #36]
	ble	.L138
	sub	r1, r1, #21
	cmp	r1, #18
	bhi	.L138
.L149:
	mov	r3, #2
	str	r3, [r5, #36]
	b	.L138
.L139:
	cmp	r3, #1
	beq	.L208
	cmp	r3, #2
	bne	.L138
	ldr	r3, .L212+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L152
	ldr	r0, [r0, #4]
	ldr	r2, [r5, #16]
	ldr	r3, [r5]
	rsb	r2, r2, r0
	add	r1, r2, r3, lsl #9
	ldr	ip, .L212+28
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	beq	.L153
	ldr	r1, [r5, #20]
	add	r3, r3, r1
	sub	r3, r3, #1
	add	r3, r2, r3, lsl #9
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L153
	sub	r3, r0, #308
	sub	r3, r3, #2
	cmp	r3, #30
	bls	.L147
.L204:
	str	r2, [r5, #4]
.L147:
	ldr	r3, .L212+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L212
	smull	r1, r2, r3, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, lsl #2
	sub	r1, r0, r3, asl #3
	add	r1, r1, #20
	mov	r0, r4
	ldr	r3, .L212+36
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L138
.L148:
	mov	r3, #0
	str	r3, [r5, #36]
	b	.L138
.L208:
	ldr	r3, .L212+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L143
	ldr	r0, [r0, #4]
	ldr	r3, [r5, #24]
	ldr	r1, [r5]
	add	r3, r0, r3
	add	r2, r3, #1
	add	r2, r2, r1, lsl #9
	ldr	ip, .L212+28
	mov	r2, r2, asl #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L144
	ldr	r2, [r5, #20]
	ldr	lr, [r5, #16]
	add	r2, r1, r2
	sub	r2, r2, #1
	add	r3, r3, lr
	add	r3, r3, r2, lsl #9
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L144
	cmp	r1, #50
	beq	.L209
.L145:
	add	r0, r0, lr
	str	r0, [r5, #4]
	b	.L147
.L143:
	cmp	r3, #1
	bne	.L138
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #24]
	ldr	ip, [r0]
	add	r3, r2, r3
	add	r1, r3, #1
	add	r1, r1, ip, lsl #9
	ldr	lr, .L212+40
	mov	r1, r1, asl #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	beq	.L144
	ldr	r0, [r0, #20]
	ldr	r1, [r5, #16]
	add	r0, ip, r0
	sub	r0, r0, #1
	add	r3, r3, r1
	add	r3, r3, r0, lsl #9
	mov	r3, r3, asl #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	beq	.L144
	cmp	ip, #67
	beq	.L210
	cmp	ip, #130
	bne	.L147
.L205:
	add	r2, r2, r1
	str	r2, [r5, #4]
	b	.L147
.L144:
	ldr	r3, .L212+32
	mov	lr, pc
	bx	r3
	tst	r0, #1
	beq	.L148
	b	.L149
.L152:
	cmp	r3, #1
	bne	.L138
	ldr	r0, [r0, #4]
	ldr	r2, [r5, #16]
	ldr	r1, [r5]
	rsb	r2, r2, r0
	add	r3, r2, r1, lsl #9
	ldr	ip, .L212+40
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L153
	ldr	r3, [r5, #20]
	add	r3, r1, r3
	sub	r3, r3, #1
	add	r3, r2, r3, lsl #9
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L153
	cmp	r1, #67
	beq	.L211
	cmp	r1, #130
	bne	.L147
	b	.L204
.L153:
	ldr	r3, .L212+32
	mov	lr, pc
	bx	r3
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r0, r3, r0, lsr #31
	str	r0, [r5, #36]
	b	.L138
.L209:
	ldr	r3, .L212+44
	cmp	r0, r3
	moveq	r3, #2
	streq	r3, [r5, #36]
	beq	.L147
	bgt	.L147
	b	.L145
.L210:
	cmp	r2, #161
	bgt	.L147
	b	.L205
.L211:
	cmp	r0, #143
	ble	.L147
	b	.L204
.L213:
	.align	2
.L212:
	.word	1717986919
	.word	poops
	.word	collision
	.word	hOff
	.word	vOff
	.word	1374389535
	.word	level
	.word	GameBG0CollisionMapBitmap
	.word	rand
	.word	__aeabi_idivmod
	.word	GameBG1CollisionMapBitmap
	.word	445
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	drawEnemy
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #28]
	cmp	r2, #0
	bne	.L216
	mov	r1, #512
	ldr	r3, [r0, #44]
	ldr	r2, .L217
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L216:
	b	drawEnemy.part.3
.L218:
	.align	2
.L217:
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	initBoss
	.type	initBoss, %function
initBoss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #69
	mov	r3, #0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	ip, #17
	mov	lr, #19
	mov	r0, #27
	mov	r1, #2
	ldr	r4, .L221
	ldr	r5, .L221+4
	str	r2, [r4]
	ldr	r2, .L221+8
	str	r3, [r4, #32]
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	str	r3, [r4, #36]
	str	r5, [r4, #4]
	str	lr, [r4, #16]
	str	ip, [r4, #20]
	str	r0, [r4, #40]
	str	r1, [r4, #44]
	mov	lr, pc
	bx	r2
	ldr	r3, .L221+12
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	rsb	r3, r3, r0
	str	r3, [r4, #48]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L222:
	.align	2
.L221:
	.word	boss
	.word	455
	.word	rand
	.word	1431655766
	.size	initBoss, .-initBoss
	.align	2
	.global	updateBoss
	.type	updateBoss, %function
updateBoss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L231
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L229
	add	r3, r4, #32
	ldmia	r3, {r3, r5}
	cmp	r3, #1
	ldr	r3, .L231+4
	smull	r2, r3, r5, r3
	mov	r6, r5, asr #31
	rsb	r3, r6, r3, asr #3
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	beq	.L230
	cmp	r5, r3
	bne	.L227
	ldr	r0, [r4, #28]
	ldr	r3, .L231+8
	add	r0, r0, #1
	ldr	r1, [r4, #44]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #28]
.L227:
	ldr	r3, .L231+4
	smull	r2, r3, r5, r3
	rsb	r3, r6, r3, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, asl #2
	moveq	r3, #1
	streq	r3, [r4, #32]
.L225:
	ldr	r2, .L231+12
	ldr	r3, .L231+16
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	add	r5, r5, #1
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r5, [r4, #36]
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L229:
	ldr	r5, [r4, #36]
	b	.L225
.L230:
	subs	r7, r5, r3
	bne	.L227
	ldr	r0, [r4, #28]
	ldr	r3, .L231+8
	add	r0, r0, #1
	ldr	r1, [r4, #44]
	mov	lr, pc
	bx	r3
	str	r7, [r4, #32]
	str	r1, [r4, #28]
	b	.L227
.L232:
	.align	2
.L231:
	.word	boss
	.word	1374389535
	.word	__aeabi_idivmod
	.word	hOff
	.word	vOff
	.size	updateBoss, .-updateBoss
	.align	2
	.global	drawBoss
	.type	drawBoss, %function
drawBoss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L245
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L234
	ldr	r2, .L245+4
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L244
.L234:
	mov	r1, #512
	ldr	r3, [r3, #40]
	ldr	r2, .L245+8
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L244:
	ldr	r1, [r3, #12]
	mov	r1, r1, asl #23
	mvn	r1, r1, lsr #6
	mvn	r1, r1, lsr #17
	stmfd	sp!, {r4, lr}
	ldr	r2, [r3, #32]
	ldr	r0, [r3, #40]
	ldr	r4, [r3, #28]
	ldr	ip, .L245+8
	add	r2, r2, #5
	ldrb	lr, [r3, #8]	@ zero_extendqisi2
	mov	r0, r0, asl #3
	add	r3, r2, r4, lsl #5
	mov	r3, r3, asl #2
	add	r2, ip, r0
	strh	lr, [ip, r0]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L246:
	.align	2
.L245:
	.word	boss
	.word	bosslives
	.word	shadowOAM
	.size	drawBoss, .-drawBoss
	.align	2
	.global	initShooter
	.type	initShooter, %function
initShooter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	ip, #8
	mov	r4, #135
	mov	r0, #15
	mov	r1, #0
	ldr	r3, .L249
	ldr	r2, [r3, #40]
	ldr	lr, .L249+4
	ldr	r3, .L249+8
	add	r2, r2, #1
	stmia	r3, {r4, lr}
	str	r2, [r3, #28]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L250:
	.align	2
.L249:
	.word	boss
	.word	453
	.word	shooter
	.size	initShooter, .-initShooter
	.align	2
	.global	updateShooter
	.type	updateShooter, %function
updateShooter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L256
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L252
	ldr	r1, [r3, #36]
	ldr	r3, .L256+4
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r1, r3, asl #3
	moveq	r2, #1
	ldreq	r3, .L256+8
	streq	r2, [r3, #32]
.L252:
	ldr	r3, .L256+12
	ldr	r2, .L256+16
	ldr	r0, .L256+20
	ldr	ip, [r2]
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	ldr	r0, [r0]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L257:
	.align	2
.L256:
	.word	boss
	.word	1374389535
	.word	bullet
	.word	shooter
	.word	hOff
	.word	vOff
	.size	updateShooter, .-updateShooter
	.align	2
	.global	drawShooter
	.type	drawShooter, %function
drawShooter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L261
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L260
	mov	r1, #512
	ldr	r3, [r3, #28]
	ldr	r2, .L261+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L260:
	b	drawShooter.part.5
.L262:
	.align	2
.L261:
	.word	shooter
	.word	shadowOAM
	.size	drawShooter, .-drawShooter
	.align	2
	.global	initBullet
	.type	initBullet, %function
initBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	ip, #8
	mov	r5, #135
	mov	r4, #448
	mov	lr, #5
	mov	r0, #2
	mov	r1, #0
	ldr	r3, .L265
	ldr	r2, [r3, #28]
	ldr	r3, .L265+4
	add	r2, r2, #1
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #16]
	str	r2, [r3, #28]
	str	ip, [r3, #20]
	str	r0, [r3, #24]
	str	r1, [r3, #32]
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L266:
	.align	2
.L265:
	.word	shooter
	.word	bullet
	.size	initBullet, .-initBullet
	.align	2
	.global	updateBullet
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L278
	ldr	r2, [r3, #32]
	cmp	r2, #0
	str	lr, [sp, #-4]!
	beq	.L268
	ldr	r2, [r3, #4]
	cmp	r2, #231
	bgt	.L277
.L268:
	mov	ip, #135
	mov	r0, #448
	mov	lr, #0
	mov	r1, ip
	mov	r2, r0
	str	ip, [r3]
	str	r0, [r3, #4]
	str	lr, [r3, #32]
.L269:
	ldr	ip, .L278+4
	ldr	r0, .L278+8
	ldr	ip, [ip]
	ldr	r0, [r0]
	rsb	r2, ip, r2
	rsb	r1, r0, r1
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L277:
	ldr	r1, .L278+12
	ldr	r1, [r1]
	cmp	r1, #0
	beq	.L268
	ldr	r1, [r3, #24]
	rsb	r2, r1, r2
	str	r2, [r3, #4]
	ldr	r1, [r3]
	b	.L269
.L279:
	.align	2
.L278:
	.word	bullet
	.word	hOff
	.word	vOff
	.word	bosslives
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L283
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bne	.L282
	mov	r1, #512
	ldr	r3, [r3, #28]
	ldr	r2, .L283+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L282:
	b	drawBullet.part.6
.L284:
	.align	2
.L283:
	.word	bullet
	.word	shadowOAM
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initButtons
	.type	initButtons, %function
initButtons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	lr, .L289
	mov	r1, r2
	mov	r3, lr
	mov	r6, #4
	mov	r5, #8
	mov	r4, #140
	ldr	r0, .L289+4
	ldr	r0, [r0, #28]
	add	r0, r0, #1
.L286:
	str	r2, [r3, #36]
	add	ip, r0, r2
	add	r2, r2, #1
	cmp	r2, #3
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #8]
	str	r1, [r3, #24]
	str	r1, [r3, #32]
	str	ip, [r3, #28]
	add	r3, r3, #44
	bne	.L286
	mov	r1, #336
	mov	r2, #368
	mov	r3, #400
	str	r1, [lr, #12]
	str	r2, [lr, #56]
	str	r3, [lr, #100]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L290:
	.align	2
.L289:
	.word	bbuttons
	.word	bullet
	.size	initButtons, .-initButtons
	.align	2
	.global	initGame
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bl	initPlayer
	bl	initEnemy
	mov	r2, #2
	mov	lr, #5
	mov	ip, r2
	mov	r0, #7
	mov	r1, #0
	ldr	r3, .L303
.L292:
	str	r2, [r3, #32]
	add	r2, r2, #1
	cmp	r2, #7
	str	lr, [r3, #24]
	str	r0, [r3, #20]
	str	ip, [r3, #16]
	str	r1, [r3, #28]
	add	r3, r3, #36
	bne	.L292
	mov	r4, #152
	mov	r7, #48
	bl	initPortal
	mov	r6, #127
	mov	r5, #28
	ldr	ip, .L303+4
	mov	lr, r4
	mov	r2, ip
	mov	r1, #22
	mov	r3, #0
	ldr	r0, .L303+8
	stmia	r0, {r4, r7}
	str	r6, [r0, #8]
	str	r5, [r0, #12]
.L293:
	str	lr, [ip, r3, asl #1]
	str	r3, [r2, #4]
	add	r3, r3, #8
	add	r0, r1, #99
	cmp	r3, #48
	str	r1, [r2, #12]
	str	r0, [r2, #8]
	add	r1, r1, #1
	add	r2, r2, #16
	bne	.L293
	mov	r1, #22
	mov	ip, #152
	ldr	r2, .L303+12
.L294:
	add	r3, r1, #90
	str	r1, [r2, #12]
	mov	r0, r1, asl #3
	add	r1, r1, #1
	cmp	r1, #30
	stmib	r2, {r0, r3}
	str	ip, [r2]
	mov	r3, #152
	add	r2, r2, #20
	bne	.L294
	mov	r4, #0
	mov	fp, #176
	mov	r10, #111
	mov	r9, #31
	ldr	r2, .L303+16
	stmia	r2, {r3, fp}
	str	r10, [r2, #8]
	str	r9, [r2, #12]
	str	r4, [r2, #16]
	mov	r2, #23
	ldr	r3, .L303+20
	mov	r1, #1
	mov	lr, #114
	mov	r5, #15
	mov	r8, #11
	mov	r7, #264
	mov	r6, #4
	str	r2, [r3, #24]
	mov	r2, #24
	str	r8, [r3]
	str	r7, [r3, #20]
	str	r5, [r3, #4]
	str	lr, [r3, #16]
	str	r6, [r3, #32]
	str	r1, [r3, #36]
	str	r4, [r3, #28]
	str	r4, [r3, #40]
	ldr	r3, .L303+24
	str	r2, [r3, #8]
	mov	r2, #130
	str	r2, [r3, #20]
	mov	r2, #25
	str	r2, [r3, #24]
	ldr	r2, .L303+28
	str	r1, [r2, #8]
	str	r1, [r2, #24]
	str	r1, [r2, #40]
	mov	r1, #146
	str	r1, [r2, #4]
	mov	r1, #108
	str	r1, [r2, #12]
	mov	r1, #156
	str	r1, [r2, #20]
	mov	r1, #109
	str	r1, [r2, #28]
	mov	r1, #166
	mov	r0, #153
	mov	ip, #149
	str	r1, [r2, #36]
	mov	r1, #110
	str	lr, [r3, #4]
	str	ip, [r3]
	str	r1, [r2, #44]
	str	r0, [r2]
	str	r0, [r2, #16]
	str	r0, [r2, #32]
	str	ip, [r3, #16]
	mov	r6, #5
	bl	initBoss
	mov	lr, #2
	mov	r0, #8
	mov	ip, #135
	mov	r7, #448
	ldr	r3, .L303+32
	ldr	r1, [r3, #40]
	ldr	r3, .L303+36
	ldr	r2, .L303+40
	str	r6, [r3, #16]
	ldr	r8, .L303+44
	ldr	r6, .L303+48
	str	r5, [r2, #20]
	add	r5, r1, #1
	add	r1, r1, lr
	str	r8, [r2, #4]
	str	r5, [r2, #28]
	str	r7, [r3, #4]
	str	lr, [r3, #24]
	str	r0, [r2, #16]
	str	r0, [r3, #20]
	str	r4, [r2, #24]
	str	r1, [r3, #28]
	str	r4, [r3, #32]
	str	ip, [r2]
	str	ip, [r3]
	mov	r8, r4
	bl	initButtons
	mov	r7, #14
	mov	r3, r6
	mov	r5, #16
	mov	lr, #55
	mov	r0, #472
	ldr	r2, .L303+52
	ldr	r2, [r2, #116]
	add	r2, r2, #1
.L295:
	str	r4, [r3, #32]
	add	r1, r2, r4
	add	r4, r4, #1
	cmp	r4, #3
	str	r7, [r3]
	stmib	r3, {r5, lr}
	str	r0, [r3, #12]
	str	r8, [r3, #24]
	str	r1, [r3, #28]
	mov	ip, #0
	add	r3, r3, #36
	bne	.L295
	mov	r8, #12
	mov	r10, #5
	mov	r9, #1
	ldr	r7, .L303+56
	mov	r1, #96
	mov	r3, r7
	mov	r4, #16
	mov	lr, #6
	ldr	r0, .L303+60
	ldr	r2, [r6, #100]
	str	ip, [r0, #16]
	str	ip, [r0, #20]
	mov	r5, ip
	ldr	ip, .L303+64
	add	r6, r2, #2
	str	r6, [r0, #24]
	str	r10, [r0, #4]
	str	r9, [r0, #28]
	str	ip, [r0, #12]
	str	r8, [r0]
	str	r8, [r0, #8]
	ldr	r0, .L303+68
	add	r2, r2, #3
.L296:
	str	r1, [r3, #12]
	add	r1, r1, #16
	cmp	r1, #144
	str	r2, [r3, #20]
	stmia	r3, {r4, lr}
	str	r0, [r3, #8]
	str	r5, [r3, #16]
	mov	ip, #0
	add	r3, r3, #32
	add	r2, r2, #1
	bne	.L296
	mov	lr, #90
	mov	r6, #4
	mov	r5, #32
	ldr	r2, [r7, #84]
	ldr	r3, .L303+72
	ldr	r1, .L303+76
	ldr	r4, .L303+80
	add	r2, r2, #1
	str	r2, [r3, #28]
	mov	r0, ip
	ldr	r2, .L303+84
	str	ip, [r3, #24]
	str	lr, [r3, #12]
	str	ip, [r1]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #8]
	mov	lr, pc
	bx	r2
	ldr	r3, .L303+88
	mov	lr, pc
	bx	r3
	mov	r0, #5
	mov	r3, #67108864
	mov	lr, #3
	ldr	r2, .L303+92
	ldr	r1, .L303+96
	str	r0, [r2]
	ldr	r2, .L303+100
	ldrh	r1, [r1]
	ldrh	r2, [r2]
	ldr	ip, .L303+104
	str	lr, [ip]
	strh	r1, [r3, #18]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L304:
	.align	2
.L303:
	.word	poops
	.word	cheatWord
	.word	cheatO
	.word	fly
	.word	power
	.word	tp
	.word	tpBot
	.word	lives
	.word	boss
	.word	bullet
	.word	shooter
	.word	453
	.word	thoughts
	.word	bbuttons
	.word	bar
	.word	rock
	.word	461
	.word	475
	.word	bHealth
	.word	level
	.word	447
	.word	time
	.word	srand
	.word	bosslives
	.word	vOff
	.word	hOff
	.word	livesRemaining
	.size	initGame, .-initGame
	.align	2
	.global	updateButtons
	.type	updateButtons, %function
updateButtons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L319
	ldr	r3, [r3]
	cmp	r3, #0
	sub	sp, sp, #20
	mov	r5, r0
	beq	.L311
	mov	fp, #1
	mov	r10, #0
	ldr	r4, .L319+4
	ldr	r7, .L319+8
	ldr	r8, .L319+12
	ldr	r9, .L319+16
	add	r6, r4, #180
.L310:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L318
.L308:
	add	r4, r4, #36
	cmp	r6, r4
	bne	.L310
.L311:
	ldr	r2, .L319+20
	ldr	r3, .L319+24
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r2, [r5, #20]
	str	r3, [r5, #16]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L318:
	ldr	lr, [r4, #20]
	ldr	ip, [r4, #24]
	add	r0, r5, #8
	ldmia	r5, {r2, r3}
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #4]
	ldr	ip, [r4]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L308
	ldr	r2, [r5, #36]
	ldr	r3, [r8, #48]
	cmp	r2, r3
	streq	fp, [r9, #16]
	streq	r10, [r4, #28]
	b	.L308
.L320:
	.align	2
.L319:
	.word	bosslives
	.word	poops
	.word	collision
	.word	boss
	.word	rock
	.word	hOff
	.word	vOff
	.size	updateButtons, .-updateButtons
	.align	2
	.global	drawButtons
	.type	drawButtons, %function
drawButtons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #24]
	cmp	r2, #0
	bne	.L323
	mov	r1, #512
	ldr	r3, [r0, #28]
	ldr	r2, .L324
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L323:
	b	drawButtons.part.7
.L325:
	.align	2
.L324:
	.word	shadowOAM
	.size	drawButtons, .-drawButtons
	.align	2
	.global	initThoughts
	.type	initThoughts, %function
initThoughts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	ip, #472
	mov	r6, #14
	mov	r5, r2
	mov	r4, #16
	mov	lr, #55
	ldr	r3, .L330
	ldr	r1, [r3, #116]
	ldr	r3, .L330+4
	add	r1, r1, #1
.L327:
	str	r2, [r3, #32]
	add	r0, r1, r2
	add	r2, r2, #1
	cmp	r2, #3
	str	r6, [r3]
	stmib	r3, {r4, lr}
	str	ip, [r3, #12]
	str	r5, [r3, #24]
	str	r0, [r3, #28]
	add	r3, r3, #36
	bne	.L327
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L331:
	.align	2
.L330:
	.word	bbuttons
	.word	thoughts
	.size	initThoughts, .-initThoughts
	.align	2
	.global	updateThoughts
	.type	updateThoughts, %function
updateThoughts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L335
	ldr	r0, [r3]
	ldr	r3, .L335+4
	ldr	r1, [r3, #48]
	cmp	r0, #1
	ldr	r2, .L335+8
	mov	r3, r1, asl #3
	addeq	ip, r3, r1
	addeq	ip, r2, ip, lsl #2
	streq	r0, [ip, #24]
	add	r3, r3, r1
	ldr	ip, .L335+12
	ldr	r0, .L335+16
	add	r3, r2, r3, lsl #2
	ldr	r1, [r3, #12]
	ldr	ip, [ip]
	ldr	r2, [r3, #8]
	ldr	r0, [r0]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #20]
	str	r2, [r3, #16]
	bx	lr
.L336:
	.align	2
.L335:
	.word	level
	.word	boss
	.word	thoughts
	.word	hOff
	.word	vOff
	.size	updateThoughts, .-updateThoughts
	.align	2
	.global	drawThoughts
	.type	drawThoughts, %function
drawThoughts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #24]
	cmp	r2, #0
	mov	r3, r0
	beq	.L338
	ldr	r2, .L346
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L345
.L338:
	mov	r1, #512
	ldr	r3, [r3, #28]
	ldr	r2, .L346+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L345:
	b	drawThoughts.part.8
.L347:
	.align	2
.L346:
	.word	bosslives
	.word	shadowOAM
	.size	drawThoughts, .-drawThoughts
	.align	2
	.global	initRock
	.type	initRock, %function
initRock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #12
	mov	r4, #5
	mov	r1, #0
	mov	ip, #1
	ldr	r3, .L350
	ldr	r2, [r3, #100]
	ldr	lr, .L350+4
	ldr	r3, .L350+8
	add	r2, r2, #2
	str	r4, [r3, #4]
	str	lr, [r3, #12]
	str	r2, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3]
	str	r0, [r3, #8]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L351:
	.align	2
.L350:
	.word	thoughts
	.word	461
	.word	rock
	.size	initRock, .-initRock
	.align	2
	.global	updateRock
	.type	updateRock, %function
updateRock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L358
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L357
	ldr	r5, .L358+4
	ldr	r3, [r4, #8]
	ldr	r2, [r4]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	ldrlt	r2, [r4, #28]
	addlt	r3, r3, r2
	strlt	r3, [r4, #8]
	blt	.L354
.L355:
	mov	r0, #0
	mov	lr, #2
	mov	r6, #12
	ldr	ip, .L358+8
	ldr	r3, [r5, #48]
	ldr	r1, [ip]
	ldr	r2, .L358+12
	sub	r1, r1, #1
	add	r3, r3, r3, lsl #3
	add	r3, r2, r3, lsl #2
	str	r1, [ip]
	ldr	r1, .L358+16
	ldr	r2, .L358+20
	str	r0, [r3, #24]
	str	r0, [r4, #16]
	str	r6, [r4, #8]
	str	lr, [r5, #32]
	str	r1, [r4, #12]
	mov	lr, pc
	bx	r2
	ldr	r3, .L358+24
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	rsb	r3, r3, r0
	str	r3, [r5, #48]
.L357:
	ldr	r3, [r4, #8]
.L354:
	ldr	r2, .L358+28
	ldr	r1, .L358+32
	ldr	r0, [r2]
	ldr	r1, [r1]
	ldr	r2, [r4, #12]
	rsb	r3, r1, r3
	rsb	r2, r0, r2
	str	r2, [r4, #36]
	str	r3, [r4, #32]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L359:
	.align	2
.L358:
	.word	rock
	.word	boss
	.word	bosslives
	.word	thoughts
	.word	461
	.word	rand
	.word	1431655766
	.word	hOff
	.word	vOff
	.size	updateRock, .-updateRock
	.align	2
	.global	drawRock
	.type	drawRock, %function
drawRock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L363
	ldr	r2, [r3, #20]
	cmp	r2, #0
	bne	.L362
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L363+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L362:
	b	drawRock.part.9
.L364:
	.align	2
.L363:
	.word	rock
	.word	shadowOAM
	.size	drawRock, .-drawRock
	.align	2
	.global	initBar
	.type	initBar, %function
initBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r2, #96
	mov	r4, #16
	mov	lr, #6
	mov	ip, #0
	ldr	r3, .L369
	ldr	r1, [r3, #24]
	ldr	r0, .L369+4
	ldr	r3, .L369+8
	add	r1, r1, #1
.L366:
	str	r2, [r3, #12]
	add	r2, r2, #16
	cmp	r2, #144
	str	r1, [r3, #20]
	stmia	r3, {r4, lr}
	str	r0, [r3, #8]
	str	ip, [r3, #16]
	add	r1, r1, #1
	add	r3, r3, #32
	bne	.L366
	ldmfd	sp!, {r4, lr}
	bx	lr
.L370:
	.align	2
.L369:
	.word	rock
	.word	475
	.word	bar
	.size	initBar, .-initBar
	.align	2
	.global	updateBar
	.type	updateBar, %function
updateBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L372
	ldr	r1, .L372+4
	ldr	ip, [r3]
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #12]
	ldr	r1, [r1]
	rsb	r2, ip, r2
	rsb	r3, r1, r3
	str	r2, [r0, #24]
	str	r3, [r0, #28]
	bx	lr
.L373:
	.align	2
.L372:
	.word	hOff
	.word	vOff
	.size	updateBar, .-updateBar
	.align	2
	.global	drawBar
	.type	drawBar, %function
drawBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #16]
	cmp	r3, #0
	beq	.L375
	ldr	r3, .L386
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L385
.L375:
	mov	r1, #512
	ldr	r3, [r0, #20]
	ldr	r2, .L386+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L385:
	ldrb	r3, [r0, #28]	@ zero_extendqisi2
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r0, #20]
	ldr	r1, [r0, #24]
	ldr	ip, .L386+4
	str	lr, [sp, #-4]!
	mov	r2, r2, asl #3
	ldr	lr, .L386+8
	add	r0, ip, r2
	bic	r1, r1, #65024
	strh	r3, [ip, r2]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L387:
	.align	2
.L386:
	.word	bosslives
	.word	shadowOAM
	.word	24948
	.size	drawBar, .-drawBar
	.align	2
	.global	initBossHealth
	.type	initBossHealth, %function
initBossHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #90
	mov	r4, #4
	mov	lr, #32
	mov	r1, #0
	ldr	r3, .L390
	ldr	r2, [r3, #84]
	ldr	ip, .L390+4
	ldr	r3, .L390+8
	add	r2, r2, #1
	stmia	r3, {r4, lr}
	str	r2, [r3, #28]
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L391:
	.align	2
.L390:
	.word	bar
	.word	447
	.word	bHealth
	.size	initBossHealth, .-initBossHealth
	.align	2
	.global	updateBossHealth
	.type	updateBossHealth, %function
updateBossHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L393
	ldr	r2, .L393+4
	ldr	r0, .L393+8
	ldr	ip, [r2]
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #12]
	ldr	r0, [r0]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L394:
	.align	2
.L393:
	.word	bHealth
	.word	hOff
	.word	vOff
	.size	updateBossHealth, .-updateBossHealth
	.align	2
	.global	drawBossHealth
	.type	drawBossHealth, %function
drawBossHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L398
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L397
	mov	r1, #512
	ldr	r3, [r3, #28]
	ldr	r2, .L398+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L397:
	b	drawBossHealth.part.11
.L399:
	.align	2
.L398:
	.word	bHealth
	.word	shadowOAM
	.size	drawBossHealth, .-drawBossHealth
	.align	2
	.global	initTP
	.type	initTP, %function
initTP:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #11
	mov	r5, #15
	mov	r4, #114
	mov	lr, #264
	mov	ip, #4
	mov	r0, #1
	mov	r1, #23
	ldr	r3, .L402
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #32]
	str	r0, [r3, #36]
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #40]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L403:
	.align	2
.L402:
	.word	tp
	.size	initTP, .-initTP
	.align	2
	.global	updateTP
	.type	updateTP, %function
updateTP:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L408
	add	r3, r4, #36
	ldmia	r3, {r3, r5}
	cmp	r3, #0
	beq	.L406
	ldr	r3, .L408+4
	smull	r1, r2, r3, r5
	mov	r3, r5, asr #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, asl #2
	bne	.L406
	ldr	r0, [r4, #28]
	ldr	r3, .L408+8
	add	r0, r0, #1
	ldr	r1, [r4, #32]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #28]
.L406:
	ldr	r2, .L408+12
	ldr	r3, .L408+16
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	add	r5, r5, #1
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r5, [r4, #40]
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L409:
	.align	2
.L408:
	.word	tp
	.word	1717986919
	.word	__aeabi_idivmod
	.word	hOff
	.word	vOff
	.size	updateTP, .-updateTP
	.align	2
	.global	drawTP
	.type	drawTP, %function
drawTP:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L413
	ldr	r2, [r3, #36]
	cmp	r2, #0
	bne	.L412
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L413+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L412:
	b	drawTP.part.12
.L414:
	.align	2
.L413:
	.word	tp
	.word	shadowOAM
	.size	drawTP, .-drawTP
	.align	2
	.global	initTPBot
	.type	initTPBot, %function
initTPBot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #149
	mov	lr, #114
	mov	ip, #24
	mov	r0, #130
	mov	r1, #25
	ldr	r3, .L417
	str	lr, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #16]
	str	ip, [r3, #8]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L418:
	.align	2
.L417:
	.word	tpBot
	.size	initTPBot, .-initTPBot
	.align	2
	.global	updateTPBot
	.type	updateTPBot, %function
updateTPBot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L425
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L423
	cmp	r3, #1
	beq	.L424
	cmp	r3, #2
	moveq	r2, #1
	ldreq	r3, .L425+4
	streq	r2, [r3, #12]
	streq	r2, [r3, #28]
	bx	lr
.L423:
	ldr	r2, .L425+4
	str	r3, [r2, #12]
	str	r3, [r2, #28]
	bx	lr
.L424:
	mov	r1, #0
	ldr	r2, .L425+4
	str	r1, [r2, #28]
	str	r3, [r2, #12]
	bx	lr
.L426:
	.align	2
.L425:
	.word	player
	.word	tpBot
	.size	updateTPBot, .-updateTPBot
	.align	2
	.global	drawTPBot
	.type	drawTPBot, %function
drawTPBot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #12]
	cmp	r3, #0
	bne	.L432
	mov	r1, #512
	ldr	r3, [r0, #8]
	ldr	r2, .L433
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L432:
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #4]
	ldr	ip, .L433
	str	lr, [sp, #-4]!
	mov	r3, r3, asl #3
	ldr	lr, [r0]
	ldr	r0, .L433+4
	add	r1, ip, r3
	orr	r2, r2, #16384
	strh	lr, [ip, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L434:
	.align	2
.L433:
	.word	shadowOAM
	.word	8712
	.size	drawTPBot, .-drawTPBot
	.align	2
	.global	initCheatOnOff
	.type	initCheatOnOff, %function
initCheatOnOff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #152
	mov	r0, #48
	mov	r1, #127
	mov	r2, #28
	ldr	r3, .L436
	str	ip, [r3]
	stmib	r3, {r0, r1, r2}
	bx	lr
.L437:
	.align	2
.L436:
	.word	cheatO
	.size	initCheatOnOff, .-initCheatOnOff
	.align	2
	.global	drawCheatOnOff
	.type	drawCheatOnOff, %function
drawCheatOnOff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L440
	ldr	r3, .L440+4
	add	r1, r0, #8
	ldr	r3, [r3]
	ldmia	r1, {r1, r2}
	str	lr, [sp, #-4]!
	ldr	ip, [r0]
	ldr	lr, .L440+8
	ldr	r0, [r0, #4]
	add	r3, r3, #30
	add	r3, r2, r3, lsl #5
	mov	r2, r1, asl #3
	orr	r3, r3, #16384
	orr	r1, r0, #16384
	orr	ip, ip, #16384
	add	r0, lr, r2
	strh	ip, [lr, r2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L441:
	.align	2
.L440:
	.word	cheatO
	.word	cheat
	.word	shadowOAM
	.size	drawCheatOnOff, .-drawCheatOnOff
	.align	2
	.global	initCheatWord
	.type	initCheatWord, %function
initCheatWord:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L446
	str	lr, [sp, #-4]!
	mov	r1, #22
	mov	r2, ip
	mov	r3, #0
	mov	lr, #152
.L443:
	str	lr, [ip, r3, asl #1]
	str	r3, [r2, #4]
	add	r3, r3, #8
	add	r0, r1, #99
	cmp	r3, #48
	str	r1, [r2, #12]
	str	r0, [r2, #8]
	add	r1, r1, #1
	add	r2, r2, #16
	bne	.L443
	ldr	lr, [sp], #4
	bx	lr
.L447:
	.align	2
.L446:
	.word	cheatWord
	.size	initCheatWord, .-initCheatWord
	.align	2
	.global	drawCheatWord
	.type	drawCheatWord, %function
drawCheatWord:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #8
	ldmia	r2, {r2, r3}
	ldr	ip, .L450
	str	lr, [sp, #-4]!
	mov	r2, r2, asl #3
	ldr	lr, [r0]
	add	r3, r3, #960
	ldr	r0, [r0, #4]
	add	r1, ip, r2
	orr	r3, r3, #16384
	strh	lr, [ip, r2]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L451:
	.align	2
.L450:
	.word	shadowOAM
	.size	drawCheatWord, .-drawCheatWord
	.align	2
	.global	initFlyBar
	.type	initFlyBar, %function
initFlyBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #22
	mov	ip, #152
	ldr	r3, .L455
.L453:
	str	r2, [r3, #12]
	mov	r0, r2, asl #3
	add	r1, r2, #90
	add	r2, r2, #1
	cmp	r2, #30
	str	ip, [r3]
	stmib	r3, {r0, r1}
	add	r3, r3, #20
	bne	.L453
	bx	lr
.L456:
	.align	2
.L455:
	.word	fly
	.size	initFlyBar, .-initFlyBar
	.align	2
	.global	drawFlyBar
	.type	drawFlyBar, %function
drawFlyBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #8
	ldmia	r2, {r2, r3}
	ldr	ip, [r0]
	ldr	r1, [r0, #4]
	str	lr, [sp, #-4]!
	ldr	lr, .L459
	mov	r2, r2, asl #3
	add	r3, r3, #928
	orr	r0, ip, #16384
	orr	r1, r1, #16384
	add	ip, lr, r2
	orr	r3, r3, #16384
	strh	r0, [lr, r2]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L460:
	.align	2
.L459:
	.word	shadowOAM
	.size	drawFlyBar, .-drawFlyBar
	.align	2
	.global	initFlyPower
	.type	initFlyPower, %function
initFlyPower:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #176
	mov	lr, #152
	mov	r0, #111
	mov	r1, #31
	mov	r2, #0
	ldr	r3, .L463
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L464:
	.align	2
.L463:
	.word	power
	.size	initFlyPower, .-initFlyPower
	.align	2
	.global	drawFlyPower
	.type	drawFlyPower, %function
drawFlyPower:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L470
	ldr	r1, .L470+4
	ldr	r3, [r3, #56]
	ldr	ip, [r1, #16]
	ldr	r2, [r1, #8]
	stmfd	sp!, {r4, lr}
	ldr	r0, [r1]
	sub	r4, r3, #2
	ldr	lr, .L470+8
	mov	r2, r2, asl #3
	cmp	ip, r4
	strh	r0, [lr, r2]	@ movhi
	add	r4, lr, r2
	bge	.L467
	ldr	r0, [r1, #4]
	sub	r3, r3, #3
	rsb	r3, ip, r3
	bic	r3, r3, #1
	add	r0, r0, ip
	add	r3, r0, r3
	strh	r3, [r4, #2]	@ movhi
.L467:
	mov	r0, #0
	ldr	r3, [r1, #12]
	add	r3, r3, #928
	add	r2, lr, r2
	orr	r3, r3, #16384
	strh	r3, [r2, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	str	r0, [r1, #16]
	bx	lr
.L471:
	.align	2
.L470:
	.word	player
	.word	power
	.word	shadowOAM
	.size	drawFlyPower, .-drawFlyPower
	.align	2
	.global	drawGame
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L551
	ldr	r3, [r3]
	cmp	r3, #1
	sub	sp, sp, #28
	beq	.L540
.L539:
	ldr	r3, .L551+4
	str	r3, [sp, #8]
	ldr	r3, .L551+8
	str	r3, [sp, #12]
	ldr	r3, .L551+12
	ldr	r4, .L551+16
	ldr	r5, .L551+20
	ldr	r10, .L551+24
	ldr	r9, .L551+28
	str	r3, [sp, #4]
.L473:
	bl	drawPlayer
	mov	r0, #512
	ldr	r3, .L551+32
	ldr	fp, .L551+36
	ldr	lr, .L551+40
	add	r1, r3, #180
.L477:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r2, [r3, #32]
	ldrne	r6, [r3, #12]
	movne	r2, r2, asl #3
	ldrne	ip, [r3, #8]
	moveq	r2, r2, asl #3
	strneh	r6, [fp, r2]	@ movhi
	add	r3, r3, #36
	addne	r2, fp, r2
	strneh	lr, [r2, #4]	@ movhi
	strneh	ip, [r2, #2]	@ movhi
	streqh	r0, [fp, r2]	@ movhi
	cmp	r1, r3
	bne	.L477
	mov	r2, #0
	mov	lr, #512
	ldr	r3, .L551+44
.L480:
	ldr	r1, [r3, #40]
	cmp	r1, #0
	bne	.L541
	ldr	r1, [r3, #24]
	mov	r1, r1, asl #3
	strh	lr, [fp, r1]	@ movhi
.L479:
	add	r2, r2, #1
	cmp	r2, #2
	add	r3, r3, #44
	bne	.L480
	ldr	r7, .L551+48
	mov	r8, #512
	add	r6, r7, #676
	b	.L483
.L481:
	ldr	r3, [r7, #44]
	add	r7, r7, #52
	mov	r3, r3, asl #3
	cmp	r6, r7
	strh	r8, [fp, r3]	@ movhi
	beq	.L542
.L483:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L481
	mov	r0, r7
	add	r7, r7, #52
	bl	drawEnemy.part.3
	cmp	r6, r7
	bne	.L483
.L542:
	ldr	r1, .L551+52
	ldr	r3, .L551+56
	add	r2, r1, #8
	ldr	r3, [r3]
	ldmia	r2, {r2, ip}
	ldmia	r1, {r0, r1}
	add	r3, r3, #30
	mov	r2, r2, asl #3
	add	r3, ip, r3, lsl #5
	orr	r0, r0, #16384
	strh	r0, [fp, r2]	@ movhi
	add	ip, fp, r2
	orr	r3, r3, #16384
	orr	r1, r1, #16384
	ldr	r2, .L551+60
	strh	r3, [ip, #4]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	add	r0, r2, #96
.L484:
	ldr	r3, [r2]
	ldr	r1, [r2, #4]
	ldr	ip, [r2, #-8]
	mov	r3, r3, asl #3
	strh	ip, [fp, r3]	@ movhi
	add	r1, r1, #960
	ldr	ip, [r2, #-4]
	add	r2, r2, #16
	add	r3, fp, r3
	orr	r1, r1, #16384
	cmp	r0, r2
	strh	ip, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bne	.L484
	ldr	r2, .L551+64
	add	ip, r2, #160
.L485:
	ldr	r3, [r2, #8]
	ldr	r1, [r2, #12]
	ldr	lr, [r2]
	ldr	r0, [r2, #4]
	mov	r3, r3, asl #3
	add	r1, r1, #928
	add	r2, r2, #20
	orr	lr, lr, #16384
	strh	lr, [fp, r3]	@ movhi
	orr	r0, r0, #16384
	add	r3, fp, r3
	orr	r1, r1, #16384
	cmp	ip, r2
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bne	.L485
	bl	drawFlyPower
	ldr	ip, .L551+68
	mov	r2, #0
	mov	r3, ip
	mov	r0, #512
	ldr	lr, .L551+72
.L488:
	ldr	r1, [r3, #8]
	cmp	r1, #0
	ldr	r1, [r3, #12]
	ldrne	r7, [ip, r2, asl #4]
	movne	r1, r1, asl #3
	ldrne	r6, [r3, #4]
	moveq	r1, r1, asl #3
	strneh	r7, [fp, r1]	@ movhi
	add	r2, r2, #1
	addne	r1, fp, r1
	strneh	lr, [r1, #4]	@ movhi
	strneh	r6, [r1, #2]	@ movhi
	streqh	r0, [fp, r1]	@ movhi
	cmp	r2, #3
	add	r3, r3, #16
	bne	.L488
	ldr	r3, [r5, #36]
	cmp	r3, #0
	ldr	r3, .L551+20
	bne	.L543
	mov	r2, #512
	ldr	r3, [r3, #24]
	mov	r3, r3, asl #3
	strh	r2, [fp, r3]	@ movhi
.L491:
	ldr	r0, .L551+76
	mov	r2, #0
	mov	r3, r0
	mov	ip, #512
	ldr	r5, .L551+80
.L490:
	ldr	r1, [r3, #12]
	cmp	r1, #0
	ldr	r1, [r3, #8]
	ldrne	lr, [r3, #4]
	ldrne	r6, [r0, r2, asl #4]
	movne	r1, r1, asl #3
	strneh	r6, [fp, r1]	@ movhi
	orrne	lr, lr, #16384
	addne	r1, fp, r1
	moveq	r1, r1, asl #3
	add	r2, r2, #1
	strneh	r5, [r1, #4]	@ movhi
	strneh	lr, [r1, #2]	@ movhi
	streqh	ip, [fp, r1]	@ movhi
	cmp	r2, #2
	add	r3, r3, #16
	bne	.L490
	bl	drawBoss
	ldr	r3, [r10, #24]
	cmp	r3, #0
	ldr	r3, .L551+24
	bne	.L544
	mov	r2, #512
	ldr	r3, [r3, #28]
	mov	r3, r3, asl #3
	strh	r2, [fp, r3]	@ movhi
	ldr	r3, .L551+84
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bne	.L545
.L496:
	mov	r2, #512
	ldr	r3, [r3, #28]
	mov	r3, r3, asl #3
	strh	r2, [fp, r3]	@ movhi
.L498:
	mov	r2, #512
	ldr	r5, .L551+88
	add	r10, r5, #132
.L497:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L546
	ldr	r3, [r5, #28]
	mov	r3, r3, asl #3
	strh	r2, [fp, r3]	@ movhi
.L500:
	add	r5, r5, #44
	cmp	r10, r5
	bne	.L497
	mov	r1, #512
	ldr	r5, .L551+92
	ldr	r2, .L551+96
	add	r10, r5, #108
.L503:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L501
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L547
.L501:
	ldr	r3, [r5, #28]
	mov	r3, r3, asl #3
	strh	r1, [fp, r3]	@ movhi
.L502:
	add	r5, r5, #36
	cmp	r10, r5
	bne	.L503
	ldr	r3, [r9, #20]
	cmp	r3, #0
	ldr	r3, .L551+28
	bne	.L548
	mov	r1, #512
	ldr	r3, [r3, #24]
	mov	r3, r3, asl #3
	strh	r1, [fp, r3]	@ movhi
.L506:
	mov	r0, #512
	ldr	r3, .L551+100
	ldr	ip, [r2]
	ldr	lr, .L551+104
	add	r1, r3, #96
.L505:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L507
	cmp	ip, #0
	bne	.L549
.L507:
	ldr	r2, [r3, #20]
	mov	r2, r2, asl #3
	strh	r0, [fp, r2]	@ movhi
.L508:
	add	r3, r3, #32
	cmp	r1, r3
	bne	.L505
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	ldr	r3, .L551+4
	bne	.L550
	mov	r2, #512
	ldr	r3, [r3, #28]
	mov	r3, r3, asl #3
	strh	r2, [fp, r3]	@ movhi
.L510:
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L551+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	ldr	r0, [sp, #12]
	add	r2, r3, r3, lsr #31
	ldrh	r0, [r0]
	mov	r2, r2, asl #15
	mov	r3, r3, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r3, lsr #16
	strh	r3, [r1, #16]	@ movhi
	strh	r2, [r1, #20]	@ movhi
	strh	r0, [r1, #18]	@ movhi
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L546:
	mov	r0, r5
	str	r2, [sp, #16]
	bl	drawButtons.part.7
	ldr	r2, [sp, #16]
	b	.L500
.L541:
	ldr	ip, [r3, #4]
	mvn	ip, ip, asl #17
	mvn	ip, ip, lsr #17
	ldr	r0, [r3, #32]
	ldr	r1, [r3, #24]
	ldr	r6, [r3]
	add	r0, r0, #4
	mov	r1, r1, asl #3
	mov	r0, r0, asl #7
	strh	r6, [fp, r1]	@ movhi
	orr	r0, r0, #8192
	add	r1, fp, r1
	strh	r0, [r1, #4]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	b	.L479
.L547:
	mov	r0, r5
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	bl	drawThoughts.part.8
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #20]
	b	.L502
.L549:
	ldrb	r5, [r3, #28]	@ zero_extendqisi2
	mvn	r5, r5, asl #17
	mvn	r5, r5, lsr #17
	add	r2, r3, #20
	ldmia	r2, {r2, r6}
	mov	r2, r2, asl #3
	strh	r5, [fp, r2]	@ movhi
	bic	r6, r6, #65024
	add	r2, fp, r2
	strh	lr, [r2, #4]	@ movhi
	strh	r6, [r2, #2]	@ movhi
	b	.L508
.L544:
	bl	drawShooter.part.5
	ldr	r3, .L551+84
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L496
.L545:
	bl	drawBullet.part.6
	b	.L498
.L543:
	bl	drawTP.part.12
	b	.L491
.L548:
	str	r2, [sp, #16]
	bl	drawRock.part.9
	ldr	r2, [sp, #16]
	b	.L506
.L540:
	ldr	fp, .L551+108
	ldr	r3, [fp]
	cmp	r3, #1
	bne	.L539
	ldr	r0, .L551+112
	ldr	r3, .L551+116
	mov	lr, pc
	bx	r3
	ldr	r4, .L551+16
	mov	r3, #2544
	ldr	r2, .L551+120
	ldr	r1, .L551+124
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L551+128
	ldr	r1, .L551+132
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #7488
	mov	r2, #100663296
	ldr	r1, .L551+136
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L551+140
	ldr	r1, .L551+144
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r1, .L551+48
	mov	lr, #20
	mov	r0, #111
	mov	ip, #0
	mov	r2, r1
	ldr	r3, .L551+148
	str	lr, [r3, #12]
	str	r0, [r3, #8]
	add	r0, r1, #520
.L474:
	str	ip, [r2, #28]
	add	r2, r2, #52
	cmp	r0, r2
	mov	r3, #0
	bne	.L474
	mov	r6, #5
	mov	r7, #147
	mov	r2, #1
	mov	r0, #67108864
	ldr	r5, .L551+20
	ldr	lr, .L551+4
	str	r6, [r5, #16]
	str	r7, [r5, #20]
	ldr	r6, .L551+8
	ldr	r7, .L551+12
	ldr	r10, .L551+24
	ldr	r9, .L551+28
	str	r2, [r5, #36]
	str	r2, [r10, #24]
	str	r2, [r9, #20]
	str	r2, [lr, #24]
	str	r3, [r6]
	str	r3, [r7]
	str	lr, [sp, #8]
	str	r6, [sp, #12]
	str	r7, [sp, #4]
	strh	r3, [r0, #18]	@ movhi
	strh	r3, [r0, #16]	@ movhi
	strh	r3, [r0, #20]	@ movhi
	mov	r0, #125
	ldr	r3, .L551+88
	str	r2, [r3, #24]
	str	r2, [r3, #68]
	str	r2, [r3, #112]
	ldr	r3, .L551+100
	mov	ip, #130
	str	r2, [r1, #548]
	str	r2, [r1, #600]
	str	r2, [r1, #652]
	str	r0, [r1, #524]
	str	r2, [r3, #16]
	str	r2, [r3, #48]
	str	r2, [r3, #80]
	mov	r0, #67
	mov	r3, #140
	mov	r2, #145
	mov	r8, #2
	str	ip, [r1, #520]
	str	ip, [r1, #572]
	str	r3, [r1, #576]
	str	r2, [r1, #628]
	str	r0, [r1, #624]
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L551+36
	mov	r0, #3
	str	r8, [fp]
	mov	lr, pc
	bx	r4
	b	.L473
.L550:
	bl	drawBossHealth.part.11
	b	.L510
.L552:
	.align	2
.L551:
	.word	level
	.word	bHealth
	.word	vOff
	.word	hOff
	.word	DMANow
	.word	tp
	.word	shooter
	.word	rock
	.word	poops
	.word	shadowOAM
	.word	4108
	.word	portal
	.word	enemies
	.word	cheatO
	.word	cheat
	.word	cheatWord+8
	.word	fly
	.word	lives
	.word	16428
	.word	tpBot
	.word	8712
	.word	bullet
	.word	bbuttons
	.word	thoughts
	.word	bosslives
	.word	bar
	.word	24948
	.word	firstSwitch
	.word	GameBG0BehindPal
	.word	loadPalette
	.word	100679680
	.word	GameBG2Tiles
	.word	100722688
	.word	GameBG2Map
	.word	GameBG0BehindTiles
	.word	100726784
	.word	GameBG0BehindMap
	.word	player
	.size	drawGame, .-drawGame
	.align	2
	.global	initLives
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r1, #153
	mov	r2, #1
	mov	r6, #146
	mov	r5, #108
	mov	r4, #156
	mov	lr, #109
	mov	ip, #166
	mov	r0, #110
	ldr	r3, .L555
	str	r6, [r3, #4]
	str	r5, [r3, #12]
	str	r4, [r3, #20]
	str	lr, [r3, #28]
	str	r1, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #32]
	str	ip, [r3, #36]
	str	r0, [r3, #44]
	str	r2, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #40]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L556:
	.align	2
.L555:
	.word	lives
	.size	initLives, .-initLives
	.align	2
	.global	drawLives
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bne	.L562
	mov	r1, #512
	ldr	r3, [r0, #12]
	ldr	r2, .L563
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L562:
	ldr	r3, [r0, #12]
	ldr	r1, .L563
	str	lr, [sp, #-4]!
	ldr	ip, [r0, #4]
	ldr	lr, [r0]
	mov	r3, r3, asl #3
	ldr	r0, .L563+4
	add	r2, r1, r3
	strh	lr, [r1, r3]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L564:
	.align	2
.L563:
	.word	shadowOAM
	.word	16428
	.size	drawLives, .-drawLives
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L566
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L567:
	.align	2
.L566:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L570+8
	ldr	r2, [r2]
	ldr	r7, .L570+12
	mov	r8, r1
	mov	r9, r0
	mov	r10, r3
	str	r5, [r2, #20]
	mov	r1, r0
	ldr	r2, .L570+16
	mov	r3, #910163968
	mov	r0, #1
	ldr	r4, .L570+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #2]	@ movhi
	mov	r1, r6
	ldr	r3, .L570+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r3, #128
	rsb	r0, r0, #0
	ldr	r4, .L570+28
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r7]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	mov	r0, r8
	ldr	r7, .L570+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	mov	lr, pc
	bx	r7
	ldr	r8, .L570+36
	adr	r3, .L570
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L570+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L570+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r0, [r4, #20]
	str	r10, [r4, #16]
	str	r5, [r4, #28]
	str	r3, [r4, #12]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L571:
	.align	3
.L570:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109024
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	lr, #0
	ldr	r3, .L588
	ldrh	r2, [r3, #2]
	tst	r2, #1
	strh	lr, [r3, #8]	@ movhi
	beq	.L573
	ldr	ip, .L588+4
	ldr	r4, .L588+8
	ldr	r3, [ip, #28]
	ldr	r2, [r4, #28]
	ldr	r1, [ip, #12]
	add	r3, r3, #1
	add	r2, r2, #1
	cmp	r1, lr
	str	r3, [ip, #28]
	str	r2, [r4, #28]
	beq	.L574
	ldr	r2, [ip, #20]
	cmp	r3, r2
	beq	.L586
.L574:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	ldr	r3, .L588+8
	bne	.L587
.L575:
	mov	r2, #1
	ldr	r3, .L588
	strh	r2, [r3, #2]	@ movhi
.L573:
	mov	r2, #1
	ldr	r3, .L588
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L587:
	ldr	r1, [r3, #28]
	ldr	r2, [r3, #20]
	cmp	r1, r2
	bne	.L575
	mov	r2, #0
	ldr	r0, .L588+12
	ldr	r1, .L588+16
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	str	r2, [r3, #28]
	strh	r2, [r1, #6]	@ movhi
	b	.L575
.L586:
	ldr	r2, .L588+12
	ldr	r3, .L588+16
	ldr	r2, [r2]
	str	lr, [r2, #20]
	strh	lr, [r3, #2]	@ movhi
	ldmia	ip, {r0, r1, r2}
	mov	r3, #1
	str	lr, [r4, #12]
	str	lr, [ip, #28]
	bl	playSoundA
	b	.L574
.L589:
	.align	2
.L588:
	.word	67109376
	.word	soundA
	.word	soundB
	.word	dma
	.word	67109120
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L592+8
	ldr	r2, [r2]
	ldr	r7, .L592+12
	mov	r8, r1
	mov	r9, r0
	mov	r10, r3
	str	r5, [r2, #32]
	mov	r1, r0
	ldr	r2, .L592+16
	mov	r3, #910163968
	mov	r0, #2
	ldr	r4, .L592+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #6]	@ movhi
	mov	r1, r6
	ldr	r3, .L592+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r3, #128
	rsb	r0, r0, #0
	ldr	r4, .L592+28
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r7, #4]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	mov	r0, r8
	ldr	r7, .L592+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	mov	lr, pc
	bx	r7
	ldr	r8, .L592+36
	adr	r3, .L592
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L592+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L592+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r0, [r4, #20]
	str	r10, [r4, #16]
	str	r5, [r4, #28]
	str	r3, [r4, #12]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L593:
	.align	3
.L592:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109028
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	updatePlayer
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L797
	ldr	r3, [r5, #44]
	cmp	r3, #0
	movne	r2, #0
	strne	r3, [r5, #48]
	strne	r2, [r5, #44]
	ldr	r3, .L797+4
	ldr	r2, [r5, #32]
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, asl #2
	sub	sp, sp, #20
	ldr	r4, .L797
	bne	.L596
	ldr	r0, [r4, #36]
	ldr	r3, .L797+8
	add	r0, r0, #1
	ldr	r1, [r4, #40]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L596:
	ldr	r3, .L797+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L597
	mov	r3, #2
	ldr	r7, .L797+16
	ldr	r2, [r7]
	cmp	r2, #0
	str	r3, [r5, #44]
	ldr	r3, .L797
	bne	.L598
	ldr	ip, [r3, #12]
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #8]
	rsb	r2, r2, ip
	add	r0, r2, r1, lsl #9
	ldr	lr, .L797+20
	mov	r0, r0, asl #1
	ldrh	r0, [lr, r0]
	cmp	r0, #0
	beq	.L781
	ldr	r4, [r3, #16]
	ldr	r0, [r3, #24]
	add	r1, r1, r4
	rsb	r1, r0, r1
	add	r2, r2, r1, lsl #9
	mov	r2, r2, asl #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L781
	ldr	r2, [r3, #20]
	add	r2, r2, r2, lsr #31
	mov	r2, r2, asr #1
	ldr	r1, [r3, #4]
	rsb	r2, r2, #120
	cmp	r1, r2
	bgt	.L791
	ldr	r10, .L797+24
	ldr	r2, [r10]
	cmp	r2, #0
	ble	.L603
	sub	r2, r2, #1
	sub	ip, ip, #1
	str	r2, [r10]
	str	ip, [r3, #12]
	b	.L600
.L597:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L766
	ldr	r7, .L797+16
	ldr	r10, .L797+24
.L600:
	ldr	r3, .L797+12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldr	r4, .L797+28
	bne	.L615
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L615
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #16]
	add	r3, r2, r3
	cmp	r3, #142
	ldr	r1, .L797
	ble	.L792
.L615:
	ldr	r3, .L797+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L617
	ldr	r3, [r5, #56]
	cmp	r3, #0
	ldr	r1, .L797
	ble	.L617
	ldr	r0, [r1, #8]
	cmp	r0, #0
	ble	.L617
	ldr	r2, [r7]
	cmp	r2, #0
	bne	.L618
	ldr	lr, [r1, #12]
	sub	r2, r0, #1
	add	r2, lr, r2, lsl #9
	ldr	ip, .L797+20
	mov	r2, r2, asl #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L617
.L788:
	add	r2, r1, #20
	ldmia	r2, {r2, r6}
	rsb	r0, r6, r0
	add	r2, r2, r0, lsl #9
	add	r2, r2, lr
	mov	r2, r2, asl #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L617
	ldr	r2, [r4]
	cmp	r2, #0
	strne	r0, [r1, #8]
	bne	.L617
	ldr	r2, [r1, #64]
	cmp	r2, #0
	beq	.L624
	sub	r3, r3, #1
	str	r3, [r1, #56]
	ldr	r3, .L797+32
	ldrh	r3, [r3]
	tst	r3, #1
	str	r0, [r1, #8]
	bne	.L625
	ldr	r3, [r5, #64]
.L629:
	ldr	r2, [r4]
	cmp	r2, #0
	beq	.L633
.L631:
	mov	r2, #64
	str	r2, [r5, #56]
.L634:
	cmp	r3, #0
	bne	.L643
.L796:
	ldr	r4, .L797+36
	ldr	r8, .L797
	ldr	r9, .L797+40
	ldr	fp, .L797+44
	add	r6, r4, #676
	b	.L640
.L637:
	add	r4, r4, #52
	cmp	r6, r4
	beq	.L793
.L640:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L637
	ldmdb	r4, {ip, lr}
	add	r0, r5, #8
	ldmia	r0, {r0, r1, r2, r3}
	str	lr, [sp, #12]
	ldr	lr, [r4, #-24]
	str	ip, [sp, #8]
	ldr	ip, [r4, #-28]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L637
	mov	r2, #1
	mov	r0, #516	@ movhi
	ldr	r1, [fp, #8]
	ldr	r3, [r8, #8]
	cmp	r1, #0
	ldr	r1, .L797+48
	sub	r3, r3, #10
	strh	r0, [r1, #4]	@ movhi
	str	r3, [r8, #8]
	str	r2, [r8, #64]
	ldr	r3, .L797+44
	bne	.L655
	ldr	r1, [r3, #24]
	cmp	r1, #0
	bne	.L639
	ldr	r3, [r3, #40]
	cmp	r3, #0
	movne	r2, #2
	beq	.L637
.L639:
	mov	r1, #0
	ldr	r3, .L797+52
	add	r2, fp, r2, lsl #4
	ldr	r3, [r3]
	str	r1, [r2, #8]
	add	r4, r4, #52
	ldr	r2, .L797+52
	sub	r3, r3, #1
	cmp	r6, r4
	str	r3, [r2]
	bne	.L640
.L793:
	ldr	ip, .L797+56
	ldr	r3, [ip, #32]
	cmp	r3, #0
	bne	.L794
.L641:
	ldr	ip, .L797+60
	ldr	r3, [ip, #36]
	cmp	r3, #0
	bne	.L644
.L645:
	ldr	r3, [r5, #64]
	cmp	r3, #0
	beq	.L648
	b	.L647
.L766:
	mov	r2, #1
	ldr	r7, .L797+16
	ldr	r3, [r7]
	cmp	r3, #0
	str	r2, [r5, #44]
	ldr	ip, .L797
	bne	.L606
	ldr	r0, [ip, #12]
	ldr	lr, [ip, #20]
	ldr	r2, [ip, #8]
	add	r3, r0, lr
	add	r3, r3, #1
	add	r1, r3, r2, lsl #9
	ldr	r4, .L797+20
	mov	r1, r1, asl #1
	ldrh	r1, [r4, r1]
	cmp	r1, #0
	beq	.L781
	ldr	r6, [ip, #16]
	ldr	r1, [ip, #24]
	add	r2, r2, r6
	rsb	r2, r1, r2
	add	r3, r3, r2, lsl #9
	mov	r3, r3, asl #1
	ldrh	r3, [r4, r3]
	cmp	r3, #0
	beq	.L781
	add	r3, lr, lr, lsr #31
	mov	r3, r3, asr #1
	ldr	r2, [ip, #4]
	rsb	r3, r3, #119
	cmp	r3, r2
	blt	.L607
	add	r0, r0, #1
	str	r0, [ip, #12]
	ldr	r10, .L797+24
	b	.L600
.L598:
	cmp	r2, #1
	beq	.L795
.L781:
	ldr	r10, .L797+24
	b	.L600
.L616:
	cmp	r0, #1
	bne	.L617
	ldr	r0, [r1, #12]
	ldr	ip, .L797+64
	add	lr, r0, r3, lsl #9
	mov	lr, lr, asl #1
	ldrh	lr, [ip, lr]
	cmp	lr, #0
	beq	.L617
	ldr	lr, [r1, #20]
	ldr	r6, [r1, #28]
	add	r0, r0, lr
	ldr	lr, [r1, #24]
	rsb	r0, r6, r0
	add	r3, r3, lr
	add	r3, r0, r3, lsl #9
	mov	r0, r3, asl #1
	ldrh	r3, [ip, r0]
	cmp	r3, #0
	addne	r3, r2, lr
	strne	r3, [r1, #8]
.L617:
	ldr	r3, .L797+32
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L626
.L625:
	ldr	r3, .L797+68
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L626
	ldr	r1, [r7]
	ldr	r2, .L797+72
	add	r3, r1, r1, lsl #2
	add	r3, r1, r3, lsl #1
	add	r3, r2, r3, lsl #2
	ldr	r0, [r3, #4]
	ldr	r3, [r3, #20]
	ldr	ip, [r5, #4]
	ldr	r2, [r5, #20]
	add	r3, r0, r3
	add	r2, ip, r2
	add	r3, r3, #10
	cmp	r2, r3
	ldr	lr, .L797+16
	ldr	r2, .L797
	bgt	.L628
	sub	r3, r0, #10
	cmp	ip, r3
	blt	.L628
	ldr	r3, [r2, #16]
	ldr	r2, [r2]
	rsb	r3, r3, #133
	cmp	r2, r3
	blt	.L628
	ldr	r3, .L797+76
	ldr	r2, [r3]
	cmp	r2, #0
	moveq	r2, #1
	add	r1, r1, #1
	str	r1, [lr]
	streq	r2, [r3]
.L626:
	ldr	r3, [r5, #64]
	cmp	r3, #0
	bne	.L629
.L651:
	ldr	r1, [r5, #16]
	ldr	r2, [r5]
	add	r2, r1, r2
	cmp	r2, #142
	ldr	r2, .L797
	bgt	.L629
	ldr	r0, [r7]
	cmp	r0, #0
	bne	.L630
	ldr	lr, [r2, #8]
	ldr	r8, [r2, #12]
	add	r1, r1, lr
	add	r6, r8, r1, lsl #9
	ldr	ip, .L797+20
	mov	r6, r6, asl #1
	ldrh	r6, [ip, r6]
	cmp	r6, #0
	beq	.L629
	ldr	r0, [r2, #20]
	ldr	r9, [r2, #28]
	ldr	r6, [r2, #24]
	add	r0, r8, r0
	rsb	r0, r9, r0
	add	r1, r1, r6
	add	r1, r0, r1, lsl #9
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	beq	.L629
	ldr	r1, [r4]
	cmp	r1, #0
	addeq	lr, lr, r6
	streq	lr, [r2, #8]
	bne	.L631
.L633:
	ldr	r2, [r5, #56]
	cmp	r2, #63
	ldr	r0, .L797
	bgt	.L634
	ldr	r1, .L797+12
	ldrh	r1, [r1, #48]
	tst	r1, #64
	addne	r2, r2, #1
	strne	r2, [r0, #56]
	cmp	r3, #0
	beq	.L796
.L643:
	ldr	ip, .L797+60
	ldr	r3, [ip, #36]
	cmp	r3, #0
	bne	.L644
.L647:
	ldr	r3, [r5, #60]
	add	r3, r3, #1
	cmp	r3, #60
	movgt	r2, #0
	str	r3, [r5, #60]
	ldr	r3, .L797
	strgt	r2, [r3, #64]
	strgt	r2, [r3, #60]
.L648:
	ldr	r3, [r7]
	cmp	r3, #1
	bne	.L650
	ldr	r2, [r5, #72]
	cmp	r2, #0
	ldreq	r1, .L797+80
	ldr	r2, .L797
	streq	r3, [r1, #24]
	streq	r3, [r2, #72]
.L650:
	ldr	r3, .L797+84
	ldr	r2, [r5, #32]
	ldr	ip, [r3]
	ldr	lr, [r10]
	ldr	r3, [r5, #52]
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	rsb	r0, lr, r0
	rsb	r1, ip, r1
	add	r2, r2, #1
	add	r3, r3, #1
	str	r0, [r5, #4]
	str	r1, [r5]
	str	r2, [r5, #32]
	str	r3, [r5, #52]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L628:
	ldr	r3, [r5, #52]
	cmp	r3, #63
	ldr	r6, .L797
	ble	.L626
	mov	r3, #0
	ldr	r2, .L797+88
	ldr	r1, .L797+92
	ldr	r0, .L797+96
	bl	playSoundB
	bl	shootPoop
	mov	r3, #0
	str	r3, [r6, #52]
	b	.L626
.L644:
	ldmia	ip, {r4, lr}
	add	r0, r5, #8
	ldmia	r0, {r0, r1, r2, r3}
	str	lr, [sp, #12]
	add	ip, ip, #16
	ldmia	ip, {ip, lr}
	str	r4, [sp, #8]
	stmia	sp, {ip, lr}
	ldr	r4, .L797+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r0, #0
	ldr	r3, .L797
	ldrne	r2, [r3, #68]
	ldr	r1, .L797+60
	addne	r2, r2, #1
	strne	r2, [r3, #68]
	strne	r0, [r1, #36]
	b	.L645
.L630:
	cmp	r0, #1
	bne	.L629
	ldr	ip, [r2, #8]
	ldr	r0, [r2, #12]
	add	r1, r1, ip
	add	r6, r0, r1, lsl #9
	ldr	lr, .L797+64
	mov	r6, r6, asl #1
	ldrh	r6, [lr, r6]
	cmp	r6, #0
	beq	.L629
	ldr	r6, [r2, #20]
	ldr	r8, [r2, #28]
	add	r0, r0, r6
	ldr	r6, [r2, #24]
	rsb	r0, r8, r0
	add	r1, r1, r6
	add	r1, r0, r1, lsl #9
	mov	r1, r1, asl #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	beq	.L629
	ldr	r1, [r4]
	cmp	r1, #0
	addeq	ip, ip, r6
	streq	ip, [r2, #8]
	beq	.L633
	b	.L631
.L606:
	cmp	r3, #1
	bne	.L781
	ldr	r1, [ip, #12]
	ldr	r3, [ip, #20]
	ldr	r0, [ip, #8]
	add	r4, r1, r3
	add	r2, r4, #1
	add	r2, r2, r0, lsl #9
	ldr	lr, .L797+64
	mov	r2, r2, asl #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L781
	add	r6, ip, #24
	ldr	r2, [ip, #16]
	ldmia	r6, {r6, r8}
	add	ip, r0, r2
	rsb	ip, r6, ip
	add	r4, r4, r8
	add	ip, r4, ip, lsl #9
	mov	ip, ip, asl #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L781
	add	ip, r0, #8
	rsb	ip, r6, ip
	add	ip, r4, ip, lsl #9
	mov	ip, ip, asl #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L781
	add	ip, r0, #16
	rsb	ip, r6, ip
	add	ip, r4, ip, lsl #9
	mov	ip, ip, asl #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L781
	add	ip, r0, #24
	rsb	ip, r6, ip
	add	r4, r4, ip, lsl #9
	mov	ip, r4, asl #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L781
	ldr	r4, .L797+100
	add	ip, r4, #32
	ldmia	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r4, #40]
	str	ip, [sp, #8]
	ldr	ip, [r4, #44]
	ldr	r6, .L797+40
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L610
	ldr	r1, [r5, #20]
	add	r3, r1, r1, lsr #31
	mov	r3, r3, asr #1
	ldr	r0, [r5, #4]
	rsb	r3, r3, #119
	cmp	r3, r0
	ldr	r2, .L797
	blt	.L611
.L614:
	ldr	r3, [r5, #12]
	add	r3, r3, #1
	str	r3, [r5, #12]
	ldr	r10, .L797+24
	b	.L600
.L792:
	ldr	r0, [r7]
	cmp	r0, #0
	bne	.L616
	ldr	r0, [r1, #12]
	ldr	lr, .L797+20
	add	ip, r0, r3, lsl #9
	mov	ip, ip, asl #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L617
	ldr	ip, [r1, #20]
	ldr	r6, [r1, #28]
	add	r0, r0, ip
	ldr	ip, [r1, #24]
	rsb	r0, r6, r0
	add	r3, r3, ip
	add	r3, r0, r3, lsl #9
	mov	r3, r3, asl #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	addne	r3, r2, ip
	strne	r3, [r1, #8]
	b	.L617
.L618:
	cmp	r2, #1
	bne	.L617
	ldr	lr, [r1, #12]
	sub	r2, r0, #1
	add	r2, lr, r2, lsl #9
	ldr	ip, .L797+64
	mov	r2, r2, asl #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L617
	b	.L788
.L795:
	ldr	r0, [r3, #12]
	ldr	r1, [r3, #28]
	ldr	lr, [r3, #8]
	rsb	r1, r1, r0
	add	r2, r1, lr, lsl #9
	ldr	ip, .L797+64
	mov	r2, r2, asl #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L781
	ldr	r2, [r3, #16]
	ldr	r4, [r3, #24]
	add	r2, lr, r2
	rsb	r2, r4, r2
	add	r2, r1, r2, lsl #9
	mov	r2, r2, asl #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L781
	add	r2, lr, #8
	rsb	r2, r4, r2
	add	r2, r1, r2, lsl #9
	mov	r2, r2, asl #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L781
	add	r2, lr, #16
	rsb	r2, r4, r2
	add	r2, r1, r2, lsl #9
	mov	r2, r2, asl #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L781
	add	lr, lr, #24
	rsb	r2, r4, lr
	add	r2, r1, r2, lsl #9
	mov	r2, r2, asl #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L781
	ldr	r2, [r3, #20]
	add	r2, r2, r2, lsr #31
	mov	r2, r2, asr #1
	ldr	r1, [r3, #4]
	rsb	r2, r2, #120
	cmp	r1, r2
	ble	.L604
	sub	r0, r0, #1
	str	r0, [r3, #12]
	ldr	r10, .L797+24
	b	.L600
.L794:
	add	r4, ip, #16
	ldmia	r4, {r4, lr}
	add	r0, r5, #8
	ldmia	r0, {r0, r1, r2, r3}
	str	lr, [sp, #12]
	ldmia	ip, {ip, lr}
	str	r4, [sp, #8]
	stmia	sp, {ip, lr}
	ldr	r4, .L797+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	ldr	r3, .L797
	beq	.L641
	mov	ip, #516
	mov	r0, #1
	ldr	r2, .L797+44
	ldr	r1, [r2, #8]
	cmp	r1, #0
	ldr	r1, [r3, #8]
	sub	r1, r1, #10
	str	r1, [r3, #8]
	ldr	r1, .L797+48
	str	r0, [r3, #64]
	strh	ip, [r1, #4]	@ movhi
	bne	.L657
	ldr	r3, [r2, #24]
	cmp	r3, #0
	bne	.L642
	ldr	r3, [r2, #40]
	cmp	r3, #0
	movne	r0, #2
	beq	.L643
.L642:
	mov	ip, #0
	ldr	r1, .L797+52
	ldr	r3, [r1]
	add	r2, r2, r0, lsl #4
	sub	r3, r3, #1
	str	ip, [r2, #8]
	str	r3, [r1]
	b	.L643
.L791:
	sub	r2, ip, #1
	str	r2, [r3, #12]
	ldr	r10, .L797+24
	b	.L600
.L655:
	mov	r2, #0
	b	.L639
.L607:
	ldr	r10, .L797+24
	ldr	r3, [r10]
	cmp	r3, #272
	bge	.L608
	add	r3, r3, #1
	add	r0, r0, #1
	str	r3, [r10]
	str	r0, [ip, #12]
	b	.L600
.L624:
	sub	r3, r3, #1
	str	r3, [r1, #56]
	ldr	r3, .L797+32
	ldrh	r3, [r3]
	rsb	r0, r6, r0
	tst	r3, #1
	str	r0, [r1, #8]
	bne	.L625
	ldr	r3, [r5, #64]
	b	.L651
.L603:
	cmp	ip, #0
	subgt	r2, ip, #1
	strgt	r2, [r3, #12]
	b	.L600
.L608:
	cmp	r0, #239
	addle	r0, r0, #1
	strle	r0, [ip, #12]
	ble	.L600
	cmp	r0, #512
	bge	.L600
	add	lr, lr, r2
	cmp	lr, #239
	addle	r0, r0, #1
	strle	r0, [r5, #12]
	b	.L600
.L657:
	mov	r0, #0
	b	.L642
.L604:
	ldr	r10, .L797+24
	ldr	r3, [r10]
	cmp	r3, #0
	ble	.L605
	sub	r3, r3, #1
	sub	r0, r0, #1
	str	r3, [r10]
	str	r0, [r5, #12]
	b	.L600
.L611:
	ldr	r10, .L797+24
	ldr	r3, [r10]
	cmp	r3, #272
	bge	.L612
	ldr	r1, [r2, #12]
	add	r3, r3, #1
	add	r1, r1, #1
	str	r3, [r10]
	str	r1, [r2, #12]
	b	.L600
.L610:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L614
	b	.L781
.L605:
	cmp	r0, #0
	subgt	r0, r0, #1
	strgt	r0, [r5, #12]
	b	.L600
.L612:
	ldr	r3, [r2, #12]
	cmp	r3, #239
	ble	.L780
	cmp	r3, #512
	bge	.L600
	add	r1, r1, r0
	cmp	r1, #239
	bgt	.L600
.L780:
	add	r3, r3, #1
	str	r3, [r2, #12]
	b	.L600
.L798:
	.align	2
.L797:
	.word	player
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.word	level
	.word	GameBG0CollisionMapBitmap
	.word	hOff
	.word	cheat
	.word	oldButtons
	.word	enemies+28
	.word	collision
	.word	lives
	.word	shadowOAM
	.word	livesRemaining
	.word	bullet
	.word	tp
	.word	GameBG1CollisionMapBitmap
	.word	buttons
	.word	portal
	.word	firstSwitch
	.word	boss
	.word	vOff
	.word	11025
	.word	1897
	.word	fart
	.word	bar
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	bl	updatePlayer
	mov	r4, #0
	ldr	r5, .L814
.L800:
	add	r0, r5, r4
	add	r4, r4, #36
	bl	updatePoop
	cmp	r4, #180
	bne	.L800
	ldr	r0, .L814+4
	bl	updatePortal
	ldr	r0, .L814+8
	bl	updatePortal
	ldr	r4, .L814+12
	add	r5, r4, #676
.L801:
	mov	r0, r4
	add	r4, r4, #52
	bl	updateEnemy
	cmp	r4, r5
	bne	.L801
	bl	updateTP
	ldr	r3, .L814+16
	ldr	r3, [r3, #68]
	cmp	r3, #0
	bne	.L802
	ldr	r2, .L814+20
	str	r3, [r2, #12]
	str	r3, [r2, #28]
.L803:
	bl	updateBoss
	bl	updateShooter
	bl	updateBullet
	ldr	r0, .L814+24
	bl	updateButtons
	ldr	r0, .L814+28
	bl	updateButtons
	ldr	r0, .L814+32
	bl	updateButtons
	ldr	r3, .L814+36
	ldr	r0, [r3]
	ldr	r3, .L814+40
	ldr	r1, [r3, #48]
	cmp	r0, #1
	ldr	r2, .L814+44
	mov	r3, r1, asl #3
	addeq	ip, r3, r1
	ldr	r4, .L814+48
	add	r3, r3, r1
	ldr	r5, .L814+52
	add	r3, r2, r3, lsl #2
	addeq	ip, r2, ip, lsl #2
	streq	r0, [ip, #24]
	ldr	r1, [r3, #12]
	ldr	r0, [r4]
	ldr	ip, [r5]
	ldr	r2, [r3, #8]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #20]
	str	r2, [r3, #16]
	bl	updateRock
	ldr	lr, .L814+56
	mov	r3, lr
	ldr	ip, [r5]
	ldr	r0, [r4]
	add	r4, lr, #96
.L807:
	add	r1, r3, #8
	ldmia	r1, {r1, r2}
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	add	r3, r3, #32
	cmp	r4, r3
	bne	.L807
	ldr	r3, .L814+60
	ldr	r3, [r3]
	cmp	r3, #0
	streq	r3, [lr, #16]
	streq	r3, [lr, #48]
	streq	r3, [lr, #80]
	ldr	r3, .L814+64
	add	r1, r3, #8
	ldmia	r1, {r1, r2}
	rsb	ip, ip, r1
	rsb	r0, r0, r2
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L802:
	cmp	r3, #1
	beq	.L813
	cmp	r3, #2
	moveq	r2, #1
	ldreq	r3, .L814+20
	streq	r2, [r3, #12]
	streq	r2, [r3, #28]
	b	.L803
.L813:
	mov	r1, #0
	ldr	r2, .L814+20
	str	r1, [r2, #28]
	str	r3, [r2, #12]
	b	.L803
.L815:
	.align	2
.L814:
	.word	poops
	.word	portal
	.word	portal+44
	.word	enemies
	.word	player
	.word	tpBot
	.word	bbuttons
	.word	bbuttons+44
	.word	bbuttons+88
	.word	level
	.word	boss
	.word	thoughts
	.word	vOff
	.word	hOff
	.word	bar
	.word	bosslives
	.word	bHealth
	.size	updateGame, .-updateGame
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L817
	ldr	r0, .L817+4
	ldr	r1, .L817+8
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L818:
	.align	2
.L817:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L820
	ldr	ip, .L820+4
	ldr	r0, .L820+8
	strh	r1, [r2, #2]	@ movhi
	str	r3, [ip, #12]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L821:
	.align	2
.L820:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L823
	ldr	ip, .L823+4
	ldr	r2, [r2]
	ldr	r0, .L823+8
	ldr	r1, .L823+12
	str	r3, [r2, #20]
	str	r3, [ip, #12]
	str	r3, [r2, #32]
	str	r3, [r0, #12]
	strh	r3, [r1, #2]	@ movhi
	bx	lr
.L824:
	.align	2
.L823:
	.word	dma
	.word	soundA
	.word	soundB
	.word	67109120
	.size	stopSound, .-stopSound
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	stmfd	sp!, {r4, lr}
	mov	r4, #1
	ldr	r3, .L827
	ldrh	r1, [r0, #4]
	ldrh	r2, [r3]
	ldr	lr, .L827+4
	ldr	ip, .L827+8
	orr	r2, r2, r4
	orr	r1, r1, #8
	strh	r1, [r0, #4]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	str	lr, [ip, #4092]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L828:
	.align	2
.L827:
	.word	67109376
	.word	interruptHandler
	.word	50360320
	.size	setupInterrupts, .-setupInterrupts
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	bosslives,4,4
	.comm	cheat,4,4
	.comm	firstSwitch,4,4
	.comm	level,4,4
	.comm	livesRemaining,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	lives,48,4
	.comm	power,20,4
	.comm	fly,160,4
	.comm	cheatWord,96,4
	.comm	cheatO,16,4
	.comm	tpBot,32,4
	.comm	tp,44,4
	.comm	bHealth,32,4
	.comm	bar,96,4
	.comm	rock,40,4
	.comm	thoughts,108,4
	.comm	bbuttons,132,4
	.comm	bullet,36,4
	.comm	shooter,32,4
	.comm	boss,52,4
	.comm	portal,88,4
	.comm	enemies,676,4
	.comm	poops,180,4
	.comm	player,76,4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
