
memory_region.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000001800000 <_vector_table>:
 1800000:	1400024e 	b	1800938 <_boot>
	...
 1800200:	14000061 	b	1800384 <SynchronousInterruptHandler>
	...
 1800280:	14000082 	b	1800488 <IRQInterruptHandler>
	...
 1800300:	140000a1 	b	1800584 <FIQInterruptHandler>
	...
 1800380:	14000099 	b	18005e4 <SErrorInterruptHandler>

0000000001800384 <SynchronousInterruptHandler>:
 1800384:	a9bf07e0 	stp	x0, x1, [sp, #-16]!
 1800388:	a9bf0fe2 	stp	x2, x3, [sp, #-16]!
 180038c:	a9bf17e4 	stp	x4, x5, [sp, #-16]!
 1800390:	a9bf1fe6 	stp	x6, x7, [sp, #-16]!
 1800394:	a9bf27e8 	stp	x8, x9, [sp, #-16]!
 1800398:	a9bf2fea 	stp	x10, x11, [sp, #-16]!
 180039c:	a9bf37ec 	stp	x12, x13, [sp, #-16]!
 18003a0:	a9bf3fee 	stp	x14, x15, [sp, #-16]!
 18003a4:	a9bf47f0 	stp	x16, x17, [sp, #-16]!
 18003a8:	a9bf4ff2 	stp	x18, x19, [sp, #-16]!
 18003ac:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 18003b0:	d53e5200 	mrs	x0, esr_el3
 18003b4:	92661400 	and	x0, x0, #0xfc000000
 18003b8:	d2a38001 	mov	x1, #0x1c000000            	// #469762048
 18003bc:	eb01001f 	cmp	x0, x1
 18003c0:	540004a1 	b.ne	1800454 <synchronoushandler>  // b.any
 18003c4:	d53e1141 	mrs	x1, cptr_el3
 18003c8:	9275f821 	and	x1, x1, #0xfffffffffffffbff
 18003cc:	d51e1141 	msr	cptr_el3, x1
 18003d0:	d5033fdf 	isb
 18003d4:	58002a60 	ldr	x0, 1800920 <FPUStatus+0x8>
 18003d8:	39400001 	ldrb	w1, [x0]
 18003dc:	350000e1 	cbnz	w1, 18003f8 <storefloat>
 18003e0:	52800021 	mov	w1, #0x1                   	// #1
 18003e4:	39000001 	strb	w1, [x0]
 18003e8:	58002a00 	ldr	x0, 1800928 <FPUStatus+0x10>
 18003ec:	58002a21 	ldr	x1, 1800930 <FPUStatus+0x18>
 18003f0:	f9000020 	str	x0, [x1]
 18003f4:	14000019 	b	1800458 <restorecontext>

00000000018003f8 <storefloat>:
 18003f8:	580029c1 	ldr	x1, 1800930 <FPUStatus+0x18>
 18003fc:	f9400020 	ldr	x0, [x1]
 1800400:	ac810400 	stp	q0, q1, [x0], #32
 1800404:	ac810c02 	stp	q2, q3, [x0], #32
 1800408:	ac811404 	stp	q4, q5, [x0], #32
 180040c:	ac811c06 	stp	q6, q7, [x0], #32
 1800410:	ac812408 	stp	q8, q9, [x0], #32
 1800414:	ac812c0a 	stp	q10, q11, [x0], #32
 1800418:	ac81340c 	stp	q12, q13, [x0], #32
 180041c:	ac813c0e 	stp	q14, q15, [x0], #32
 1800420:	ac814410 	stp	q16, q17, [x0], #32
 1800424:	ac814c12 	stp	q18, q19, [x0], #32
 1800428:	ac815414 	stp	q20, q21, [x0], #32
 180042c:	ac815c16 	stp	q22, q23, [x0], #32
 1800430:	ac816418 	stp	q24, q25, [x0], #32
 1800434:	ac816c1a 	stp	q26, q27, [x0], #32
 1800438:	ac81741c 	stp	q28, q29, [x0], #32
 180043c:	ac817c1e 	stp	q30, q31, [x0], #32
 1800440:	d53b4402 	mrs	x2, fpcr
 1800444:	d53b4423 	mrs	x3, fpsr
 1800448:	a8810c02 	stp	x2, x3, [x0], #16
 180044c:	f9000020 	str	x0, [x1]
 1800450:	14000002 	b	1800458 <restorecontext>

0000000001800454 <synchronoushandler>:
 1800454:	940002db 	bl	1800fc0 <SynchronousInterrupt>

0000000001800458 <restorecontext>:
 1800458:	a8c17bfd 	ldp	x29, x30, [sp], #16
 180045c:	a8c14ff2 	ldp	x18, x19, [sp], #16
 1800460:	a8c147f0 	ldp	x16, x17, [sp], #16
 1800464:	a8c13fee 	ldp	x14, x15, [sp], #16
 1800468:	a8c137ec 	ldp	x12, x13, [sp], #16
 180046c:	a8c12fea 	ldp	x10, x11, [sp], #16
 1800470:	a8c127e8 	ldp	x8, x9, [sp], #16
 1800474:	a8c11fe6 	ldp	x6, x7, [sp], #16
 1800478:	a8c117e4 	ldp	x4, x5, [sp], #16
 180047c:	a8c10fe2 	ldp	x2, x3, [sp], #16
 1800480:	a8c107e0 	ldp	x0, x1, [sp], #16
 1800484:	d69f03e0 	eret

0000000001800488 <IRQInterruptHandler>:
 1800488:	a9bf07e0 	stp	x0, x1, [sp, #-16]!
 180048c:	a9bf0fe2 	stp	x2, x3, [sp, #-16]!
 1800490:	a9bf17e4 	stp	x4, x5, [sp, #-16]!
 1800494:	a9bf1fe6 	stp	x6, x7, [sp, #-16]!
 1800498:	a9bf27e8 	stp	x8, x9, [sp, #-16]!
 180049c:	a9bf2fea 	stp	x10, x11, [sp, #-16]!
 18004a0:	a9bf37ec 	stp	x12, x13, [sp, #-16]!
 18004a4:	a9bf3fee 	stp	x14, x15, [sp, #-16]!
 18004a8:	a9bf47f0 	stp	x16, x17, [sp, #-16]!
 18004ac:	a9bf4ff2 	stp	x18, x19, [sp, #-16]!
 18004b0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 18004b4:	d53e1140 	mrs	x0, cptr_el3
 18004b8:	d53e4021 	mrs	x1, elr_el3
 18004bc:	d53e4002 	mrs	x2, spsr_el3
 18004c0:	a9bf07e0 	stp	x0, x1, [sp, #-16]!
 18004c4:	f81f0fe2 	str	x2, [sp, #-16]!
 18004c8:	d53e1141 	mrs	x1, cptr_el3
 18004cc:	b2760021 	orr	x1, x1, #0x400
 18004d0:	d51e1141 	msr	cptr_el3, x1
 18004d4:	d5033fdf 	isb
 18004d8:	940002b6 	bl	1800fb0 <IRQInterrupt>
 18004dc:	d53e1140 	mrs	x0, cptr_el3
 18004e0:	f2760000 	ands	x0, x0, #0x400
 18004e4:	540002e1 	b.ne	1800540 <RestorePrevState>  // b.any
 18004e8:	58002241 	ldr	x1, 1800930 <FPUStatus+0x18>
 18004ec:	f9400020 	ldr	x0, [x1]
 18004f0:	a9ff0c02 	ldp	x2, x3, [x0, #-16]!
 18004f4:	d51b4402 	msr	fpcr, x2
 18004f8:	d51b4423 	msr	fpsr, x3
 18004fc:	adff7c1e 	ldp	q30, q31, [x0, #-32]!
 1800500:	adff741c 	ldp	q28, q29, [x0, #-32]!
 1800504:	adff6c1a 	ldp	q26, q27, [x0, #-32]!
 1800508:	adff6418 	ldp	q24, q25, [x0, #-32]!
 180050c:	adff5c16 	ldp	q22, q23, [x0, #-32]!
 1800510:	adff5414 	ldp	q20, q21, [x0, #-32]!
 1800514:	adff4c12 	ldp	q18, q19, [x0, #-32]!
 1800518:	adff4410 	ldp	q16, q17, [x0, #-32]!
 180051c:	adff3c0e 	ldp	q14, q15, [x0, #-32]!
 1800520:	adff340c 	ldp	q12, q13, [x0, #-32]!
 1800524:	adff2c0a 	ldp	q10, q11, [x0, #-32]!
 1800528:	adff2408 	ldp	q8, q9, [x0, #-32]!
 180052c:	adff1c06 	ldp	q6, q7, [x0, #-32]!
 1800530:	adff1404 	ldp	q4, q5, [x0, #-32]!
 1800534:	adff0c02 	ldp	q2, q3, [x0, #-32]!
 1800538:	adff0400 	ldp	q0, q1, [x0, #-32]!
 180053c:	f9000020 	str	x0, [x1]

0000000001800540 <RestorePrevState>:
 1800540:	f84107e2 	ldr	x2, [sp], #16
 1800544:	a8c107e0 	ldp	x0, x1, [sp], #16
 1800548:	d51e1140 	msr	cptr_el3, x0
 180054c:	d51e4021 	msr	elr_el3, x1
 1800550:	d51e4002 	msr	spsr_el3, x2
 1800554:	a8c17bfd 	ldp	x29, x30, [sp], #16
 1800558:	a8c14ff2 	ldp	x18, x19, [sp], #16
 180055c:	a8c147f0 	ldp	x16, x17, [sp], #16
 1800560:	a8c13fee 	ldp	x14, x15, [sp], #16
 1800564:	a8c137ec 	ldp	x12, x13, [sp], #16
 1800568:	a8c12fea 	ldp	x10, x11, [sp], #16
 180056c:	a8c127e8 	ldp	x8, x9, [sp], #16
 1800570:	a8c11fe6 	ldp	x6, x7, [sp], #16
 1800574:	a8c117e4 	ldp	x4, x5, [sp], #16
 1800578:	a8c10fe2 	ldp	x2, x3, [sp], #16
 180057c:	a8c107e0 	ldp	x0, x1, [sp], #16
 1800580:	d69f03e0 	eret

0000000001800584 <FIQInterruptHandler>:
 1800584:	a9bf07e0 	stp	x0, x1, [sp, #-16]!
 1800588:	a9bf0fe2 	stp	x2, x3, [sp, #-16]!
 180058c:	a9bf17e4 	stp	x4, x5, [sp, #-16]!
 1800590:	a9bf1fe6 	stp	x6, x7, [sp, #-16]!
 1800594:	a9bf27e8 	stp	x8, x9, [sp, #-16]!
 1800598:	a9bf2fea 	stp	x10, x11, [sp, #-16]!
 180059c:	a9bf37ec 	stp	x12, x13, [sp, #-16]!
 18005a0:	a9bf3fee 	stp	x14, x15, [sp, #-16]!
 18005a4:	a9bf47f0 	stp	x16, x17, [sp, #-16]!
 18005a8:	a9bf4ff2 	stp	x18, x19, [sp, #-16]!
 18005ac:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 18005b0:	9400027c 	bl	1800fa0 <FIQInterrupt>
 18005b4:	a8c17bfd 	ldp	x29, x30, [sp], #16
 18005b8:	a8c14ff2 	ldp	x18, x19, [sp], #16
 18005bc:	a8c147f0 	ldp	x16, x17, [sp], #16
 18005c0:	a8c13fee 	ldp	x14, x15, [sp], #16
 18005c4:	a8c137ec 	ldp	x12, x13, [sp], #16
 18005c8:	a8c12fea 	ldp	x10, x11, [sp], #16
 18005cc:	a8c127e8 	ldp	x8, x9, [sp], #16
 18005d0:	a8c11fe6 	ldp	x6, x7, [sp], #16
 18005d4:	a8c117e4 	ldp	x4, x5, [sp], #16
 18005d8:	a8c10fe2 	ldp	x2, x3, [sp], #16
 18005dc:	a8c107e0 	ldp	x0, x1, [sp], #16
 18005e0:	d69f03e0 	eret

00000000018005e4 <SErrorInterruptHandler>:
 18005e4:	a9bf07e0 	stp	x0, x1, [sp, #-16]!
 18005e8:	a9bf0fe2 	stp	x2, x3, [sp, #-16]!
 18005ec:	a9bf17e4 	stp	x4, x5, [sp, #-16]!
 18005f0:	a9bf1fe6 	stp	x6, x7, [sp, #-16]!
 18005f4:	a9bf27e8 	stp	x8, x9, [sp, #-16]!
 18005f8:	a9bf2fea 	stp	x10, x11, [sp, #-16]!
 18005fc:	a9bf37ec 	stp	x12, x13, [sp, #-16]!
 1800600:	a9bf3fee 	stp	x14, x15, [sp, #-16]!
 1800604:	a9bf47f0 	stp	x16, x17, [sp, #-16]!
 1800608:	a9bf4ff2 	stp	x18, x19, [sp, #-16]!
 180060c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 1800610:	94000270 	bl	1800fd0 <SErrorInterrupt>
 1800614:	a8c17bfd 	ldp	x29, x30, [sp], #16
 1800618:	a8c14ff2 	ldp	x18, x19, [sp], #16
 180061c:	a8c147f0 	ldp	x16, x17, [sp], #16
 1800620:	a8c13fee 	ldp	x14, x15, [sp], #16
 1800624:	a8c137ec 	ldp	x12, x13, [sp], #16
 1800628:	a8c12fea 	ldp	x10, x11, [sp], #16
 180062c:	a8c127e8 	ldp	x8, x9, [sp], #16
 1800630:	a8c11fe6 	ldp	x6, x7, [sp], #16
 1800634:	a8c117e4 	ldp	x4, x5, [sp], #16
 1800638:	a8c10fe2 	ldp	x2, x3, [sp], #16
 180063c:	a8c107e0 	ldp	x0, x1, [sp], #16
 1800640:	d69f03e0 	eret
	...

0000000001800700 <FPUContext>:
	...

0000000001800910 <FPUContextBase>:
	...

0000000001800918 <FPUStatus>:
	...
 1800920:	01800918 	.word	0x01800918
 1800924:	00000000 	.word	0x00000000
 1800928:	01800700 	.word	0x01800700
 180092c:	00000000 	.word	0x00000000
 1800930:	01800910 	.word	0x01800910
 1800934:	00000000 	.word	0x00000000

0000000001800938 <_boot>:
 1800938:	d2800000 	mov	x0, #0x0                   	// #0
 180093c:	d2800001 	mov	x1, #0x0                   	// #0
 1800940:	d2800002 	mov	x2, #0x0                   	// #0
 1800944:	d2800003 	mov	x3, #0x0                   	// #0
 1800948:	d2800004 	mov	x4, #0x0                   	// #0
 180094c:	d2800005 	mov	x5, #0x0                   	// #0
 1800950:	d2800006 	mov	x6, #0x0                   	// #0
 1800954:	d2800007 	mov	x7, #0x0                   	// #0
 1800958:	d2800008 	mov	x8, #0x0                   	// #0
 180095c:	d2800009 	mov	x9, #0x0                   	// #0
 1800960:	d280000a 	mov	x10, #0x0                   	// #0
 1800964:	d280000b 	mov	x11, #0x0                   	// #0
 1800968:	d280000c 	mov	x12, #0x0                   	// #0
 180096c:	d280000d 	mov	x13, #0x0                   	// #0
 1800970:	d280000e 	mov	x14, #0x0                   	// #0
 1800974:	d280000f 	mov	x15, #0x0                   	// #0
 1800978:	d2800010 	mov	x16, #0x0                   	// #0
 180097c:	d2800011 	mov	x17, #0x0                   	// #0
 1800980:	d2800012 	mov	x18, #0x0                   	// #0
 1800984:	d2800013 	mov	x19, #0x0                   	// #0
 1800988:	d2800014 	mov	x20, #0x0                   	// #0
 180098c:	d2800015 	mov	x21, #0x0                   	// #0
 1800990:	d2800016 	mov	x22, #0x0                   	// #0
 1800994:	d2800017 	mov	x23, #0x0                   	// #0
 1800998:	d2800018 	mov	x24, #0x0                   	// #0
 180099c:	d2800019 	mov	x25, #0x0                   	// #0
 18009a0:	d280001a 	mov	x26, #0x0                   	// #0
 18009a4:	d280001b 	mov	x27, #0x0                   	// #0
 18009a8:	d280001c 	mov	x28, #0x0                   	// #0
 18009ac:	d280001d 	mov	x29, #0x0                   	// #0
 18009b0:	d280001e 	mov	x30, #0x0                   	// #0

00000000018009b4 <OKToRun>:
 18009b4:	d5384240 	mrs	x0, currentel
 18009b8:	f100301f 	cmp	x0, #0xc
 18009bc:	54000080 	b.eq	18009cc <InitEL3>  // b.none
 18009c0:	f100101f 	cmp	x0, #0x4
 18009c4:	54000780 	b.eq	1800ab4 <InitEL1>  // b.none
 18009c8:	1400003c 	b	1800ab8 <error>

00000000018009cc <InitEL3>:
 18009cc:	58000c21 	ldr	x1, 1800b50 <invalidateCaches_end+0xc>
 18009d0:	d51ec001 	msr	vbar_el3, x1
 18009d4:	d53800a0 	mrs	x0, mpidr_el1
 18009d8:	92401c00 	and	x0, x0, #0xff
 18009dc:	2a0003e0 	mov	w0, w0
 18009e0:	18000b42 	ldr	w2, 1800b48 <invalidateCaches_end+0x4>
 18009e4:	52800103 	mov	w3, #0x8                   	// #8
 18009e8:	1b037c00 	mul	w0, w0, w3
 18009ec:	0b000042 	add	w2, w2, w0
 18009f0:	f9000041 	str	x1, [x2]
 18009f4:	58000b22 	ldr	x2, 1800b58 <invalidateCaches_end+0x14>
 18009f8:	9100005f 	mov	sp, x2
 18009fc:	d2800000 	mov	x0, #0x0                   	// #0
 1800a00:	b2760000 	orr	x0, x0, #0x400
 1800a04:	d51e1140 	msr	cptr_el3, x0
 1800a08:	d5033fdf 	isb
 1800a0c:	58000aa0 	ldr	x0, 1800b60 <invalidateCaches_end+0x1c>
 1800a10:	f900001f 	str	xzr, [x0]
 1800a14:	52800001 	mov	w1, #0x0                   	// #0
 1800a18:	32150021 	orr	w1, w1, #0x800
 1800a1c:	32160021 	orr	w1, w1, #0x400
 1800a20:	321d0021 	orr	w1, w1, #0x8
 1800a24:	321e0021 	orr	w1, w1, #0x4
 1800a28:	321f0021 	orr	w1, w1, #0x2
 1800a2c:	d51e1101 	msr	scr_el3, x1
 1800a30:	580009c0 	ldr	x0, 1800b68 <invalidateCaches_end+0x24>
 1800a34:	b2540000 	orr	x0, x0, #0x100000000000
 1800a38:	d519f200 	msr	s3_1_c15_c2_0, x0
 1800a3c:	580009a0 	ldr	x0, 1800b70 <invalidateCaches_end+0x2c>
 1800a40:	d51be000 	msr	cntfrq_el0, x0
 1800a44:	d539f220 	mrs	x0, s3_1_c15_c2_1
 1800a48:	b27a0000 	orr	x0, x0, #0x40
 1800a4c:	d519f220 	msr	s3_1_c15_c2_1, x0
 1800a50:	d5033fdf 	isb
 1800a54:	d50e871f 	tlbi	alle3
 1800a58:	d508751f 	ic	iallu
 1800a5c:	94000018 	bl	1800abc <invalidate_dcaches>
 1800a60:	d5033f9f 	dsb	sy
 1800a64:	d5033fdf 	isb
 1800a68:	58000881 	ldr	x1, 1800b78 <invalidateCaches_end+0x34>
 1800a6c:	d51e2001 	msr	ttbr0_el3, x1
 1800a70:	58000881 	ldr	x1, 1800b80 <invalidateCaches_end+0x3c>
 1800a74:	d51ea201 	msr	mair_el3, x1
 1800a78:	58000881 	ldr	x1, 1800b88 <invalidateCaches_end+0x44>
 1800a7c:	d51e2041 	msr	tcr_el3, x1
 1800a80:	d5033fdf 	isb
 1800a84:	d53b4221 	mrs	x1, daif
 1800a88:	9277f821 	and	x1, x1, #0xfffffffffffffeff
 1800a8c:	d51b4221 	msr	daif, x1
 1800a90:	d2800001 	mov	x1, #0x0                   	// #0
 1800a94:	b2740021 	orr	x1, x1, #0x1000
 1800a98:	b27d0021 	orr	x1, x1, #0x8
 1800a9c:	b27e0021 	orr	x1, x1, #0x4
 1800aa0:	b2400021 	orr	x1, x1, #0x1
 1800aa4:	d51e1001 	msr	sctlr_el3, x1
 1800aa8:	d5033f9f 	dsb	sy
 1800aac:	d5033fdf 	isb
 1800ab0:	14000154 	b	1801000 <_startup>

0000000001800ab4 <InitEL1>:
 1800ab4:	14000001 	b	1800ab8 <error>

0000000001800ab8 <error>:
 1800ab8:	14000000 	b	1800ab8 <error>

0000000001800abc <invalidate_dcaches>:
 1800abc:	d5033bbf 	dmb	ish
 1800ac0:	d5390020 	mrs	x0, clidr_el1
 1800ac4:	53186802 	ubfx	w2, w0, #24, #3
 1800ac8:	7100005f 	cmp	w2, #0x0
 1800acc:	540003c0 	b.eq	1800b44 <invalidateCaches_end>  // b.none
 1800ad0:	52800001 	mov	w1, #0x0                   	// #0

0000000001800ad4 <invalidateCaches_flush_level>:
 1800ad4:	0b010423 	add	w3, w1, w1, lsl #1
 1800ad8:	1ac32403 	lsr	w3, w0, w3
 1800adc:	53000863 	ubfx	w3, w3, #0, #3
 1800ae0:	7100087f 	cmp	w3, #0x2
 1800ae4:	540002ab 	b.lt	1800b38 <invalidateCaches_next_level>  // b.tstop
 1800ae8:	531f7824 	lsl	w4, w1, #1
 1800aec:	d51a0004 	msr	csselr_el1, x4
 1800af0:	d5033fdf 	isb
 1800af4:	d5390004 	mrs	x4, ccsidr_el1
 1800af8:	53000883 	ubfx	w3, w4, #0, #3
 1800afc:	11000863 	add	w3, w3, #0x2
 1800b00:	530d6c85 	ubfx	w5, w4, #13, #15
 1800b04:	53033084 	ubfx	w4, w4, #3, #10
 1800b08:	5ac01086 	clz	w6, w4

0000000001800b0c <invalidateCaches_flush_set>:
 1800b0c:	2a0403e8 	mov	w8, w4

0000000001800b10 <invalidateCaches_flush_way>:
 1800b10:	531f7827 	lsl	w7, w1, #1
 1800b14:	1ac320a9 	lsl	w9, w5, w3
 1800b18:	2a0900e7 	orr	w7, w7, w9
 1800b1c:	1ac62109 	lsl	w9, w8, w6
 1800b20:	2a0900e7 	orr	w7, w7, w9
 1800b24:	d5087e47 	dc	cisw, x7
 1800b28:	71000508 	subs	w8, w8, #0x1
 1800b2c:	54ffff2a 	b.ge	1800b10 <invalidateCaches_flush_way>  // b.tcont
 1800b30:	710004a5 	subs	w5, w5, #0x1
 1800b34:	54fffeca 	b.ge	1800b0c <invalidateCaches_flush_set>  // b.tcont

0000000001800b38 <invalidateCaches_next_level>:
 1800b38:	11000421 	add	w1, w1, #0x1
 1800b3c:	6b01005f 	cmp	w2, w1
 1800b40:	54fffcac 	b.gt	1800ad4 <invalidateCaches_flush_level>

0000000001800b44 <invalidateCaches_end>:
 1800b44:	d65f03c0 	ret
 1800b48:	fd5c0040 	.word	0xfd5c0040
 1800b4c:	00000000 	.inst	0x00000000 ; undefined
 1800b50:	01800000 	.word	0x01800000
 1800b54:	00000000 	.word	0x00000000
 1800b58:	018110c0 	.word	0x018110c0
 1800b5c:	00000000 	.word	0x00000000
 1800b60:	01800918 	.word	0x01800918
 1800b64:	00000000 	.word	0x00000000
 1800b68:	080ca000 	.word	0x080ca000
 1800b6c:	00000000 	.word	0x00000000
 1800b70:	01fc9f08 	.word	0x01fc9f08
 1800b74:	00000000 	.word	0x00000000
 1800b78:	01804000 	.word	0x01804000
 1800b7c:	00000000 	.word	0x00000000
 1800b80:	0400ff44 	.word	0x0400ff44
 1800b84:	000000bb 	.word	0x000000bb
 1800b88:	80823518 	.word	0x80823518
 1800b8c:	00000000 	.word	0x00000000

0000000001800b90 <deregister_tm_clones>:
 1800b90:	f0000000 	adrp	x0, 1803000 <impure_data+0x498>
 1800b94:	910ac000 	add	x0, x0, #0x2b0
 1800b98:	f0000001 	adrp	x1, 1803000 <impure_data+0x498>
 1800b9c:	910ac021 	add	x1, x1, #0x2b0
 1800ba0:	eb00003f 	cmp	x1, x0
 1800ba4:	54000080 	b.eq	1800bb4 <deregister_tm_clones+0x24>  // b.none
 1800ba8:	58000081 	ldr	x1, 1800bb8 <deregister_tm_clones+0x28>
 1800bac:	b4000041 	cbz	x1, 1800bb4 <deregister_tm_clones+0x24>
 1800bb0:	d61f0020 	br	x1
 1800bb4:	d65f03c0 	ret
	...

0000000001800bc0 <register_tm_clones>:
 1800bc0:	f0000000 	adrp	x0, 1803000 <impure_data+0x498>
 1800bc4:	910ac000 	add	x0, x0, #0x2b0
 1800bc8:	f0000001 	adrp	x1, 1803000 <impure_data+0x498>
 1800bcc:	910ac021 	add	x1, x1, #0x2b0
 1800bd0:	cb000021 	sub	x1, x1, x0
 1800bd4:	9343fc21 	asr	x1, x1, #3
 1800bd8:	8b41fc21 	add	x1, x1, x1, lsr #63
 1800bdc:	9341fc21 	asr	x1, x1, #1
 1800be0:	b4000081 	cbz	x1, 1800bf0 <register_tm_clones+0x30>
 1800be4:	580000a2 	ldr	x2, 1800bf8 <register_tm_clones+0x38>
 1800be8:	b4000042 	cbz	x2, 1800bf0 <register_tm_clones+0x30>
 1800bec:	d61f0040 	br	x2
 1800bf0:	d65f03c0 	ret
 1800bf4:	d503201f 	nop
	...

0000000001800c00 <__do_global_dtors_aux>:
 1800c00:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 1800c04:	910003fd 	mov	x29, sp
 1800c08:	f9000bf3 	str	x19, [sp, #16]
 1800c0c:	f0000053 	adrp	x19, 180b000 <__exidx_end>
 1800c10:	39420260 	ldrb	w0, [x19, #128]
 1800c14:	35000120 	cbnz	w0, 1800c38 <__do_global_dtors_aux+0x38>
 1800c18:	97ffffde 	bl	1800b90 <deregister_tm_clones>
 1800c1c:	58000160 	ldr	x0, 1800c48 <__do_global_dtors_aux+0x48>
 1800c20:	b4000080 	cbz	x0, 1800c30 <__do_global_dtors_aux+0x30>
 1800c24:	f0000000 	adrp	x0, 1803000 <impure_data+0x498>
 1800c28:	910b0000 	add	x0, x0, #0x2c0
 1800c2c:	d503201f 	nop
 1800c30:	52800020 	mov	w0, #0x1                   	// #1
 1800c34:	39020260 	strb	w0, [x19, #128]
 1800c38:	f9400bf3 	ldr	x19, [sp, #16]
 1800c3c:	a8c27bfd 	ldp	x29, x30, [sp], #32
 1800c40:	d65f03c0 	ret
 1800c44:	d503201f 	nop
	...

0000000001800c50 <frame_dummy>:
 1800c50:	58000180 	ldr	x0, 1800c80 <frame_dummy+0x30>
 1800c54:	b4000140 	cbz	x0, 1800c7c <frame_dummy+0x2c>
 1800c58:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 1800c5c:	f0000041 	adrp	x1, 180b000 <__exidx_end>
 1800c60:	f0000000 	adrp	x0, 1803000 <impure_data+0x498>
 1800c64:	91022021 	add	x1, x1, #0x88
 1800c68:	910003fd 	mov	x29, sp
 1800c6c:	910b0000 	add	x0, x0, #0x2c0
 1800c70:	d503201f 	nop
 1800c74:	a8c17bfd 	ldp	x29, x30, [sp], #16
 1800c78:	17ffffd2 	b	1800bc0 <register_tm_clones>
 1800c7c:	17ffffd1 	b	1800bc0 <register_tm_clones>
	...

0000000001800c88 <_mainCRTStartup>:
 1800c88:	100007c1 	adr	x1, 1800d80 <_cpu_init_hook+0x4>
 1800c8c:	528002c0 	mov	w0, #0x16                  	// #22
 1800c90:	d45e0000 	hlt	#0xf000
 1800c94:	58000760 	ldr	x0, 1800d80 <_cpu_init_hook+0x4>
 1800c98:	f9400401 	ldr	x1, [x0, #8]
 1800c9c:	927cec20 	and	x0, x1, #0xfffffffffffffff0
 1800ca0:	9100001f 	mov	sp, x0
 1800ca4:	d280001d 	mov	x29, #0x0                   	// #0
 1800ca8:	a9bf77fd 	stp	x29, x29, [sp, #-16]!
 1800cac:	910003fd 	mov	x29, sp
 1800cb0:	94000033 	bl	1800d7c <_cpu_init_hook>
 1800cb4:	580006a0 	ldr	x0, 1800d88 <_cpu_init_hook+0xc>
 1800cb8:	52800001 	mov	w1, #0x0                   	// #0
 1800cbc:	580006a2 	ldr	x2, 1800d90 <_cpu_init_hook+0x14>
 1800cc0:	cb000042 	sub	x2, x2, x0
 1800cc4:	9400051f 	bl	1802140 <memset>
 1800cc8:	940000b4 	bl	1800f98 <initialise_monitor_handles>
 1800ccc:	58000660 	ldr	x0, 1800d98 <_cpu_init_hook+0x1c>
 1800cd0:	940004ca 	bl	1801ff8 <atexit>
 1800cd4:	940004f1 	bl	1802098 <__libc_init_array>
 1800cd8:	10000681 	adr	x1, 1800da8 <_cpu_init_hook+0x2c>
 1800cdc:	528002a0 	mov	w0, #0x15                  	// #21
 1800ce0:	d45e0000 	hlt	#0xf000
 1800ce4:	58000628 	ldr	x8, 1800da8 <_cpu_init_hook+0x2c>
 1800ce8:	d2800000 	mov	x0, #0x0                   	// #0
 1800cec:	910003e1 	mov	x1, sp
 1800cf0:	58000582 	ldr	x2, 1800da0 <_cpu_init_hook+0x24>
 1800cf4:	f81f8c20 	str	x0, [x1, #-8]!
 1800cf8:	38401503 	ldrb	w3, [x8], #1
 1800cfc:	34000243 	cbz	w3, 1800d44 <_mainCRTStartup+0xbc>
 1800d00:	7100807f 	cmp	w3, #0x20
 1800d04:	54ffffa0 	b.eq	1800cf8 <_mainCRTStartup+0x70>  // b.none
 1800d08:	52800404 	mov	w4, #0x20                  	// #32
 1800d0c:	71008869 	subs	w9, w3, #0x22
 1800d10:	d1000508 	sub	x8, x8, #0x1
 1800d14:	7a451924 	ccmp	w9, #0x5, #0x4, ne  // ne = any
 1800d18:	1a840064 	csel	w4, w3, w4, eq  // eq = none
 1800d1c:	9a881508 	cinc	x8, x8, eq  // eq = none
 1800d20:	f81f8c28 	str	x8, [x1, #-8]!
 1800d24:	91000400 	add	x0, x0, #0x1
 1800d28:	38401503 	ldrb	w3, [x8], #1
 1800d2c:	340000c3 	cbz	w3, 1800d44 <_mainCRTStartup+0xbc>
 1800d30:	6b03009f 	cmp	w4, w3
 1800d34:	54ffffa1 	b.ne	1800d28 <_mainCRTStartup+0xa0>  // b.any
 1800d38:	52800004 	mov	w4, #0x0                   	// #0
 1800d3c:	381ff104 	sturb	w4, [x8, #-1]
 1800d40:	17ffffee 	b	1800cf8 <_mainCRTStartup+0x70>
 1800d44:	91000023 	add	x3, x1, #0x0
 1800d48:	8b204c24 	add	x4, x1, w0, uxtw #3
 1800d4c:	eb03009f 	cmp	x4, x3
 1800d50:	540000e3 	b.cc	1800d6c <_mainCRTStartup+0xe4>  // b.lo, b.ul, b.last
 1800d54:	f85f8085 	ldur	x5, [x4, #-8]
 1800d58:	f9400066 	ldr	x6, [x3]
 1800d5c:	f81f8c86 	str	x6, [x4, #-8]!
 1800d60:	f8008465 	str	x5, [x3], #8
 1800d64:	eb03009f 	cmp	x4, x3
 1800d68:	54ffff68 	b.hi	1800d54 <_mainCRTStartup+0xcc>  // b.pmore
 1800d6c:	927cec24 	and	x4, x1, #0xfffffffffffffff0
 1800d70:	9100009f 	mov	sp, x4
 1800d74:	9400065b 	bl	18026e0 <main>
 1800d78:	140004a6 	b	1802010 <exit>

0000000001800d7c <_cpu_init_hook>:
 1800d7c:	d65f03c0 	ret
 1800d80:	018029c8 	.word	0x018029c8
 1800d84:	00000000 	.word	0x00000000
 1800d88:	0180b080 	.word	0x0180b080
 1800d8c:	00000000 	.word	0x00000000
 1800d90:	0180d0c0 	.word	0x0180d0c0
 1800d94:	00000000 	.word	0x00000000
 1800d98:	01802048 	.word	0x01802048
 1800d9c:	00000000 	.word	0x00000000
 1800da0:	018029e8 	.word	0x018029e8
 1800da4:	00000000 	.word	0x00000000
 1800da8:	018029f0 	.word	0x018029f0
 1800dac:	00000000 	.word	0x00000000
 1800db0:	000000ff 	.word	0x000000ff
	...

0000000001800dc0 <dot_product_1>:
 1800dc0:	721e7442 	ands	w2, w2, #0xfffffffc
 1800dc4:	540001c0 	b.eq	1800dfc <dot_product_1+0x3c>  // b.none
 1800dc8:	51000443 	sub	w3, w2, #0x1
 1800dcc:	0f000400 	movi	v0.2s, #0x0
 1800dd0:	91000463 	add	x3, x3, #0x1
 1800dd4:	d2800002 	mov	x2, #0x0                   	// #0
 1800dd8:	d37ef463 	lsl	x3, x3, #2
 1800ddc:	d503201f 	nop
 1800de0:	bc626802 	ldr	s2, [x0, x2]
 1800de4:	bc626821 	ldr	s1, [x1, x2]
 1800de8:	91001042 	add	x2, x2, #0x4
 1800dec:	eb02007f 	cmp	x3, x2
 1800df0:	1f010040 	fmadd	s0, s2, s1, s0
 1800df4:	54ffff61 	b.ne	1800de0 <dot_product_1+0x20>  // b.any
 1800df8:	d65f03c0 	ret
 1800dfc:	0f000400 	movi	v0.2s, #0x0
 1800e00:	d65f03c0 	ret
 1800e04:	d503201f 	nop
 1800e08:	d503201f 	nop
 1800e0c:	d503201f 	nop

0000000001800e10 <dot_product_2>:
 1800e10:	721e7442 	ands	w2, w2, #0xfffffffc
 1800e14:	540003c0 	b.eq	1800e8c <dot_product_2+0x7c>  // b.none
 1800e18:	0f000402 	movi	v2.2s, #0x0
 1800e1c:	52800003 	mov	w3, #0x0                   	// #0
 1800e20:	1e204043 	fmov	s3, s2
 1800e24:	1e204040 	fmov	s0, s2
 1800e28:	1e204041 	fmov	s1, s2
 1800e2c:	d503201f 	nop
 1800e30:	2a0303e7 	mov	w7, w3
 1800e34:	11000466 	add	w6, w3, #0x1
 1800e38:	11000865 	add	w5, w3, #0x2
 1800e3c:	11000c64 	add	w4, w3, #0x3
 1800e40:	11001063 	add	w3, w3, #0x4
 1800e44:	bc677813 	ldr	s19, [x0, x7, lsl #2]
 1800e48:	6b02007f 	cmp	w3, w2
 1800e4c:	bc677832 	ldr	s18, [x1, x7, lsl #2]
 1800e50:	bc667811 	ldr	s17, [x0, x6, lsl #2]
 1800e54:	bc667830 	ldr	s16, [x1, x6, lsl #2]
 1800e58:	bc657807 	ldr	s7, [x0, x5, lsl #2]
 1800e5c:	1f120661 	fmadd	s1, s19, s18, s1
 1800e60:	bc657826 	ldr	s6, [x1, x5, lsl #2]
 1800e64:	bc647805 	ldr	s5, [x0, x4, lsl #2]
 1800e68:	1f100220 	fmadd	s0, s17, s16, s0
 1800e6c:	bc647824 	ldr	s4, [x1, x4, lsl #2]
 1800e70:	1f060ce3 	fmadd	s3, s7, s6, s3
 1800e74:	1f0408a2 	fmadd	s2, s5, s4, s2
 1800e78:	54fffdc3 	b.cc	1800e30 <dot_product_2+0x20>  // b.lo, b.ul, b.last
 1800e7c:	1e202820 	fadd	s0, s1, s0
 1800e80:	1e232800 	fadd	s0, s0, s3
 1800e84:	1e222800 	fadd	s0, s0, s2
 1800e88:	d65f03c0 	ret
 1800e8c:	0f000400 	movi	v0.2s, #0x0
 1800e90:	d65f03c0 	ret
 1800e94:	d503201f 	nop
 1800e98:	d503201f 	nop
 1800e9c:	d503201f 	nop

0000000001800ea0 <vcmla_f32>:
 1800ea0:	6e82c420 	fcmla	v0.4s, v1.4s, v2.4s, #0
 1800ea4:	d65f03c0 	ret
 1800ea8:	d503201f 	nop
 1800eac:	d503201f 	nop

0000000001800eb0 <vector_add_c_16x4_restrict>:
 1800eb0:	fd400021 	ldr	d1, [x1]
 1800eb4:	fd400040 	ldr	d0, [x2]
 1800eb8:	0e618400 	add	v0.4h, v0.4h, v1.4h
 1800ebc:	fd000000 	str	d0, [x0]
 1800ec0:	d65f03c0 	ret
 1800ec4:	d503201f 	nop
 1800ec8:	d503201f 	nop
 1800ecc:	d503201f 	nop

0000000001800ed0 <matmul>:
 1800ed0:	d10083ff 	sub	sp, sp, #0x20
 1800ed4:	a90087e2 	stp	x2, x1, [sp, #8]
 1800ed8:	f9000fe0 	str	x0, [sp, #24]
 1800edc:	910043e0 	add	x0, sp, #0x10
 1800ee0:	f9400000 	ldr	x0, [x0]
 1800ee4:	910023e0 	add	x0, sp, #0x8
 1800ee8:	f9400001 	ldr	x1, [x0]
 1800eec:	910063e0 	add	x0, sp, #0x18
 1800ef0:	f9400002 	ldr	x2, [x0]

0000000001800ef4 <.loop>:
 1800ef4:	4cdf2800 	ld1	{v0.4s-v3.4s}, [x0], #64
 1800ef8:	4cdfa825 	ld1	{v5.4s, v6.4s}, [x1], #32
 1800efc:	4c9fa825 	st1	{v5.4s, v6.4s}, [x1], #32
 1800f00:	4f851010 	fmla	v16.4s, v0.4s, v5.s[0]
 1800f04:	4f851031 	fmla	v17.4s, v1.4s, v5.s[0]
 1800f08:	4fa51012 	fmla	v18.4s, v0.4s, v5.s[1]
 1800f0c:	4fa51033 	fmla	v19.4s, v1.4s, v5.s[1]
 1800f10:	4f851814 	fmla	v20.4s, v0.4s, v5.s[2]
 1800f14:	4f851835 	fmla	v21.4s, v1.4s, v5.s[2]
 1800f18:	4fa51816 	fmla	v22.4s, v0.4s, v5.s[3]
 1800f1c:	4fa51837 	fmla	v23.4s, v1.4s, v5.s[3]
 1800f20:	4f861018 	fmla	v24.4s, v0.4s, v6.s[0]
 1800f24:	4f861039 	fmla	v25.4s, v1.4s, v6.s[0]
 1800f28:	4fa6101a 	fmla	v26.4s, v0.4s, v6.s[1]
 1800f2c:	4fa6103b 	fmla	v27.4s, v1.4s, v6.s[1]
 1800f30:	4f86181c 	fmla	v28.4s, v0.4s, v6.s[2]
 1800f34:	4f86183d 	fmla	v29.4s, v1.4s, v6.s[2]
 1800f38:	4fa6181e 	fmla	v30.4s, v0.4s, v6.s[3]
 1800f3c:	4fa6183f 	fmla	v31.4s, v1.4s, v6.s[3]
 1800f40:	f1000463 	subs	x3, x3, #0x1
 1800f44:	54fffd81 	b.ne	1800ef4 <.loop>  // b.any
 1800f48:	910083ff 	add	sp, sp, #0x20
 1800f4c:	d65f03c0 	ret

0000000001800f50 <enable_caches>:
 1800f50:	d65f03c0 	ret
 1800f54:	d503201f 	nop
 1800f58:	d503201f 	nop
 1800f5c:	d503201f 	nop

0000000001800f60 <disable_caches>:
 1800f60:	d65f03c0 	ret
 1800f64:	d503201f 	nop
 1800f68:	d503201f 	nop
 1800f6c:	d503201f 	nop

0000000001800f70 <init_uart>:
 1800f70:	d65f03c0 	ret
 1800f74:	d503201f 	nop
 1800f78:	d503201f 	nop
 1800f7c:	d503201f 	nop

0000000001800f80 <init_platform>:
 1800f80:	d65f03c0 	ret
 1800f84:	d503201f 	nop
 1800f88:	d503201f 	nop
 1800f8c:	d503201f 	nop

0000000001800f90 <cleanup_platform>:
 1800f90:	d65f03c0 	ret
 1800f94:	00000000 	.inst	0x00000000 ; undefined

0000000001800f98 <initialise_monitor_handles>:
 1800f98:	d65f03c0 	ret
 1800f9c:	00000000 	.inst	0x00000000 ; undefined

0000000001800fa0 <FIQInterrupt>:
 1800fa0:	d0000000 	adrp	x0, 1802000 <atexit+0x8>
 1800fa4:	912be000 	add	x0, x0, #0xaf8
 1800fa8:	a9430001 	ldp	x1, x0, [x0, #48]
 1800fac:	d61f0020 	br	x1

0000000001800fb0 <IRQInterrupt>:
 1800fb0:	d0000000 	adrp	x0, 1802000 <atexit+0x8>
 1800fb4:	912be000 	add	x0, x0, #0xaf8
 1800fb8:	a9420001 	ldp	x1, x0, [x0, #32]
 1800fbc:	d61f0020 	br	x1

0000000001800fc0 <SynchronousInterrupt>:
 1800fc0:	d0000000 	adrp	x0, 1802000 <atexit+0x8>
 1800fc4:	912be000 	add	x0, x0, #0xaf8
 1800fc8:	a9410001 	ldp	x1, x0, [x0, #16]
 1800fcc:	d61f0020 	br	x1

0000000001800fd0 <SErrorInterrupt>:
 1800fd0:	d0000000 	adrp	x0, 1802000 <atexit+0x8>
 1800fd4:	912be000 	add	x0, x0, #0xaf8
 1800fd8:	a9440001 	ldp	x1, x0, [x0, #64]
 1800fdc:	d61f0020 	br	x1
 1800fe0:	0180b080 	.word	0x0180b080
 1800fe4:	00000000 	.word	0x00000000
 1800fe8:	0180b080 	.word	0x0180b080
 1800fec:	00000000 	.word	0x00000000
 1800ff0:	0180b080 	.word	0x0180b080
 1800ff4:	00000000 	.word	0x00000000
 1800ff8:	0180d0c0 	.word	0x0180d0c0
 1800ffc:	00000000 	.word	0x00000000

0000000001801000 <_startup>:
 1801000:	d2800000 	mov	x0, #0x0                   	// #0
 1801004:	5800036a 	ldr	x10, 1801070 <_startup+0x70>
 1801008:	b940014b 	ldr	w11, [x10]
 180100c:	d53800a2 	mrs	x2, mpidr_el1
 1801010:	d3401c42 	ubfx	x2, x2, #0, #8
 1801014:	52800021 	mov	w1, #0x1                   	// #1
 1801018:	1ac22022 	lsl	w2, w1, w2
 180101c:	6a02016b 	ands	w11, w11, w2
 1801020:	540001a1 	b.ne	1801054 <_startup+0x54>  // b.any
 1801024:	58fffde1 	ldr	x1, 1800fe0 <SErrorInterrupt+0x10>
 1801028:	58fffe02 	ldr	x2, 1800fe8 <SErrorInterrupt+0x18>
 180102c:	eb02003f 	cmp	x1, x2
 1801030:	5400006a 	b.ge	180103c <_startup+0x3c>  // b.tcont
 1801034:	f8008420 	str	x0, [x1], #8
 1801038:	17fffffd 	b	180102c <_startup+0x2c>
 180103c:	58fffda1 	ldr	x1, 1800ff0 <SErrorInterrupt+0x20>
 1801040:	58fffdc2 	ldr	x2, 1800ff8 <SErrorInterrupt+0x28>
 1801044:	eb02003f 	cmp	x1, x2
 1801048:	5400006a 	b.ge	1801054 <_startup+0x54>  // b.tcont
 180104c:	f8008420 	str	x0, [x1], #8
 1801050:	17fffffd 	b	1801044 <_startup+0x44>
 1801054:	94000411 	bl	1802098 <__libc_init_array>
 1801058:	d2800000 	mov	x0, #0x0                   	// #0
 180105c:	d2800001 	mov	x1, #0x0                   	// #0
 1801060:	940005a0 	bl	18026e0 <main>
 1801064:	940003f9 	bl	1802048 <__libc_fini_array>
 1801068:	940003ea 	bl	1802010 <exit>
 180106c:	14000000 	b	180106c <_startup+0x6c>
 1801070:	fd5c0090 	.word	0xfd5c0090
 1801074:	00000000 	.word	0x00000000

0000000001801078 <Xil_DCacheDisable>:
 1801078:	d5033f9f 	dsb	sy
 180107c:	d2800000 	mov	x0, #0x0                   	// #0
 1801080:	d53e1000 	mrs	x0, sctlr_el3
 1801084:	121d7800 	and	w0, w0, #0xfffffffb
 1801088:	d51e1000 	msr	sctlr_el3, x0
 180108c:	d5033f9f 	dsb	sy
 1801090:	52800000 	mov	w0, #0x0                   	// #0
 1801094:	d51a0000 	msr	csselr_el1, x0
 1801098:	d5033fdf 	isb
 180109c:	d5390000 	mrs	x0, ccsidr_el1
 18010a0:	53033008 	ubfx	w8, w0, #3, #10
 18010a4:	530d6c05 	ubfx	w5, w0, #13, #15
 18010a8:	11000508 	add	w8, w8, #0x1
 18010ac:	110004a5 	add	w5, w5, #0x1
 18010b0:	dac01107 	clz	x7, x8
 18010b4:	12001ce7 	and	w7, w7, #0xff
 18010b8:	12000804 	and	w4, w0, #0x7
 18010bc:	11001084 	add	w4, w4, #0x4
 18010c0:	51007ce0 	sub	w0, w7, #0x1f
 18010c4:	52800027 	mov	w7, #0x1                   	// #1
 18010c8:	52800006 	mov	w6, #0x0                   	// #0
 18010cc:	1ac420e4 	lsl	w4, w7, w4
 18010d0:	52800003 	mov	w3, #0x0                   	// #0
 18010d4:	1ac020e7 	lsl	w7, w7, w0
 18010d8:	52800001 	mov	w1, #0x0                   	// #0
 18010dc:	52800000 	mov	w0, #0x0                   	// #0
 18010e0:	2a000062 	orr	w2, w3, w0
 18010e4:	d5087e42 	dc	cisw, x2
 18010e8:	11000421 	add	w1, w1, #0x1
 18010ec:	0b040000 	add	w0, w0, w4
 18010f0:	6b0100bf 	cmp	w5, w1
 18010f4:	54ffff61 	b.ne	18010e0 <Xil_DCacheDisable+0x68>  // b.any
 18010f8:	110004c6 	add	w6, w6, #0x1
 18010fc:	0b070063 	add	w3, w3, w7
 1801100:	6b06011f 	cmp	w8, w6
 1801104:	54fffea1 	b.ne	18010d8 <Xil_DCacheDisable+0x60>  // b.any
 1801108:	d5033f9f 	dsb	sy
 180110c:	52800040 	mov	w0, #0x2                   	// #2
 1801110:	d51a0000 	msr	csselr_el1, x0
 1801114:	d5033fdf 	isb
 1801118:	d5390000 	mrs	x0, ccsidr_el1
 180111c:	53033009 	ubfx	w9, w0, #3, #10
 1801120:	530d6c05 	ubfx	w5, w0, #13, #15
 1801124:	11000529 	add	w9, w9, #0x1
 1801128:	110004a5 	add	w5, w5, #0x1
 180112c:	dac01128 	clz	x8, x9
 1801130:	12001d08 	and	w8, w8, #0xff
 1801134:	12000803 	and	w3, w0, #0x7
 1801138:	11001063 	add	w3, w3, #0x4
 180113c:	51007d00 	sub	w0, w8, #0x1f
 1801140:	52800028 	mov	w8, #0x1                   	// #1
 1801144:	52800007 	mov	w7, #0x0                   	// #0
 1801148:	1ac32103 	lsl	w3, w8, w3
 180114c:	52800006 	mov	w6, #0x0                   	// #0
 1801150:	1ac02108 	lsl	w8, w8, w0
 1801154:	d503201f 	nop
 1801158:	321f00c4 	orr	w4, w6, #0x2
 180115c:	52800001 	mov	w1, #0x0                   	// #0
 1801160:	52800000 	mov	w0, #0x0                   	// #0
 1801164:	d503201f 	nop
 1801168:	2a000082 	orr	w2, w4, w0
 180116c:	d5087e42 	dc	cisw, x2
 1801170:	11000421 	add	w1, w1, #0x1
 1801174:	0b030000 	add	w0, w0, w3
 1801178:	6b0100bf 	cmp	w5, w1
 180117c:	54ffff61 	b.ne	1801168 <Xil_DCacheDisable+0xf0>  // b.any
 1801180:	110004e7 	add	w7, w7, #0x1
 1801184:	0b0800c6 	add	w6, w6, w8
 1801188:	6b07013f 	cmp	w9, w7
 180118c:	54fffe61 	b.ne	1801158 <Xil_DCacheDisable+0xe0>  // b.any
 1801190:	d5033f9f 	dsb	sy
 1801194:	d50e871f 	tlbi	alle3
 1801198:	d5033f9f 	dsb	sy
 180119c:	d5033fdf 	isb
 18011a0:	d65f03c0 	ret
 18011a4:	d503201f 	nop

00000000018011a8 <Xil_DCacheInvalidate>:
 18011a8:	d53b422a 	mrs	x10, daif
 18011ac:	321a0540 	orr	w0, w10, #0xc0
 18011b0:	d51b4220 	msr	daif, x0
 18011b4:	52800000 	mov	w0, #0x0                   	// #0
 18011b8:	d51a0000 	msr	csselr_el1, x0
 18011bc:	d5033fdf 	isb
 18011c0:	d5390000 	mrs	x0, ccsidr_el1
 18011c4:	53033008 	ubfx	w8, w0, #3, #10
 18011c8:	530d6c05 	ubfx	w5, w0, #13, #15
 18011cc:	11000508 	add	w8, w8, #0x1
 18011d0:	110004a5 	add	w5, w5, #0x1
 18011d4:	dac01107 	clz	x7, x8
 18011d8:	12001ce7 	and	w7, w7, #0xff
 18011dc:	12000804 	and	w4, w0, #0x7
 18011e0:	11001084 	add	w4, w4, #0x4
 18011e4:	51007ce0 	sub	w0, w7, #0x1f
 18011e8:	52800027 	mov	w7, #0x1                   	// #1
 18011ec:	52800006 	mov	w6, #0x0                   	// #0
 18011f0:	1ac420e4 	lsl	w4, w7, w4
 18011f4:	52800003 	mov	w3, #0x0                   	// #0
 18011f8:	1ac020e7 	lsl	w7, w7, w0
 18011fc:	d503201f 	nop
 1801200:	52800001 	mov	w1, #0x0                   	// #0
 1801204:	52800000 	mov	w0, #0x0                   	// #0
 1801208:	2a000062 	orr	w2, w3, w0
 180120c:	d5087642 	dc	isw, x2
 1801210:	11000421 	add	w1, w1, #0x1
 1801214:	0b040000 	add	w0, w0, w4
 1801218:	6b0100bf 	cmp	w5, w1
 180121c:	54ffff61 	b.ne	1801208 <Xil_DCacheInvalidate+0x60>  // b.any
 1801220:	110004c6 	add	w6, w6, #0x1
 1801224:	0b070063 	add	w3, w3, w7
 1801228:	6b06011f 	cmp	w8, w6
 180122c:	54fffea1 	b.ne	1801200 <Xil_DCacheInvalidate+0x58>  // b.any
 1801230:	d5033f9f 	dsb	sy
 1801234:	52800040 	mov	w0, #0x2                   	// #2
 1801238:	d51a0000 	msr	csselr_el1, x0
 180123c:	d5033fdf 	isb
 1801240:	d5390000 	mrs	x0, ccsidr_el1
 1801244:	53033009 	ubfx	w9, w0, #3, #10
 1801248:	530d6c05 	ubfx	w5, w0, #13, #15
 180124c:	11000529 	add	w9, w9, #0x1
 1801250:	110004a5 	add	w5, w5, #0x1
 1801254:	dac01128 	clz	x8, x9
 1801258:	12001d08 	and	w8, w8, #0xff
 180125c:	12000803 	and	w3, w0, #0x7
 1801260:	11001063 	add	w3, w3, #0x4
 1801264:	51007d00 	sub	w0, w8, #0x1f
 1801268:	52800028 	mov	w8, #0x1                   	// #1
 180126c:	52800007 	mov	w7, #0x0                   	// #0
 1801270:	1ac32103 	lsl	w3, w8, w3
 1801274:	52800006 	mov	w6, #0x0                   	// #0
 1801278:	1ac02108 	lsl	w8, w8, w0
 180127c:	d503201f 	nop
 1801280:	321f00c4 	orr	w4, w6, #0x2
 1801284:	52800001 	mov	w1, #0x0                   	// #0
 1801288:	52800000 	mov	w0, #0x0                   	// #0
 180128c:	d503201f 	nop
 1801290:	2a000082 	orr	w2, w4, w0
 1801294:	d5087642 	dc	isw, x2
 1801298:	11000421 	add	w1, w1, #0x1
 180129c:	0b030000 	add	w0, w0, w3
 18012a0:	6b0100bf 	cmp	w5, w1
 18012a4:	54ffff61 	b.ne	1801290 <Xil_DCacheInvalidate+0xe8>  // b.any
 18012a8:	110004e7 	add	w7, w7, #0x1
 18012ac:	0b0800c6 	add	w6, w6, w8
 18012b0:	6b07013f 	cmp	w9, w7
 18012b4:	54fffe61 	b.ne	1801280 <Xil_DCacheInvalidate+0xd8>  // b.any
 18012b8:	d5033f9f 	dsb	sy
 18012bc:	d51b422a 	msr	daif, x10
 18012c0:	d65f03c0 	ret
 18012c4:	d503201f 	nop

00000000018012c8 <Xil_DCacheEnable>:
 18012c8:	d53e100b 	mrs	x11, sctlr_el3
 18012cc:	3610004b 	tbz	w11, #2, 18012d4 <Xil_DCacheEnable+0xc>
 18012d0:	d65f03c0 	ret
 18012d4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 18012d8:	910003fd 	mov	x29, sp
 18012dc:	97ffffb3 	bl	18011a8 <Xil_DCacheInvalidate>
 18012e0:	321e016b 	orr	w11, w11, #0x4
 18012e4:	d51e100b 	msr	sctlr_el3, x11
 18012e8:	a8c17bfd 	ldp	x29, x30, [sp], #16
 18012ec:	d65f03c0 	ret

00000000018012f0 <Xil_DCacheInvalidateLine>:
 18012f0:	d53b4221 	mrs	x1, daif
 18012f4:	321a0422 	orr	w2, w1, #0xc0
 18012f8:	d51b4222 	msr	daif, x2
 18012fc:	52800002 	mov	w2, #0x0                   	// #0
 1801300:	d51a0002 	msr	csselr_el1, x2
 1801304:	927ae400 	and	x0, x0, #0xffffffffffffffc0
 1801308:	d5087620 	dc	ivac, x0
 180130c:	d5033f9f 	dsb	sy
 1801310:	52800042 	mov	w2, #0x2                   	// #2
 1801314:	d51a0002 	msr	csselr_el1, x2
 1801318:	d5087620 	dc	ivac, x0
 180131c:	d5033f9f 	dsb	sy
 1801320:	d51b4221 	msr	daif, x1
 1801324:	d65f03c0 	ret

0000000001801328 <Xil_DCacheInvalidateRange>:
 1801328:	d53b4225 	mrs	x5, daif
 180132c:	321a04a2 	orr	w2, w5, #0xc0
 1801330:	d51b4222 	msr	daif, x2
 1801334:	b40005e1 	cbz	x1, 18013f0 <Xil_DCacheInvalidateRange+0xc8>
 1801338:	8b010001 	add	x1, x0, x1
 180133c:	f240141f 	tst	x0, #0x3f
 1801340:	540001e0 	b.eq	180137c <Xil_DCacheInvalidateRange+0x54>  // b.none
 1801344:	927ae400 	and	x0, x0, #0xffffffffffffffc0
 1801348:	d53b4222 	mrs	x2, daif
 180134c:	321a0443 	orr	w3, w2, #0xc0
 1801350:	d51b4223 	msr	daif, x3
 1801354:	52800003 	mov	w3, #0x0                   	// #0
 1801358:	d51a0003 	msr	csselr_el1, x3
 180135c:	d50b7e20 	dc	civac, x0
 1801360:	d5033f9f 	dsb	sy
 1801364:	52800043 	mov	w3, #0x2                   	// #2
 1801368:	d51a0003 	msr	csselr_el1, x3
 180136c:	d50b7e20 	dc	civac, x0
 1801370:	d5033f9f 	dsb	sy
 1801374:	d51b4222 	msr	daif, x2
 1801378:	91010000 	add	x0, x0, #0x40
 180137c:	f240143f 	tst	x1, #0x3f
 1801380:	540001c0 	b.eq	18013b8 <Xil_DCacheInvalidateRange+0x90>  // b.none
 1801384:	927ae421 	and	x1, x1, #0xffffffffffffffc0
 1801388:	d53b4222 	mrs	x2, daif
 180138c:	321a0443 	orr	w3, w2, #0xc0
 1801390:	d51b4223 	msr	daif, x3
 1801394:	52800003 	mov	w3, #0x0                   	// #0
 1801398:	d51a0003 	msr	csselr_el1, x3
 180139c:	d50b7e21 	dc	civac, x1
 18013a0:	d5033f9f 	dsb	sy
 18013a4:	52800043 	mov	w3, #0x2                   	// #2
 18013a8:	d51a0003 	msr	csselr_el1, x3
 18013ac:	d50b7e21 	dc	civac, x1
 18013b0:	d5033f9f 	dsb	sy
 18013b4:	d51b4222 	msr	daif, x2
 18013b8:	52800004 	mov	w4, #0x0                   	// #0
 18013bc:	52800043 	mov	w3, #0x2                   	// #2
 18013c0:	eb01001f 	cmp	x0, x1
 18013c4:	5400016a 	b.ge	18013f0 <Xil_DCacheInvalidateRange+0xc8>  // b.tcont
 18013c8:	d51a0004 	msr	csselr_el1, x4
 18013cc:	927ae402 	and	x2, x0, #0xffffffffffffffc0
 18013d0:	d5087622 	dc	ivac, x2
 18013d4:	d5033f9f 	dsb	sy
 18013d8:	d51a0003 	msr	csselr_el1, x3
 18013dc:	d5087622 	dc	ivac, x2
 18013e0:	d5033f9f 	dsb	sy
 18013e4:	91010000 	add	x0, x0, #0x40
 18013e8:	eb01001f 	cmp	x0, x1
 18013ec:	54fffeeb 	b.lt	18013c8 <Xil_DCacheInvalidateRange+0xa0>  // b.tstop
 18013f0:	d51b4225 	msr	daif, x5
 18013f4:	d65f03c0 	ret

00000000018013f8 <Xil_DCacheFlush>:
 18013f8:	d53b422a 	mrs	x10, daif
 18013fc:	321a0540 	orr	w0, w10, #0xc0
 1801400:	d51b4220 	msr	daif, x0
 1801404:	52800000 	mov	w0, #0x0                   	// #0
 1801408:	d51a0000 	msr	csselr_el1, x0
 180140c:	d5033fdf 	isb
 1801410:	d5390000 	mrs	x0, ccsidr_el1
 1801414:	53033008 	ubfx	w8, w0, #3, #10
 1801418:	530d6c05 	ubfx	w5, w0, #13, #15
 180141c:	11000508 	add	w8, w8, #0x1
 1801420:	110004a5 	add	w5, w5, #0x1
 1801424:	dac01107 	clz	x7, x8
 1801428:	12001ce7 	and	w7, w7, #0xff
 180142c:	12000804 	and	w4, w0, #0x7
 1801430:	11001084 	add	w4, w4, #0x4
 1801434:	51007ce0 	sub	w0, w7, #0x1f
 1801438:	52800027 	mov	w7, #0x1                   	// #1
 180143c:	52800006 	mov	w6, #0x0                   	// #0
 1801440:	1ac420e4 	lsl	w4, w7, w4
 1801444:	52800003 	mov	w3, #0x0                   	// #0
 1801448:	1ac020e7 	lsl	w7, w7, w0
 180144c:	d503201f 	nop
 1801450:	52800001 	mov	w1, #0x0                   	// #0
 1801454:	52800000 	mov	w0, #0x0                   	// #0
 1801458:	2a000062 	orr	w2, w3, w0
 180145c:	d5087e42 	dc	cisw, x2
 1801460:	11000421 	add	w1, w1, #0x1
 1801464:	0b040000 	add	w0, w0, w4
 1801468:	6b0100bf 	cmp	w5, w1
 180146c:	54ffff61 	b.ne	1801458 <Xil_DCacheFlush+0x60>  // b.any
 1801470:	110004c6 	add	w6, w6, #0x1
 1801474:	0b070063 	add	w3, w3, w7
 1801478:	6b06011f 	cmp	w8, w6
 180147c:	54fffea1 	b.ne	1801450 <Xil_DCacheFlush+0x58>  // b.any
 1801480:	d5033f9f 	dsb	sy
 1801484:	52800040 	mov	w0, #0x2                   	// #2
 1801488:	d51a0000 	msr	csselr_el1, x0
 180148c:	d5033fdf 	isb
 1801490:	d5390000 	mrs	x0, ccsidr_el1
 1801494:	53033009 	ubfx	w9, w0, #3, #10
 1801498:	530d6c05 	ubfx	w5, w0, #13, #15
 180149c:	11000529 	add	w9, w9, #0x1
 18014a0:	110004a5 	add	w5, w5, #0x1
 18014a4:	dac01128 	clz	x8, x9
 18014a8:	12001d08 	and	w8, w8, #0xff
 18014ac:	12000803 	and	w3, w0, #0x7
 18014b0:	11001063 	add	w3, w3, #0x4
 18014b4:	51007d00 	sub	w0, w8, #0x1f
 18014b8:	52800028 	mov	w8, #0x1                   	// #1
 18014bc:	52800007 	mov	w7, #0x0                   	// #0
 18014c0:	1ac32103 	lsl	w3, w8, w3
 18014c4:	52800006 	mov	w6, #0x0                   	// #0
 18014c8:	1ac02108 	lsl	w8, w8, w0
 18014cc:	d503201f 	nop
 18014d0:	321f00c4 	orr	w4, w6, #0x2
 18014d4:	52800001 	mov	w1, #0x0                   	// #0
 18014d8:	52800000 	mov	w0, #0x0                   	// #0
 18014dc:	d503201f 	nop
 18014e0:	2a000082 	orr	w2, w4, w0
 18014e4:	d5087e42 	dc	cisw, x2
 18014e8:	11000421 	add	w1, w1, #0x1
 18014ec:	0b030000 	add	w0, w0, w3
 18014f0:	6b0100bf 	cmp	w5, w1
 18014f4:	54ffff61 	b.ne	18014e0 <Xil_DCacheFlush+0xe8>  // b.any
 18014f8:	110004e7 	add	w7, w7, #0x1
 18014fc:	0b0800c6 	add	w6, w6, w8
 1801500:	6b07013f 	cmp	w9, w7
 1801504:	54fffe61 	b.ne	18014d0 <Xil_DCacheFlush+0xd8>  // b.any
 1801508:	d5033f9f 	dsb	sy
 180150c:	d51b422a 	msr	daif, x10
 1801510:	d65f03c0 	ret
 1801514:	d503201f 	nop

0000000001801518 <Xil_DCacheFlushLine>:
 1801518:	d53b4221 	mrs	x1, daif
 180151c:	321a0422 	orr	w2, w1, #0xc0
 1801520:	d51b4222 	msr	daif, x2
 1801524:	52800002 	mov	w2, #0x0                   	// #0
 1801528:	d51a0002 	msr	csselr_el1, x2
 180152c:	927ae400 	and	x0, x0, #0xffffffffffffffc0
 1801530:	d50b7e20 	dc	civac, x0
 1801534:	d5033f9f 	dsb	sy
 1801538:	52800042 	mov	w2, #0x2                   	// #2
 180153c:	d51a0002 	msr	csselr_el1, x2
 1801540:	d50b7e20 	dc	civac, x0
 1801544:	d5033f9f 	dsb	sy
 1801548:	d51b4221 	msr	daif, x1
 180154c:	d65f03c0 	ret

0000000001801550 <Xil_DCacheFlushRange>:
 1801550:	d53b4225 	mrs	x5, daif
 1801554:	321a04a2 	orr	w2, w5, #0xc0
 1801558:	d51b4222 	msr	daif, x2
 180155c:	b40005e1 	cbz	x1, 1801618 <Xil_DCacheFlushRange+0xc8>
 1801560:	8b010001 	add	x1, x0, x1
 1801564:	f240141f 	tst	x0, #0x3f
 1801568:	540001e0 	b.eq	18015a4 <Xil_DCacheFlushRange+0x54>  // b.none
 180156c:	927ae400 	and	x0, x0, #0xffffffffffffffc0
 1801570:	d53b4222 	mrs	x2, daif
 1801574:	321a0443 	orr	w3, w2, #0xc0
 1801578:	d51b4223 	msr	daif, x3
 180157c:	52800003 	mov	w3, #0x0                   	// #0
 1801580:	d51a0003 	msr	csselr_el1, x3
 1801584:	d50b7e20 	dc	civac, x0
 1801588:	d5033f9f 	dsb	sy
 180158c:	52800043 	mov	w3, #0x2                   	// #2
 1801590:	d51a0003 	msr	csselr_el1, x3
 1801594:	d50b7e20 	dc	civac, x0
 1801598:	d5033f9f 	dsb	sy
 180159c:	d51b4222 	msr	daif, x2
 18015a0:	91010000 	add	x0, x0, #0x40
 18015a4:	f240143f 	tst	x1, #0x3f
 18015a8:	540001c0 	b.eq	18015e0 <Xil_DCacheFlushRange+0x90>  // b.none
 18015ac:	927ae421 	and	x1, x1, #0xffffffffffffffc0
 18015b0:	d53b4222 	mrs	x2, daif
 18015b4:	321a0443 	orr	w3, w2, #0xc0
 18015b8:	d51b4223 	msr	daif, x3
 18015bc:	52800003 	mov	w3, #0x0                   	// #0
 18015c0:	d51a0003 	msr	csselr_el1, x3
 18015c4:	d50b7e21 	dc	civac, x1
 18015c8:	d5033f9f 	dsb	sy
 18015cc:	52800043 	mov	w3, #0x2                   	// #2
 18015d0:	d51a0003 	msr	csselr_el1, x3
 18015d4:	d50b7e21 	dc	civac, x1
 18015d8:	d5033f9f 	dsb	sy
 18015dc:	d51b4222 	msr	daif, x2
 18015e0:	52800004 	mov	w4, #0x0                   	// #0
 18015e4:	52800043 	mov	w3, #0x2                   	// #2
 18015e8:	eb01001f 	cmp	x0, x1
 18015ec:	5400016a 	b.ge	1801618 <Xil_DCacheFlushRange+0xc8>  // b.tcont
 18015f0:	d51a0004 	msr	csselr_el1, x4
 18015f4:	927ae402 	and	x2, x0, #0xffffffffffffffc0
 18015f8:	d50b7e22 	dc	civac, x2
 18015fc:	d5033f9f 	dsb	sy
 1801600:	d51a0003 	msr	csselr_el1, x3
 1801604:	d50b7e22 	dc	civac, x2
 1801608:	d5033f9f 	dsb	sy
 180160c:	91010000 	add	x0, x0, #0x40
 1801610:	eb01001f 	cmp	x0, x1
 1801614:	54fffeeb 	b.lt	18015f0 <Xil_DCacheFlushRange+0xa0>  // b.tstop
 1801618:	d51b4225 	msr	daif, x5
 180161c:	d65f03c0 	ret

0000000001801620 <Xil_ICacheEnable>:
 1801620:	d53e1000 	mrs	x0, sctlr_el3
 1801624:	37600180 	tbnz	w0, #12, 1801654 <Xil_ICacheEnable+0x34>
 1801628:	d53b4221 	mrs	x1, daif
 180162c:	321a0422 	orr	w2, w1, #0xc0
 1801630:	d51b4222 	msr	daif, x2
 1801634:	52800022 	mov	w2, #0x1                   	// #1
 1801638:	d51a0002 	msr	csselr_el1, x2
 180163c:	d5033f9f 	dsb	sy
 1801640:	d508751f 	ic	iallu
 1801644:	d5033f9f 	dsb	sy
 1801648:	d51b4221 	msr	daif, x1
 180164c:	32140000 	orr	w0, w0, #0x1000
 1801650:	d51e1000 	msr	sctlr_el3, x0
 1801654:	d65f03c0 	ret

0000000001801658 <Xil_ICacheDisable>:
 1801658:	d53e1000 	mrs	x0, sctlr_el3
 180165c:	d53b4221 	mrs	x1, daif
 1801660:	321a0422 	orr	w2, w1, #0xc0
 1801664:	d51b4222 	msr	daif, x2
 1801668:	52800022 	mov	w2, #0x1                   	// #1
 180166c:	d51a0002 	msr	csselr_el1, x2
 1801670:	d5033f9f 	dsb	sy
 1801674:	d508751f 	ic	iallu
 1801678:	d5033f9f 	dsb	sy
 180167c:	d51b4221 	msr	daif, x1
 1801680:	12137800 	and	w0, w0, #0xffffefff
 1801684:	d51e1000 	msr	sctlr_el3, x0
 1801688:	d65f03c0 	ret
 180168c:	d503201f 	nop

0000000001801690 <Xil_ICacheInvalidate>:
 1801690:	d53b4220 	mrs	x0, daif
 1801694:	321a0401 	orr	w1, w0, #0xc0
 1801698:	d51b4221 	msr	daif, x1
 180169c:	52800021 	mov	w1, #0x1                   	// #1
 18016a0:	d51a0001 	msr	csselr_el1, x1
 18016a4:	d5033f9f 	dsb	sy
 18016a8:	d508751f 	ic	iallu
 18016ac:	d5033f9f 	dsb	sy
 18016b0:	d51b4220 	msr	daif, x0
 18016b4:	d65f03c0 	ret

00000000018016b8 <Xil_ICacheInvalidateLine>:
 18016b8:	d53b4221 	mrs	x1, daif
 18016bc:	321a0422 	orr	w2, w1, #0xc0
 18016c0:	d51b4222 	msr	daif, x2
 18016c4:	52800022 	mov	w2, #0x1                   	// #1
 18016c8:	d51a0002 	msr	csselr_el1, x2
 18016cc:	927ae400 	and	x0, x0, #0xffffffffffffffc0
 18016d0:	d50b7520 	ic	ivau, x0
 18016d4:	d5033f9f 	dsb	sy
 18016d8:	d51b4221 	msr	daif, x1
 18016dc:	d65f03c0 	ret

00000000018016e0 <Xil_ICacheInvalidateRange>:
 18016e0:	d53b4223 	mrs	x3, daif
 18016e4:	321a0462 	orr	w2, w3, #0xc0
 18016e8:	d51b4222 	msr	daif, x2
 18016ec:	b40001a1 	cbz	x1, 1801720 <Xil_ICacheInvalidateRange+0x40>
 18016f0:	8b010001 	add	x1, x0, x1
 18016f4:	52800022 	mov	w2, #0x1                   	// #1
 18016f8:	927ae400 	and	x0, x0, #0xffffffffffffffc0
 18016fc:	d51a0002 	msr	csselr_el1, x2
 1801700:	eb00003f 	cmp	x1, x0
 1801704:	540000ed 	b.le	1801720 <Xil_ICacheInvalidateRange+0x40>
 1801708:	aa0003e2 	mov	x2, x0
 180170c:	d503201f 	nop
 1801710:	d50b7520 	ic	ivau, x0
 1801714:	91010042 	add	x2, x2, #0x40
 1801718:	eb02003f 	cmp	x1, x2
 180171c:	54ffffac 	b.gt	1801710 <Xil_ICacheInvalidateRange+0x30>
 1801720:	d5033f9f 	dsb	sy
 1801724:	d51b4223 	msr	daif, x3
 1801728:	d65f03c0 	ret
 180172c:	d503201f 	nop

0000000001801730 <Xil_ConfigureL1Prefetch>:
 1801730:	12001c00 	and	w0, w0, #0xff
 1801734:	d539f201 	mrs	x1, s3_1_c15_c2_0
 1801738:	9270f021 	and	x1, x1, #0xffffffffffff1fff
 180173c:	d3731c00 	ubfiz	x0, x0, #13, #8
 1801740:	aa010000 	orr	x0, x0, x1
 1801744:	d519f200 	msr	s3_1_c15_c2_0, x0
 1801748:	d65f03c0 	ret
 180174c:	00000000 	.inst	0x00000000 ; undefined

0000000001801750 <Xil_ExceptionNullHandler>:
 1801750:	14000000 	b	1801750 <Xil_ExceptionNullHandler>
 1801754:	d503201f 	nop

0000000001801758 <Xil_SyncAbortHandler>:
 1801758:	14000000 	b	1801758 <Xil_SyncAbortHandler>
 180175c:	d503201f 	nop

0000000001801760 <Xil_SErrorAbortHandler>:
 1801760:	14000000 	b	1801760 <Xil_SErrorAbortHandler>
 1801764:	d503201f 	nop

0000000001801768 <Xil_ExceptionInit>:
 1801768:	d65f03c0 	ret
 180176c:	d503201f 	nop

0000000001801770 <Xil_ExceptionRegisterHandler>:
 1801770:	d37c7c00 	ubfiz	x0, x0, #4, #32
 1801774:	b0000003 	adrp	x3, 1802000 <atexit+0x8>
 1801778:	912be063 	add	x3, x3, #0xaf8
 180177c:	8b000064 	add	x4, x3, x0
 1801780:	f8206861 	str	x1, [x3, x0]
 1801784:	f9000482 	str	x2, [x4, #8]
 1801788:	d65f03c0 	ret
 180178c:	d503201f 	nop

0000000001801790 <Xil_GetExceptionRegisterHandler>:
 1801790:	d37c7c00 	ubfiz	x0, x0, #4, #32
 1801794:	b0000003 	adrp	x3, 1802000 <atexit+0x8>
 1801798:	912be063 	add	x3, x3, #0xaf8
 180179c:	8b000064 	add	x4, x3, x0
 18017a0:	f8606860 	ldr	x0, [x3, x0]
 18017a4:	f9000020 	str	x0, [x1]
 18017a8:	f9400480 	ldr	x0, [x4, #8]
 18017ac:	f9000040 	str	x0, [x2]
 18017b0:	d65f03c0 	ret
 18017b4:	d503201f 	nop

00000000018017b8 <Xil_ExceptionRemoveHandler>:
 18017b8:	d37c7c00 	ubfiz	x0, x0, #4, #32
 18017bc:	b0000001 	adrp	x1, 1802000 <atexit+0x8>
 18017c0:	912be021 	add	x1, x1, #0xaf8
 18017c4:	90000002 	adrp	x2, 1801000 <_startup>
 18017c8:	8b000023 	add	x3, x1, x0
 18017cc:	911d4042 	add	x2, x2, #0x750
 18017d0:	f8206822 	str	x2, [x1, x0]
 18017d4:	f900047f 	str	xzr, [x3, #8]
 18017d8:	d65f03c0 	ret
 18017dc:	00000000 	.inst	0x00000000 ; undefined

00000000018017e0 <getnum>:
 18017e0:	f9400004 	ldr	x4, [x0]
 18017e4:	b4000284 	cbz	x4, 1801834 <getnum+0x54>
 18017e8:	b0000002 	adrp	x2, 1802000 <atexit+0x8>
 18017ec:	39400081 	ldrb	w1, [x4]
 18017f0:	f945ac45 	ldr	x5, [x2, #2904]
 18017f4:	8b0100a1 	add	x1, x5, x1
 18017f8:	39400421 	ldrb	w1, [x1, #1]
 18017fc:	361001c1 	tbz	w1, #2, 1801834 <getnum+0x54>
 1801800:	52800001 	mov	w1, #0x0                   	// #0
 1801804:	d503201f 	nop
 1801808:	39400083 	ldrb	w3, [x4]
 180180c:	0b010821 	add	w1, w1, w1, lsl #2
 1801810:	38401c82 	ldrb	w2, [x4, #1]!
 1801814:	5100c063 	sub	w3, w3, #0x30
 1801818:	8b0200a2 	add	x2, x5, x2
 180181c:	0b010461 	add	w1, w3, w1, lsl #1
 1801820:	39400442 	ldrb	w2, [x2, #1]
 1801824:	3717ff22 	tbnz	w2, #2, 1801808 <getnum+0x28>
 1801828:	f9000004 	str	x4, [x0]
 180182c:	2a0103e0 	mov	w0, w1
 1801830:	d65f03c0 	ret
 1801834:	52800001 	mov	w1, #0x0                   	// #0
 1801838:	f9000004 	str	x4, [x0]
 180183c:	2a0103e0 	mov	w0, w1
 1801840:	d65f03c0 	ret
 1801844:	d503201f 	nop

0000000001801848 <padding.part.0>:
 1801848:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 180184c:	910003fd 	mov	x29, sp
 1801850:	a90153f3 	stp	x19, x20, [sp, #16]
 1801854:	aa0003f4 	mov	x20, x0
 1801858:	29400013 	ldp	w19, w0, [x0]
 180185c:	6b00027f 	cmp	w19, w0
 1801860:	5400010a 	b.ge	1801880 <padding.part.0+0x38>  // b.tcont
 1801864:	d503201f 	nop
 1801868:	39403280 	ldrb	w0, [x20, #12]
 180186c:	11000673 	add	w19, w19, #0x1
 1801870:	940001cc 	bl	1801fa0 <outbyte>
 1801874:	b9400680 	ldr	w0, [x20, #4]
 1801878:	6b00027f 	cmp	w19, w0
 180187c:	54ffff6b 	b.lt	1801868 <padding.part.0+0x20>  // b.tstop
 1801880:	a94153f3 	ldp	x19, x20, [sp, #16]
 1801884:	a8c27bfd 	ldp	x29, x30, [sp], #32
 1801888:	d65f03c0 	ret
 180188c:	d503201f 	nop

0000000001801890 <outnum1>:
 1801890:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
 1801894:	b0000003 	adrp	x3, 1802000 <atexit+0x8>
 1801898:	91266063 	add	x3, x3, #0x998
 180189c:	910003fd 	mov	x29, sp
 18018a0:	f90013f5 	str	x21, [sp, #32]
 18018a4:	910143b5 	add	x21, x29, #0x50
 18018a8:	a9401c66 	ldp	x6, x7, [x3]
 18018ac:	a90153f3 	stp	x19, x20, [sp, #16]
 18018b0:	39404063 	ldrb	w3, [x3, #16]
 18018b4:	aa0203f4 	mov	x20, x2
 18018b8:	910243a4 	add	x4, x29, #0x90
 18018bc:	aa1503e2 	mov	x2, x21
 18018c0:	a9039fa6 	stp	x6, x7, [x29, #56]
 18018c4:	390123a3 	strb	w3, [x29, #72]
 18018c8:	52800603 	mov	w3, #0x30                  	// #48
 18018cc:	d503201f 	nop
 18018d0:	38001443 	strb	w3, [x2], #1
 18018d4:	eb04005f 	cmp	x2, x4
 18018d8:	54ffffc1 	b.ne	18018d0 <outnum1+0x40>  // b.any
 18018dc:	b9401a82 	ldr	w2, [x20, #24]
 18018e0:	35000082 	cbnz	w2, 18018f0 <outnum1+0x60>
 18018e4:	f100001f 	cmp	x0, #0x0
 18018e8:	7a4ab820 	ccmp	w1, #0xa, #0x0, lt  // lt = tstop
 18018ec:	54000540 	b.eq	1801994 <outnum1+0x104>  // b.none
 18018f0:	52800008 	mov	w8, #0x0                   	// #0
 18018f4:	93407c24 	sxtw	x4, w1
 18018f8:	9100e3a6 	add	x6, x29, #0x38
 18018fc:	d2800002 	mov	x2, #0x0                   	// #0
 1801900:	9ac40803 	udiv	x3, x0, x4
 1801904:	2a0203e7 	mov	w7, w2
 1801908:	11000441 	add	w1, w2, #0x1
 180190c:	9b048065 	msub	x5, x3, x4, x0
 1801910:	aa0303e0 	mov	x0, x3
 1801914:	386568c3 	ldrb	w3, [x6, x5]
 1801918:	38226aa3 	strb	w3, [x21, x2]
 180191c:	91000442 	add	x2, x2, #0x1
 1801920:	b5ffff00 	cbnz	x0, 1801900 <outnum1+0x70>
 1801924:	34000088 	cbz	w8, 1801934 <outnum1+0xa4>
 1801928:	528005a0 	mov	w0, #0x2d                  	// #45
 180192c:	3821caa0 	strb	w0, [x21, w1, sxtw]
 1801930:	110008e1 	add	w1, w7, #0x2
 1801934:	3821cabf 	strb	wzr, [x21, w1, sxtw]
 1801938:	51000433 	sub	w19, w1, #0x1
 180193c:	aa1503e0 	mov	x0, x21
 1801940:	94000280 	bl	1802340 <strlen>
 1801944:	29420682 	ldp	w2, w1, [x20, #16]
 1801948:	b9000280 	str	w0, [x20]
 180194c:	7100005f 	cmp	w2, #0x0
 1801950:	7a401820 	ccmp	w1, #0x0, #0x0, ne  // ne = any
 1801954:	54000320 	b.eq	18019b8 <outnum1+0x128>  // b.none
 1801958:	93407e73 	sxtw	x19, w19
 180195c:	d503201f 	nop
 1801960:	38736aa0 	ldrb	w0, [x21, x19]
 1801964:	d1000673 	sub	x19, x19, #0x1
 1801968:	9400018e 	bl	1801fa0 <outbyte>
 180196c:	3100067f 	cmn	w19, #0x1
 1801970:	54ffff81 	b.ne	1801960 <outnum1+0xd0>  // b.any
 1801974:	29420680 	ldp	w0, w1, [x20, #16]
 1801978:	7100003f 	cmp	w1, #0x0
 180197c:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
 1801980:	54000101 	b.ne	18019a0 <outnum1+0x110>  // b.any
 1801984:	a94153f3 	ldp	x19, x20, [sp, #16]
 1801988:	f94013f5 	ldr	x21, [sp, #32]
 180198c:	a8c97bfd 	ldp	x29, x30, [sp], #144
 1801990:	d65f03c0 	ret
 1801994:	cb0003e0 	neg	x0, x0
 1801998:	52800028 	mov	w8, #0x1                   	// #1
 180199c:	17ffffd6 	b	18018f4 <outnum1+0x64>
 18019a0:	aa1403e0 	mov	x0, x20
 18019a4:	97ffffa9 	bl	1801848 <padding.part.0>
 18019a8:	a94153f3 	ldp	x19, x20, [sp, #16]
 18019ac:	f94013f5 	ldr	x21, [sp, #32]
 18019b0:	a8c97bfd 	ldp	x29, x30, [sp], #144
 18019b4:	d65f03c0 	ret
 18019b8:	aa1403e0 	mov	x0, x20
 18019bc:	97ffffa3 	bl	1801848 <padding.part.0>
 18019c0:	17ffffe6 	b	1801958 <outnum1+0xc8>
 18019c4:	d503201f 	nop

00000000018019c8 <outnum>:
 18019c8:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
 18019cc:	b0000003 	adrp	x3, 1802000 <atexit+0x8>
 18019d0:	91266063 	add	x3, x3, #0x998
 18019d4:	910003fd 	mov	x29, sp
 18019d8:	f90013f5 	str	x21, [sp, #32]
 18019dc:	910143b5 	add	x21, x29, #0x50
 18019e0:	a9401c66 	ldp	x6, x7, [x3]
 18019e4:	a90153f3 	stp	x19, x20, [sp, #16]
 18019e8:	39404063 	ldrb	w3, [x3, #16]
 18019ec:	aa0203f4 	mov	x20, x2
 18019f0:	9101c3a4 	add	x4, x29, #0x70
 18019f4:	aa1503e2 	mov	x2, x21
 18019f8:	a9039fa6 	stp	x6, x7, [x29, #56]
 18019fc:	390123a3 	strb	w3, [x29, #72]
 1801a00:	52800603 	mov	w3, #0x30                  	// #48
 1801a04:	d503201f 	nop
 1801a08:	38001443 	strb	w3, [x2], #1
 1801a0c:	eb04005f 	cmp	x2, x4
 1801a10:	54ffffc1 	b.ne	1801a08 <outnum+0x40>  // b.any
 1801a14:	b9401a82 	ldr	w2, [x20, #24]
 1801a18:	35000082 	cbnz	w2, 1801a28 <outnum+0x60>
 1801a1c:	7100001f 	cmp	w0, #0x0
 1801a20:	7a4ab820 	ccmp	w1, #0xa, #0x0, lt  // lt = tstop
 1801a24:	54000540 	b.eq	1801acc <outnum+0x104>  // b.none
 1801a28:	52800008 	mov	w8, #0x0                   	// #0
 1801a2c:	9100e3a6 	add	x6, x29, #0x38
 1801a30:	d2800003 	mov	x3, #0x0                   	// #0
 1801a34:	d503201f 	nop
 1801a38:	1ac10804 	udiv	w4, w0, w1
 1801a3c:	2a0303e7 	mov	w7, w3
 1801a40:	11000462 	add	w2, w3, #0x1
 1801a44:	1b018085 	msub	w5, w4, w1, w0
 1801a48:	2a0403e0 	mov	w0, w4
 1801a4c:	386548c4 	ldrb	w4, [x6, w5, uxtw]
 1801a50:	38236aa4 	strb	w4, [x21, x3]
 1801a54:	91000463 	add	x3, x3, #0x1
 1801a58:	35ffff00 	cbnz	w0, 1801a38 <outnum+0x70>
 1801a5c:	34000088 	cbz	w8, 1801a6c <outnum+0xa4>
 1801a60:	528005a0 	mov	w0, #0x2d                  	// #45
 1801a64:	3822caa0 	strb	w0, [x21, w2, sxtw]
 1801a68:	110008e2 	add	w2, w7, #0x2
 1801a6c:	3822cabf 	strb	wzr, [x21, w2, sxtw]
 1801a70:	51000453 	sub	w19, w2, #0x1
 1801a74:	aa1503e0 	mov	x0, x21
 1801a78:	94000232 	bl	1802340 <strlen>
 1801a7c:	29420682 	ldp	w2, w1, [x20, #16]
 1801a80:	b9000280 	str	w0, [x20]
 1801a84:	7100005f 	cmp	w2, #0x0
 1801a88:	7a401820 	ccmp	w1, #0x0, #0x0, ne  // ne = any
 1801a8c:	54000320 	b.eq	1801af0 <outnum+0x128>  // b.none
 1801a90:	93407e73 	sxtw	x19, w19
 1801a94:	d503201f 	nop
 1801a98:	38736aa0 	ldrb	w0, [x21, x19]
 1801a9c:	d1000673 	sub	x19, x19, #0x1
 1801aa0:	94000140 	bl	1801fa0 <outbyte>
 1801aa4:	3100067f 	cmn	w19, #0x1
 1801aa8:	54ffff81 	b.ne	1801a98 <outnum+0xd0>  // b.any
 1801aac:	29420680 	ldp	w0, w1, [x20, #16]
 1801ab0:	7100003f 	cmp	w1, #0x0
 1801ab4:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
 1801ab8:	54000101 	b.ne	1801ad8 <outnum+0x110>  // b.any
 1801abc:	a94153f3 	ldp	x19, x20, [sp, #16]
 1801ac0:	f94013f5 	ldr	x21, [sp, #32]
 1801ac4:	a8c77bfd 	ldp	x29, x30, [sp], #112
 1801ac8:	d65f03c0 	ret
 1801acc:	4b0003e0 	neg	w0, w0
 1801ad0:	52800028 	mov	w8, #0x1                   	// #1
 1801ad4:	17ffffd6 	b	1801a2c <outnum+0x64>
 1801ad8:	aa1403e0 	mov	x0, x20
 1801adc:	97ffff5b 	bl	1801848 <padding.part.0>
 1801ae0:	a94153f3 	ldp	x19, x20, [sp, #16]
 1801ae4:	f94013f5 	ldr	x21, [sp, #32]
 1801ae8:	a8c77bfd 	ldp	x29, x30, [sp], #112
 1801aec:	d65f03c0 	ret
 1801af0:	aa1403e0 	mov	x0, x20
 1801af4:	97ffff55 	bl	1801848 <padding.part.0>
 1801af8:	17ffffe6 	b	1801a90 <outnum+0xc8>
 1801afc:	d503201f 	nop

0000000001801b00 <xil_printf>:
 1801b00:	a9b47bfd 	stp	x29, x30, [sp, #-192]!
 1801b04:	128006e8 	mov	w8, #0xffffffc8            	// #-56
 1801b08:	910003fd 	mov	x29, sp
 1801b0c:	a90153f3 	stp	x19, x20, [sp, #16]
 1801b10:	910203a9 	add	x9, x29, #0x80
 1801b14:	a9025bf5 	stp	x21, x22, [sp, #32]
 1801b18:	b0000013 	adrp	x19, 1802000 <atexit+0x8>
 1801b1c:	a9088ba1 	stp	x1, x2, [x29, #136]
 1801b20:	910303a1 	add	x1, x29, #0xc0
 1801b24:	a90607a1 	stp	x1, x1, [x29, #96]
 1801b28:	aa0003e1 	mov	x1, x0
 1801b2c:	f9001fa0 	str	x0, [x29, #56]
 1801b30:	f9003ba9 	str	x9, [x29, #112]
 1801b34:	290f7fa8 	stp	w8, wzr, [x29, #120]
 1801b38:	a90993a3 	stp	x3, x4, [x29, #152]
 1801b3c:	a90a9ba5 	stp	x5, x6, [x29, #168]
 1801b40:	f9005fa7 	str	x7, [x29, #184]
 1801b44:	d503201f 	nop
 1801b48:	b40008a1 	cbz	x1, 1801c5c <xil_printf+0x15c>
 1801b4c:	39400020 	ldrb	w0, [x1]
 1801b50:	34000860 	cbz	w0, 1801c5c <xil_printf+0x15c>
 1801b54:	7100941f 	cmp	w0, #0x25
 1801b58:	540000c0 	b.eq	1801b70 <xil_printf+0x70>  // b.none
 1801b5c:	94000111 	bl	1801fa0 <outbyte>
 1801b60:	f9401fa1 	ldr	x1, [x29, #56]
 1801b64:	91000421 	add	x1, x1, #0x1
 1801b68:	f9001fa1 	str	x1, [x29, #56]
 1801b6c:	17fffff7 	b	1801b48 <xil_printf+0x48>
 1801b70:	528fffe2 	mov	w2, #0x7fff                	// #32767
 1801b74:	52800400 	mov	w0, #0x20                  	// #32
 1801b78:	52800014 	mov	w20, #0x0                   	// #0
 1801b7c:	52800016 	mov	w22, #0x0                   	// #0
 1801b80:	390133a0 	strb	w0, [x29, #76]
 1801b84:	52800035 	mov	w21, #0x1                   	// #1
 1801b88:	f90023bf 	str	xzr, [x29, #64]
 1801b8c:	b9004ba2 	str	w2, [x29, #72]
 1801b90:	f9002bbf 	str	xzr, [x29, #80]
 1801b94:	b9005bbf 	str	wzr, [x29, #88]
 1801b98:	91000423 	add	x3, x1, #0x1
 1801b9c:	f9001fa3 	str	x3, [x29, #56]
 1801ba0:	b4000263 	cbz	x3, 1801bec <xil_printf+0xec>
 1801ba4:	39400422 	ldrb	w2, [x1, #1]
 1801ba8:	f945ae61 	ldr	x1, [x19, #2904]
 1801bac:	8b220021 	add	x1, x1, w2, uxtb
 1801bb0:	39400420 	ldrb	w0, [x1, #1]
 1801bb4:	36100220 	tbz	w0, #2, 1801bf8 <xil_printf+0xf8>
 1801bb8:	35000b94 	cbnz	w20, 1801d28 <xil_printf+0x228>
 1801bbc:	7100c05f 	cmp	w2, #0x30
 1801bc0:	54000041 	b.ne	1801bc8 <xil_printf+0xc8>  // b.any
 1801bc4:	390133a2 	strb	w2, [x29, #76]
 1801bc8:	9100e3a0 	add	x0, x29, #0x38
 1801bcc:	97ffff05 	bl	18017e0 <getnum>
 1801bd0:	f9401fa1 	ldr	x1, [x29, #56]
 1801bd4:	b90047a0 	str	w0, [x29, #68]
 1801bd8:	b90053b5 	str	w21, [x29, #80]
 1801bdc:	b4000081 	cbz	x1, 1801bec <xil_printf+0xec>
 1801be0:	d1000421 	sub	x1, x1, #0x1
 1801be4:	f9001fa1 	str	x1, [x29, #56]
 1801be8:	b5fffd81 	cbnz	x1, 1801b98 <xil_printf+0x98>
 1801bec:	d2800000 	mov	x0, #0x0                   	// #0
 1801bf0:	39400000 	ldrb	w0, [x0]
 1801bf4:	d4207d00 	brk	#0x3e8
 1801bf8:	12000401 	and	w1, w0, #0x3
 1801bfc:	11008040 	add	w0, w2, #0x20
 1801c00:	7100043f 	cmp	w1, #0x1
 1801c04:	1a820000 	csel	w0, w0, w2, eq  // eq = none
 1801c08:	7101901f 	cmp	w0, #0x64
 1801c0c:	54000ac0 	b.eq	1801d64 <xil_printf+0x264>  // b.none
 1801c10:	540002ec 	b.gt	1801c6c <xil_printf+0x16c>
 1801c14:	7100b81f 	cmp	w0, #0x2e
 1801c18:	54000de0 	b.eq	1801dd4 <xil_printf+0x2d4>  // b.none
 1801c1c:	5400090d 	b.le	1801d3c <xil_printf+0x23c>
 1801c20:	7101701f 	cmp	w0, #0x5c
 1801c24:	540011a0 	b.eq	1801e58 <xil_printf+0x358>  // b.none
 1801c28:	71018c1f 	cmp	w0, #0x63
 1801c2c:	54000dc1 	b.ne	1801de4 <xil_printf+0x2e4>  // b.any
 1801c30:	b9407ba1 	ldr	w1, [x29, #120]
 1801c34:	f94033a0 	ldr	x0, [x29, #96]
 1801c38:	37f819c1 	tbnz	w1, #31, 1801f70 <xil_printf+0x470>
 1801c3c:	91002c01 	add	x1, x0, #0xb
 1801c40:	39400000 	ldrb	w0, [x0]
 1801c44:	927df021 	and	x1, x1, #0xfffffffffffffff8
 1801c48:	f90033a1 	str	x1, [x29, #96]
 1801c4c:	d503201f 	nop
 1801c50:	940000d4 	bl	1801fa0 <outbyte>
 1801c54:	f9401fa3 	ldr	x3, [x29, #56]
 1801c58:	b5000a83 	cbnz	x3, 1801da8 <xil_printf+0x2a8>
 1801c5c:	a94153f3 	ldp	x19, x20, [sp, #16]
 1801c60:	a9425bf5 	ldp	x21, x22, [sp, #32]
 1801c64:	a8cc7bfd 	ldp	x29, x30, [sp], #192
 1801c68:	d65f03c0 	ret
 1801c6c:	7101c01f 	cmp	w0, #0x70
 1801c70:	54000e20 	b.eq	1801e34 <xil_printf+0x334>  // b.none
 1801c74:	54000a0d 	b.le	1801db4 <xil_printf+0x2b4>
 1801c78:	7101d41f 	cmp	w0, #0x75
 1801c7c:	54000700 	b.eq	1801d5c <xil_printf+0x25c>  // b.none
 1801c80:	7101e01f 	cmp	w0, #0x78
 1801c84:	54000b40 	b.eq	1801dec <xil_printf+0x2ec>  // b.none
 1801c88:	7101cc1f 	cmp	w0, #0x73
 1801c8c:	540008e1 	b.ne	1801da8 <xil_printf+0x2a8>  // b.any
 1801c90:	b9407ba1 	ldr	w1, [x29, #120]
 1801c94:	f94033a0 	ldr	x0, [x29, #96]
 1801c98:	36f800a1 	tbz	w1, #31, 1801cac <xil_printf+0x1ac>
 1801c9c:	11002022 	add	w2, w1, #0x8
 1801ca0:	b9007ba2 	str	w2, [x29, #120]
 1801ca4:	7100005f 	cmp	w2, #0x0
 1801ca8:	5400174d 	b.le	1801f90 <xil_printf+0x490>
 1801cac:	91003c01 	add	x1, x0, #0xf
 1801cb0:	927df021 	and	x1, x1, #0xfffffffffffffff8
 1801cb4:	f90033a1 	str	x1, [x29, #96]
 1801cb8:	f9400014 	ldr	x20, [x0]
 1801cbc:	b4000094 	cbz	x20, 1801ccc <xil_printf+0x1cc>
 1801cc0:	aa1403e0 	mov	x0, x20
 1801cc4:	9400019f 	bl	1802340 <strlen>
 1801cc8:	b90043a0 	str	w0, [x29, #64]
 1801ccc:	294a07a0 	ldp	w0, w1, [x29, #80]
 1801cd0:	7100003f 	cmp	w1, #0x0
 1801cd4:	7a400804 	ccmp	w0, #0x0, #0x4, eq  // eq = none
 1801cd8:	54001021 	b.ne	1801edc <xil_printf+0x3dc>  // b.any
 1801cdc:	39400280 	ldrb	w0, [x20]
 1801ce0:	35000100 	cbnz	w0, 1801d00 <xil_printf+0x200>
 1801ce4:	14000009 	b	1801d08 <xil_printf+0x208>
 1801ce8:	51000400 	sub	w0, w0, #0x1
 1801cec:	b9004ba0 	str	w0, [x29, #72]
 1801cf0:	39400280 	ldrb	w0, [x20]
 1801cf4:	940000ab 	bl	1801fa0 <outbyte>
 1801cf8:	38401e80 	ldrb	w0, [x20, #1]!
 1801cfc:	34000060 	cbz	w0, 1801d08 <xil_printf+0x208>
 1801d00:	b9404ba0 	ldr	w0, [x29, #72]
 1801d04:	35ffff20 	cbnz	w0, 1801ce8 <xil_printf+0x1e8>
 1801d08:	294a03a1 	ldp	w1, w0, [x29, #80]
 1801d0c:	7100003f 	cmp	w1, #0x0
 1801d10:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
 1801d14:	54fffa00 	b.eq	1801c54 <xil_printf+0x154>  // b.none
 1801d18:	910103a0 	add	x0, x29, #0x40
 1801d1c:	97fffecb 	bl	1801848 <padding.part.0>
 1801d20:	f9401fa3 	ldr	x3, [x29, #56]
 1801d24:	17ffffcd 	b	1801c58 <xil_printf+0x158>
 1801d28:	9100e3a0 	add	x0, x29, #0x38
 1801d2c:	97fffead 	bl	18017e0 <getnum>
 1801d30:	f9401fa1 	ldr	x1, [x29, #56]
 1801d34:	b9004ba0 	str	w0, [x29, #72]
 1801d38:	17ffffa9 	b	1801bdc <xil_printf+0xdc>
 1801d3c:	7100941f 	cmp	w0, #0x25
 1801d40:	54fff880 	b.eq	1801c50 <xil_printf+0x150>  // b.none
 1801d44:	7100b41f 	cmp	w0, #0x2d
 1801d48:	54000301 	b.ne	1801da8 <xil_printf+0x2a8>  // b.any
 1801d4c:	b90057b5 	str	w21, [x29, #84]
 1801d50:	aa0303e1 	mov	x1, x3
 1801d54:	b5fff221 	cbnz	x1, 1801b98 <xil_printf+0x98>
 1801d58:	17ffffa5 	b	1801bec <xil_printf+0xec>
 1801d5c:	52800020 	mov	w0, #0x1                   	// #1
 1801d60:	b9005ba0 	str	w0, [x29, #88]
 1801d64:	b9407ba1 	ldr	w1, [x29, #120]
 1801d68:	f94033a0 	ldr	x0, [x29, #96]
 1801d6c:	34000bf6 	cbz	w22, 1801ee8 <xil_printf+0x3e8>
 1801d70:	36f800a1 	tbz	w1, #31, 1801d84 <xil_printf+0x284>
 1801d74:	11002022 	add	w2, w1, #0x8
 1801d78:	b9007ba2 	str	w2, [x29, #120]
 1801d7c:	7100005f 	cmp	w2, #0x0
 1801d80:	54000a8d 	b.le	1801ed0 <xil_printf+0x3d0>
 1801d84:	91003c01 	add	x1, x0, #0xf
 1801d88:	927df021 	and	x1, x1, #0xfffffffffffffff8
 1801d8c:	f90033a1 	str	x1, [x29, #96]
 1801d90:	f9400000 	ldr	x0, [x0]
 1801d94:	910103a2 	add	x2, x29, #0x40
 1801d98:	52800141 	mov	w1, #0xa                   	// #10
 1801d9c:	97fffebd 	bl	1801890 <outnum1>
 1801da0:	f9401fa3 	ldr	x3, [x29, #56]
 1801da4:	b4fff5c3 	cbz	x3, 1801c5c <xil_printf+0x15c>
 1801da8:	91000461 	add	x1, x3, #0x1
 1801dac:	f9001fa1 	str	x1, [x29, #56]
 1801db0:	17ffff66 	b	1801b48 <xil_printf+0x48>
 1801db4:	7101a41f 	cmp	w0, #0x69
 1801db8:	54fffd60 	b.eq	1801d64 <xil_printf+0x264>  // b.none
 1801dbc:	7101b01f 	cmp	w0, #0x6c
 1801dc0:	54ffff41 	b.ne	1801da8 <xil_printf+0x2a8>  // b.any
 1801dc4:	aa0303e1 	mov	x1, x3
 1801dc8:	52800036 	mov	w22, #0x1                   	// #1
 1801dcc:	b5ffee61 	cbnz	x1, 1801b98 <xil_printf+0x98>
 1801dd0:	17ffff87 	b	1801bec <xil_printf+0xec>
 1801dd4:	aa0303e1 	mov	x1, x3
 1801dd8:	52800034 	mov	w20, #0x1                   	// #1
 1801ddc:	b5ffede1 	cbnz	x1, 1801b98 <xil_printf+0x98>
 1801de0:	17ffff83 	b	1801bec <xil_printf+0xec>
 1801de4:	7101601f 	cmp	w0, #0x58
 1801de8:	54fffe01 	b.ne	1801da8 <xil_printf+0x2a8>  // b.any
 1801dec:	52800020 	mov	w0, #0x1                   	// #1
 1801df0:	b9005ba0 	str	w0, [x29, #88]
 1801df4:	b9407ba1 	ldr	w1, [x29, #120]
 1801df8:	f94033a0 	ldr	x0, [x29, #96]
 1801dfc:	340008b6 	cbz	w22, 1801f10 <xil_printf+0x410>
 1801e00:	36f80241 	tbz	w1, #31, 1801e48 <xil_printf+0x348>
 1801e04:	11002022 	add	w2, w1, #0x8
 1801e08:	b9007ba2 	str	w2, [x29, #120]
 1801e0c:	7100005f 	cmp	w2, #0x0
 1801e10:	540001cc 	b.gt	1801e48 <xil_printf+0x348>
 1801e14:	f94037a0 	ldr	x0, [x29, #104]
 1801e18:	8b21c000 	add	x0, x0, w1, sxtw
 1801e1c:	f9400000 	ldr	x0, [x0]
 1801e20:	910103a2 	add	x2, x29, #0x40
 1801e24:	52800201 	mov	w1, #0x10                  	// #16
 1801e28:	97fffe9a 	bl	1801890 <outnum1>
 1801e2c:	f9401fa3 	ldr	x3, [x29, #56]
 1801e30:	17ffff8a 	b	1801c58 <xil_printf+0x158>
 1801e34:	b9407ba1 	ldr	w1, [x29, #120]
 1801e38:	52800020 	mov	w0, #0x1                   	// #1
 1801e3c:	b9005ba0 	str	w0, [x29, #88]
 1801e40:	f94033a0 	ldr	x0, [x29, #96]
 1801e44:	37fffe01 	tbnz	w1, #31, 1801e04 <xil_printf+0x304>
 1801e48:	91003c01 	add	x1, x0, #0xf
 1801e4c:	927df021 	and	x1, x1, #0xfffffffffffffff8
 1801e50:	f90033a1 	str	x1, [x29, #96]
 1801e54:	17fffff2 	b	1801e1c <xil_printf+0x31c>
 1801e58:	7101a05f 	cmp	w2, #0x68
 1801e5c:	54000340 	b.eq	1801ec4 <xil_printf+0x3c4>  // b.none
 1801e60:	54000229 	b.ls	1801ea4 <xil_printf+0x3a4>  // b.plast
 1801e64:	7101b85f 	cmp	w2, #0x6e
 1801e68:	54000140 	b.eq	1801e90 <xil_printf+0x390>  // b.none
 1801e6c:	7101c85f 	cmp	w2, #0x72
 1801e70:	54000241 	b.ne	1801eb8 <xil_printf+0x3b8>  // b.any
 1801e74:	528001a0 	mov	w0, #0xd                   	// #13
 1801e78:	9400004a 	bl	1801fa0 <outbyte>
 1801e7c:	f9401fa1 	ldr	x1, [x29, #56]
 1801e80:	91000421 	add	x1, x1, #0x1
 1801e84:	f9001fa1 	str	x1, [x29, #56]
 1801e88:	b5ffe881 	cbnz	x1, 1801b98 <xil_printf+0x98>
 1801e8c:	17ffff58 	b	1801bec <xil_printf+0xec>
 1801e90:	528001a0 	mov	w0, #0xd                   	// #13
 1801e94:	94000043 	bl	1801fa0 <outbyte>
 1801e98:	52800140 	mov	w0, #0xa                   	// #10
 1801e9c:	94000041 	bl	1801fa0 <outbyte>
 1801ea0:	17fffff7 	b	1801e7c <xil_printf+0x37c>
 1801ea4:	7101845f 	cmp	w2, #0x61
 1801ea8:	54000081 	b.ne	1801eb8 <xil_printf+0x3b8>  // b.any
 1801eac:	528000e0 	mov	w0, #0x7                   	// #7
 1801eb0:	9400003c 	bl	1801fa0 <outbyte>
 1801eb4:	17fffff2 	b	1801e7c <xil_printf+0x37c>
 1801eb8:	2a0203e0 	mov	w0, w2
 1801ebc:	94000039 	bl	1801fa0 <outbyte>
 1801ec0:	17ffffef 	b	1801e7c <xil_printf+0x37c>
 1801ec4:	52800100 	mov	w0, #0x8                   	// #8
 1801ec8:	94000036 	bl	1801fa0 <outbyte>
 1801ecc:	17ffffec 	b	1801e7c <xil_printf+0x37c>
 1801ed0:	f94037a0 	ldr	x0, [x29, #104]
 1801ed4:	8b21c000 	add	x0, x0, w1, sxtw
 1801ed8:	17ffffae 	b	1801d90 <xil_printf+0x290>
 1801edc:	910103a0 	add	x0, x29, #0x40
 1801ee0:	97fffe5a 	bl	1801848 <padding.part.0>
 1801ee4:	17ffff7e 	b	1801cdc <xil_printf+0x1dc>
 1801ee8:	37f80281 	tbnz	w1, #31, 1801f38 <xil_printf+0x438>
 1801eec:	91002c01 	add	x1, x0, #0xb
 1801ef0:	927df021 	and	x1, x1, #0xfffffffffffffff8
 1801ef4:	f90033a1 	str	x1, [x29, #96]
 1801ef8:	b9400000 	ldr	w0, [x0]
 1801efc:	910103a2 	add	x2, x29, #0x40
 1801f00:	52800141 	mov	w1, #0xa                   	// #10
 1801f04:	97fffeb1 	bl	18019c8 <outnum>
 1801f08:	f9401fa3 	ldr	x3, [x29, #56]
 1801f0c:	17ffff53 	b	1801c58 <xil_printf+0x158>
 1801f10:	37f80221 	tbnz	w1, #31, 1801f54 <xil_printf+0x454>
 1801f14:	91002c01 	add	x1, x0, #0xb
 1801f18:	927df021 	and	x1, x1, #0xfffffffffffffff8
 1801f1c:	f90033a1 	str	x1, [x29, #96]
 1801f20:	b9400000 	ldr	w0, [x0]
 1801f24:	910103a2 	add	x2, x29, #0x40
 1801f28:	52800201 	mov	w1, #0x10                  	// #16
 1801f2c:	97fffea7 	bl	18019c8 <outnum>
 1801f30:	f9401fa3 	ldr	x3, [x29, #56]
 1801f34:	17ffff49 	b	1801c58 <xil_printf+0x158>
 1801f38:	11002022 	add	w2, w1, #0x8
 1801f3c:	b9007ba2 	str	w2, [x29, #120]
 1801f40:	7100005f 	cmp	w2, #0x0
 1801f44:	54fffd4c 	b.gt	1801eec <xil_printf+0x3ec>
 1801f48:	f94037a0 	ldr	x0, [x29, #104]
 1801f4c:	8b21c000 	add	x0, x0, w1, sxtw
 1801f50:	17ffffea 	b	1801ef8 <xil_printf+0x3f8>
 1801f54:	11002022 	add	w2, w1, #0x8
 1801f58:	b9007ba2 	str	w2, [x29, #120]
 1801f5c:	7100005f 	cmp	w2, #0x0
 1801f60:	54fffdac 	b.gt	1801f14 <xil_printf+0x414>
 1801f64:	f94037a0 	ldr	x0, [x29, #104]
 1801f68:	8b21c000 	add	x0, x0, w1, sxtw
 1801f6c:	17ffffed 	b	1801f20 <xil_printf+0x420>
 1801f70:	11002022 	add	w2, w1, #0x8
 1801f74:	b9007ba2 	str	w2, [x29, #120]
 1801f78:	7100005f 	cmp	w2, #0x0
 1801f7c:	54ffe60c 	b.gt	1801c3c <xil_printf+0x13c>
 1801f80:	f94037a0 	ldr	x0, [x29, #104]
 1801f84:	8b21c000 	add	x0, x0, w1, sxtw
 1801f88:	39400000 	ldrb	w0, [x0]
 1801f8c:	17ffff31 	b	1801c50 <xil_printf+0x150>
 1801f90:	f94037a0 	ldr	x0, [x29, #104]
 1801f94:	8b21c000 	add	x0, x0, w1, sxtw
 1801f98:	17ffff48 	b	1801cb8 <xil_printf+0x1b8>
 1801f9c:	00000000 	.inst	0x00000000 ; undefined

0000000001801fa0 <outbyte>:
 1801fa0:	2a0003e1 	mov	w1, w0
 1801fa4:	52bfd000 	mov	w0, #0xfe800000            	// #-25165824
 1801fa8:	14000002 	b	1801fb0 <XCoresightPs_DccSendByte>
 1801fac:	00000000 	.inst	0x00000000 ; undefined

0000000001801fb0 <XCoresightPs_DccSendByte>:
 1801fb0:	12001c21 	and	w1, w1, #0xff
 1801fb4:	d5330100 	mrs	x0, mdccsr_el0
 1801fb8:	36e800a0 	tbz	w0, #29, 1801fcc <XCoresightPs_DccSendByte+0x1c>
 1801fbc:	d503201f 	nop
 1801fc0:	d5033f9f 	dsb	sy
 1801fc4:	d5330100 	mrs	x0, mdccsr_el0
 1801fc8:	37efffc0 	tbnz	w0, #29, 1801fc0 <XCoresightPs_DccSendByte+0x10>
 1801fcc:	d5130501 	msr	dbgdtrrx_el0, x1
 1801fd0:	d5033fdf 	isb
 1801fd4:	d65f03c0 	ret

0000000001801fd8 <XCoresightPs_DccRecvByte>:
 1801fd8:	14000002 	b	1801fe0 <XCoresightPs_DccRecvByte+0x8>
 1801fdc:	d5033f9f 	dsb	sy
 1801fe0:	d5330100 	mrs	x0, mdccsr_el0
 1801fe4:	36f7ffc0 	tbz	w0, #30, 1801fdc <XCoresightPs_DccRecvByte+0x4>
 1801fe8:	d5330500 	mrs	x0, dbgdtrrx_el0
 1801fec:	d5033fdf 	isb
 1801ff0:	d65f03c0 	ret
 1801ff4:	00000000 	.inst	0x00000000 ; undefined

0000000001801ff8 <atexit>:
 1801ff8:	aa0003e1 	mov	x1, x0
 1801ffc:	d2800003 	mov	x3, #0x0                   	// #0
 1802000:	d2800002 	mov	x2, #0x0                   	// #0
 1802004:	52800000 	mov	w0, #0x0                   	// #0
 1802008:	1400011e 	b	1802480 <__register_exitproc>
 180200c:	00000000 	.inst	0x00000000 ; undefined

0000000001802010 <exit>:
 1802010:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 1802014:	d2800001 	mov	x1, #0x0                   	// #0
 1802018:	910003fd 	mov	x29, sp
 180201c:	f9000bf3 	str	x19, [sp, #16]
 1802020:	2a0003f3 	mov	w19, w0
 1802024:	94000155 	bl	1802578 <__call_exitprocs>
 1802028:	90000000 	adrp	x0, 1802000 <atexit+0x8>
 180202c:	f944c400 	ldr	x0, [x0, #2440]
 1802030:	f9402c01 	ldr	x1, [x0, #88]
 1802034:	b4000041 	cbz	x1, 180203c <exit+0x2c>
 1802038:	d63f0020 	blr	x1
 180203c:	2a1303e0 	mov	w0, w19
 1802040:	940001a4 	bl	18026d0 <_exit>
 1802044:	00000000 	.inst	0x00000000 ; undefined

0000000001802048 <__libc_fini_array>:
 1802048:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 180204c:	910003fd 	mov	x29, sp
 1802050:	a90153f3 	stp	x19, x20, [sp, #16]
 1802054:	580001b3 	ldr	x19, 1802088 <__libc_fini_array+0x40>
 1802058:	580001d4 	ldr	x20, 1802090 <__libc_fini_array+0x48>
 180205c:	cb140273 	sub	x19, x19, x20
 1802060:	9343fe73 	asr	x19, x19, #3
 1802064:	b40000b3 	cbz	x19, 1802078 <__libc_fini_array+0x30>
 1802068:	d1000673 	sub	x19, x19, #0x1
 180206c:	f8737a80 	ldr	x0, [x20, x19, lsl #3]
 1802070:	d63f0000 	blr	x0
 1802074:	b5ffffb3 	cbnz	x19, 1802068 <__libc_fini_array+0x20>
 1802078:	a94153f3 	ldp	x19, x20, [sp, #16]
 180207c:	a8c27bfd 	ldp	x29, x30, [sp], #32
 1802080:	140001e0 	b	1802800 <_fini>
 1802084:	d503201f 	nop
 1802088:	0180b048 	.word	0x0180b048
 180208c:	00000000 	.word	0x00000000
 1802090:	0180b040 	.word	0x0180b040
 1802094:	00000000 	.word	0x00000000

0000000001802098 <__libc_init_array>:
 1802098:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 180209c:	910003fd 	mov	x29, sp
 18020a0:	a90153f3 	stp	x19, x20, [sp, #16]
 18020a4:	f90013f5 	str	x21, [sp, #32]
 18020a8:	58000394 	ldr	x20, 1802118 <__libc_init_array+0x80>
 18020ac:	580003b5 	ldr	x21, 1802120 <__libc_init_array+0x88>
 18020b0:	cb150294 	sub	x20, x20, x21
 18020b4:	9343fe94 	asr	x20, x20, #3
 18020b8:	b40000f4 	cbz	x20, 18020d4 <__libc_init_array+0x3c>
 18020bc:	d2800013 	mov	x19, #0x0                   	// #0
 18020c0:	f8737aa0 	ldr	x0, [x21, x19, lsl #3]
 18020c4:	91000673 	add	x19, x19, #0x1
 18020c8:	d63f0000 	blr	x0
 18020cc:	eb13029f 	cmp	x20, x19
 18020d0:	54ffff81 	b.ne	18020c0 <__libc_init_array+0x28>  // b.any
 18020d4:	940001bb 	bl	18027c0 <_init>
 18020d8:	58000294 	ldr	x20, 1802128 <__libc_init_array+0x90>
 18020dc:	580002b5 	ldr	x21, 1802130 <__libc_init_array+0x98>
 18020e0:	cb150294 	sub	x20, x20, x21
 18020e4:	9343fe94 	asr	x20, x20, #3
 18020e8:	b40000f4 	cbz	x20, 1802104 <__libc_init_array+0x6c>
 18020ec:	d2800013 	mov	x19, #0x0                   	// #0
 18020f0:	f8737aa0 	ldr	x0, [x21, x19, lsl #3]
 18020f4:	91000673 	add	x19, x19, #0x1
 18020f8:	d63f0000 	blr	x0
 18020fc:	eb13029f 	cmp	x20, x19
 1802100:	54ffff81 	b.ne	18020f0 <__libc_init_array+0x58>  // b.any
 1802104:	a94153f3 	ldp	x19, x20, [sp, #16]
 1802108:	f94013f5 	ldr	x21, [sp, #32]
 180210c:	a8c37bfd 	ldp	x29, x30, [sp], #48
 1802110:	d65f03c0 	ret
 1802114:	d503201f 	nop
 1802118:	0180b000 	.word	0x0180b000
 180211c:	00000000 	.word	0x00000000
 1802120:	0180b000 	.word	0x0180b000
 1802124:	00000000 	.word	0x00000000
 1802128:	0180b008 	.word	0x0180b008
 180212c:	00000000 	.word	0x00000000
 1802130:	0180b000 	.word	0x0180b000
	...

0000000001802140 <memset>:
 1802140:	4e010c20 	dup	v0.16b, w1
 1802144:	8b020004 	add	x4, x0, x2
 1802148:	f101805f 	cmp	x2, #0x60
 180214c:	540003c8 	b.hi	18021c4 <memset+0x84>  // b.pmore
 1802150:	f100405f 	cmp	x2, #0x10
 1802154:	54000202 	b.cs	1802194 <memset+0x54>  // b.hs, b.nlast
 1802158:	4e083c01 	mov	x1, v0.d[0]
 180215c:	361800a2 	tbz	w2, #3, 1802170 <memset+0x30>
 1802160:	f9000001 	str	x1, [x0]
 1802164:	f81f8081 	stur	x1, [x4, #-8]
 1802168:	d65f03c0 	ret
 180216c:	d503201f 	nop
 1802170:	36100082 	tbz	w2, #2, 1802180 <memset+0x40>
 1802174:	b9000001 	str	w1, [x0]
 1802178:	b81fc081 	stur	w1, [x4, #-4]
 180217c:	d65f03c0 	ret
 1802180:	b4000082 	cbz	x2, 1802190 <memset+0x50>
 1802184:	39000001 	strb	w1, [x0]
 1802188:	36080042 	tbz	w2, #1, 1802190 <memset+0x50>
 180218c:	781fe081 	sturh	w1, [x4, #-2]
 1802190:	d65f03c0 	ret
 1802194:	3d800000 	str	q0, [x0]
 1802198:	373000c2 	tbnz	w2, #6, 18021b0 <memset+0x70>
 180219c:	3c9f0080 	stur	q0, [x4, #-16]
 18021a0:	36280062 	tbz	w2, #5, 18021ac <memset+0x6c>
 18021a4:	3d800400 	str	q0, [x0, #16]
 18021a8:	3c9e0080 	stur	q0, [x4, #-32]
 18021ac:	d65f03c0 	ret
 18021b0:	3d800400 	str	q0, [x0, #16]
 18021b4:	ad010000 	stp	q0, q0, [x0, #32]
 18021b8:	ad3f0080 	stp	q0, q0, [x4, #-32]
 18021bc:	d65f03c0 	ret
 18021c0:	d503201f 	nop
 18021c4:	12001c21 	and	w1, w1, #0xff
 18021c8:	927cec03 	and	x3, x0, #0xfffffffffffffff0
 18021cc:	3d800000 	str	q0, [x0]
 18021d0:	f104005f 	cmp	x2, #0x100
 18021d4:	7a402820 	ccmp	w1, #0x0, #0x0, cs  // cs = hs, nlast
 18021d8:	54000180 	b.eq	1802208 <memset+0xc8>  // b.none
 18021dc:	cb030082 	sub	x2, x4, x3
 18021e0:	91004063 	add	x3, x3, #0x10
 18021e4:	d1014042 	sub	x2, x2, #0x50
 18021e8:	ac820060 	stp	q0, q0, [x3], #64
 18021ec:	ad3f0060 	stp	q0, q0, [x3, #-32]
 18021f0:	f1010042 	subs	x2, x2, #0x40
 18021f4:	54ffffa8 	b.hi	18021e8 <memset+0xa8>  // b.pmore
 18021f8:	ad3e0080 	stp	q0, q0, [x4, #-64]
 18021fc:	ad3f0080 	stp	q0, q0, [x4, #-32]
 1802200:	d65f03c0 	ret
 1802204:	d503201f 	nop
 1802208:	d53b00e5 	mrs	x5, dczid_el0
 180220c:	3727fe85 	tbnz	w5, #4, 18021dc <memset+0x9c>
 1802210:	12000ca5 	and	w5, w5, #0xf
 1802214:	710010bf 	cmp	w5, #0x4
 1802218:	54000281 	b.ne	1802268 <memset+0x128>  // b.any
 180221c:	3d800460 	str	q0, [x3, #16]
 1802220:	ad010060 	stp	q0, q0, [x3, #32]
 1802224:	927ae463 	and	x3, x3, #0xffffffffffffffc0
 1802228:	ad020060 	stp	q0, q0, [x3, #64]
 180222c:	ad030060 	stp	q0, q0, [x3, #96]
 1802230:	cb030082 	sub	x2, x4, x3
 1802234:	d1040042 	sub	x2, x2, #0x100
 1802238:	91020063 	add	x3, x3, #0x80
 180223c:	d503201f 	nop
 1802240:	d50b7423 	dc	zva, x3
 1802244:	91010063 	add	x3, x3, #0x40
 1802248:	f1010042 	subs	x2, x2, #0x40
 180224c:	54ffffa8 	b.hi	1802240 <memset+0x100>  // b.pmore
 1802250:	ad000060 	stp	q0, q0, [x3]
 1802254:	ad010060 	stp	q0, q0, [x3, #32]
 1802258:	ad3e0080 	stp	q0, q0, [x4, #-64]
 180225c:	ad3f0080 	stp	q0, q0, [x4, #-32]
 1802260:	d65f03c0 	ret
 1802264:	d503201f 	nop
 1802268:	710014bf 	cmp	w5, #0x5
 180226c:	54000241 	b.ne	18022b4 <memset+0x174>  // b.any
 1802270:	3d800460 	str	q0, [x3, #16]
 1802274:	ad010060 	stp	q0, q0, [x3, #32]
 1802278:	ad020060 	stp	q0, q0, [x3, #64]
 180227c:	ad030060 	stp	q0, q0, [x3, #96]
 1802280:	9279e063 	and	x3, x3, #0xffffffffffffff80
 1802284:	cb030082 	sub	x2, x4, x3
 1802288:	d1040042 	sub	x2, x2, #0x100
 180228c:	91020063 	add	x3, x3, #0x80
 1802290:	d50b7423 	dc	zva, x3
 1802294:	91020063 	add	x3, x3, #0x80
 1802298:	f1020042 	subs	x2, x2, #0x80
 180229c:	54ffffa8 	b.hi	1802290 <memset+0x150>  // b.pmore
 18022a0:	ad3c0080 	stp	q0, q0, [x4, #-128]
 18022a4:	ad3d0080 	stp	q0, q0, [x4, #-96]
 18022a8:	ad3e0080 	stp	q0, q0, [x4, #-64]
 18022ac:	ad3f0080 	stp	q0, q0, [x4, #-32]
 18022b0:	d65f03c0 	ret
 18022b4:	52800086 	mov	w6, #0x4                   	// #4
 18022b8:	1ac520c7 	lsl	w7, w6, w5
 18022bc:	910100e5 	add	x5, x7, #0x40
 18022c0:	eb05005f 	cmp	x2, x5
 18022c4:	54fff8c3 	b.cc	18021dc <memset+0x9c>  // b.lo, b.ul, b.last
 18022c8:	d10004e6 	sub	x6, x7, #0x1
 18022cc:	8b070065 	add	x5, x3, x7
 18022d0:	91004063 	add	x3, x3, #0x10
 18022d4:	eb0300a2 	subs	x2, x5, x3
 18022d8:	8a2600a5 	bic	x5, x5, x6
 18022dc:	540000a0 	b.eq	18022f0 <memset+0x1b0>  // b.none
 18022e0:	ac820060 	stp	q0, q0, [x3], #64
 18022e4:	ad3f0060 	stp	q0, q0, [x3, #-32]
 18022e8:	f1010042 	subs	x2, x2, #0x40
 18022ec:	54ffffa8 	b.hi	18022e0 <memset+0x1a0>  // b.pmore
 18022f0:	aa0503e3 	mov	x3, x5
 18022f4:	cb050082 	sub	x2, x4, x5
 18022f8:	eb070042 	subs	x2, x2, x7
 18022fc:	540000a3 	b.cc	1802310 <memset+0x1d0>  // b.lo, b.ul, b.last
 1802300:	d50b7423 	dc	zva, x3
 1802304:	8b070063 	add	x3, x3, x7
 1802308:	eb070042 	subs	x2, x2, x7
 180230c:	54ffffa2 	b.cs	1802300 <memset+0x1c0>  // b.hs, b.nlast
 1802310:	8b070042 	add	x2, x2, x7
 1802314:	17ffffb7 	b	18021f0 <memset+0xb0>
	...

0000000001802340 <strlen>:
 1802340:	92402c04 	and	x4, x0, #0xfff
 1802344:	b200c3e8 	mov	x8, #0x101010101010101     	// #72340172838076673
 1802348:	f13fc09f 	cmp	x4, #0xff0
 180234c:	5400082c 	b.gt	1802450 <strlen+0x110>
 1802350:	a9400c02 	ldp	x2, x3, [x0]
 1802354:	cb080044 	sub	x4, x2, x8
 1802358:	b200d845 	orr	x5, x2, #0x7f7f7f7f7f7f7f7f
 180235c:	cb080066 	sub	x6, x3, x8
 1802360:	b200d867 	orr	x7, x3, #0x7f7f7f7f7f7f7f7f
 1802364:	ea250084 	bics	x4, x4, x5
 1802368:	8a2700c5 	bic	x5, x6, x7
 180236c:	fa4008a0 	ccmp	x5, #0x0, #0x0, eq  // eq = none
 1802370:	54000100 	b.eq	1802390 <strlen+0x50>  // b.none
 1802374:	9a853084 	csel	x4, x4, x5, cc  // cc = lo, ul, last
 1802378:	d2800100 	mov	x0, #0x8                   	// #8
 180237c:	dac00c84 	rev	x4, x4
 1802380:	dac01084 	clz	x4, x4
 1802384:	9a8033e0 	csel	x0, xzr, x0, cc  // cc = lo, ul, last
 1802388:	8b440c00 	add	x0, x0, x4, lsr #3
 180238c:	d65f03c0 	ret
 1802390:	927cec01 	and	x1, x0, #0xfffffffffffffff0
 1802394:	d1004021 	sub	x1, x1, #0x10
 1802398:	a9c20c22 	ldp	x2, x3, [x1, #32]!
 180239c:	cb080044 	sub	x4, x2, x8
 18023a0:	cb080066 	sub	x6, x3, x8
 18023a4:	aa060085 	orr	x5, x4, x6
 18023a8:	ea081cbf 	tst	x5, x8, lsl #7
 18023ac:	54000101 	b.ne	18023cc <strlen+0x8c>  // b.any
 18023b0:	a9410c22 	ldp	x2, x3, [x1, #16]
 18023b4:	cb080044 	sub	x4, x2, x8
 18023b8:	cb080066 	sub	x6, x3, x8
 18023bc:	aa060085 	orr	x5, x4, x6
 18023c0:	ea081cbf 	tst	x5, x8, lsl #7
 18023c4:	54fffea0 	b.eq	1802398 <strlen+0x58>  // b.none
 18023c8:	91004021 	add	x1, x1, #0x10
 18023cc:	b200d845 	orr	x5, x2, #0x7f7f7f7f7f7f7f7f
 18023d0:	b200d867 	orr	x7, x3, #0x7f7f7f7f7f7f7f7f
 18023d4:	ea250084 	bics	x4, x4, x5
 18023d8:	8a2700c5 	bic	x5, x6, x7
 18023dc:	fa4008a0 	ccmp	x5, #0x0, #0x0, eq  // eq = none
 18023e0:	54000120 	b.eq	1802404 <strlen+0xc4>  // b.none
 18023e4:	9a853084 	csel	x4, x4, x5, cc  // cc = lo, ul, last
 18023e8:	cb000020 	sub	x0, x1, x0
 18023ec:	dac00c84 	rev	x4, x4
 18023f0:	91002005 	add	x5, x0, #0x8
 18023f4:	dac01084 	clz	x4, x4
 18023f8:	9a853000 	csel	x0, x0, x5, cc  // cc = lo, ul, last
 18023fc:	8b440c00 	add	x0, x0, x4, lsr #3
 1802400:	d65f03c0 	ret
 1802404:	a9c10c22 	ldp	x2, x3, [x1, #16]!
 1802408:	cb080044 	sub	x4, x2, x8
 180240c:	b200d845 	orr	x5, x2, #0x7f7f7f7f7f7f7f7f
 1802410:	cb080066 	sub	x6, x3, x8
 1802414:	b200d867 	orr	x7, x3, #0x7f7f7f7f7f7f7f7f
 1802418:	ea250084 	bics	x4, x4, x5
 180241c:	8a2700c5 	bic	x5, x6, x7
 1802420:	fa4008a0 	ccmp	x5, #0x0, #0x0, eq  // eq = none
 1802424:	54fffe01 	b.ne	18023e4 <strlen+0xa4>  // b.any
 1802428:	a9c10c22 	ldp	x2, x3, [x1, #16]!
 180242c:	cb080044 	sub	x4, x2, x8
 1802430:	b200d845 	orr	x5, x2, #0x7f7f7f7f7f7f7f7f
 1802434:	cb080066 	sub	x6, x3, x8
 1802438:	b200d867 	orr	x7, x3, #0x7f7f7f7f7f7f7f7f
 180243c:	ea250084 	bics	x4, x4, x5
 1802440:	8a2700c5 	bic	x5, x6, x7
 1802444:	fa4008a0 	ccmp	x5, #0x0, #0x0, eq  // eq = none
 1802448:	54fffde0 	b.eq	1802404 <strlen+0xc4>  // b.none
 180244c:	17ffffe6 	b	18023e4 <strlen+0xa4>
 1802450:	927cec01 	and	x1, x0, #0xfffffffffffffff0
 1802454:	a9400c22 	ldp	x2, x3, [x1]
 1802458:	d37df004 	lsl	x4, x0, #3
 180245c:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
 1802460:	9ac420e4 	lsl	x4, x7, x4
 1802464:	b201c084 	orr	x4, x4, #0x8080808080808080
 1802468:	aa240042 	orn	x2, x2, x4
 180246c:	aa240065 	orn	x5, x3, x4
 1802470:	f27d001f 	tst	x0, #0x8
 1802474:	9a870042 	csel	x2, x2, x7, eq  // eq = none
 1802478:	9a850063 	csel	x3, x3, x5, eq  // eq = none
 180247c:	17ffffc8 	b	180239c <strlen+0x5c>

0000000001802480 <__register_exitproc>:
 1802480:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 1802484:	90000004 	adrp	x4, 1802000 <atexit+0x8>
 1802488:	910003fd 	mov	x29, sp
 180248c:	a90153f3 	stp	x19, x20, [sp, #16]
 1802490:	2a0003f4 	mov	w20, w0
 1802494:	f944c493 	ldr	x19, [x4, #2440]
 1802498:	a9025bf5 	stp	x21, x22, [sp, #32]
 180249c:	aa0103f5 	mov	x21, x1
 18024a0:	aa0303f6 	mov	x22, x3
 18024a4:	f940fe64 	ldr	x4, [x19, #504]
 18024a8:	f9001bf7 	str	x23, [sp, #48]
 18024ac:	aa0203f7 	mov	x23, x2
 18024b0:	b4000564 	cbz	x4, 180255c <__register_exitproc+0xdc>
 18024b4:	b9400880 	ldr	w0, [x4, #8]
 18024b8:	11000401 	add	w1, w0, #0x1
 18024bc:	71007c1f 	cmp	w0, #0x1f
 18024c0:	540001cd 	b.le	18024f8 <__register_exitproc+0x78>
 18024c4:	58000560 	ldr	x0, 1802570 <__register_exitproc+0xf0>
 18024c8:	b4000500 	cbz	x0, 1802568 <__register_exitproc+0xe8>
 18024cc:	d2806300 	mov	x0, #0x318                 	// #792
 18024d0:	d503201f 	nop
 18024d4:	aa0003e4 	mov	x4, x0
 18024d8:	b4000480 	cbz	x0, 1802568 <__register_exitproc+0xe8>
 18024dc:	f940fe60 	ldr	x0, [x19, #504]
 18024e0:	52800021 	mov	w1, #0x1                   	// #1
 18024e4:	f9000080 	str	x0, [x4]
 18024e8:	b900089f 	str	wzr, [x4, #8]
 18024ec:	52800000 	mov	w0, #0x0                   	// #0
 18024f0:	f900fe64 	str	x4, [x19, #504]
 18024f4:	f901889f 	str	xzr, [x4, #784]
 18024f8:	93407c05 	sxtw	x5, w0
 18024fc:	35000154 	cbnz	w20, 1802524 <__register_exitproc+0xa4>
 1802500:	910008a5 	add	x5, x5, #0x2
 1802504:	b9000881 	str	w1, [x4, #8]
 1802508:	52800000 	mov	w0, #0x0                   	// #0
 180250c:	f8257895 	str	x21, [x4, x5, lsl #3]
 1802510:	a94153f3 	ldp	x19, x20, [sp, #16]
 1802514:	a9425bf5 	ldp	x21, x22, [sp, #32]
 1802518:	f9401bf7 	ldr	x23, [sp, #48]
 180251c:	a8c47bfd 	ldp	x29, x30, [sp], #64
 1802520:	d65f03c0 	ret
 1802524:	8b050c83 	add	x3, x4, x5, lsl #3
 1802528:	52800026 	mov	w6, #0x1                   	// #1
 180252c:	1ac020c0 	lsl	w0, w6, w0
 1802530:	71000a9f 	cmp	w20, #0x2
 1802534:	f9008877 	str	x23, [x3, #272]
 1802538:	b9431082 	ldr	w2, [x4, #784]
 180253c:	2a000042 	orr	w2, w2, w0
 1802540:	b9031082 	str	w2, [x4, #784]
 1802544:	f9010876 	str	x22, [x3, #528]
 1802548:	54fffdc1 	b.ne	1802500 <__register_exitproc+0x80>  // b.any
 180254c:	b9431482 	ldr	w2, [x4, #788]
 1802550:	2a000040 	orr	w0, w2, w0
 1802554:	b9031480 	str	w0, [x4, #788]
 1802558:	17ffffea 	b	1802500 <__register_exitproc+0x80>
 180255c:	91080264 	add	x4, x19, #0x200
 1802560:	f900fe64 	str	x4, [x19, #504]
 1802564:	17ffffd4 	b	18024b4 <__register_exitproc+0x34>
 1802568:	12800000 	mov	w0, #0xffffffff            	// #-1
 180256c:	17ffffe9 	b	1802510 <__register_exitproc+0x90>
	...

0000000001802578 <__call_exitprocs>:
 1802578:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
 180257c:	90000002 	adrp	x2, 1802000 <atexit+0x8>
 1802580:	910003fd 	mov	x29, sp
 1802584:	a90363f7 	stp	x23, x24, [sp, #48]
 1802588:	f944c457 	ldr	x23, [x2, #2440]
 180258c:	a9046bf9 	stp	x25, x26, [sp, #64]
 1802590:	580009d9 	ldr	x25, 18026c8 <__call_exitprocs+0x150>
 1802594:	9107e2f8 	add	x24, x23, #0x1f8
 1802598:	a90573fb 	stp	x27, x28, [sp, #80]
 180259c:	aa0103fb 	mov	x27, x1
 18025a0:	a90153f3 	stp	x19, x20, [sp, #16]
 18025a4:	a9025bf5 	stp	x21, x22, [sp, #32]
 18025a8:	52800036 	mov	w22, #0x1                   	// #1
 18025ac:	b9006fa0 	str	w0, [x29, #108]
 18025b0:	f940fef5 	ldr	x21, [x23, #504]
 18025b4:	b4000335 	cbz	x21, 1802618 <__call_exitprocs+0xa0>
 18025b8:	aa1803fa 	mov	x26, x24
 18025bc:	b9400ab3 	ldr	w19, [x21, #8]
 18025c0:	71000673 	subs	w19, w19, #0x1
 18025c4:	54000164 	b.mi	18025f0 <__call_exitprocs+0x78>  // b.first
 18025c8:	8b33ceb4 	add	x20, x21, w19, sxtw #3
 18025cc:	d503201f 	nop
 18025d0:	b400033b 	cbz	x27, 1802634 <__call_exitprocs+0xbc>
 18025d4:	f9410a80 	ldr	x0, [x20, #528]
 18025d8:	eb1b001f 	cmp	x0, x27
 18025dc:	540002c0 	b.eq	1802634 <__call_exitprocs+0xbc>  // b.none
 18025e0:	51000673 	sub	w19, w19, #0x1
 18025e4:	d1002294 	sub	x20, x20, #0x8
 18025e8:	3100067f 	cmn	w19, #0x1
 18025ec:	54ffff21 	b.ne	18025d0 <__call_exitprocs+0x58>  // b.any
 18025f0:	b4000159 	cbz	x25, 1802618 <__call_exitprocs+0xa0>
 18025f4:	b9400aa1 	ldr	w1, [x21, #8]
 18025f8:	f94002a0 	ldr	x0, [x21]
 18025fc:	350005a1 	cbnz	w1, 18026b0 <__call_exitprocs+0x138>
 1802600:	b4000580 	cbz	x0, 18026b0 <__call_exitprocs+0x138>
 1802604:	f9000340 	str	x0, [x26]
 1802608:	aa1503e0 	mov	x0, x21
 180260c:	d503201f 	nop
 1802610:	f9400355 	ldr	x21, [x26]
 1802614:	b5fffd55 	cbnz	x21, 18025bc <__call_exitprocs+0x44>
 1802618:	a94153f3 	ldp	x19, x20, [sp, #16]
 180261c:	a9425bf5 	ldp	x21, x22, [sp, #32]
 1802620:	a94363f7 	ldp	x23, x24, [sp, #48]
 1802624:	a9446bf9 	ldp	x25, x26, [sp, #64]
 1802628:	a94573fb 	ldp	x27, x28, [sp, #80]
 180262c:	a8c77bfd 	ldp	x29, x30, [sp], #112
 1802630:	d65f03c0 	ret
 1802634:	b9400aa0 	ldr	w0, [x21, #8]
 1802638:	f9400a82 	ldr	x2, [x20, #16]
 180263c:	51000400 	sub	w0, w0, #0x1
 1802640:	6b13001f 	cmp	w0, w19
 1802644:	54000220 	b.eq	1802688 <__call_exitprocs+0x110>  // b.none
 1802648:	f9000a9f 	str	xzr, [x20, #16]
 180264c:	b4fffca2 	cbz	x2, 18025e0 <__call_exitprocs+0x68>
 1802650:	910442a0 	add	x0, x21, #0x110
 1802654:	b9420001 	ldr	w1, [x0, #512]
 1802658:	1ad322c3 	lsl	w3, w22, w19
 180265c:	b9400abc 	ldr	w28, [x21, #8]
 1802660:	6a01007f 	tst	w3, w1
 1802664:	54000161 	b.ne	1802690 <__call_exitprocs+0x118>  // b.any
 1802668:	d63f0040 	blr	x2
 180266c:	b9400aa0 	ldr	w0, [x21, #8]
 1802670:	6b1c001f 	cmp	w0, w28
 1802674:	54fff9e1 	b.ne	18025b0 <__call_exitprocs+0x38>  // b.any
 1802678:	f9400340 	ldr	x0, [x26]
 180267c:	eb15001f 	cmp	x0, x21
 1802680:	54fffb00 	b.eq	18025e0 <__call_exitprocs+0x68>  // b.none
 1802684:	17ffffcb 	b	18025b0 <__call_exitprocs+0x38>
 1802688:	b9000ab3 	str	w19, [x21, #8]
 180268c:	17fffff0 	b	180264c <__call_exitprocs+0xd4>
 1802690:	b9420401 	ldr	w1, [x0, #516]
 1802694:	f9408a80 	ldr	x0, [x20, #272]
 1802698:	6a01007f 	tst	w3, w1
 180269c:	54000121 	b.ne	18026c0 <__call_exitprocs+0x148>  // b.any
 18026a0:	aa0003e1 	mov	x1, x0
 18026a4:	b9406fa0 	ldr	w0, [x29, #108]
 18026a8:	d63f0040 	blr	x2
 18026ac:	17fffff0 	b	180266c <__call_exitprocs+0xf4>
 18026b0:	aa1503fa 	mov	x26, x21
 18026b4:	aa0003f5 	mov	x21, x0
 18026b8:	b5fff835 	cbnz	x21, 18025bc <__call_exitprocs+0x44>
 18026bc:	17ffffd7 	b	1802618 <__call_exitprocs+0xa0>
 18026c0:	d63f0040 	blr	x2
 18026c4:	17ffffea 	b	180266c <__call_exitprocs+0xf4>
	...

00000000018026d0 <_exit>:
 18026d0:	14000000 	b	18026d0 <_exit>
	...

00000000018026e0 <main>:
 18026e0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 18026e4:	910003fd 	mov	x29, sp
 18026e8:	97fffa26 	bl	1800f80 <init_platform>
 18026ec:	97fffbcd 	bl	1801620 <Xil_ICacheEnable>
 18026f0:	97fffaf6 	bl	18012c8 <Xil_DCacheEnable>
 18026f4:	9c000461 	ldr	q1, 1802780 <main+0xa0>
 18026f8:	90000000 	adrp	x0, 1802000 <atexit+0x8>
 18026fc:	91264000 	add	x0, x0, #0x990
 1802700:	9c000482 	ldr	q2, 1802790 <main+0xb0>
 1802704:	9c000360 	ldr	q0, 1802770 <main+0x90>
 1802708:	6e82c420 	fcmla	v0.4s, v1.4s, v2.4s, #0
 180270c:	5e0c0403 	mov	s3, v0.s[1]
 1802710:	5e040401 	mov	s1, v0.s[0]
 1802714:	5e140402 	mov	s2, v0.s[2]
 1802718:	5e1c0400 	mov	s0, v0.s[3]
 180271c:	1e232821 	fadd	s1, s1, s3
 1802720:	1e222821 	fadd	s1, s1, s2
 1802724:	1e202820 	fadd	s0, s1, s0
 1802728:	1e22c000 	fcvt	d0, s0
 180272c:	97fffcf5 	bl	1801b00 <xil_printf>
 1802730:	d0000042 	adrp	x2, 180c000 <b+0xf40>
 1802734:	b0000041 	adrp	x1, 180b000 <__exidx_end>
 1802738:	91030042 	add	x2, x2, #0xc0
 180273c:	91030021 	add	x1, x1, #0xc0
 1802740:	d2800000 	mov	x0, #0x0                   	// #0
 1802744:	d503201f 	nop
 1802748:	9e220000 	scvtf	s0, x0
 180274c:	bc207840 	str	s0, [x2, x0, lsl #2]
 1802750:	bc207820 	str	s0, [x1, x0, lsl #2]
 1802754:	91000400 	add	x0, x0, #0x1
 1802758:	f110001f 	cmp	x0, #0x400
 180275c:	54ffff61 	b.ne	1802748 <main+0x68>  // b.any
 1802760:	14000000 	b	1802760 <main+0x80>
 1802764:	d503201f 	nop
 1802768:	d503201f 	nop
 180276c:	d503201f 	nop
 1802770:	3f800000 	.word	0x3f800000
 1802774:	40000000 	.word	0x40000000
 1802778:	40400000 	.word	0x40400000
 180277c:	40800000 	.word	0x40800000
 1802780:	40000000 	.word	0x40000000
 1802784:	40400000 	.word	0x40400000
 1802788:	40800000 	.word	0x40800000
 180278c:	40a00000 	.word	0x40a00000
 1802790:	40400000 	.word	0x40400000
 1802794:	40800000 	.word	0x40800000
 1802798:	40a00000 	.word	0x40a00000
 180279c:	40c00000 	.word	0x40c00000

Disassembly of section .init:

00000000018027c0 <_init>:
 18027c0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 18027c4:	a9bf73fb 	stp	x27, x28, [sp, #-16]!
 18027c8:	a9bf6bf9 	stp	x25, x26, [sp, #-16]!
 18027cc:	a9bf63f7 	stp	x23, x24, [sp, #-16]!
 18027d0:	a9bf5bf5 	stp	x21, x22, [sp, #-16]!
 18027d4:	a9bf53f3 	stp	x19, x20, [sp, #-16]!
 18027d8:	a8c153f3 	ldp	x19, x20, [sp], #16
 18027dc:	a8c15bf5 	ldp	x21, x22, [sp], #16
 18027e0:	a8c163f7 	ldp	x23, x24, [sp], #16
 18027e4:	a8c16bf9 	ldp	x25, x26, [sp], #16
 18027e8:	a8c173fb 	ldp	x27, x28, [sp], #16
 18027ec:	a8c17bfd 	ldp	x29, x30, [sp], #16
 18027f0:	d65f03c0 	ret

Disassembly of section .fini:

0000000001802800 <_fini>:
 1802800:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 1802804:	a9bf73fb 	stp	x27, x28, [sp, #-16]!
 1802808:	a9bf6bf9 	stp	x25, x26, [sp, #-16]!
 180280c:	a9bf63f7 	stp	x23, x24, [sp, #-16]!
 1802810:	a9bf5bf5 	stp	x21, x22, [sp, #-16]!
 1802814:	a9bf53f3 	stp	x19, x20, [sp, #-16]!
 1802818:	a8c153f3 	ldp	x19, x20, [sp], #16
 180281c:	a8c15bf5 	ldp	x21, x22, [sp], #16
 1802820:	a8c163f7 	ldp	x23, x24, [sp], #16
 1802824:	a8c16bf9 	ldp	x25, x26, [sp], #16
 1802828:	a8c173fb 	ldp	x27, x28, [sp], #16
 180282c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 1802830:	d65f03c0 	ret
