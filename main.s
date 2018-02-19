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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L3
	mov	lr, pc
	bx	r3
	ldr	r0, .L3+4
	ldr	r3, .L3+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L3+12
	mov	r3, #3008
	ldr	r2, .L3+16
	ldr	r1, .L3+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L3+24
	ldr	r1, .L3+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L3+32
	ldr	r1, .L3+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r5, .L3+40
	ldr	r2, .L3+44
	ldr	r1, .L3+48
	mov	r0, #3
	mov	r3, #32768
	mov	lr, pc
	bx	r4
	ldr	r3, .L3+52
	mov	lr, pc
	bx	r3
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r6, #67108864
	mov	r1, #4352
	ldr	r3, .L3+56
	ldr	r2, .L3+60
	ldr	r0, .L3+64
	ldr	ip, .L3+68
	strh	r1, [r6]	@ movhi
	strh	r3, [r6, #8]	@ movhi
	mov	r1, r5
	strh	r2, [r5, #8]	@ movhi
	strh	r0, [r5, #10]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r5, #12]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L3+72
	strh	r3, [r6, #16]	@ movhi
	strh	r3, [r6, #18]	@ movhi
	str	r3, [r2]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	waitForVBlank
	.word	titleScreenPal
	.word	loadPalette
	.word	DMANow
	.word	100679680
	.word	titleScreenTiles
	.word	100722688
	.word	titleScreenMap
	.word	83886592
	.word	spritesheet2Pal
	.word	shadowOAM
	.word	100728832
	.word	spritesheet2Tiles
	.word	hideSprites
	.word	7428
	.word	16494
	.word	16464
	.word	4128
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	goToStart
	.size	initialize, .-initialize
	.align	2
	.global	goToCutscene
	.type	goToCutscene, %function
goToCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #1
	ldr	r1, .L7
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L8:
	.align	2
.L7:
	.word	state
	.size	goToCutscene, .-goToCutscene
	.align	2
	.global	goToInstructions
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L11
	mov	lr, pc
	bx	r3
	ldr	r0, .L11+4
	ldr	r3, .L11+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L11+12
	ldr	r3, .L11+16
	ldr	r2, .L11+20
	ldr	r1, .L11+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L11+28
	ldr	r1, .L11+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r4, #67108864
	mov	r2, #256
	mov	r3, #512
	strh	r2, [r4]	@ movhi
	ldr	r1, .L11+36
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r1, #2
	ldr	r2, .L11+40
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	str	r1, [r2]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	waitForVBlank
	.word	InstructionsPal
	.word	loadPalette
	.word	DMANow
	.word	8400
	.word	100679680
	.word	InstructionsTiles
	.word	100722688
	.word	InstructionsMap
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L39
	ldr	r3, .L39+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #128
	beq	.L14
	ldr	r2, .L39+8
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L35
.L14:
	tst	r3, #64
	beq	.L15
	ldr	r2, .L39+8
	ldrh	r2, [r2]
	ands	ip, r2, #64
	beq	.L36
.L15:
	tst	r3, #8
	beq	.L13
	ldr	r3, .L39+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L13
	ldr	r3, .L39+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L37
	cmp	r3, #1
	beq	.L38
.L13:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L36:
	ldr	r1, .L39+12
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.L15
	ldr	r0, .L39+16
	ldrh	r5, [r0, #8]
	ldrh	lr, [r0, #10]
	sub	r2, r2, #1
	sub	r5, r5, #12
	add	lr, lr, #20
	ldr	r6, .L39+20
	str	r2, [r1]
	strh	r5, [r0, #8]	@ movhi
	mov	r1, r0
	mov	r3, #512
	strh	lr, [r0, #10]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	ldr	r5, .L39+24
	str	ip, [r6]
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	b	.L15
.L35:
	ldr	r1, .L39+12
	ldr	r2, [r1]
	cmp	r2, #1
	beq	.L14
	mov	r6, #1
	ldr	r0, .L39+16
	ldrh	lr, [r0, #8]
	ldrh	ip, [r0, #10]
	add	r2, r2, r6
	add	lr, lr, #12
	sub	ip, ip, #20
	ldr	r5, .L39+20
	str	r2, [r1]
	mov	r3, #512
	mov	r1, r0
	strh	lr, [r0, #8]	@ movhi
	strh	ip, [r0, #10]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	ldr	r7, .L39+24
	str	r6, [r5]
	mov	lr, pc
	bx	r7
	ldrh	r3, [r4]
	b	.L14
.L38:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	goToInstructions
.L37:
	mov	r2, #67108864
	mov	ip, #1
	ldr	r0, .L39+28
	strh	r3, [r2, #16]	@ movhi
	ldr	r1, .L39+32
	strh	r3, [r2, #18]	@ movhi
	str	ip, [r0]
	mov	lr, pc
	bx	r1
	b	.L13
.L40:
	.align	2
.L39:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	titleState
	.word	shadowOAM
	.word	pauseState
	.word	DMANow
	.word	state
	.word	initCutscene
	.size	start, .-start
	.align	2
	.global	instructions
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L48
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L41
	ldr	r3, .L48+8
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L47
.L41:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L47:
	ldr	r2, .L48+12
	ldmfd	sp!, {r4, lr}
	str	r3, [r2]
	b	goToStart
.L49:
	.align	2
.L48:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	titleState
	.size	instructions, .-instructions
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L57
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+4
	ldr	r0, .L57+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L56
	cmp	r3, #1
	beq	.L54
	ldr	r4, .L57+16
.L52:
	mov	r3, #7488
	mov	r2, #100663296
	ldr	r1, .L57+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L57+24
	ldr	r1, .L57+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L57+32
	ldr	r1, .L57+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L57+40
	ldr	r1, .L57+44
	mov	r0, #3
	mov	r3, #32768
	mov	lr, pc
	bx	r4
	ldr	r3, .L57+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L57+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	ip, #4864
	mov	r0, #7936
	mov	r1, #3
	ldr	lr, .L57+56
	ldr	r2, .L57+60
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	ldmfd	sp!, {r4, lr}
	str	r1, [r2]
	bx	lr
.L56:
	mov	r3, #3760
	ldr	r2, .L57+64
	ldr	r1, .L57+68
	mov	r0, #3
	ldr	r4, .L57+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L57+72
	ldr	r1, .L57+76
	mov	r0, #3
	mov	lr, pc
	bx	r4
	b	.L52
.L54:
	mov	r3, #2544
	ldr	r2, .L57+64
	ldr	r1, .L57+80
	mov	r0, #3
	ldr	r4, .L57+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L57+72
	ldr	r1, .L57+84
	mov	r0, #3
	mov	lr, pc
	bx	r4
	b	.L52
.L58:
	.align	2
.L57:
	.word	waitForVBlank
	.word	loadPalette
	.word	GameBG0BehindPal
	.word	level
	.word	DMANow
	.word	GameBG0BehindTiles
	.word	100726784
	.word	GameBG0BehindMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	shadowOAM
	.word	23812
	.word	state
	.word	100679680
	.word	GameBG0Tiles
	.word	100722688
	.word	GameBG0Map
	.word	GameBG2Tiles
	.word	GameBG2Map
	.size	goToGame, .-goToGame
	.align	2
	.global	cutscene
	.type	cutscene, %function
cutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+8
	ldr	r3, [r3]
	cmp	r3, #9
	beq	.L62
	ldmfd	sp!, {r4, lr}
	bx	lr
.L62:
	bl	goToGame
	ldr	r3, .L63+12
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	waitForVBlank
	.word	drawCutscene
	.word	textSeed
	.word	initGame
	.size	cutscene, .-cutscene
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	ldr	r0, .L67+4
	ldr	r3, .L67+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L67+12
	mov	r3, #8256
	ldr	r2, .L67+16
	ldr	r1, .L67+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L67+24
	ldr	r1, .L67+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L67+32
	ldr	r1, .L67+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r5, .L67+40
	ldr	r2, .L67+44
	ldr	r1, .L67+48
	mov	r0, #3
	mov	r3, #32768
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+52
	mov	lr, pc
	bx	r3
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r6, #67108864
	mov	r1, #4352
	mov	ip, #4096
	ldr	r3, .L67+56
	ldr	r2, .L67+60
	ldr	r0, .L67+64
	strh	r1, [r6]	@ movhi
	strh	r3, [r6, #8]	@ movhi
	mov	r1, r5
	strh	r2, [r5, #8]	@ movhi
	strh	r0, [r5, #10]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r5, #12]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #4
	ldr	r2, .L67+68
	strh	r3, [r6, #16]	@ movhi
	strh	r3, [r6, #18]	@ movhi
	str	r1, [r2]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	waitForVBlank
	.word	PausePal
	.word	loadPalette
	.word	DMANow
	.word	100679680
	.word	PauseTiles
	.word	100722688
	.word	PauseMap
	.word	83886592
	.word	spritesheet2Pal
	.word	shadowOAM
	.word	100728832
	.word	spritesheet2Tiles
	.word	hideSprites
	.word	7428
	.word	16435
	.word	16458
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L97
	ldr	r3, .L97+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #128
	beq	.L70
	ldr	r2, .L97+8
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L92
.L70:
	tst	r3, #64
	beq	.L71
	ldr	r2, .L97+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L93
.L71:
	tst	r3, #8
	beq	.L69
	ldr	r3, .L97+8
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L69
	ldr	r1, .L97+12
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.L94
	cmp	r2, #1
	beq	.L95
	cmp	r2, #2
	beq	.L96
.L69:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L93:
	ldr	ip, .L97+12
	ldr	r2, [ip]
	cmp	r2, #0
	beq	.L71
	ldr	lr, .L97+16
	ldrh	r5, [lr, #8]
	sub	r0, r2, #1
	sub	r5, r5, #15
	mov	r3, #512
	str	r0, [ip]
	mov	r1, lr
	mov	r2, #117440512
	mov	r0, #3
	ldr	r6, .L97+20
	strh	r5, [lr, #8]	@ movhi
	mov	lr, pc
	bx	r6
	ldrh	r3, [r4]
	b	.L71
.L92:
	ldr	ip, .L97+12
	ldr	r2, [ip]
	cmp	r2, #2
	beq	.L70
	ldr	lr, .L97+16
	ldrh	r5, [lr, #8]
	add	r0, r2, #1
	add	r5, r5, #15
	mov	r3, #512
	str	r0, [ip]
	mov	r1, lr
	mov	r2, #117440512
	mov	r0, #3
	ldr	r6, .L97+20
	strh	r5, [lr, #8]	@ movhi
	mov	lr, pc
	bx	r6
	ldrh	r3, [r4]
	b	.L70
.L96:
	mov	r6, #51
	mov	r4, #111
	mov	lr, #20
	mov	ip, #5
	ldr	r2, .L97+24
	ldr	r5, .L97+16
	str	r3, [r1]
	ldr	r0, .L97+28
	ldr	r1, .L97+32
	strh	r6, [r5, #8]	@ movhi
	str	r4, [r2, #8]
	ldr	r6, .L97+36
	ldr	r5, .L97+40
	str	lr, [r2, #12]
	ldr	r4, .L97+44
	ldr	lr, .L97+48
	str	r3, [r2, #72]
	ldr	r2, .L97+52
	str	ip, [r0]
	str	r3, [r1]
	ldr	ip, .L97+56
	ldr	r0, .L97+60
	ldr	r1, .L97+64
	str	r3, [r6]
	str	r3, [r5]
	str	r3, [r4]
	str	r3, [lr]
	str	r3, [r2, #16]
	str	r3, [r2, #48]
	str	r3, [r2, #80]
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r3, [ip]
	str	r3, [r0, #24]
	str	r3, [r1, #24]
	b	goToStart
.L95:
	ldr	r2, .L97+44
	ldr	r3, [r2]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2]
	b	.L69
.L94:
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToGame
.L98:
	.align	2
.L97:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	pauseState
	.word	shadowOAM
	.word	DMANow
	.word	player
	.word	bosslives
	.word	textSeed
	.word	level
	.word	firstSwitch
	.word	cheat
	.word	hOff
	.word	bar
	.word	vOff
	.word	boss
	.word	bHealth
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L101
	mov	lr, pc
	bx	r3
	ldr	r0, .L101+4
	ldr	r3, .L101+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L101+12
	mov	r3, #8960
	ldr	r2, .L101+16
	ldr	r1, .L101+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L101+24
	ldr	r1, .L101+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	ip, #256
	mov	r0, #5
	ldr	lr, .L101+32
	ldr	r1, .L101+36
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L102:
	.align	2
.L101:
	.word	waitForVBlank
	.word	WinPal
	.word	loadPalette
	.word	DMANow
	.word	100679680
	.word	WinTiles
	.word	100722688
	.word	WinMap
	.word	7428
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L105
	mov	lr, pc
	bx	r3
	ldr	r0, .L105+4
	ldr	r3, .L105+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L105+12
	mov	r3, #3056
	ldr	r2, .L105+16
	ldr	r1, .L105+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L105+24
	ldr	r1, .L105+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	ip, #256
	mov	r0, #6
	ldr	lr, .L105+32
	ldr	r1, .L105+36
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L106:
	.align	2
.L105:
	.word	waitForVBlank
	.word	LosePal
	.word	loadPalette
	.word	DMANow
	.word	100679680
	.word	LoseTiles
	.word	100722688
	.word	LoseMap
	.word	7428
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L118
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L108
	ldr	r3, .L118+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L115
.L108:
	ldr	r3, .L118+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L116
	ldr	r3, .L118+24
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L117
	ldmfd	sp!, {r4, lr}
	bx	lr
.L115:
	ldmfd	sp!, {r4, lr}
	b	goToPause
.L116:
	ldmfd	sp!, {r4, lr}
	b	goToLose
.L117:
	ldmfd	sp!, {r4, lr}
	b	goToWin
.L119:
	.align	2
.L118:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	livesRemaining
	.word	level
	.size	game, .-game
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L127
	stmfd	sp!, {r4, r5, r6, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L127+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L120
	ldr	r3, .L127+8
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L126
.L120:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L126:
	mov	lr, #51
	mov	r0, #111
	mov	r1, #20
	ldr	ip, .L127+12
	ldr	r2, .L127+16
	ldr	r5, .L127+20
	ldr	r4, .L127+24
	strh	lr, [ip, #8]	@ movhi
	ldr	lr, .L127+28
	str	r0, [r2, #8]
	str	r1, [r2, #12]
	ldr	ip, .L127+32
	ldr	r0, .L127+36
	ldr	r1, .L127+40
	ldr	r2, .L127+44
	str	r3, [r5]
	str	r3, [r4]
	str	r3, [lr]
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	b	goToStart
.L128:
	.align	2
.L127:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	shadowOAM
	.word	player
	.word	pauseState
	.word	textSeed
	.word	level
	.word	cheat
	.word	hOff
	.word	vOff
	.word	firstSwitch
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r7, fp, lr}
	ldr	r3, .L143
	mov	lr, pc
	bx	r3
	ldr	r3, .L143+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L143+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L143+12
	mov	r3, #1
	ldr	r2, .L143+16
	ldr	r1, .L143+20
	ldr	r0, .L143+24
	mov	lr, pc
	bx	r4
	ldr	r8, .L143+28
	ldr	r6, .L143+32
	ldr	r5, .L143+36
	ldr	fp, .L143+40
	ldr	r10, .L143+44
	ldr	r9, .L143+48
	ldr	r7, .L143+52
	ldr	r4, .L143+56
.L130:
	ldrh	r3, [r8]
	ldr	r2, [r6]
.L131:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L131
.L133:
	.word	.L132
	.word	.L134
	.word	.L135
	.word	.L136
	.word	.L137
	.word	.L139
	.word	.L139
.L139:
	mov	lr, pc
	bx	r7
	b	.L130
.L137:
	ldr	r3, .L143+60
	mov	lr, pc
	bx	r3
	b	.L130
.L136:
	ldr	r3, .L143+64
	mov	lr, pc
	bx	r3
	b	.L130
.L135:
	mov	lr, pc
	bx	r9
	b	.L130
.L134:
	mov	lr, pc
	bx	r10
	b	.L130
.L132:
	mov	lr, pc
	bx	fp
	b	.L130
.L144:
	.align	2
.L143:
	.word	goToStart
	.word	setupSounds
	.word	setupInterrupts
	.word	playSoundA
	.word	11025
	.word	2293056
	.word	BGaudio
	.word	buttons
	.word	state
	.word	oldButtons
	.word	start
	.word	cutscene
	.word	instructions
	.word	lose
	.word	67109120
	.word	pause
	.word	game
	.size	main, .-main
	.text
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	win, .-win
	.comm	buffer,41,4
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	livesRemaining,4,4
	.comm	cheat,4,4
	.comm	level,4,4
	.comm	titleState,4,4
	.comm	pauseState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
