
debayer.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <_vector_table>:
       0:	1400024e 	b	938 <_boot>
	...
     200:	14000061 	b	384 <SynchronousInterruptHandler>
	...
     280:	14000082 	b	488 <IRQInterruptHandler>
	...
     300:	140000a1 	b	584 <FIQInterruptHandler>
	...
     380:	14000099 	b	5e4 <SErrorInterruptHandler>

0000000000000384 <SynchronousInterruptHandler>:
     384:	a9bf07e0 	.word	0xa9bf07e0
     388:	a9bf0fe2 	.word	0xa9bf0fe2
     38c:	a9bf17e4 	.word	0xa9bf17e4
     390:	a9bf1fe6 	.word	0xa9bf1fe6
     394:	a9bf27e8 	.word	0xa9bf27e8
     398:	a9bf2fea 	.word	0xa9bf2fea
     39c:	a9bf37ec 	.word	0xa9bf37ec
     3a0:	a9bf3fee 	.word	0xa9bf3fee
     3a4:	a9bf47f0 	.word	0xa9bf47f0
     3a8:	a9bf4ff2 	.word	0xa9bf4ff2
     3ac:	a9bf7bfd 	.word	0xa9bf7bfd
     3b0:	d53e5200 	.word	0xd53e5200
     3b4:	92661400 	.word	0x92661400
     3b8:	d2a38001 	.word	0xd2a38001
     3bc:	eb01001f 	.word	0xeb01001f
     3c0:	540004a1 	.word	0x540004a1
     3c4:	d53e1141 	.word	0xd53e1141
     3c8:	9275f821 	.word	0x9275f821
     3cc:	d51e1141 	.word	0xd51e1141
     3d0:	d5033fdf 	.word	0xd5033fdf
     3d4:	58002a60 	.word	0x58002a60
     3d8:	39400001 	.word	0x39400001
     3dc:	350000e1 	.word	0x350000e1
     3e0:	52800021 	.word	0x52800021
     3e4:	39000001 	.word	0x39000001
     3e8:	58002a00 	.word	0x58002a00
     3ec:	58002a21 	.word	0x58002a21
     3f0:	f9000020 	.word	0xf9000020
     3f4:	14000019 	.word	0x14000019

00000000000003f8 <storefloat>:
     3f8:	580029c1 	.word	0x580029c1
     3fc:	f9400020 	.word	0xf9400020
     400:	ac810400 	.word	0xac810400
     404:	ac810c02 	.word	0xac810c02
     408:	ac811404 	.word	0xac811404
     40c:	ac811c06 	.word	0xac811c06
     410:	ac812408 	.word	0xac812408
     414:	ac812c0a 	.word	0xac812c0a
     418:	ac81340c 	.word	0xac81340c
     41c:	ac813c0e 	.word	0xac813c0e
     420:	ac814410 	.word	0xac814410
     424:	ac814c12 	.word	0xac814c12
     428:	ac815414 	.word	0xac815414
     42c:	ac815c16 	.word	0xac815c16
     430:	ac816418 	.word	0xac816418
     434:	ac816c1a 	.word	0xac816c1a
     438:	ac81741c 	.word	0xac81741c
     43c:	ac817c1e 	.word	0xac817c1e
     440:	d53b4402 	.word	0xd53b4402
     444:	d53b4423 	.word	0xd53b4423
     448:	a8810c02 	.word	0xa8810c02
     44c:	f9000020 	.word	0xf9000020
     450:	14000002 	.word	0x14000002

0000000000000454 <synchronoushandler>:
     454:	940009c5 	.word	0x940009c5

0000000000000458 <restorecontext>:
     458:	a8c17bfd 	.word	0xa8c17bfd
     45c:	a8c14ff2 	.word	0xa8c14ff2
     460:	a8c147f0 	.word	0xa8c147f0
     464:	a8c13fee 	.word	0xa8c13fee
     468:	a8c137ec 	.word	0xa8c137ec
     46c:	a8c12fea 	.word	0xa8c12fea
     470:	a8c127e8 	.word	0xa8c127e8
     474:	a8c11fe6 	.word	0xa8c11fe6
     478:	a8c117e4 	.word	0xa8c117e4
     47c:	a8c10fe2 	.word	0xa8c10fe2
     480:	a8c107e0 	.word	0xa8c107e0
     484:	d69f03e0 	.word	0xd69f03e0

0000000000000488 <IRQInterruptHandler>:
     488:	a9bf07e0 	.word	0xa9bf07e0
     48c:	a9bf0fe2 	.word	0xa9bf0fe2
     490:	a9bf17e4 	.word	0xa9bf17e4
     494:	a9bf1fe6 	.word	0xa9bf1fe6
     498:	a9bf27e8 	.word	0xa9bf27e8
     49c:	a9bf2fea 	.word	0xa9bf2fea
     4a0:	a9bf37ec 	.word	0xa9bf37ec
     4a4:	a9bf3fee 	.word	0xa9bf3fee
     4a8:	a9bf47f0 	.word	0xa9bf47f0
     4ac:	a9bf4ff2 	.word	0xa9bf4ff2
     4b0:	a9bf7bfd 	.word	0xa9bf7bfd
     4b4:	d53e1140 	.word	0xd53e1140
     4b8:	d53e4021 	.word	0xd53e4021
     4bc:	d53e4002 	.word	0xd53e4002
     4c0:	a9bf07e0 	.word	0xa9bf07e0
     4c4:	f81f0fe2 	.word	0xf81f0fe2
     4c8:	d53e1141 	.word	0xd53e1141
     4cc:	b2760021 	.word	0xb2760021
     4d0:	d51e1141 	.word	0xd51e1141
     4d4:	d5033fdf 	.word	0xd5033fdf
     4d8:	940009a0 	.word	0x940009a0
     4dc:	d53e1140 	.word	0xd53e1140
     4e0:	f2760000 	.word	0xf2760000
     4e4:	540002e1 	.word	0x540002e1
     4e8:	58002241 	.word	0x58002241
     4ec:	f9400020 	.word	0xf9400020
     4f0:	a9ff0c02 	.word	0xa9ff0c02
     4f4:	d51b4402 	.word	0xd51b4402
     4f8:	d51b4423 	.word	0xd51b4423
     4fc:	adff7c1e 	.word	0xadff7c1e
     500:	adff741c 	.word	0xadff741c
     504:	adff6c1a 	.word	0xadff6c1a
     508:	adff6418 	.word	0xadff6418
     50c:	adff5c16 	.word	0xadff5c16
     510:	adff5414 	.word	0xadff5414
     514:	adff4c12 	.word	0xadff4c12
     518:	adff4410 	.word	0xadff4410
     51c:	adff3c0e 	.word	0xadff3c0e
     520:	adff340c 	.word	0xadff340c
     524:	adff2c0a 	.word	0xadff2c0a
     528:	adff2408 	.word	0xadff2408
     52c:	adff1c06 	.word	0xadff1c06
     530:	adff1404 	.word	0xadff1404
     534:	adff0c02 	.word	0xadff0c02
     538:	adff0400 	.word	0xadff0400
     53c:	f9000020 	.word	0xf9000020

0000000000000540 <RestorePrevState>:
     540:	f84107e2 	.word	0xf84107e2
     544:	a8c107e0 	.word	0xa8c107e0
     548:	d51e1140 	.word	0xd51e1140
     54c:	d51e4021 	.word	0xd51e4021
     550:	d51e4002 	.word	0xd51e4002
     554:	a8c17bfd 	.word	0xa8c17bfd
     558:	a8c14ff2 	.word	0xa8c14ff2
     55c:	a8c147f0 	.word	0xa8c147f0
     560:	a8c13fee 	.word	0xa8c13fee
     564:	a8c137ec 	.word	0xa8c137ec
     568:	a8c12fea 	.word	0xa8c12fea
     56c:	a8c127e8 	.word	0xa8c127e8
     570:	a8c11fe6 	.word	0xa8c11fe6
     574:	a8c117e4 	.word	0xa8c117e4
     578:	a8c10fe2 	.word	0xa8c10fe2
     57c:	a8c107e0 	.word	0xa8c107e0
     580:	d69f03e0 	.word	0xd69f03e0

0000000000000584 <FIQInterruptHandler>:
     584:	a9bf07e0 	.word	0xa9bf07e0
     588:	a9bf0fe2 	.word	0xa9bf0fe2
     58c:	a9bf17e4 	.word	0xa9bf17e4
     590:	a9bf1fe6 	.word	0xa9bf1fe6
     594:	a9bf27e8 	.word	0xa9bf27e8
     598:	a9bf2fea 	.word	0xa9bf2fea
     59c:	a9bf37ec 	.word	0xa9bf37ec
     5a0:	a9bf3fee 	.word	0xa9bf3fee
     5a4:	a9bf47f0 	.word	0xa9bf47f0
     5a8:	a9bf4ff2 	.word	0xa9bf4ff2
     5ac:	a9bf7bfd 	.word	0xa9bf7bfd
     5b0:	94000966 	.word	0x94000966
     5b4:	a8c17bfd 	.word	0xa8c17bfd
     5b8:	a8c14ff2 	.word	0xa8c14ff2
     5bc:	a8c147f0 	.word	0xa8c147f0
     5c0:	a8c13fee 	.word	0xa8c13fee
     5c4:	a8c137ec 	.word	0xa8c137ec
     5c8:	a8c12fea 	.word	0xa8c12fea
     5cc:	a8c127e8 	.word	0xa8c127e8
     5d0:	a8c11fe6 	.word	0xa8c11fe6
     5d4:	a8c117e4 	.word	0xa8c117e4
     5d8:	a8c10fe2 	.word	0xa8c10fe2
     5dc:	a8c107e0 	.word	0xa8c107e0
     5e0:	d69f03e0 	.word	0xd69f03e0

00000000000005e4 <SErrorInterruptHandler>:
     5e4:	a9bf07e0 	.word	0xa9bf07e0
     5e8:	a9bf0fe2 	.word	0xa9bf0fe2
     5ec:	a9bf17e4 	.word	0xa9bf17e4
     5f0:	a9bf1fe6 	.word	0xa9bf1fe6
     5f4:	a9bf27e8 	.word	0xa9bf27e8
     5f8:	a9bf2fea 	.word	0xa9bf2fea
     5fc:	a9bf37ec 	.word	0xa9bf37ec
     600:	a9bf3fee 	.word	0xa9bf3fee
     604:	a9bf47f0 	.word	0xa9bf47f0
     608:	a9bf4ff2 	.word	0xa9bf4ff2
     60c:	a9bf7bfd 	.word	0xa9bf7bfd
     610:	9400095a 	.word	0x9400095a
     614:	a8c17bfd 	.word	0xa8c17bfd
     618:	a8c14ff2 	.word	0xa8c14ff2
     61c:	a8c147f0 	.word	0xa8c147f0
     620:	a8c13fee 	.word	0xa8c13fee
     624:	a8c137ec 	.word	0xa8c137ec
     628:	a8c12fea 	.word	0xa8c12fea
     62c:	a8c127e8 	.word	0xa8c127e8
     630:	a8c11fe6 	.word	0xa8c11fe6
     634:	a8c117e4 	.word	0xa8c117e4
     638:	a8c10fe2 	.word	0xa8c10fe2
     63c:	a8c107e0 	.word	0xa8c107e0
     640:	d69f03e0 	.word	0xd69f03e0
	...

0000000000000700 <FPUContext>:
	...

0000000000000910 <FPUContextBase>:
	...

0000000000000918 <FPUStatus>:
	...
     920:	00000918 	.word	0x00000918
     924:	00000000 	.word	0x00000000
     928:	00000700 	.word	0x00000700
     92c:	00000000 	.word	0x00000000
     930:	00000910 	.word	0x00000910
     934:	00000000 	.word	0x00000000

0000000000000938 <_boot>:
     938:	d2800000 	mov	x0, #0x0                   	// #0
     93c:	d2800001 	mov	x1, #0x0                   	// #0
     940:	d2800002 	mov	x2, #0x0                   	// #0
     944:	d2800003 	mov	x3, #0x0                   	// #0
     948:	d2800004 	mov	x4, #0x0                   	// #0
     94c:	d2800005 	mov	x5, #0x0                   	// #0
     950:	d2800006 	mov	x6, #0x0                   	// #0
     954:	d2800007 	mov	x7, #0x0                   	// #0
     958:	d2800008 	mov	x8, #0x0                   	// #0
     95c:	d2800009 	mov	x9, #0x0                   	// #0
     960:	d280000a 	mov	x10, #0x0                   	// #0
     964:	d280000b 	mov	x11, #0x0                   	// #0
     968:	d280000c 	mov	x12, #0x0                   	// #0
     96c:	d280000d 	mov	x13, #0x0                   	// #0
     970:	d280000e 	mov	x14, #0x0                   	// #0
     974:	d280000f 	mov	x15, #0x0                   	// #0
     978:	d2800010 	mov	x16, #0x0                   	// #0
     97c:	d2800011 	mov	x17, #0x0                   	// #0
     980:	d2800012 	mov	x18, #0x0                   	// #0
     984:	d2800013 	mov	x19, #0x0                   	// #0
     988:	d2800014 	mov	x20, #0x0                   	// #0
     98c:	d2800015 	mov	x21, #0x0                   	// #0
     990:	d2800016 	mov	x22, #0x0                   	// #0
     994:	d2800017 	mov	x23, #0x0                   	// #0
     998:	d2800018 	mov	x24, #0x0                   	// #0
     99c:	d2800019 	mov	x25, #0x0                   	// #0
     9a0:	d280001a 	mov	x26, #0x0                   	// #0
     9a4:	d280001b 	mov	x27, #0x0                   	// #0
     9a8:	d280001c 	mov	x28, #0x0                   	// #0
     9ac:	d280001d 	mov	x29, #0x0                   	// #0
     9b0:	d280001e 	mov	x30, #0x0                   	// #0

00000000000009b4 <OKToRun>:
     9b4:	d5384240 	mrs	x0, currentel
     9b8:	f100301f 	cmp	x0, #0xc
     9bc:	54000080 	b.eq	9cc <InitEL3>  // b.none
     9c0:	f100101f 	cmp	x0, #0x4
     9c4:	54000780 	b.eq	ab4 <InitEL1>  // b.none
     9c8:	1400003c 	b	ab8 <error>

00000000000009cc <InitEL3>:
     9cc:	58000c21 	ldr	x1, b50 <invalidateCaches_end+0xc>
     9d0:	d51ec001 	msr	vbar_el3, x1
     9d4:	d53800a0 	mrs	x0, mpidr_el1
     9d8:	92401c00 	and	x0, x0, #0xff
     9dc:	2a0003e0 	mov	w0, w0
     9e0:	18000b42 	ldr	w2, b48 <invalidateCaches_end+0x4>
     9e4:	52800103 	mov	w3, #0x8                   	// #8
     9e8:	1b037c00 	mul	w0, w0, w3
     9ec:	0b000042 	add	w2, w2, w0
     9f0:	f9000041 	str	x1, [x2]
     9f4:	58000b22 	ldr	x2, b58 <invalidateCaches_end+0x14>
     9f8:	9100005f 	mov	sp, x2
     9fc:	d2800000 	mov	x0, #0x0                   	// #0
     a00:	b2760000 	orr	x0, x0, #0x400
     a04:	d51e1140 	msr	cptr_el3, x0
     a08:	d5033fdf 	isb
     a0c:	58000aa0 	ldr	x0, b60 <invalidateCaches_end+0x1c>
     a10:	f900001f 	str	xzr, [x0]
     a14:	52800001 	mov	w1, #0x0                   	// #0
     a18:	32150021 	orr	w1, w1, #0x800
     a1c:	32160021 	orr	w1, w1, #0x400
     a20:	321d0021 	orr	w1, w1, #0x8
     a24:	321e0021 	orr	w1, w1, #0x4
     a28:	321f0021 	orr	w1, w1, #0x2
     a2c:	d51e1101 	msr	scr_el3, x1
     a30:	580009c0 	ldr	x0, b68 <invalidateCaches_end+0x24>
     a34:	b2540000 	orr	x0, x0, #0x100000000000
     a38:	d519f200 	msr	s3_1_c15_c2_0, x0
     a3c:	580009a0 	ldr	x0, b70 <invalidateCaches_end+0x2c>
     a40:	d51be000 	msr	cntfrq_el0, x0
     a44:	d539f220 	mrs	x0, s3_1_c15_c2_1
     a48:	b27a0000 	orr	x0, x0, #0x40
     a4c:	d519f220 	msr	s3_1_c15_c2_1, x0
     a50:	d5033fdf 	isb
     a54:	d50e871f 	tlbi	alle3
     a58:	d508751f 	ic	iallu
     a5c:	94000018 	bl	abc <invalidate_dcaches>
     a60:	d5033f9f 	dsb	sy
     a64:	d5033fdf 	isb
     a68:	58000881 	ldr	x1, b78 <invalidateCaches_end+0x34>
     a6c:	d51e2001 	msr	ttbr0_el3, x1
     a70:	58000881 	ldr	x1, b80 <invalidateCaches_end+0x3c>
     a74:	d51ea201 	msr	mair_el3, x1
     a78:	58000881 	ldr	x1, b88 <invalidateCaches_end+0x44>
     a7c:	d51e2041 	msr	tcr_el3, x1
     a80:	d5033fdf 	isb
     a84:	d53b4221 	mrs	x1, daif
     a88:	9277f821 	and	x1, x1, #0xfffffffffffffeff
     a8c:	d51b4221 	msr	daif, x1
     a90:	d2800001 	mov	x1, #0x0                   	// #0
     a94:	b2740021 	orr	x1, x1, #0x1000
     a98:	b27d0021 	orr	x1, x1, #0x8
     a9c:	b27e0021 	orr	x1, x1, #0x4
     aa0:	b2400021 	orr	x1, x1, #0x1
     aa4:	d51e1001 	msr	sctlr_el3, x1
     aa8:	d5033f9f 	dsb	sy
     aac:	d5033fdf 	isb
     ab0:	1400083e 	b	2ba8 <_startup>

0000000000000ab4 <InitEL1>:
     ab4:	14000001 	b	ab8 <error>

0000000000000ab8 <error>:
     ab8:	14000000 	b	ab8 <error>

0000000000000abc <invalidate_dcaches>:
     abc:	d5033bbf 	dmb	ish
     ac0:	d5390020 	mrs	x0, clidr_el1
     ac4:	53186802 	ubfx	w2, w0, #24, #3
     ac8:	7100005f 	cmp	w2, #0x0
     acc:	540003c0 	b.eq	b44 <invalidateCaches_end>  // b.none
     ad0:	52800001 	mov	w1, #0x0                   	// #0

0000000000000ad4 <invalidateCaches_flush_level>:
     ad4:	0b010423 	add	w3, w1, w1, lsl #1
     ad8:	1ac32403 	lsr	w3, w0, w3
     adc:	53000863 	ubfx	w3, w3, #0, #3
     ae0:	7100087f 	cmp	w3, #0x2
     ae4:	540002ab 	b.lt	b38 <invalidateCaches_next_level>  // b.tstop
     ae8:	531f7824 	lsl	w4, w1, #1
     aec:	d51a0004 	msr	csselr_el1, x4
     af0:	d5033fdf 	isb
     af4:	d5390004 	mrs	x4, ccsidr_el1
     af8:	53000883 	ubfx	w3, w4, #0, #3
     afc:	11000863 	add	w3, w3, #0x2
     b00:	530d6c85 	ubfx	w5, w4, #13, #15
     b04:	53033084 	ubfx	w4, w4, #3, #10
     b08:	5ac01086 	clz	w6, w4

0000000000000b0c <invalidateCaches_flush_set>:
     b0c:	2a0403e8 	mov	w8, w4

0000000000000b10 <invalidateCaches_flush_way>:
     b10:	531f7827 	lsl	w7, w1, #1
     b14:	1ac320a9 	lsl	w9, w5, w3
     b18:	2a0900e7 	orr	w7, w7, w9
     b1c:	1ac62109 	lsl	w9, w8, w6
     b20:	2a0900e7 	orr	w7, w7, w9
     b24:	d5087e47 	dc	cisw, x7
     b28:	71000508 	subs	w8, w8, #0x1
     b2c:	54ffff2a 	b.ge	b10 <invalidateCaches_flush_way>  // b.tcont
     b30:	710004a5 	subs	w5, w5, #0x1
     b34:	54fffeca 	b.ge	b0c <invalidateCaches_flush_set>  // b.tcont

0000000000000b38 <invalidateCaches_next_level>:
     b38:	11000421 	add	w1, w1, #0x1
     b3c:	6b01005f 	cmp	w2, w1
     b40:	54fffcac 	b.gt	ad4 <invalidateCaches_flush_level>

0000000000000b44 <invalidateCaches_end>:
     b44:	d65f03c0 	ret
     b48:	fd5c0040 	.word	0xfd5c0040
	...
     b58:	000202c0 	.word	0x000202c0
     b5c:	00000000 	.word	0x00000000
     b60:	00000918 	.word	0x00000918
     b64:	00000000 	.word	0x00000000
     b68:	080ca000 	.word	0x080ca000
     b6c:	00000000 	.word	0x00000000
     b70:	01fc9f08 	.word	0x01fc9f08
     b74:	00000000 	.word	0x00000000
     b78:	00005000 	.word	0x00005000
     b7c:	00000000 	.word	0x00000000
     b80:	0400ff44 	.word	0x0400ff44
     b84:	000000bb 	.word	0x000000bb
     b88:	80823518 	.word	0x80823518
     b8c:	00000000 	.word	0x00000000

0000000000000b90 <deregister_tm_clones>:
     b90:	90000020 	adrp	x0, 4000 <impure_data+0x3d8>
     b94:	910dc000 	add	x0, x0, #0x370
     b98:	90000021 	adrp	x1, 4000 <impure_data+0x3d8>
     b9c:	910dc021 	add	x1, x1, #0x370
     ba0:	eb00003f 	cmp	x1, x0
     ba4:	54000080 	b.eq	bb4 <deregister_tm_clones+0x24>  // b.none
     ba8:	58000081 	ldr	x1, bb8 <deregister_tm_clones+0x28>
     bac:	b4000041 	cbz	x1, bb4 <deregister_tm_clones+0x24>
     bb0:	d61f0020 	br	x1
     bb4:	d65f03c0 	ret
	...

0000000000000bc0 <register_tm_clones>:
     bc0:	90000020 	adrp	x0, 4000 <impure_data+0x3d8>
     bc4:	910dc000 	add	x0, x0, #0x370
     bc8:	90000021 	adrp	x1, 4000 <impure_data+0x3d8>
     bcc:	910dc021 	add	x1, x1, #0x370
     bd0:	cb000021 	sub	x1, x1, x0
     bd4:	9343fc21 	asr	x1, x1, #3
     bd8:	8b41fc21 	add	x1, x1, x1, lsr #63
     bdc:	9341fc21 	asr	x1, x1, #1
     be0:	b4000081 	cbz	x1, bf0 <register_tm_clones+0x30>
     be4:	580000a2 	ldr	x2, bf8 <register_tm_clones+0x38>
     be8:	b4000042 	cbz	x2, bf0 <register_tm_clones+0x30>
     bec:	d61f0040 	br	x2
     bf0:	d65f03c0 	ret
     bf4:	d503201f 	nop
	...

0000000000000c00 <__do_global_dtors_aux>:
     c00:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     c04:	910003fd 	mov	x29, sp
     c08:	f9000bf3 	str	x19, [sp, #16]
     c0c:	90000073 	adrp	x19, c000 <__exidx_end>
     c10:	39420260 	ldrb	w0, [x19, #128]
     c14:	35000120 	cbnz	w0, c38 <__do_global_dtors_aux+0x38>
     c18:	97ffffde 	bl	b90 <deregister_tm_clones>
     c1c:	58000160 	ldr	x0, c48 <__do_global_dtors_aux+0x48>
     c20:	b4000080 	cbz	x0, c30 <__do_global_dtors_aux+0x30>
     c24:	90000020 	adrp	x0, 4000 <impure_data+0x3d8>
     c28:	910e0000 	add	x0, x0, #0x380
     c2c:	d503201f 	nop
     c30:	52800020 	mov	w0, #0x1                   	// #1
     c34:	39020260 	strb	w0, [x19, #128]
     c38:	f9400bf3 	ldr	x19, [sp, #16]
     c3c:	a8c27bfd 	ldp	x29, x30, [sp], #32
     c40:	d65f03c0 	ret
     c44:	d503201f 	nop
	...

0000000000000c50 <frame_dummy>:
     c50:	58000180 	ldr	x0, c80 <frame_dummy+0x30>
     c54:	b4000140 	cbz	x0, c7c <frame_dummy+0x2c>
     c58:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     c5c:	90000061 	adrp	x1, c000 <__exidx_end>
     c60:	90000020 	adrp	x0, 4000 <impure_data+0x3d8>
     c64:	91022021 	add	x1, x1, #0x88
     c68:	910003fd 	mov	x29, sp
     c6c:	910e0000 	add	x0, x0, #0x380
     c70:	d503201f 	nop
     c74:	a8c17bfd 	ldp	x29, x30, [sp], #16
     c78:	17ffffd2 	b	bc0 <register_tm_clones>
     c7c:	17ffffd1 	b	bc0 <register_tm_clones>
	...

0000000000000c88 <_mainCRTStartup>:
     c88:	100007c1 	adr	x1, d80 <_cpu_init_hook+0x4>
     c8c:	528002c0 	mov	w0, #0x16                  	// #22
     c90:	d45e0000 	hlt	#0xf000
     c94:	58000760 	ldr	x0, d80 <_cpu_init_hook+0x4>
     c98:	f9400401 	ldr	x1, [x0, #8]
     c9c:	927cec20 	and	x0, x1, #0xfffffffffffffff0
     ca0:	9100001f 	mov	sp, x0
     ca4:	d280001d 	mov	x29, #0x0                   	// #0
     ca8:	a9bf77fd 	stp	x29, x29, [sp, #-16]!
     cac:	910003fd 	mov	x29, sp
     cb0:	94000033 	bl	d7c <_cpu_init_hook>
     cb4:	580006a0 	ldr	x0, d88 <_cpu_init_hook+0xc>
     cb8:	52800001 	mov	w1, #0x0                   	// #0
     cbc:	580006a2 	ldr	x2, d90 <_cpu_init_hook+0x14>
     cc0:	cb000042 	sub	x2, x2, x0
     cc4:	94000a1f 	bl	3540 <memset>
     cc8:	9400079e 	bl	2b40 <initialise_monitor_handles>
     ccc:	58000660 	ldr	x0, d98 <_cpu_init_hook+0x1c>
     cd0:	940009ca 	bl	33f8 <atexit>
     cd4:	940009f1 	bl	3498 <__libc_init_array>
     cd8:	10000681 	adr	x1, da8 <_cpu_init_hook+0x2c>
     cdc:	528002a0 	mov	w0, #0x15                  	// #21
     ce0:	d45e0000 	hlt	#0xf000
     ce4:	58000628 	ldr	x8, da8 <_cpu_init_hook+0x2c>
     ce8:	d2800000 	mov	x0, #0x0                   	// #0
     cec:	910003e1 	mov	x1, sp
     cf0:	58000582 	ldr	x2, da0 <_cpu_init_hook+0x24>
     cf4:	f81f8c20 	str	x0, [x1, #-8]!
     cf8:	38401503 	ldrb	w3, [x8], #1
     cfc:	34000243 	cbz	w3, d44 <_mainCRTStartup+0xbc>
     d00:	7100807f 	cmp	w3, #0x20
     d04:	54ffffa0 	b.eq	cf8 <_mainCRTStartup+0x70>  // b.none
     d08:	52800404 	mov	w4, #0x20                  	// #32
     d0c:	71008869 	subs	w9, w3, #0x22
     d10:	d1000508 	sub	x8, x8, #0x1
     d14:	7a451924 	ccmp	w9, #0x5, #0x4, ne  // ne = any
     d18:	1a840064 	csel	w4, w3, w4, eq  // eq = none
     d1c:	9a881508 	cinc	x8, x8, eq  // eq = none
     d20:	f81f8c28 	str	x8, [x1, #-8]!
     d24:	91000400 	add	x0, x0, #0x1
     d28:	38401503 	ldrb	w3, [x8], #1
     d2c:	340000c3 	cbz	w3, d44 <_mainCRTStartup+0xbc>
     d30:	6b03009f 	cmp	w4, w3
     d34:	54ffffa1 	b.ne	d28 <_mainCRTStartup+0xa0>  // b.any
     d38:	52800004 	mov	w4, #0x0                   	// #0
     d3c:	381ff104 	sturb	w4, [x8, #-1]
     d40:	17ffffee 	b	cf8 <_mainCRTStartup+0x70>
     d44:	91000023 	add	x3, x1, #0x0
     d48:	8b204c24 	add	x4, x1, w0, uxtw #3
     d4c:	eb03009f 	cmp	x4, x3
     d50:	540000e3 	b.cc	d6c <_mainCRTStartup+0xe4>  // b.lo, b.ul, b.last
     d54:	f85f8085 	ldur	x5, [x4, #-8]
     d58:	f9400066 	ldr	x6, [x3]
     d5c:	f81f8c86 	str	x6, [x4, #-8]!
     d60:	f8008465 	str	x5, [x3], #8
     d64:	eb03009f 	cmp	x4, x3
     d68:	54ffff68 	b.hi	d54 <_mainCRTStartup+0xcc>  // b.pmore
     d6c:	927cec24 	and	x4, x1, #0xfffffffffffffff0
     d70:	9100009f 	mov	sp, x4
     d74:	94000749 	bl	2a98 <main>
     d78:	140009a6 	b	3410 <exit>

0000000000000d7c <_cpu_init_hook>:
     d7c:	d65f03c0 	ret
     d80:	00003a88 	.word	0x00003a88
     d84:	00000000 	.word	0x00000000
     d88:	0000c080 	.word	0x0000c080
     d8c:	00000000 	.word	0x00000000
     d90:	0001c2c0 	.word	0x0001c2c0
     d94:	00000000 	.word	0x00000000
     d98:	00003448 	.word	0x00003448
     d9c:	00000000 	.word	0x00000000
     da0:	00003aa8 	.word	0x00003aa8
     da4:	00000000 	.word	0x00000000
     da8:	00003ab0 	.word	0x00003ab0
     dac:	00000000 	.word	0x00000000
     db0:	000000ff 	.word	0x000000ff
     db4:	00000000 	.word	0x00000000

0000000000000db8 <debayer_neon64>:
     db8:	d11ec3ff 	sub	sp, sp, #0x7b0
     dbc:	f90017e0 	str	x0, [sp, #40]
     dc0:	b90027e1 	str	w1, [sp, #36]
     dc4:	b90023e2 	str	w2, [sp, #32]
     dc8:	f9000fe3 	str	x3, [sp, #24]
     dcc:	f9000be4 	str	x4, [sp, #16]
     dd0:	f90007e5 	str	x5, [sp, #8]
     dd4:	52800020 	mov	w0, #0x1                   	// #1
     dd8:	b907afe0 	str	w0, [sp, #1964]
     ddc:	140004d4 	b	212c <_HEAP_SIZE+0x12c>
     de0:	b94027e1 	ldr	w1, [sp, #36]
     de4:	b947afe0 	ldr	w0, [sp, #1964]
     de8:	0b000020 	add	w0, w1, w0
     dec:	93407c00 	sxtw	x0, w0
     df0:	f94017e1 	ldr	x1, [sp, #40]
     df4:	8b000020 	add	x0, x1, x0
     df8:	f9034be0 	str	x0, [sp, #1680]
     dfc:	9119c3e0 	add	x0, sp, #0x670
     e00:	f9434be1 	ldr	x1, [sp, #1680]
     e04:	4c408020 	ld2	{v0.16b, v1.16b}, [x1]
     e08:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
     e0c:	9119c3e0 	add	x0, sp, #0x670
     e10:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
     e14:	d10143e0 	sub	x0, sp, #0x50
     e18:	91088000 	add	x0, x0, #0x220
     e1c:	3d800000 	str	q0, [x0]
     e20:	9119c3e0 	add	x0, sp, #0x670
     e24:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
     e28:	4ea11c20 	mov	v0.16b, v1.16b
     e2c:	d10143e0 	sub	x0, sp, #0x50
     e30:	91088000 	add	x0, x0, #0x220
     e34:	3d800400 	str	q0, [x0, #16]
     e38:	d10143e0 	sub	x0, sp, #0x50
     e3c:	91088000 	add	x0, x0, #0x220
     e40:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
     e44:	d10143e0 	sub	x0, sp, #0x50
     e48:	91020000 	add	x0, x0, #0x80
     e4c:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
     e50:	b9069bff 	str	wzr, [sp, #1688]
     e54:	b9469be0 	ldr	w0, [sp, #1688]
     e58:	12001c0f 	and	w15, w0, #0xff
     e5c:	b9469be0 	ldr	w0, [sp, #1688]
     e60:	12001c0e 	and	w14, w0, #0xff
     e64:	b9469be0 	ldr	w0, [sp, #1688]
     e68:	12001c0d 	and	w13, w0, #0xff
     e6c:	b9469be0 	ldr	w0, [sp, #1688]
     e70:	12001c0c 	and	w12, w0, #0xff
     e74:	b9469be0 	ldr	w0, [sp, #1688]
     e78:	12001c0b 	and	w11, w0, #0xff
     e7c:	b9469be0 	ldr	w0, [sp, #1688]
     e80:	12001c0a 	and	w10, w0, #0xff
     e84:	b9469be0 	ldr	w0, [sp, #1688]
     e88:	12001c09 	and	w9, w0, #0xff
     e8c:	b9469be0 	ldr	w0, [sp, #1688]
     e90:	12001c08 	and	w8, w0, #0xff
     e94:	b9469be0 	ldr	w0, [sp, #1688]
     e98:	12001c07 	and	w7, w0, #0xff
     e9c:	b9469be0 	ldr	w0, [sp, #1688]
     ea0:	12001c06 	and	w6, w0, #0xff
     ea4:	b9469be0 	ldr	w0, [sp, #1688]
     ea8:	12001c05 	and	w5, w0, #0xff
     eac:	b9469be0 	ldr	w0, [sp, #1688]
     eb0:	12001c04 	and	w4, w0, #0xff
     eb4:	b9469be0 	ldr	w0, [sp, #1688]
     eb8:	12001c03 	and	w3, w0, #0xff
     ebc:	b9469be0 	ldr	w0, [sp, #1688]
     ec0:	12001c02 	and	w2, w0, #0xff
     ec4:	b9469be0 	ldr	w0, [sp, #1688]
     ec8:	12001c01 	and	w1, w0, #0xff
     ecc:	b9469be0 	ldr	w0, [sp, #1688]
     ed0:	12001c00 	and	w0, w0, #0xff
     ed4:	4e010de0 	dup	v0.16b, w15
     ed8:	4e031dc0 	mov	v0.b[1], w14
     edc:	4e051da0 	mov	v0.b[2], w13
     ee0:	4e071d80 	mov	v0.b[3], w12
     ee4:	4e091d60 	mov	v0.b[4], w11
     ee8:	4e0b1d40 	mov	v0.b[5], w10
     eec:	4e0d1d20 	mov	v0.b[6], w9
     ef0:	4e0f1d00 	mov	v0.b[7], w8
     ef4:	4e111ce0 	mov	v0.b[8], w7
     ef8:	4e131cc0 	mov	v0.b[9], w6
     efc:	4e151ca0 	mov	v0.b[10], w5
     f00:	4e171c80 	mov	v0.b[11], w4
     f04:	4e191c60 	mov	v0.b[12], w3
     f08:	4e1b1c40 	mov	v0.b[13], w2
     f0c:	4e1d1c20 	mov	v0.b[14], w1
     f10:	4e1f1c00 	mov	v0.b[15], w0
     f14:	d10143e0 	sub	x0, sp, #0x50
     f18:	91028000 	add	x0, x0, #0xa0
     f1c:	3d800000 	str	q0, [x0]
     f20:	b9069fff 	str	wzr, [sp, #1692]
     f24:	b9469fe0 	ldr	w0, [sp, #1692]
     f28:	12001c0f 	and	w15, w0, #0xff
     f2c:	b9469fe0 	ldr	w0, [sp, #1692]
     f30:	12001c0e 	and	w14, w0, #0xff
     f34:	b9469fe0 	ldr	w0, [sp, #1692]
     f38:	12001c0d 	and	w13, w0, #0xff
     f3c:	b9469fe0 	ldr	w0, [sp, #1692]
     f40:	12001c0c 	and	w12, w0, #0xff
     f44:	b9469fe0 	ldr	w0, [sp, #1692]
     f48:	12001c0b 	and	w11, w0, #0xff
     f4c:	b9469fe0 	ldr	w0, [sp, #1692]
     f50:	12001c0a 	and	w10, w0, #0xff
     f54:	b9469fe0 	ldr	w0, [sp, #1692]
     f58:	12001c09 	and	w9, w0, #0xff
     f5c:	b9469fe0 	ldr	w0, [sp, #1692]
     f60:	12001c08 	and	w8, w0, #0xff
     f64:	b9469fe0 	ldr	w0, [sp, #1692]
     f68:	12001c07 	and	w7, w0, #0xff
     f6c:	b9469fe0 	ldr	w0, [sp, #1692]
     f70:	12001c06 	and	w6, w0, #0xff
     f74:	b9469fe0 	ldr	w0, [sp, #1692]
     f78:	12001c05 	and	w5, w0, #0xff
     f7c:	b9469fe0 	ldr	w0, [sp, #1692]
     f80:	12001c04 	and	w4, w0, #0xff
     f84:	b9469fe0 	ldr	w0, [sp, #1692]
     f88:	12001c03 	and	w3, w0, #0xff
     f8c:	b9469fe0 	ldr	w0, [sp, #1692]
     f90:	12001c02 	and	w2, w0, #0xff
     f94:	b9469fe0 	ldr	w0, [sp, #1692]
     f98:	12001c01 	and	w1, w0, #0xff
     f9c:	b9469fe0 	ldr	w0, [sp, #1692]
     fa0:	12001c00 	and	w0, w0, #0xff
     fa4:	4e010de0 	dup	v0.16b, w15
     fa8:	4e031dc0 	mov	v0.b[1], w14
     fac:	4e051da0 	mov	v0.b[2], w13
     fb0:	4e071d80 	mov	v0.b[3], w12
     fb4:	4e091d60 	mov	v0.b[4], w11
     fb8:	4e0b1d40 	mov	v0.b[5], w10
     fbc:	4e0d1d20 	mov	v0.b[6], w9
     fc0:	4e0f1d00 	mov	v0.b[7], w8
     fc4:	4e111ce0 	mov	v0.b[8], w7
     fc8:	4e131cc0 	mov	v0.b[9], w6
     fcc:	4e151ca0 	mov	v0.b[10], w5
     fd0:	4e171c80 	mov	v0.b[11], w4
     fd4:	4e191c60 	mov	v0.b[12], w3
     fd8:	4e1b1c40 	mov	v0.b[13], w2
     fdc:	4e1d1c20 	mov	v0.b[14], w1
     fe0:	4e1f1c00 	mov	v0.b[15], w0
     fe4:	d10143e0 	sub	x0, sp, #0x50
     fe8:	91028000 	add	x0, x0, #0xa0
     fec:	3d800400 	str	q0, [x0, #16]
     ff0:	52800020 	mov	w0, #0x1                   	// #1
     ff4:	b907abe0 	str	w0, [sp, #1960]
     ff8:	14000445 	b	210c <_HEAP_SIZE+0x10c>
     ffc:	d10143e0 	sub	x0, sp, #0x50
    1000:	91048000 	add	x0, x0, #0x120
    1004:	d10143e1 	sub	x1, sp, #0x50
    1008:	91020021 	add	x1, x1, #0x80
    100c:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1010:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1014:	b947abe0 	ldr	w0, [sp, #1960]
    1018:	11000401 	add	w1, w0, #0x1
    101c:	b94027e0 	ldr	w0, [sp, #36]
    1020:	1b007c21 	mul	w1, w1, w0
    1024:	b947afe0 	ldr	w0, [sp, #1964]
    1028:	0b000020 	add	w0, w1, w0
    102c:	93407c00 	sxtw	x0, w0
    1030:	f94017e1 	ldr	x1, [sp, #40]
    1034:	8b000020 	add	x0, x1, x0
    1038:	f9016fe0 	str	x0, [sp, #728]
    103c:	d10143e0 	sub	x0, sp, #0x50
    1040:	910c0000 	add	x0, x0, #0x300
    1044:	f9416fe1 	ldr	x1, [sp, #728]
    1048:	4c408020 	ld2	{v0.16b, v1.16b}, [x1]
    104c:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1050:	d10143e0 	sub	x0, sp, #0x50
    1054:	910c0000 	add	x0, x0, #0x300
    1058:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
    105c:	d10143e0 	sub	x0, sp, #0x50
    1060:	91088000 	add	x0, x0, #0x220
    1064:	3d800000 	str	q0, [x0]
    1068:	d10143e0 	sub	x0, sp, #0x50
    106c:	910c0000 	add	x0, x0, #0x300
    1070:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
    1074:	4ea11c20 	mov	v0.16b, v1.16b
    1078:	d10143e0 	sub	x0, sp, #0x50
    107c:	91088000 	add	x0, x0, #0x220
    1080:	3d800400 	str	q0, [x0, #16]
    1084:	d10143e0 	sub	x0, sp, #0x50
    1088:	91088000 	add	x0, x0, #0x220
    108c:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
    1090:	d10143e0 	sub	x0, sp, #0x50
    1094:	91050000 	add	x0, x0, #0x140
    1098:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    109c:	d10143e0 	sub	x0, sp, #0x50
    10a0:	91048000 	add	x0, x0, #0x120
    10a4:	3dc00000 	ldr	q0, [x0]
    10a8:	3d81e7e0 	str	q0, [sp, #1936]
    10ac:	d10143e0 	sub	x0, sp, #0x50
    10b0:	91048000 	add	x0, x0, #0x120
    10b4:	3dc00400 	ldr	q0, [x0, #16]
    10b8:	3d81e3e0 	str	q0, [sp, #1920]
    10bc:	d10143e0 	sub	x0, sp, #0x50
    10c0:	91028000 	add	x0, x0, #0xa0
    10c4:	3dc00000 	ldr	q0, [x0]
    10c8:	3d81dfe0 	str	q0, [sp, #1904]
    10cc:	d10143e0 	sub	x0, sp, #0x50
    10d0:	91050000 	add	x0, x0, #0x140
    10d4:	3dc00400 	ldr	q0, [x0, #16]
    10d8:	3d81dbe0 	str	q0, [sp, #1888]
    10dc:	d10143e0 	sub	x0, sp, #0x50
    10e0:	91038000 	add	x0, x0, #0xe0
    10e4:	3dc1e7e0 	ldr	q0, [sp, #1936]
    10e8:	3d800000 	str	q0, [x0]
    10ec:	d10143e0 	sub	x0, sp, #0x50
    10f0:	91038000 	add	x0, x0, #0xe0
    10f4:	3dc00001 	ldr	q1, [x0]
    10f8:	d10143e0 	sub	x0, sp, #0x50
    10fc:	91038000 	add	x0, x0, #0xe0
    1100:	3dc00000 	ldr	q0, [x0]
    1104:	3d80abe1 	str	q1, [sp, #672]
    1108:	3d80bbe0 	str	q0, [sp, #736]
    110c:	3dc0abe1 	ldr	q1, [sp, #672]
    1110:	5280002f 	mov	w15, #0x1                   	// #1
    1114:	52800020 	mov	w0, #0x1                   	// #1
    1118:	11000400 	add	w0, w0, #0x1
    111c:	12001c0e 	and	w14, w0, #0xff
    1120:	52800020 	mov	w0, #0x1                   	// #1
    1124:	11000800 	add	w0, w0, #0x2
    1128:	12001c0d 	and	w13, w0, #0xff
    112c:	52800020 	mov	w0, #0x1                   	// #1
    1130:	11000c00 	add	w0, w0, #0x3
    1134:	12001c0c 	and	w12, w0, #0xff
    1138:	52800020 	mov	w0, #0x1                   	// #1
    113c:	11001000 	add	w0, w0, #0x4
    1140:	12001c0b 	and	w11, w0, #0xff
    1144:	52800020 	mov	w0, #0x1                   	// #1
    1148:	11001400 	add	w0, w0, #0x5
    114c:	12001c0a 	and	w10, w0, #0xff
    1150:	52800020 	mov	w0, #0x1                   	// #1
    1154:	11001800 	add	w0, w0, #0x6
    1158:	12001c09 	and	w9, w0, #0xff
    115c:	52800020 	mov	w0, #0x1                   	// #1
    1160:	11001c00 	add	w0, w0, #0x7
    1164:	12001c08 	and	w8, w0, #0xff
    1168:	52800020 	mov	w0, #0x1                   	// #1
    116c:	11002000 	add	w0, w0, #0x8
    1170:	12001c07 	and	w7, w0, #0xff
    1174:	52800020 	mov	w0, #0x1                   	// #1
    1178:	11002400 	add	w0, w0, #0x9
    117c:	12001c06 	and	w6, w0, #0xff
    1180:	52800020 	mov	w0, #0x1                   	// #1
    1184:	11002800 	add	w0, w0, #0xa
    1188:	12001c05 	and	w5, w0, #0xff
    118c:	52800020 	mov	w0, #0x1                   	// #1
    1190:	11002c00 	add	w0, w0, #0xb
    1194:	12001c04 	and	w4, w0, #0xff
    1198:	52800020 	mov	w0, #0x1                   	// #1
    119c:	11003000 	add	w0, w0, #0xc
    11a0:	12001c03 	and	w3, w0, #0xff
    11a4:	52800020 	mov	w0, #0x1                   	// #1
    11a8:	11003400 	add	w0, w0, #0xd
    11ac:	12001c02 	and	w2, w0, #0xff
    11b0:	52800020 	mov	w0, #0x1                   	// #1
    11b4:	11003800 	add	w0, w0, #0xe
    11b8:	12001c01 	and	w1, w0, #0xff
    11bc:	52800020 	mov	w0, #0x1                   	// #1
    11c0:	11003c00 	add	w0, w0, #0xf
    11c4:	12001c00 	and	w0, w0, #0xff
    11c8:	4e010de0 	dup	v0.16b, w15
    11cc:	4e031dc0 	mov	v0.b[1], w14
    11d0:	4e051da0 	mov	v0.b[2], w13
    11d4:	4e071d80 	mov	v0.b[3], w12
    11d8:	4e091d60 	mov	v0.b[4], w11
    11dc:	4e0b1d40 	mov	v0.b[5], w10
    11e0:	4e0d1d20 	mov	v0.b[6], w9
    11e4:	4e0f1d00 	mov	v0.b[7], w8
    11e8:	4e111ce0 	mov	v0.b[8], w7
    11ec:	4e131cc0 	mov	v0.b[9], w6
    11f0:	4e151ca0 	mov	v0.b[10], w5
    11f4:	4e171c80 	mov	v0.b[11], w4
    11f8:	4e191c60 	mov	v0.b[12], w3
    11fc:	4e1b1c40 	mov	v0.b[13], w2
    1200:	4e1d1c20 	mov	v0.b[14], w1
    1204:	4e1f1c00 	mov	v0.b[15], w0
    1208:	4ea01c03 	mov	v3.16b, v0.16b
    120c:	3dc0bbe0 	ldr	q0, [sp, #736]
    1210:	4f00e7e2 	movi	v2.16b, #0x1f
    1214:	4e221c62 	and	v2.16b, v3.16b, v2.16b
    1218:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    121c:	6e201c20 	eor	v0.16b, v1.16b, v0.16b
    1220:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    1224:	4e022000 	tbl	v0.16b, {v0.16b, v1.16b}, v2.16b
    1228:	3d81d7e0 	str	q0, [sp, #1872]
    122c:	b947abe1 	ldr	w1, [sp, #1960]
    1230:	b94027e0 	ldr	w0, [sp, #36]
    1234:	1b007c21 	mul	w1, w1, w0
    1238:	b947afe0 	ldr	w0, [sp, #1964]
    123c:	0b000020 	add	w0, w1, w0
    1240:	93407c00 	sxtw	x0, w0
    1244:	91008000 	add	x0, x0, #0x20
    1248:	f94017e1 	ldr	x1, [sp, #40]
    124c:	8b000020 	add	x0, x1, x0
    1250:	39400000 	ldrb	w0, [x0]
    1254:	390bffe0 	strb	w0, [sp, #767]
    1258:	3dc1d7e0 	ldr	q0, [sp, #1872]
    125c:	3d80a7e0 	str	q0, [sp, #656]
    1260:	394bffe0 	ldrb	w0, [sp, #767]
    1264:	390a5fe0 	strb	w0, [sp, #663]
    1268:	3dc0a7e0 	ldr	q0, [sp, #656]
    126c:	3d81d7e0 	str	q0, [sp, #1872]
    1270:	3dc1dfe0 	ldr	q0, [sp, #1904]
    1274:	3d80c7e0 	str	q0, [sp, #784]
    1278:	3dc1dbe0 	ldr	q0, [sp, #1888]
    127c:	3d80c3e0 	str	q0, [sp, #768]
    1280:	3dc0c7e0 	ldr	q0, [sp, #784]
    1284:	3dc0c3e1 	ldr	q1, [sp, #768]
    1288:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    128c:	4ea01c02 	mov	v2.16b, v0.16b
    1290:	d10143e0 	sub	x0, sp, #0x50
    1294:	91038000 	add	x0, x0, #0xe0
    1298:	3dc00000 	ldr	q0, [x0]
    129c:	3d80cfe0 	str	q0, [sp, #816]
    12a0:	3dc1d7e0 	ldr	q0, [sp, #1872]
    12a4:	3d80cbe0 	str	q0, [sp, #800]
    12a8:	3dc0cfe0 	ldr	q0, [sp, #816]
    12ac:	3dc0cbe1 	ldr	q1, [sp, #800]
    12b0:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    12b4:	3d80d7e2 	str	q2, [sp, #848]
    12b8:	3d80d3e0 	str	q0, [sp, #832]
    12bc:	3dc0d7e0 	ldr	q0, [sp, #848]
    12c0:	3dc0d3e1 	ldr	q1, [sp, #832]
    12c4:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    12c8:	d10143e0 	sub	x0, sp, #0x50
    12cc:	91038000 	add	x0, x0, #0xe0
    12d0:	3d800400 	str	q0, [x0, #16]
    12d4:	d10143e0 	sub	x0, sp, #0x50
    12d8:	91040000 	add	x0, x0, #0x100
    12dc:	3dc1e3e0 	ldr	q0, [sp, #1920]
    12e0:	3d800400 	str	q0, [x0, #16]
    12e4:	d10143e0 	sub	x0, sp, #0x50
    12e8:	91040000 	add	x0, x0, #0x100
    12ec:	3dc00401 	ldr	q1, [x0, #16]
    12f0:	d10143e0 	sub	x0, sp, #0x50
    12f4:	91040000 	add	x0, x0, #0x100
    12f8:	3dc00400 	ldr	q0, [x0, #16]
    12fc:	3d80a3e1 	str	q1, [sp, #640]
    1300:	3d80dbe0 	str	q0, [sp, #864]
    1304:	3dc0a3e1 	ldr	q1, [sp, #640]
    1308:	528000ef 	mov	w15, #0x7                   	// #7
    130c:	528000e0 	mov	w0, #0x7                   	// #7
    1310:	11000400 	add	w0, w0, #0x1
    1314:	12001c0e 	and	w14, w0, #0xff
    1318:	528000e0 	mov	w0, #0x7                   	// #7
    131c:	11000800 	add	w0, w0, #0x2
    1320:	12001c0d 	and	w13, w0, #0xff
    1324:	528000e0 	mov	w0, #0x7                   	// #7
    1328:	11000c00 	add	w0, w0, #0x3
    132c:	12001c0c 	and	w12, w0, #0xff
    1330:	528000e0 	mov	w0, #0x7                   	// #7
    1334:	11001000 	add	w0, w0, #0x4
    1338:	12001c0b 	and	w11, w0, #0xff
    133c:	528000e0 	mov	w0, #0x7                   	// #7
    1340:	11001400 	add	w0, w0, #0x5
    1344:	12001c0a 	and	w10, w0, #0xff
    1348:	528000e0 	mov	w0, #0x7                   	// #7
    134c:	11001800 	add	w0, w0, #0x6
    1350:	12001c09 	and	w9, w0, #0xff
    1354:	528000e0 	mov	w0, #0x7                   	// #7
    1358:	11001c00 	add	w0, w0, #0x7
    135c:	12001c08 	and	w8, w0, #0xff
    1360:	528000e0 	mov	w0, #0x7                   	// #7
    1364:	11002000 	add	w0, w0, #0x8
    1368:	12001c07 	and	w7, w0, #0xff
    136c:	528000e0 	mov	w0, #0x7                   	// #7
    1370:	11002400 	add	w0, w0, #0x9
    1374:	12001c06 	and	w6, w0, #0xff
    1378:	528000e0 	mov	w0, #0x7                   	// #7
    137c:	11002800 	add	w0, w0, #0xa
    1380:	12001c05 	and	w5, w0, #0xff
    1384:	528000e0 	mov	w0, #0x7                   	// #7
    1388:	11002c00 	add	w0, w0, #0xb
    138c:	12001c04 	and	w4, w0, #0xff
    1390:	528000e0 	mov	w0, #0x7                   	// #7
    1394:	11003000 	add	w0, w0, #0xc
    1398:	12001c03 	and	w3, w0, #0xff
    139c:	528000e0 	mov	w0, #0x7                   	// #7
    13a0:	11003400 	add	w0, w0, #0xd
    13a4:	12001c02 	and	w2, w0, #0xff
    13a8:	528000e0 	mov	w0, #0x7                   	// #7
    13ac:	11003800 	add	w0, w0, #0xe
    13b0:	12001c01 	and	w1, w0, #0xff
    13b4:	528000e0 	mov	w0, #0x7                   	// #7
    13b8:	11003c00 	add	w0, w0, #0xf
    13bc:	12001c00 	and	w0, w0, #0xff
    13c0:	4e010de0 	dup	v0.16b, w15
    13c4:	4e031dc0 	mov	v0.b[1], w14
    13c8:	4e051da0 	mov	v0.b[2], w13
    13cc:	4e071d80 	mov	v0.b[3], w12
    13d0:	4e091d60 	mov	v0.b[4], w11
    13d4:	4e0b1d40 	mov	v0.b[5], w10
    13d8:	4e0d1d20 	mov	v0.b[6], w9
    13dc:	4e0f1d00 	mov	v0.b[7], w8
    13e0:	4e111ce0 	mov	v0.b[8], w7
    13e4:	4e131cc0 	mov	v0.b[9], w6
    13e8:	4e151ca0 	mov	v0.b[10], w5
    13ec:	4e171c80 	mov	v0.b[11], w4
    13f0:	4e191c60 	mov	v0.b[12], w3
    13f4:	4e1b1c40 	mov	v0.b[13], w2
    13f8:	4e1d1c20 	mov	v0.b[14], w1
    13fc:	4e1f1c00 	mov	v0.b[15], w0
    1400:	4ea01c03 	mov	v3.16b, v0.16b
    1404:	3dc0dbe0 	ldr	q0, [sp, #864]
    1408:	4f00e7e2 	movi	v2.16b, #0x1f
    140c:	4e221c62 	and	v2.16b, v3.16b, v2.16b
    1410:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    1414:	6e201c20 	eor	v0.16b, v1.16b, v0.16b
    1418:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    141c:	4e022000 	tbl	v0.16b, {v0.16b, v1.16b}, v2.16b
    1420:	3d81d3e0 	str	q0, [sp, #1856]
    1424:	b947abe1 	ldr	w1, [sp, #1960]
    1428:	b94027e0 	ldr	w0, [sp, #36]
    142c:	1b007c21 	mul	w1, w1, w0
    1430:	b947afe0 	ldr	w0, [sp, #1964]
    1434:	0b000020 	add	w0, w1, w0
    1438:	93407c00 	sxtw	x0, w0
    143c:	d1000800 	sub	x0, x0, #0x2
    1440:	f94017e1 	ldr	x1, [sp, #40]
    1444:	8b000020 	add	x0, x1, x0
    1448:	39400000 	ldrb	w0, [x0]
    144c:	390dffe0 	strb	w0, [sp, #895]
    1450:	3dc1d3e0 	ldr	q0, [sp, #1856]
    1454:	3d809fe0 	str	q0, [sp, #624]
    1458:	394dffe0 	ldrb	w0, [sp, #895]
    145c:	3909c3e0 	strb	w0, [sp, #624]
    1460:	3dc09fe0 	ldr	q0, [sp, #624]
    1464:	3d81d3e0 	str	q0, [sp, #1856]
    1468:	d10143e0 	sub	x0, sp, #0x50
    146c:	91040000 	add	x0, x0, #0x100
    1470:	3dc00400 	ldr	q0, [x0, #16]
    1474:	3dc1d3e1 	ldr	q1, [sp, #1856]
    1478:	3d80e7e1 	str	q1, [sp, #912]
    147c:	3d80e3e0 	str	q0, [sp, #896]
    1480:	3dc0e7e0 	ldr	q0, [sp, #912]
    1484:	3dc0e3e1 	ldr	q1, [sp, #896]
    1488:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    148c:	d10143e0 	sub	x0, sp, #0x50
    1490:	91040000 	add	x0, x0, #0x100
    1494:	3d800000 	str	q0, [x0]
    1498:	d10143e0 	sub	x0, sp, #0x50
    149c:	91028000 	add	x0, x0, #0xa0
    14a0:	3dc00001 	ldr	q1, [x0]
    14a4:	d10143e0 	sub	x0, sp, #0x50
    14a8:	91050000 	add	x0, x0, #0x140
    14ac:	3dc00000 	ldr	q0, [x0]
    14b0:	3d80efe1 	str	q1, [sp, #944]
    14b4:	3d80ebe0 	str	q0, [sp, #928]
    14b8:	3dc0efe0 	ldr	q0, [sp, #944]
    14bc:	3dc0ebe1 	ldr	q1, [sp, #928]
    14c0:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    14c4:	3d81cfe0 	str	q0, [sp, #1840]
    14c8:	3dc1cfe0 	ldr	q0, [sp, #1840]
    14cc:	3d809be0 	str	q0, [sp, #608]
    14d0:	3dc1cfe0 	ldr	q0, [sp, #1840]
    14d4:	3d80f3e0 	str	q0, [sp, #960]
    14d8:	3dc09be1 	ldr	q1, [sp, #608]
    14dc:	5280002f 	mov	w15, #0x1                   	// #1
    14e0:	52800020 	mov	w0, #0x1                   	// #1
    14e4:	11000400 	add	w0, w0, #0x1
    14e8:	12001c0e 	and	w14, w0, #0xff
    14ec:	52800020 	mov	w0, #0x1                   	// #1
    14f0:	11000800 	add	w0, w0, #0x2
    14f4:	12001c0d 	and	w13, w0, #0xff
    14f8:	52800020 	mov	w0, #0x1                   	// #1
    14fc:	11000c00 	add	w0, w0, #0x3
    1500:	12001c0c 	and	w12, w0, #0xff
    1504:	52800020 	mov	w0, #0x1                   	// #1
    1508:	11001000 	add	w0, w0, #0x4
    150c:	12001c0b 	and	w11, w0, #0xff
    1510:	52800020 	mov	w0, #0x1                   	// #1
    1514:	11001400 	add	w0, w0, #0x5
    1518:	12001c0a 	and	w10, w0, #0xff
    151c:	52800020 	mov	w0, #0x1                   	// #1
    1520:	11001800 	add	w0, w0, #0x6
    1524:	12001c09 	and	w9, w0, #0xff
    1528:	52800020 	mov	w0, #0x1                   	// #1
    152c:	11001c00 	add	w0, w0, #0x7
    1530:	12001c08 	and	w8, w0, #0xff
    1534:	52800020 	mov	w0, #0x1                   	// #1
    1538:	11002000 	add	w0, w0, #0x8
    153c:	12001c07 	and	w7, w0, #0xff
    1540:	52800020 	mov	w0, #0x1                   	// #1
    1544:	11002400 	add	w0, w0, #0x9
    1548:	12001c06 	and	w6, w0, #0xff
    154c:	52800020 	mov	w0, #0x1                   	// #1
    1550:	11002800 	add	w0, w0, #0xa
    1554:	12001c05 	and	w5, w0, #0xff
    1558:	52800020 	mov	w0, #0x1                   	// #1
    155c:	11002c00 	add	w0, w0, #0xb
    1560:	12001c04 	and	w4, w0, #0xff
    1564:	52800020 	mov	w0, #0x1                   	// #1
    1568:	11003000 	add	w0, w0, #0xc
    156c:	12001c03 	and	w3, w0, #0xff
    1570:	52800020 	mov	w0, #0x1                   	// #1
    1574:	11003400 	add	w0, w0, #0xd
    1578:	12001c02 	and	w2, w0, #0xff
    157c:	52800020 	mov	w0, #0x1                   	// #1
    1580:	11003800 	add	w0, w0, #0xe
    1584:	12001c01 	and	w1, w0, #0xff
    1588:	52800020 	mov	w0, #0x1                   	// #1
    158c:	11003c00 	add	w0, w0, #0xf
    1590:	12001c00 	and	w0, w0, #0xff
    1594:	4e010de0 	dup	v0.16b, w15
    1598:	4e031dc0 	mov	v0.b[1], w14
    159c:	4e051da0 	mov	v0.b[2], w13
    15a0:	4e071d80 	mov	v0.b[3], w12
    15a4:	4e091d60 	mov	v0.b[4], w11
    15a8:	4e0b1d40 	mov	v0.b[5], w10
    15ac:	4e0d1d20 	mov	v0.b[6], w9
    15b0:	4e0f1d00 	mov	v0.b[7], w8
    15b4:	4e111ce0 	mov	v0.b[8], w7
    15b8:	4e131cc0 	mov	v0.b[9], w6
    15bc:	4e151ca0 	mov	v0.b[10], w5
    15c0:	4e171c80 	mov	v0.b[11], w4
    15c4:	4e191c60 	mov	v0.b[12], w3
    15c8:	4e1b1c40 	mov	v0.b[13], w2
    15cc:	4e1d1c20 	mov	v0.b[14], w1
    15d0:	4e1f1c00 	mov	v0.b[15], w0
    15d4:	4ea01c03 	mov	v3.16b, v0.16b
    15d8:	3dc0f3e0 	ldr	q0, [sp, #960]
    15dc:	4f00e7e2 	movi	v2.16b, #0x1f
    15e0:	4e221c62 	and	v2.16b, v3.16b, v2.16b
    15e4:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    15e8:	6e201c20 	eor	v0.16b, v1.16b, v0.16b
    15ec:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    15f0:	4e022000 	tbl	v0.16b, {v0.16b, v1.16b}, v2.16b
    15f4:	3d81cbe0 	str	q0, [sp, #1824]
    15f8:	b947abe0 	ldr	w0, [sp, #1960]
    15fc:	51000401 	sub	w1, w0, #0x1
    1600:	b94027e0 	ldr	w0, [sp, #36]
    1604:	1b007c21 	mul	w1, w1, w0
    1608:	b947afe0 	ldr	w0, [sp, #1964]
    160c:	0b000020 	add	w0, w1, w0
    1610:	93407c00 	sxtw	x0, w0
    1614:	91008000 	add	x0, x0, #0x20
    1618:	f94017e1 	ldr	x1, [sp, #40]
    161c:	8b000020 	add	x0, x1, x0
    1620:	39400000 	ldrb	w0, [x0]
    1624:	2a0003e2 	mov	w2, w0
    1628:	b947abe0 	ldr	w0, [sp, #1960]
    162c:	11000401 	add	w1, w0, #0x1
    1630:	b94027e0 	ldr	w0, [sp, #36]
    1634:	1b007c21 	mul	w1, w1, w0
    1638:	b947afe0 	ldr	w0, [sp, #1964]
    163c:	0b000020 	add	w0, w1, w0
    1640:	93407c00 	sxtw	x0, w0
    1644:	91008000 	add	x0, x0, #0x20
    1648:	f94017e1 	ldr	x1, [sp, #40]
    164c:	8b000020 	add	x0, x1, x0
    1650:	39400000 	ldrb	w0, [x0]
    1654:	0b000040 	add	w0, w2, w0
    1658:	13017c00 	asr	w0, w0, #1
    165c:	12001c00 	and	w0, w0, #0xff
    1660:	390f7fe0 	strb	w0, [sp, #991]
    1664:	3dc1cbe0 	ldr	q0, [sp, #1824]
    1668:	3d8097e0 	str	q0, [sp, #592]
    166c:	394f7fe0 	ldrb	w0, [sp, #991]
    1670:	39095fe0 	strb	w0, [sp, #599]
    1674:	3dc097e0 	ldr	q0, [sp, #592]
    1678:	3d81cbe0 	str	q0, [sp, #1824]
    167c:	d10143e0 	sub	x0, sp, #0x50
    1680:	91030000 	add	x0, x0, #0xc0
    1684:	3dc1cfe0 	ldr	q0, [sp, #1840]
    1688:	3d800000 	str	q0, [x0]
    168c:	3dc1cbe0 	ldr	q0, [sp, #1824]
    1690:	3d80ffe0 	str	q0, [sp, #1008]
    1694:	3dc1cfe0 	ldr	q0, [sp, #1840]
    1698:	3d80fbe0 	str	q0, [sp, #992]
    169c:	3dc0ffe0 	ldr	q0, [sp, #1008]
    16a0:	3dc0fbe1 	ldr	q1, [sp, #992]
    16a4:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    16a8:	d10143e0 	sub	x0, sp, #0x50
    16ac:	91030000 	add	x0, x0, #0xc0
    16b0:	3d800400 	str	q0, [x0, #16]
    16b4:	b947abe0 	ldr	w0, [sp, #1960]
    16b8:	51000401 	sub	w1, w0, #0x1
    16bc:	b94027e0 	ldr	w0, [sp, #36]
    16c0:	51000800 	sub	w0, w0, #0x2
    16c4:	1b007c21 	mul	w1, w1, w0
    16c8:	b947afe0 	ldr	w0, [sp, #1964]
    16cc:	0b000020 	add	w0, w1, w0
    16d0:	93407c00 	sxtw	x0, w0
    16d4:	d1000400 	sub	x0, x0, #0x1
    16d8:	f9400be1 	ldr	x1, [sp, #16]
    16dc:	8b000020 	add	x0, x1, x0
    16e0:	f90217e0 	str	x0, [sp, #1064]
    16e4:	d10143e0 	sub	x0, sp, #0x50
    16e8:	91080000 	add	x0, x0, #0x200
    16ec:	d10143e1 	sub	x1, sp, #0x50
    16f0:	91038021 	add	x1, x1, #0xe0
    16f4:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    16f8:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    16fc:	d10143e0 	sub	x0, sp, #0x50
    1700:	91080000 	add	x0, x0, #0x200
    1704:	3dc00000 	ldr	q0, [x0]
    1708:	4ea01c02 	mov	v2.16b, v0.16b
    170c:	911003e0 	add	x0, sp, #0x400
    1710:	911003e1 	add	x1, sp, #0x400
    1714:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1718:	4ea21c40 	mov	v0.16b, v2.16b
    171c:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1720:	d10143e0 	sub	x0, sp, #0x50
    1724:	91080000 	add	x0, x0, #0x200
    1728:	3dc00400 	ldr	q0, [x0, #16]
    172c:	4ea01c02 	mov	v2.16b, v0.16b
    1730:	911003e0 	add	x0, sp, #0x400
    1734:	911003e1 	add	x1, sp, #0x400
    1738:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    173c:	4ea21c41 	mov	v1.16b, v2.16b
    1740:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1744:	f94217e0 	ldr	x0, [sp, #1064]
    1748:	911003e1 	add	x1, sp, #0x400
    174c:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1750:	4c008000 	st2	{v0.16b, v1.16b}, [x0]
    1754:	b947abe0 	ldr	w0, [sp, #1960]
    1758:	51000401 	sub	w1, w0, #0x1
    175c:	b94027e0 	ldr	w0, [sp, #36]
    1760:	51000800 	sub	w0, w0, #0x2
    1764:	1b007c21 	mul	w1, w1, w0
    1768:	b947afe0 	ldr	w0, [sp, #1964]
    176c:	0b000020 	add	w0, w1, w0
    1770:	93407c00 	sxtw	x0, w0
    1774:	d1000400 	sub	x0, x0, #0x1
    1778:	f94007e1 	ldr	x1, [sp, #8]
    177c:	8b000020 	add	x0, x1, x0
    1780:	f9022fe0 	str	x0, [sp, #1112]
    1784:	d10143e0 	sub	x0, sp, #0x50
    1788:	91078000 	add	x0, x0, #0x1e0
    178c:	d10143e1 	sub	x1, sp, #0x50
    1790:	91040021 	add	x1, x1, #0x100
    1794:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1798:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    179c:	d10143e0 	sub	x0, sp, #0x50
    17a0:	91078000 	add	x0, x0, #0x1e0
    17a4:	3dc00000 	ldr	q0, [x0]
    17a8:	4ea01c02 	mov	v2.16b, v0.16b
    17ac:	9110c3e0 	add	x0, sp, #0x430
    17b0:	9110c3e1 	add	x1, sp, #0x430
    17b4:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    17b8:	4ea21c40 	mov	v0.16b, v2.16b
    17bc:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    17c0:	d10143e0 	sub	x0, sp, #0x50
    17c4:	91078000 	add	x0, x0, #0x1e0
    17c8:	3dc00400 	ldr	q0, [x0, #16]
    17cc:	4ea01c02 	mov	v2.16b, v0.16b
    17d0:	9110c3e0 	add	x0, sp, #0x430
    17d4:	9110c3e1 	add	x1, sp, #0x430
    17d8:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    17dc:	4ea21c41 	mov	v1.16b, v2.16b
    17e0:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    17e4:	f9422fe0 	ldr	x0, [sp, #1112]
    17e8:	9110c3e1 	add	x1, sp, #0x430
    17ec:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    17f0:	4c008000 	st2	{v0.16b, v1.16b}, [x0]
    17f4:	b947abe0 	ldr	w0, [sp, #1960]
    17f8:	51000401 	sub	w1, w0, #0x1
    17fc:	b94027e0 	ldr	w0, [sp, #36]
    1800:	51000800 	sub	w0, w0, #0x2
    1804:	1b007c21 	mul	w1, w1, w0
    1808:	b947afe0 	ldr	w0, [sp, #1964]
    180c:	0b000020 	add	w0, w1, w0
    1810:	93407c00 	sxtw	x0, w0
    1814:	d1000400 	sub	x0, x0, #0x1
    1818:	f9400fe1 	ldr	x1, [sp, #24]
    181c:	8b000020 	add	x0, x1, x0
    1820:	f90247e0 	str	x0, [sp, #1160]
    1824:	d10143e0 	sub	x0, sp, #0x50
    1828:	91070000 	add	x0, x0, #0x1c0
    182c:	d10143e1 	sub	x1, sp, #0x50
    1830:	91030021 	add	x1, x1, #0xc0
    1834:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1838:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    183c:	d10143e0 	sub	x0, sp, #0x50
    1840:	91070000 	add	x0, x0, #0x1c0
    1844:	3dc00000 	ldr	q0, [x0]
    1848:	4ea01c02 	mov	v2.16b, v0.16b
    184c:	911183e0 	add	x0, sp, #0x460
    1850:	911183e1 	add	x1, sp, #0x460
    1854:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1858:	4ea21c40 	mov	v0.16b, v2.16b
    185c:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1860:	d10143e0 	sub	x0, sp, #0x50
    1864:	91070000 	add	x0, x0, #0x1c0
    1868:	3dc00400 	ldr	q0, [x0, #16]
    186c:	4ea01c02 	mov	v2.16b, v0.16b
    1870:	911183e0 	add	x0, sp, #0x460
    1874:	911183e1 	add	x1, sp, #0x460
    1878:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    187c:	4ea21c41 	mov	v1.16b, v2.16b
    1880:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1884:	f94247e0 	ldr	x0, [sp, #1160]
    1888:	911183e1 	add	x1, sp, #0x460
    188c:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1890:	4c008000 	st2	{v0.16b, v1.16b}, [x0]
    1894:	b947abe0 	ldr	w0, [sp, #1960]
    1898:	11000801 	add	w1, w0, #0x2
    189c:	b94027e0 	ldr	w0, [sp, #36]
    18a0:	1b007c21 	mul	w1, w1, w0
    18a4:	b947afe0 	ldr	w0, [sp, #1964]
    18a8:	0b000020 	add	w0, w1, w0
    18ac:	93407c00 	sxtw	x0, w0
    18b0:	f94017e1 	ldr	x1, [sp, #40]
    18b4:	8b000020 	add	x0, x1, x0
    18b8:	f9025fe0 	str	x0, [sp, #1208]
    18bc:	911243e0 	add	x0, sp, #0x490
    18c0:	f9425fe1 	ldr	x1, [sp, #1208]
    18c4:	4c408020 	ld2	{v0.16b, v1.16b}, [x1]
    18c8:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    18cc:	911243e0 	add	x0, sp, #0x490
    18d0:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
    18d4:	d10143e0 	sub	x0, sp, #0x50
    18d8:	91088000 	add	x0, x0, #0x220
    18dc:	3d800000 	str	q0, [x0]
    18e0:	911243e0 	add	x0, sp, #0x490
    18e4:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
    18e8:	4ea11c20 	mov	v0.16b, v1.16b
    18ec:	d10143e0 	sub	x0, sp, #0x50
    18f0:	91088000 	add	x0, x0, #0x220
    18f4:	3d800400 	str	q0, [x0, #16]
    18f8:	d10143e0 	sub	x0, sp, #0x50
    18fc:	91088000 	add	x0, x0, #0x220
    1900:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
    1904:	d10143e0 	sub	x0, sp, #0x50
    1908:	91088000 	add	x0, x0, #0x220
    190c:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1910:	d10143e0 	sub	x0, sp, #0x50
    1914:	91050000 	add	x0, x0, #0x140
    1918:	3dc00400 	ldr	q0, [x0, #16]
    191c:	3d81c7e0 	str	q0, [sp, #1808]
    1920:	d10143e0 	sub	x0, sp, #0x50
    1924:	91050000 	add	x0, x0, #0x140
    1928:	3dc00000 	ldr	q0, [x0]
    192c:	3d81c3e0 	str	q0, [sp, #1792]
    1930:	d10143e0 	sub	x0, sp, #0x50
    1934:	91048000 	add	x0, x0, #0x120
    1938:	3dc00000 	ldr	q0, [x0]
    193c:	3d81bfe0 	str	q0, [sp, #1776]
    1940:	d10143e0 	sub	x0, sp, #0x50
    1944:	91088000 	add	x0, x0, #0x220
    1948:	3dc00000 	ldr	q0, [x0]
    194c:	3d81bbe0 	str	q0, [sp, #1760]
    1950:	d10143e0 	sub	x0, sp, #0x50
    1954:	91038000 	add	x0, x0, #0xe0
    1958:	3dc1c7e0 	ldr	q0, [sp, #1808]
    195c:	3d800400 	str	q0, [x0, #16]
    1960:	3dc1c7e0 	ldr	q0, [sp, #1808]
    1964:	3d8093e0 	str	q0, [sp, #576]
    1968:	3dc1c7e0 	ldr	q0, [sp, #1808]
    196c:	3d8133e0 	str	q0, [sp, #1216]
    1970:	3dc093e1 	ldr	q1, [sp, #576]
    1974:	528000ef 	mov	w15, #0x7                   	// #7
    1978:	528000e0 	mov	w0, #0x7                   	// #7
    197c:	11000400 	add	w0, w0, #0x1
    1980:	12001c0e 	and	w14, w0, #0xff
    1984:	528000e0 	mov	w0, #0x7                   	// #7
    1988:	11000800 	add	w0, w0, #0x2
    198c:	12001c0d 	and	w13, w0, #0xff
    1990:	528000e0 	mov	w0, #0x7                   	// #7
    1994:	11000c00 	add	w0, w0, #0x3
    1998:	12001c0c 	and	w12, w0, #0xff
    199c:	528000e0 	mov	w0, #0x7                   	// #7
    19a0:	11001000 	add	w0, w0, #0x4
    19a4:	12001c0b 	and	w11, w0, #0xff
    19a8:	528000e0 	mov	w0, #0x7                   	// #7
    19ac:	11001400 	add	w0, w0, #0x5
    19b0:	12001c0a 	and	w10, w0, #0xff
    19b4:	528000e0 	mov	w0, #0x7                   	// #7
    19b8:	11001800 	add	w0, w0, #0x6
    19bc:	12001c09 	and	w9, w0, #0xff
    19c0:	528000e0 	mov	w0, #0x7                   	// #7
    19c4:	11001c00 	add	w0, w0, #0x7
    19c8:	12001c08 	and	w8, w0, #0xff
    19cc:	528000e0 	mov	w0, #0x7                   	// #7
    19d0:	11002000 	add	w0, w0, #0x8
    19d4:	12001c07 	and	w7, w0, #0xff
    19d8:	528000e0 	mov	w0, #0x7                   	// #7
    19dc:	11002400 	add	w0, w0, #0x9
    19e0:	12001c06 	and	w6, w0, #0xff
    19e4:	528000e0 	mov	w0, #0x7                   	// #7
    19e8:	11002800 	add	w0, w0, #0xa
    19ec:	12001c05 	and	w5, w0, #0xff
    19f0:	528000e0 	mov	w0, #0x7                   	// #7
    19f4:	11002c00 	add	w0, w0, #0xb
    19f8:	12001c04 	and	w4, w0, #0xff
    19fc:	528000e0 	mov	w0, #0x7                   	// #7
    1a00:	11003000 	add	w0, w0, #0xc
    1a04:	12001c03 	and	w3, w0, #0xff
    1a08:	528000e0 	mov	w0, #0x7                   	// #7
    1a0c:	11003400 	add	w0, w0, #0xd
    1a10:	12001c02 	and	w2, w0, #0xff
    1a14:	528000e0 	mov	w0, #0x7                   	// #7
    1a18:	11003800 	add	w0, w0, #0xe
    1a1c:	12001c01 	and	w1, w0, #0xff
    1a20:	528000e0 	mov	w0, #0x7                   	// #7
    1a24:	11003c00 	add	w0, w0, #0xf
    1a28:	12001c00 	and	w0, w0, #0xff
    1a2c:	4e010de0 	dup	v0.16b, w15
    1a30:	4e031dc0 	mov	v0.b[1], w14
    1a34:	4e051da0 	mov	v0.b[2], w13
    1a38:	4e071d80 	mov	v0.b[3], w12
    1a3c:	4e091d60 	mov	v0.b[4], w11
    1a40:	4e0b1d40 	mov	v0.b[5], w10
    1a44:	4e0d1d20 	mov	v0.b[6], w9
    1a48:	4e0f1d00 	mov	v0.b[7], w8
    1a4c:	4e111ce0 	mov	v0.b[8], w7
    1a50:	4e131cc0 	mov	v0.b[9], w6
    1a54:	4e151ca0 	mov	v0.b[10], w5
    1a58:	4e171c80 	mov	v0.b[11], w4
    1a5c:	4e191c60 	mov	v0.b[12], w3
    1a60:	4e1b1c40 	mov	v0.b[13], w2
    1a64:	4e1d1c20 	mov	v0.b[14], w1
    1a68:	4e1f1c00 	mov	v0.b[15], w0
    1a6c:	4ea01c03 	mov	v3.16b, v0.16b
    1a70:	3dc133e0 	ldr	q0, [sp, #1216]
    1a74:	4f00e7e2 	movi	v2.16b, #0x1f
    1a78:	4e221c62 	and	v2.16b, v3.16b, v2.16b
    1a7c:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    1a80:	6e201c20 	eor	v0.16b, v1.16b, v0.16b
    1a84:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    1a88:	4e022000 	tbl	v0.16b, {v0.16b, v1.16b}, v2.16b
    1a8c:	3d81b7e0 	str	q0, [sp, #1744]
    1a90:	b947abe0 	ldr	w0, [sp, #1960]
    1a94:	11000401 	add	w1, w0, #0x1
    1a98:	b94027e0 	ldr	w0, [sp, #36]
    1a9c:	1b007c21 	mul	w1, w1, w0
    1aa0:	b947afe0 	ldr	w0, [sp, #1964]
    1aa4:	0b000020 	add	w0, w1, w0
    1aa8:	93407c00 	sxtw	x0, w0
    1aac:	d1000800 	sub	x0, x0, #0x2
    1ab0:	f94017e1 	ldr	x1, [sp, #40]
    1ab4:	8b000020 	add	x0, x1, x0
    1ab8:	39400000 	ldrb	w0, [x0]
    1abc:	39137fe0 	strb	w0, [sp, #1247]
    1ac0:	3dc1b7e0 	ldr	q0, [sp, #1744]
    1ac4:	3d808fe0 	str	q0, [sp, #560]
    1ac8:	39537fe0 	ldrb	w0, [sp, #1247]
    1acc:	3908c3e0 	strb	w0, [sp, #560]
    1ad0:	3dc08fe0 	ldr	q0, [sp, #560]
    1ad4:	3d81b7e0 	str	q0, [sp, #1744]
    1ad8:	3dc1bfe0 	ldr	q0, [sp, #1776]
    1adc:	3d813fe0 	str	q0, [sp, #1264]
    1ae0:	3dc1bbe0 	ldr	q0, [sp, #1760]
    1ae4:	3d813be0 	str	q0, [sp, #1248]
    1ae8:	3dc13fe0 	ldr	q0, [sp, #1264]
    1aec:	3dc13be1 	ldr	q1, [sp, #1248]
    1af0:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    1af4:	4ea01c02 	mov	v2.16b, v0.16b
    1af8:	3dc1c7e0 	ldr	q0, [sp, #1808]
    1afc:	3d8147e0 	str	q0, [sp, #1296]
    1b00:	3dc1b7e0 	ldr	q0, [sp, #1744]
    1b04:	3d8143e0 	str	q0, [sp, #1280]
    1b08:	3dc147e0 	ldr	q0, [sp, #1296]
    1b0c:	3dc143e1 	ldr	q1, [sp, #1280]
    1b10:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    1b14:	3d814fe2 	str	q2, [sp, #1328]
    1b18:	3d814be0 	str	q0, [sp, #1312]
    1b1c:	3dc14fe0 	ldr	q0, [sp, #1328]
    1b20:	3dc14be1 	ldr	q1, [sp, #1312]
    1b24:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    1b28:	d10143e0 	sub	x0, sp, #0x50
    1b2c:	91038000 	add	x0, x0, #0xe0
    1b30:	3d800000 	str	q0, [x0]
    1b34:	3dc1c3e0 	ldr	q0, [sp, #1792]
    1b38:	3d808be0 	str	q0, [sp, #544]
    1b3c:	3dc1c3e0 	ldr	q0, [sp, #1792]
    1b40:	3d8153e0 	str	q0, [sp, #1344]
    1b44:	3dc08be1 	ldr	q1, [sp, #544]
    1b48:	5280002f 	mov	w15, #0x1                   	// #1
    1b4c:	52800020 	mov	w0, #0x1                   	// #1
    1b50:	11000400 	add	w0, w0, #0x1
    1b54:	12001c0e 	and	w14, w0, #0xff
    1b58:	52800020 	mov	w0, #0x1                   	// #1
    1b5c:	11000800 	add	w0, w0, #0x2
    1b60:	12001c0d 	and	w13, w0, #0xff
    1b64:	52800020 	mov	w0, #0x1                   	// #1
    1b68:	11000c00 	add	w0, w0, #0x3
    1b6c:	12001c0c 	and	w12, w0, #0xff
    1b70:	52800020 	mov	w0, #0x1                   	// #1
    1b74:	11001000 	add	w0, w0, #0x4
    1b78:	12001c0b 	and	w11, w0, #0xff
    1b7c:	52800020 	mov	w0, #0x1                   	// #1
    1b80:	11001400 	add	w0, w0, #0x5
    1b84:	12001c0a 	and	w10, w0, #0xff
    1b88:	52800020 	mov	w0, #0x1                   	// #1
    1b8c:	11001800 	add	w0, w0, #0x6
    1b90:	12001c09 	and	w9, w0, #0xff
    1b94:	52800020 	mov	w0, #0x1                   	// #1
    1b98:	11001c00 	add	w0, w0, #0x7
    1b9c:	12001c08 	and	w8, w0, #0xff
    1ba0:	52800020 	mov	w0, #0x1                   	// #1
    1ba4:	11002000 	add	w0, w0, #0x8
    1ba8:	12001c07 	and	w7, w0, #0xff
    1bac:	52800020 	mov	w0, #0x1                   	// #1
    1bb0:	11002400 	add	w0, w0, #0x9
    1bb4:	12001c06 	and	w6, w0, #0xff
    1bb8:	52800020 	mov	w0, #0x1                   	// #1
    1bbc:	11002800 	add	w0, w0, #0xa
    1bc0:	12001c05 	and	w5, w0, #0xff
    1bc4:	52800020 	mov	w0, #0x1                   	// #1
    1bc8:	11002c00 	add	w0, w0, #0xb
    1bcc:	12001c04 	and	w4, w0, #0xff
    1bd0:	52800020 	mov	w0, #0x1                   	// #1
    1bd4:	11003000 	add	w0, w0, #0xc
    1bd8:	12001c03 	and	w3, w0, #0xff
    1bdc:	52800020 	mov	w0, #0x1                   	// #1
    1be0:	11003400 	add	w0, w0, #0xd
    1be4:	12001c02 	and	w2, w0, #0xff
    1be8:	52800020 	mov	w0, #0x1                   	// #1
    1bec:	11003800 	add	w0, w0, #0xe
    1bf0:	12001c01 	and	w1, w0, #0xff
    1bf4:	52800020 	mov	w0, #0x1                   	// #1
    1bf8:	11003c00 	add	w0, w0, #0xf
    1bfc:	12001c00 	and	w0, w0, #0xff
    1c00:	4e010de0 	dup	v0.16b, w15
    1c04:	4e031dc0 	mov	v0.b[1], w14
    1c08:	4e051da0 	mov	v0.b[2], w13
    1c0c:	4e071d80 	mov	v0.b[3], w12
    1c10:	4e091d60 	mov	v0.b[4], w11
    1c14:	4e0b1d40 	mov	v0.b[5], w10
    1c18:	4e0d1d20 	mov	v0.b[6], w9
    1c1c:	4e0f1d00 	mov	v0.b[7], w8
    1c20:	4e111ce0 	mov	v0.b[8], w7
    1c24:	4e131cc0 	mov	v0.b[9], w6
    1c28:	4e151ca0 	mov	v0.b[10], w5
    1c2c:	4e171c80 	mov	v0.b[11], w4
    1c30:	4e191c60 	mov	v0.b[12], w3
    1c34:	4e1b1c40 	mov	v0.b[13], w2
    1c38:	4e1d1c20 	mov	v0.b[14], w1
    1c3c:	4e1f1c00 	mov	v0.b[15], w0
    1c40:	4ea01c03 	mov	v3.16b, v0.16b
    1c44:	3dc153e0 	ldr	q0, [sp, #1344]
    1c48:	4f00e7e2 	movi	v2.16b, #0x1f
    1c4c:	4e221c62 	and	v2.16b, v3.16b, v2.16b
    1c50:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    1c54:	6e201c20 	eor	v0.16b, v1.16b, v0.16b
    1c58:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    1c5c:	4e022000 	tbl	v0.16b, {v0.16b, v1.16b}, v2.16b
    1c60:	3d81b3e0 	str	q0, [sp, #1728]
    1c64:	b947abe0 	ldr	w0, [sp, #1960]
    1c68:	11000401 	add	w1, w0, #0x1
    1c6c:	b94027e0 	ldr	w0, [sp, #36]
    1c70:	1b007c21 	mul	w1, w1, w0
    1c74:	b947afe0 	ldr	w0, [sp, #1964]
    1c78:	0b000020 	add	w0, w1, w0
    1c7c:	93407c00 	sxtw	x0, w0
    1c80:	91008000 	add	x0, x0, #0x20
    1c84:	f94017e1 	ldr	x1, [sp, #40]
    1c88:	8b000020 	add	x0, x1, x0
    1c8c:	39400000 	ldrb	w0, [x0]
    1c90:	39157fe0 	strb	w0, [sp, #1375]
    1c94:	3dc1b3e0 	ldr	q0, [sp, #1728]
    1c98:	3d8087e0 	str	q0, [sp, #528]
    1c9c:	39557fe0 	ldrb	w0, [sp, #1375]
    1ca0:	39085fe0 	strb	w0, [sp, #535]
    1ca4:	3dc087e0 	ldr	q0, [sp, #528]
    1ca8:	3d81b3e0 	str	q0, [sp, #1728]
    1cac:	d10143e0 	sub	x0, sp, #0x50
    1cb0:	91030000 	add	x0, x0, #0xc0
    1cb4:	3dc1c3e0 	ldr	q0, [sp, #1792]
    1cb8:	3d800000 	str	q0, [x0]
    1cbc:	3dc1b3e0 	ldr	q0, [sp, #1728]
    1cc0:	3d815fe0 	str	q0, [sp, #1392]
    1cc4:	3dc1c3e0 	ldr	q0, [sp, #1792]
    1cc8:	3d815be0 	str	q0, [sp, #1376]
    1ccc:	3dc15fe0 	ldr	q0, [sp, #1392]
    1cd0:	3dc15be1 	ldr	q1, [sp, #1376]
    1cd4:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    1cd8:	d10143e0 	sub	x0, sp, #0x50
    1cdc:	91030000 	add	x0, x0, #0xc0
    1ce0:	3d800400 	str	q0, [x0, #16]
    1ce4:	d10143e0 	sub	x0, sp, #0x50
    1ce8:	91048000 	add	x0, x0, #0x120
    1cec:	3dc00401 	ldr	q1, [x0, #16]
    1cf0:	d10143e0 	sub	x0, sp, #0x50
    1cf4:	91088000 	add	x0, x0, #0x220
    1cf8:	3dc00000 	ldr	q0, [x0]
    1cfc:	3d8167e1 	str	q1, [sp, #1424]
    1d00:	3d8163e0 	str	q0, [sp, #1408]
    1d04:	3dc167e0 	ldr	q0, [sp, #1424]
    1d08:	3dc163e1 	ldr	q1, [sp, #1408]
    1d0c:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    1d10:	3d81afe0 	str	q0, [sp, #1712]
    1d14:	3dc1afe0 	ldr	q0, [sp, #1712]
    1d18:	3d8083e0 	str	q0, [sp, #512]
    1d1c:	3dc1afe0 	ldr	q0, [sp, #1712]
    1d20:	3d816be0 	str	q0, [sp, #1440]
    1d24:	3dc083e1 	ldr	q1, [sp, #512]
    1d28:	528000ef 	mov	w15, #0x7                   	// #7
    1d2c:	528000e0 	mov	w0, #0x7                   	// #7
    1d30:	11000400 	add	w0, w0, #0x1
    1d34:	12001c0e 	and	w14, w0, #0xff
    1d38:	528000e0 	mov	w0, #0x7                   	// #7
    1d3c:	11000800 	add	w0, w0, #0x2
    1d40:	12001c0d 	and	w13, w0, #0xff
    1d44:	528000e0 	mov	w0, #0x7                   	// #7
    1d48:	11000c00 	add	w0, w0, #0x3
    1d4c:	12001c0c 	and	w12, w0, #0xff
    1d50:	528000e0 	mov	w0, #0x7                   	// #7
    1d54:	11001000 	add	w0, w0, #0x4
    1d58:	12001c0b 	and	w11, w0, #0xff
    1d5c:	528000e0 	mov	w0, #0x7                   	// #7
    1d60:	11001400 	add	w0, w0, #0x5
    1d64:	12001c0a 	and	w10, w0, #0xff
    1d68:	528000e0 	mov	w0, #0x7                   	// #7
    1d6c:	11001800 	add	w0, w0, #0x6
    1d70:	12001c09 	and	w9, w0, #0xff
    1d74:	528000e0 	mov	w0, #0x7                   	// #7
    1d78:	11001c00 	add	w0, w0, #0x7
    1d7c:	12001c08 	and	w8, w0, #0xff
    1d80:	528000e0 	mov	w0, #0x7                   	// #7
    1d84:	11002000 	add	w0, w0, #0x8
    1d88:	12001c07 	and	w7, w0, #0xff
    1d8c:	528000e0 	mov	w0, #0x7                   	// #7
    1d90:	11002400 	add	w0, w0, #0x9
    1d94:	12001c06 	and	w6, w0, #0xff
    1d98:	528000e0 	mov	w0, #0x7                   	// #7
    1d9c:	11002800 	add	w0, w0, #0xa
    1da0:	12001c05 	and	w5, w0, #0xff
    1da4:	528000e0 	mov	w0, #0x7                   	// #7
    1da8:	11002c00 	add	w0, w0, #0xb
    1dac:	12001c04 	and	w4, w0, #0xff
    1db0:	528000e0 	mov	w0, #0x7                   	// #7
    1db4:	11003000 	add	w0, w0, #0xc
    1db8:	12001c03 	and	w3, w0, #0xff
    1dbc:	528000e0 	mov	w0, #0x7                   	// #7
    1dc0:	11003400 	add	w0, w0, #0xd
    1dc4:	12001c02 	and	w2, w0, #0xff
    1dc8:	528000e0 	mov	w0, #0x7                   	// #7
    1dcc:	11003800 	add	w0, w0, #0xe
    1dd0:	12001c01 	and	w1, w0, #0xff
    1dd4:	528000e0 	mov	w0, #0x7                   	// #7
    1dd8:	11003c00 	add	w0, w0, #0xf
    1ddc:	12001c00 	and	w0, w0, #0xff
    1de0:	4e010de0 	dup	v0.16b, w15
    1de4:	4e031dc0 	mov	v0.b[1], w14
    1de8:	4e051da0 	mov	v0.b[2], w13
    1dec:	4e071d80 	mov	v0.b[3], w12
    1df0:	4e091d60 	mov	v0.b[4], w11
    1df4:	4e0b1d40 	mov	v0.b[5], w10
    1df8:	4e0d1d20 	mov	v0.b[6], w9
    1dfc:	4e0f1d00 	mov	v0.b[7], w8
    1e00:	4e111ce0 	mov	v0.b[8], w7
    1e04:	4e131cc0 	mov	v0.b[9], w6
    1e08:	4e151ca0 	mov	v0.b[10], w5
    1e0c:	4e171c80 	mov	v0.b[11], w4
    1e10:	4e191c60 	mov	v0.b[12], w3
    1e14:	4e1b1c40 	mov	v0.b[13], w2
    1e18:	4e1d1c20 	mov	v0.b[14], w1
    1e1c:	4e1f1c00 	mov	v0.b[15], w0
    1e20:	4ea01c03 	mov	v3.16b, v0.16b
    1e24:	3dc16be0 	ldr	q0, [sp, #1440]
    1e28:	4f00e7e2 	movi	v2.16b, #0x1f
    1e2c:	4e221c62 	and	v2.16b, v3.16b, v2.16b
    1e30:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    1e34:	6e201c20 	eor	v0.16b, v1.16b, v0.16b
    1e38:	6e201c21 	eor	v1.16b, v1.16b, v0.16b
    1e3c:	4e022000 	tbl	v0.16b, {v0.16b, v1.16b}, v2.16b
    1e40:	3d81abe0 	str	q0, [sp, #1696]
    1e44:	b947abe1 	ldr	w1, [sp, #1960]
    1e48:	b94027e0 	ldr	w0, [sp, #36]
    1e4c:	1b007c21 	mul	w1, w1, w0
    1e50:	b947afe0 	ldr	w0, [sp, #1964]
    1e54:	0b000020 	add	w0, w1, w0
    1e58:	93407c00 	sxtw	x0, w0
    1e5c:	d1000800 	sub	x0, x0, #0x2
    1e60:	f94017e1 	ldr	x1, [sp, #40]
    1e64:	8b000020 	add	x0, x1, x0
    1e68:	39400000 	ldrb	w0, [x0]
    1e6c:	2a0003e2 	mov	w2, w0
    1e70:	b947abe0 	ldr	w0, [sp, #1960]
    1e74:	11000801 	add	w1, w0, #0x2
    1e78:	b94027e0 	ldr	w0, [sp, #36]
    1e7c:	1b007c21 	mul	w1, w1, w0
    1e80:	b947afe0 	ldr	w0, [sp, #1964]
    1e84:	0b000020 	add	w0, w1, w0
    1e88:	93407c00 	sxtw	x0, w0
    1e8c:	d1000800 	sub	x0, x0, #0x2
    1e90:	f94017e1 	ldr	x1, [sp, #40]
    1e94:	8b000020 	add	x0, x1, x0
    1e98:	39400000 	ldrb	w0, [x0]
    1e9c:	0b000040 	add	w0, w2, w0
    1ea0:	13017c00 	asr	w0, w0, #1
    1ea4:	12001c00 	and	w0, w0, #0xff
    1ea8:	3916ffe0 	strb	w0, [sp, #1471]
    1eac:	3dc1abe0 	ldr	q0, [sp, #1696]
    1eb0:	3d807fe0 	str	q0, [sp, #496]
    1eb4:	3956ffe0 	ldrb	w0, [sp, #1471]
    1eb8:	3907c3e0 	strb	w0, [sp, #496]
    1ebc:	3dc07fe0 	ldr	q0, [sp, #496]
    1ec0:	3d81abe0 	str	q0, [sp, #1696]
    1ec4:	3dc1abe0 	ldr	q0, [sp, #1696]
    1ec8:	3d8177e0 	str	q0, [sp, #1488]
    1ecc:	3dc1afe0 	ldr	q0, [sp, #1712]
    1ed0:	3d8173e0 	str	q0, [sp, #1472]
    1ed4:	3dc177e0 	ldr	q0, [sp, #1488]
    1ed8:	3dc173e1 	ldr	q1, [sp, #1472]
    1edc:	6e210400 	uhadd	v0.16b, v0.16b, v1.16b
    1ee0:	d10143e0 	sub	x0, sp, #0x50
    1ee4:	91040000 	add	x0, x0, #0x100
    1ee8:	3d800000 	str	q0, [x0]
    1eec:	d10143e0 	sub	x0, sp, #0x50
    1ef0:	91040000 	add	x0, x0, #0x100
    1ef4:	3dc1afe0 	ldr	q0, [sp, #1712]
    1ef8:	3d800400 	str	q0, [x0, #16]
    1efc:	b94027e0 	ldr	w0, [sp, #36]
    1f00:	51000801 	sub	w1, w0, #0x2
    1f04:	b947abe0 	ldr	w0, [sp, #1960]
    1f08:	1b007c21 	mul	w1, w1, w0
    1f0c:	b947afe0 	ldr	w0, [sp, #1964]
    1f10:	0b000020 	add	w0, w1, w0
    1f14:	93407c00 	sxtw	x0, w0
    1f18:	d1000400 	sub	x0, x0, #0x1
    1f1c:	f9400be1 	ldr	x1, [sp, #16]
    1f20:	8b000020 	add	x0, x1, x0
    1f24:	f90307e0 	str	x0, [sp, #1544]
    1f28:	d10143e0 	sub	x0, sp, #0x50
    1f2c:	91068000 	add	x0, x0, #0x1a0
    1f30:	d10143e1 	sub	x1, sp, #0x50
    1f34:	91038021 	add	x1, x1, #0xe0
    1f38:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1f3c:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1f40:	d10143e0 	sub	x0, sp, #0x50
    1f44:	91068000 	add	x0, x0, #0x1a0
    1f48:	3dc00000 	ldr	q0, [x0]
    1f4c:	4ea01c02 	mov	v2.16b, v0.16b
    1f50:	911783e0 	add	x0, sp, #0x5e0
    1f54:	911783e1 	add	x1, sp, #0x5e0
    1f58:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1f5c:	4ea21c40 	mov	v0.16b, v2.16b
    1f60:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1f64:	d10143e0 	sub	x0, sp, #0x50
    1f68:	91068000 	add	x0, x0, #0x1a0
    1f6c:	3dc00400 	ldr	q0, [x0, #16]
    1f70:	4ea01c02 	mov	v2.16b, v0.16b
    1f74:	911783e0 	add	x0, sp, #0x5e0
    1f78:	911783e1 	add	x1, sp, #0x5e0
    1f7c:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1f80:	4ea21c41 	mov	v1.16b, v2.16b
    1f84:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1f88:	f94307e0 	ldr	x0, [sp, #1544]
    1f8c:	911783e1 	add	x1, sp, #0x5e0
    1f90:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1f94:	4c008000 	st2	{v0.16b, v1.16b}, [x0]
    1f98:	b94027e0 	ldr	w0, [sp, #36]
    1f9c:	51000801 	sub	w1, w0, #0x2
    1fa0:	b947abe0 	ldr	w0, [sp, #1960]
    1fa4:	1b007c21 	mul	w1, w1, w0
    1fa8:	b947afe0 	ldr	w0, [sp, #1964]
    1fac:	0b000020 	add	w0, w1, w0
    1fb0:	93407c00 	sxtw	x0, w0
    1fb4:	d1000400 	sub	x0, x0, #0x1
    1fb8:	f94007e1 	ldr	x1, [sp, #8]
    1fbc:	8b000020 	add	x0, x1, x0
    1fc0:	f9031fe0 	str	x0, [sp, #1592]
    1fc4:	d10143e0 	sub	x0, sp, #0x50
    1fc8:	91060000 	add	x0, x0, #0x180
    1fcc:	d10143e1 	sub	x1, sp, #0x50
    1fd0:	91040021 	add	x1, x1, #0x100
    1fd4:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1fd8:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    1fdc:	d10143e0 	sub	x0, sp, #0x50
    1fe0:	91060000 	add	x0, x0, #0x180
    1fe4:	3dc00000 	ldr	q0, [x0]
    1fe8:	4ea01c02 	mov	v2.16b, v0.16b
    1fec:	911843e0 	add	x0, sp, #0x610
    1ff0:	911843e1 	add	x1, sp, #0x610
    1ff4:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    1ff8:	4ea21c40 	mov	v0.16b, v2.16b
    1ffc:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    2000:	d10143e0 	sub	x0, sp, #0x50
    2004:	91060000 	add	x0, x0, #0x180
    2008:	3dc00400 	ldr	q0, [x0, #16]
    200c:	4ea01c02 	mov	v2.16b, v0.16b
    2010:	911843e0 	add	x0, sp, #0x610
    2014:	911843e1 	add	x1, sp, #0x610
    2018:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    201c:	4ea21c41 	mov	v1.16b, v2.16b
    2020:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    2024:	f9431fe0 	ldr	x0, [sp, #1592]
    2028:	911843e1 	add	x1, sp, #0x610
    202c:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    2030:	4c008000 	st2	{v0.16b, v1.16b}, [x0]
    2034:	b94027e0 	ldr	w0, [sp, #36]
    2038:	51000801 	sub	w1, w0, #0x2
    203c:	b947abe0 	ldr	w0, [sp, #1960]
    2040:	1b007c21 	mul	w1, w1, w0
    2044:	b947afe0 	ldr	w0, [sp, #1964]
    2048:	0b000020 	add	w0, w1, w0
    204c:	93407c00 	sxtw	x0, w0
    2050:	d1000400 	sub	x0, x0, #0x1
    2054:	f9400fe1 	ldr	x1, [sp, #24]
    2058:	8b000020 	add	x0, x1, x0
    205c:	f90337e0 	str	x0, [sp, #1640]
    2060:	d10143e0 	sub	x0, sp, #0x50
    2064:	91058000 	add	x0, x0, #0x160
    2068:	d10143e1 	sub	x1, sp, #0x50
    206c:	91030021 	add	x1, x1, #0xc0
    2070:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    2074:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    2078:	d10143e0 	sub	x0, sp, #0x50
    207c:	91058000 	add	x0, x0, #0x160
    2080:	3dc00000 	ldr	q0, [x0]
    2084:	4ea01c02 	mov	v2.16b, v0.16b
    2088:	911903e0 	add	x0, sp, #0x640
    208c:	911903e1 	add	x1, sp, #0x640
    2090:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    2094:	4ea21c40 	mov	v0.16b, v2.16b
    2098:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    209c:	d10143e0 	sub	x0, sp, #0x50
    20a0:	91058000 	add	x0, x0, #0x160
    20a4:	3dc00400 	ldr	q0, [x0, #16]
    20a8:	4ea01c02 	mov	v2.16b, v0.16b
    20ac:	911903e0 	add	x0, sp, #0x640
    20b0:	911903e1 	add	x1, sp, #0x640
    20b4:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    20b8:	4ea21c41 	mov	v1.16b, v2.16b
    20bc:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    20c0:	f94337e0 	ldr	x0, [sp, #1640]
    20c4:	911903e1 	add	x1, sp, #0x640
    20c8:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    20cc:	4c008000 	st2	{v0.16b, v1.16b}, [x0]
    20d0:	d10143e0 	sub	x0, sp, #0x50
    20d4:	91020000 	add	x0, x0, #0x80
    20d8:	d10143e1 	sub	x1, sp, #0x50
    20dc:	91088021 	add	x1, x1, #0x220
    20e0:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    20e4:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    20e8:	d10143e0 	sub	x0, sp, #0x50
    20ec:	91028000 	add	x0, x0, #0xa0
    20f0:	d10143e1 	sub	x1, sp, #0x50
    20f4:	91050021 	add	x1, x1, #0x140
    20f8:	4c40a020 	ld1	{v0.16b, v1.16b}, [x1]
    20fc:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    2100:	b947abe0 	ldr	w0, [sp, #1960]
    2104:	11000800 	add	w0, w0, #0x2
    2108:	b907abe0 	str	w0, [sp, #1960]
    210c:	b94023e0 	ldr	w0, [sp, #32]
    2110:	51000400 	sub	w0, w0, #0x1
    2114:	b947abe1 	ldr	w1, [sp, #1960]
    2118:	6b00003f 	cmp	w1, w0
    211c:	54ff770b 	b.lt	ffc <debayer_neon64+0x244>  // b.tstop
    2120:	b947afe0 	ldr	w0, [sp, #1964]
    2124:	11008000 	add	w0, w0, #0x20
    2128:	b907afe0 	str	w0, [sp, #1964]
    212c:	b94027e0 	ldr	w0, [sp, #36]
    2130:	51000400 	sub	w0, w0, #0x1
    2134:	b947afe1 	ldr	w1, [sp, #1964]
    2138:	6b00003f 	cmp	w1, w0
    213c:	54ff652b 	b.lt	de0 <debayer_neon64+0x28>  // b.tstop
    2140:	d503201f 	nop
    2144:	911ec3ff 	add	sp, sp, #0x7b0
    2148:	d65f03c0 	ret

000000000000214c <debayer>:
    214c:	d10143ff 	sub	sp, sp, #0x50
    2150:	f90017e0 	str	x0, [sp, #40]
    2154:	f90013e1 	str	x1, [sp, #32]
    2158:	f9000fe2 	str	x2, [sp, #24]
    215c:	f9000be3 	str	x3, [sp, #16]
    2160:	b9000fe4 	str	w4, [sp, #12]
    2164:	b9000be5 	str	w5, [sp, #8]
    2168:	b9004fff 	str	wzr, [sp, #76]
    216c:	52800020 	mov	w0, #0x1                   	// #1
    2170:	b9004be0 	str	w0, [sp, #72]
    2174:	14000139 	b	2658 <debayer+0x50c>
    2178:	52800020 	mov	w0, #0x1                   	// #1
    217c:	b90047e0 	str	w0, [sp, #68]
    2180:	1400012e 	b	2638 <debayer+0x4ec>
    2184:	b9404be0 	ldr	w0, [sp, #72]
    2188:	51000401 	sub	w1, w0, #0x1
    218c:	b9400fe0 	ldr	w0, [sp, #12]
    2190:	1b007c21 	mul	w1, w1, w0
    2194:	b94047e0 	ldr	w0, [sp, #68]
    2198:	0b000020 	add	w0, w1, w0
    219c:	93407c00 	sxtw	x0, w0
    21a0:	f94017e1 	ldr	x1, [sp, #40]
    21a4:	8b000020 	add	x0, x1, x0
    21a8:	39400000 	ldrb	w0, [x0]
    21ac:	790087e0 	strh	w0, [sp, #66]
    21b0:	b9404be0 	ldr	w0, [sp, #72]
    21b4:	51000401 	sub	w1, w0, #0x1
    21b8:	b9400fe0 	ldr	w0, [sp, #12]
    21bc:	1b007c21 	mul	w1, w1, w0
    21c0:	b94047e0 	ldr	w0, [sp, #68]
    21c4:	0b000020 	add	w0, w1, w0
    21c8:	93407c00 	sxtw	x0, w0
    21cc:	d1000400 	sub	x0, x0, #0x1
    21d0:	f94017e1 	ldr	x1, [sp, #40]
    21d4:	8b000020 	add	x0, x1, x0
    21d8:	39400000 	ldrb	w0, [x0]
    21dc:	790083e0 	strh	w0, [sp, #64]
    21e0:	b9404be0 	ldr	w0, [sp, #72]
    21e4:	51000401 	sub	w1, w0, #0x1
    21e8:	b9400fe0 	ldr	w0, [sp, #12]
    21ec:	1b007c21 	mul	w1, w1, w0
    21f0:	b94047e0 	ldr	w0, [sp, #68]
    21f4:	0b000020 	add	w0, w1, w0
    21f8:	93407c00 	sxtw	x0, w0
    21fc:	91000400 	add	x0, x0, #0x1
    2200:	f94017e1 	ldr	x1, [sp, #40]
    2204:	8b000020 	add	x0, x1, x0
    2208:	39400000 	ldrb	w0, [x0]
    220c:	79007fe0 	strh	w0, [sp, #62]
    2210:	b9404be1 	ldr	w1, [sp, #72]
    2214:	b9400fe0 	ldr	w0, [sp, #12]
    2218:	1b007c21 	mul	w1, w1, w0
    221c:	b94047e0 	ldr	w0, [sp, #68]
    2220:	0b000020 	add	w0, w1, w0
    2224:	93407c00 	sxtw	x0, w0
    2228:	d1000400 	sub	x0, x0, #0x1
    222c:	f94017e1 	ldr	x1, [sp, #40]
    2230:	8b000020 	add	x0, x1, x0
    2234:	39400000 	ldrb	w0, [x0]
    2238:	79007be0 	strh	w0, [sp, #60]
    223c:	b9404be1 	ldr	w1, [sp, #72]
    2240:	b9400fe0 	ldr	w0, [sp, #12]
    2244:	1b007c21 	mul	w1, w1, w0
    2248:	b94047e0 	ldr	w0, [sp, #68]
    224c:	0b000020 	add	w0, w1, w0
    2250:	93407c00 	sxtw	x0, w0
    2254:	91000400 	add	x0, x0, #0x1
    2258:	f94017e1 	ldr	x1, [sp, #40]
    225c:	8b000020 	add	x0, x1, x0
    2260:	39400000 	ldrb	w0, [x0]
    2264:	790077e0 	strh	w0, [sp, #58]
    2268:	b9404be0 	ldr	w0, [sp, #72]
    226c:	11000401 	add	w1, w0, #0x1
    2270:	b9400fe0 	ldr	w0, [sp, #12]
    2274:	1b007c21 	mul	w1, w1, w0
    2278:	b94047e0 	ldr	w0, [sp, #68]
    227c:	0b000020 	add	w0, w1, w0
    2280:	93407c00 	sxtw	x0, w0
    2284:	f94017e1 	ldr	x1, [sp, #40]
    2288:	8b000020 	add	x0, x1, x0
    228c:	39400000 	ldrb	w0, [x0]
    2290:	790073e0 	strh	w0, [sp, #56]
    2294:	b9404be0 	ldr	w0, [sp, #72]
    2298:	11000401 	add	w1, w0, #0x1
    229c:	b9400fe0 	ldr	w0, [sp, #12]
    22a0:	1b007c21 	mul	w1, w1, w0
    22a4:	b94047e0 	ldr	w0, [sp, #68]
    22a8:	0b000020 	add	w0, w1, w0
    22ac:	93407c00 	sxtw	x0, w0
    22b0:	d1000400 	sub	x0, x0, #0x1
    22b4:	f94017e1 	ldr	x1, [sp, #40]
    22b8:	8b000020 	add	x0, x1, x0
    22bc:	39400000 	ldrb	w0, [x0]
    22c0:	79006fe0 	strh	w0, [sp, #54]
    22c4:	b9404be0 	ldr	w0, [sp, #72]
    22c8:	11000401 	add	w1, w0, #0x1
    22cc:	b9400fe0 	ldr	w0, [sp, #12]
    22d0:	1b007c21 	mul	w1, w1, w0
    22d4:	b94047e0 	ldr	w0, [sp, #68]
    22d8:	0b000020 	add	w0, w1, w0
    22dc:	93407c00 	sxtw	x0, w0
    22e0:	91000400 	add	x0, x0, #0x1
    22e4:	f94017e1 	ldr	x1, [sp, #40]
    22e8:	8b000020 	add	x0, x1, x0
    22ec:	39400000 	ldrb	w0, [x0]
    22f0:	79006be0 	strh	w0, [sp, #52]
    22f4:	b9404be0 	ldr	w0, [sp, #72]
    22f8:	7100001f 	cmp	w0, #0x0
    22fc:	12000000 	and	w0, w0, #0x1
    2300:	5a80a400 	cneg	w0, w0, lt  // lt = tstop
    2304:	7100041f 	cmp	w0, #0x1
    2308:	540005a1 	b.ne	23bc <debayer+0x270>  // b.any
    230c:	b94047e0 	ldr	w0, [sp, #68]
    2310:	7100001f 	cmp	w0, #0x0
    2314:	12000000 	and	w0, w0, #0x1
    2318:	5a80a400 	cneg	w0, w0, lt  // lt = tstop
    231c:	7100041f 	cmp	w0, #0x1
    2320:	540004e1 	b.ne	23bc <debayer+0x270>  // b.any
    2324:	b9404be1 	ldr	w1, [sp, #72]
    2328:	b9400fe0 	ldr	w0, [sp, #12]
    232c:	1b007c21 	mul	w1, w1, w0
    2330:	b94047e0 	ldr	w0, [sp, #68]
    2334:	0b000020 	add	w0, w1, w0
    2338:	93407c00 	sxtw	x0, w0
    233c:	f94017e1 	ldr	x1, [sp, #40]
    2340:	8b000021 	add	x1, x1, x0
    2344:	b9404fe0 	ldr	w0, [sp, #76]
    2348:	f9400fe2 	ldr	x2, [sp, #24]
    234c:	8b000040 	add	x0, x2, x0
    2350:	39400021 	ldrb	w1, [x1]
    2354:	39000001 	strb	w1, [x0]
    2358:	794087e1 	ldrh	w1, [sp, #66]
    235c:	794073e0 	ldrh	w0, [sp, #56]
    2360:	0b000020 	add	w0, w1, w0
    2364:	531f7c01 	lsr	w1, w0, #31
    2368:	0b000020 	add	w0, w1, w0
    236c:	13017c00 	asr	w0, w0, #1
    2370:	2a0003e2 	mov	w2, w0
    2374:	b9404fe0 	ldr	w0, [sp, #76]
    2378:	f94013e1 	ldr	x1, [sp, #32]
    237c:	8b000020 	add	x0, x1, x0
    2380:	12001c41 	and	w1, w2, #0xff
    2384:	39000001 	strb	w1, [x0]
    2388:	79407be1 	ldrh	w1, [sp, #60]
    238c:	794077e0 	ldrh	w0, [sp, #58]
    2390:	0b000020 	add	w0, w1, w0
    2394:	531f7c01 	lsr	w1, w0, #31
    2398:	0b000020 	add	w0, w1, w0
    239c:	13017c00 	asr	w0, w0, #1
    23a0:	2a0003e2 	mov	w2, w0
    23a4:	b9404fe0 	ldr	w0, [sp, #76]
    23a8:	f9400be1 	ldr	x1, [sp, #16]
    23ac:	8b000020 	add	x0, x1, x0
    23b0:	12001c41 	and	w1, w2, #0xff
    23b4:	39000001 	strb	w1, [x0]
    23b8:	1400009a 	b	2620 <debayer+0x4d4>
    23bc:	b9404be0 	ldr	w0, [sp, #72]
    23c0:	7100001f 	cmp	w0, #0x0
    23c4:	12000000 	and	w0, w0, #0x1
    23c8:	5a80a400 	cneg	w0, w0, lt  // lt = tstop
    23cc:	7100041f 	cmp	w0, #0x1
    23d0:	540006a1 	b.ne	24a4 <debayer+0x358>  // b.any
    23d4:	b94047e0 	ldr	w0, [sp, #68]
    23d8:	12000000 	and	w0, w0, #0x1
    23dc:	7100001f 	cmp	w0, #0x0
    23e0:	54000621 	b.ne	24a4 <debayer+0x358>  // b.any
    23e4:	b9404be1 	ldr	w1, [sp, #72]
    23e8:	b9400fe0 	ldr	w0, [sp, #12]
    23ec:	1b007c21 	mul	w1, w1, w0
    23f0:	b94047e0 	ldr	w0, [sp, #68]
    23f4:	0b000020 	add	w0, w1, w0
    23f8:	93407c00 	sxtw	x0, w0
    23fc:	f94017e1 	ldr	x1, [sp, #40]
    2400:	8b000021 	add	x1, x1, x0
    2404:	b9404fe0 	ldr	w0, [sp, #76]
    2408:	f9400be2 	ldr	x2, [sp, #16]
    240c:	8b000040 	add	x0, x2, x0
    2410:	39400021 	ldrb	w1, [x1]
    2414:	39000001 	strb	w1, [x0]
    2418:	794083e1 	ldrh	w1, [sp, #64]
    241c:	79407fe0 	ldrh	w0, [sp, #62]
    2420:	0b000021 	add	w1, w1, w0
    2424:	79406fe0 	ldrh	w0, [sp, #54]
    2428:	0b000021 	add	w1, w1, w0
    242c:	79406be0 	ldrh	w0, [sp, #52]
    2430:	0b000020 	add	w0, w1, w0
    2434:	11000c01 	add	w1, w0, #0x3
    2438:	7100001f 	cmp	w0, #0x0
    243c:	1a80b020 	csel	w0, w1, w0, lt  // lt = tstop
    2440:	13027c00 	asr	w0, w0, #2
    2444:	2a0003e2 	mov	w2, w0
    2448:	b9404fe0 	ldr	w0, [sp, #76]
    244c:	f94013e1 	ldr	x1, [sp, #32]
    2450:	8b000020 	add	x0, x1, x0
    2454:	12001c41 	and	w1, w2, #0xff
    2458:	39000001 	strb	w1, [x0]
    245c:	794087e1 	ldrh	w1, [sp, #66]
    2460:	794073e0 	ldrh	w0, [sp, #56]
    2464:	0b000021 	add	w1, w1, w0
    2468:	79407be0 	ldrh	w0, [sp, #60]
    246c:	0b000021 	add	w1, w1, w0
    2470:	794077e0 	ldrh	w0, [sp, #58]
    2474:	0b000020 	add	w0, w1, w0
    2478:	11000c01 	add	w1, w0, #0x3
    247c:	7100001f 	cmp	w0, #0x0
    2480:	1a80b020 	csel	w0, w1, w0, lt  // lt = tstop
    2484:	13027c00 	asr	w0, w0, #2
    2488:	2a0003e2 	mov	w2, w0
    248c:	b9404fe0 	ldr	w0, [sp, #76]
    2490:	f9400fe1 	ldr	x1, [sp, #24]
    2494:	8b000020 	add	x0, x1, x0
    2498:	12001c41 	and	w1, w2, #0xff
    249c:	39000001 	strb	w1, [x0]
    24a0:	14000060 	b	2620 <debayer+0x4d4>
    24a4:	b9404be0 	ldr	w0, [sp, #72]
    24a8:	12000000 	and	w0, w0, #0x1
    24ac:	7100001f 	cmp	w0, #0x0
    24b0:	540006e1 	b.ne	258c <debayer+0x440>  // b.any
    24b4:	b94047e0 	ldr	w0, [sp, #68]
    24b8:	7100001f 	cmp	w0, #0x0
    24bc:	12000000 	and	w0, w0, #0x1
    24c0:	5a80a400 	cneg	w0, w0, lt  // lt = tstop
    24c4:	7100041f 	cmp	w0, #0x1
    24c8:	54000621 	b.ne	258c <debayer+0x440>  // b.any
    24cc:	b9404be1 	ldr	w1, [sp, #72]
    24d0:	b9400fe0 	ldr	w0, [sp, #12]
    24d4:	1b007c21 	mul	w1, w1, w0
    24d8:	b94047e0 	ldr	w0, [sp, #68]
    24dc:	0b000020 	add	w0, w1, w0
    24e0:	93407c00 	sxtw	x0, w0
    24e4:	f94017e1 	ldr	x1, [sp, #40]
    24e8:	8b000021 	add	x1, x1, x0
    24ec:	b9404fe0 	ldr	w0, [sp, #76]
    24f0:	f94013e2 	ldr	x2, [sp, #32]
    24f4:	8b000040 	add	x0, x2, x0
    24f8:	39400021 	ldrb	w1, [x1]
    24fc:	39000001 	strb	w1, [x0]
    2500:	794083e1 	ldrh	w1, [sp, #64]
    2504:	79407fe0 	ldrh	w0, [sp, #62]
    2508:	0b000021 	add	w1, w1, w0
    250c:	79406fe0 	ldrh	w0, [sp, #54]
    2510:	0b000021 	add	w1, w1, w0
    2514:	79406be0 	ldrh	w0, [sp, #52]
    2518:	0b000020 	add	w0, w1, w0
    251c:	11000c01 	add	w1, w0, #0x3
    2520:	7100001f 	cmp	w0, #0x0
    2524:	1a80b020 	csel	w0, w1, w0, lt  // lt = tstop
    2528:	13027c00 	asr	w0, w0, #2
    252c:	2a0003e2 	mov	w2, w0
    2530:	b9404fe0 	ldr	w0, [sp, #76]
    2534:	f9400be1 	ldr	x1, [sp, #16]
    2538:	8b000020 	add	x0, x1, x0
    253c:	12001c41 	and	w1, w2, #0xff
    2540:	39000001 	strb	w1, [x0]
    2544:	794087e1 	ldrh	w1, [sp, #66]
    2548:	794073e0 	ldrh	w0, [sp, #56]
    254c:	0b000021 	add	w1, w1, w0
    2550:	79407be0 	ldrh	w0, [sp, #60]
    2554:	0b000021 	add	w1, w1, w0
    2558:	794077e0 	ldrh	w0, [sp, #58]
    255c:	0b000020 	add	w0, w1, w0
    2560:	11000c01 	add	w1, w0, #0x3
    2564:	7100001f 	cmp	w0, #0x0
    2568:	1a80b020 	csel	w0, w1, w0, lt  // lt = tstop
    256c:	13027c00 	asr	w0, w0, #2
    2570:	2a0003e2 	mov	w2, w0
    2574:	b9404fe0 	ldr	w0, [sp, #76]
    2578:	f9400fe1 	ldr	x1, [sp, #24]
    257c:	8b000020 	add	x0, x1, x0
    2580:	12001c41 	and	w1, w2, #0xff
    2584:	39000001 	strb	w1, [x0]
    2588:	14000026 	b	2620 <debayer+0x4d4>
    258c:	b9404be1 	ldr	w1, [sp, #72]
    2590:	b9400fe0 	ldr	w0, [sp, #12]
    2594:	1b007c21 	mul	w1, w1, w0
    2598:	b94047e0 	ldr	w0, [sp, #68]
    259c:	0b000020 	add	w0, w1, w0
    25a0:	93407c00 	sxtw	x0, w0
    25a4:	f94017e1 	ldr	x1, [sp, #40]
    25a8:	8b000021 	add	x1, x1, x0
    25ac:	b9404fe0 	ldr	w0, [sp, #76]
    25b0:	f9400fe2 	ldr	x2, [sp, #24]
    25b4:	8b000040 	add	x0, x2, x0
    25b8:	39400021 	ldrb	w1, [x1]
    25bc:	39000001 	strb	w1, [x0]
    25c0:	794087e1 	ldrh	w1, [sp, #66]
    25c4:	794073e0 	ldrh	w0, [sp, #56]
    25c8:	0b000020 	add	w0, w1, w0
    25cc:	531f7c01 	lsr	w1, w0, #31
    25d0:	0b000020 	add	w0, w1, w0
    25d4:	13017c00 	asr	w0, w0, #1
    25d8:	2a0003e2 	mov	w2, w0
    25dc:	b9404fe0 	ldr	w0, [sp, #76]
    25e0:	f9400be1 	ldr	x1, [sp, #16]
    25e4:	8b000020 	add	x0, x1, x0
    25e8:	12001c41 	and	w1, w2, #0xff
    25ec:	39000001 	strb	w1, [x0]
    25f0:	79407be1 	ldrh	w1, [sp, #60]
    25f4:	794077e0 	ldrh	w0, [sp, #58]
    25f8:	0b000020 	add	w0, w1, w0
    25fc:	531f7c01 	lsr	w1, w0, #31
    2600:	0b000020 	add	w0, w1, w0
    2604:	13017c00 	asr	w0, w0, #1
    2608:	2a0003e2 	mov	w2, w0
    260c:	b9404fe0 	ldr	w0, [sp, #76]
    2610:	f94013e1 	ldr	x1, [sp, #32]
    2614:	8b000020 	add	x0, x1, x0
    2618:	12001c41 	and	w1, w2, #0xff
    261c:	39000001 	strb	w1, [x0]
    2620:	b9404fe0 	ldr	w0, [sp, #76]
    2624:	11000400 	add	w0, w0, #0x1
    2628:	b9004fe0 	str	w0, [sp, #76]
    262c:	b94047e0 	ldr	w0, [sp, #68]
    2630:	11000400 	add	w0, w0, #0x1
    2634:	b90047e0 	str	w0, [sp, #68]
    2638:	b9400fe0 	ldr	w0, [sp, #12]
    263c:	51000400 	sub	w0, w0, #0x1
    2640:	b94047e1 	ldr	w1, [sp, #68]
    2644:	6b00003f 	cmp	w1, w0
    2648:	54ffd9eb 	b.lt	2184 <debayer+0x38>  // b.tstop
    264c:	b9404be0 	ldr	w0, [sp, #72]
    2650:	11000400 	add	w0, w0, #0x1
    2654:	b9004be0 	str	w0, [sp, #72]
    2658:	b9400be0 	ldr	w0, [sp, #8]
    265c:	51000400 	sub	w0, w0, #0x1
    2660:	b9404be1 	ldr	w1, [sp, #72]
    2664:	6b00003f 	cmp	w1, w0
    2668:	54ffd88b 	b.lt	2178 <debayer+0x2c>  // b.tstop
    266c:	d503201f 	nop
    2670:	910143ff 	add	sp, sp, #0x50
    2674:	d65f03c0 	ret

0000000000002678 <clock>:
    2678:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    267c:	910003fd 	mov	x29, sp
    2680:	910063a0 	add	x0, x29, #0x18
    2684:	9400034f 	bl	33c0 <XTime_GetTime>
    2688:	f9400fa0 	ldr	x0, [x29, #24]
    268c:	9e630001 	ucvtf	d1, x0
    2690:	5c000100 	ldr	d0, 26b0 <clock+0x38>
    2694:	1e601820 	fdiv	d0, d1, d0
    2698:	d2d09000 	mov	x0, #0x848000000000        	// #145685290680320
    269c:	f2e825c0 	movk	x0, #0x412e, lsl #48
    26a0:	9e670001 	fmov	d1, x0
    26a4:	1e611800 	fdiv	d0, d0, d1
    26a8:	a8c27bfd 	ldp	x29, x30, [sp], #32
    26ac:	d65f03c0 	ret
    26b0:	80000000 	.word	0x80000000
    26b4:	417fc9f0 	.word	0x417fc9f0

00000000000026b8 <test_neon>:
    26b8:	d10d43ff 	sub	sp, sp, #0x350
    26bc:	f90007e0 	str	x0, [sp, #8]
    26c0:	f94007e0 	ldr	x0, [sp, #8]
    26c4:	f9017fe0 	str	x0, [sp, #760]
    26c8:	910ac3e0 	add	x0, sp, #0x2b0
    26cc:	f9417fe1 	ldr	x1, [sp, #760]
    26d0:	4c400820 	ld4	{v0.4s-v3.4s}, [x1]
    26d4:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    26d8:	910ac3e0 	add	x0, sp, #0x2b0
    26dc:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    26e0:	910243e0 	add	x0, sp, #0x90
    26e4:	3d800000 	str	q0, [x0]
    26e8:	910ac3e0 	add	x0, sp, #0x2b0
    26ec:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    26f0:	4ea11c20 	mov	v0.16b, v1.16b
    26f4:	910243e0 	add	x0, sp, #0x90
    26f8:	3d800400 	str	q0, [x0, #16]
    26fc:	910ac3e0 	add	x0, sp, #0x2b0
    2700:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    2704:	4ea21c40 	mov	v0.16b, v2.16b
    2708:	910243e0 	add	x0, sp, #0x90
    270c:	3d800800 	str	q0, [x0, #32]
    2710:	910ac3e0 	add	x0, sp, #0x2b0
    2714:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    2718:	4ea31c60 	mov	v0.16b, v3.16b
    271c:	910243e0 	add	x0, sp, #0x90
    2720:	3d800c00 	str	q0, [x0, #48]
    2724:	910243e0 	add	x0, sp, #0x90
    2728:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    272c:	910543e0 	add	x0, sp, #0x150
    2730:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    2734:	f94007e0 	ldr	x0, [sp, #8]
    2738:	91010000 	add	x0, x0, #0x40
    273c:	f901a3e0 	str	x0, [sp, #832]
    2740:	910c03e0 	add	x0, sp, #0x300
    2744:	f941a3e1 	ldr	x1, [sp, #832]
    2748:	4c400820 	ld4	{v0.4s-v3.4s}, [x1]
    274c:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    2750:	910c03e0 	add	x0, sp, #0x300
    2754:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    2758:	910243e0 	add	x0, sp, #0x90
    275c:	3d800000 	str	q0, [x0]
    2760:	910c03e0 	add	x0, sp, #0x300
    2764:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    2768:	4ea11c20 	mov	v0.16b, v1.16b
    276c:	910243e0 	add	x0, sp, #0x90
    2770:	3d800400 	str	q0, [x0, #16]
    2774:	910c03e0 	add	x0, sp, #0x300
    2778:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    277c:	4ea21c40 	mov	v0.16b, v2.16b
    2780:	910243e0 	add	x0, sp, #0x90
    2784:	3d800800 	str	q0, [x0, #32]
    2788:	910c03e0 	add	x0, sp, #0x300
    278c:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    2790:	4ea31c60 	mov	v0.16b, v3.16b
    2794:	910243e0 	add	x0, sp, #0x90
    2798:	3d800c00 	str	q0, [x0, #48]
    279c:	910243e0 	add	x0, sp, #0x90
    27a0:	4c402000 	ld1	{v0.16b-v3.16b}, [x0]
    27a4:	910443e0 	add	x0, sp, #0x110
    27a8:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    27ac:	b9034fff 	str	wzr, [sp, #844]
    27b0:	1400001a 	b	2818 <test_neon+0x160>
    27b4:	910543e1 	add	x1, sp, #0x150
    27b8:	b9834fe0 	ldrsw	x0, [sp, #844]
    27bc:	d37cec00 	lsl	x0, x0, #4
    27c0:	8b000020 	add	x0, x1, x0
    27c4:	3dc00001 	ldr	q1, [x0]
    27c8:	910443e1 	add	x1, sp, #0x110
    27cc:	b9834fe0 	ldrsw	x0, [sp, #844]
    27d0:	d37cec00 	lsl	x0, x0, #4
    27d4:	8b000020 	add	x0, x1, x0
    27d8:	3dc00000 	ldr	q0, [x0]
    27dc:	3d80abe1 	str	q1, [sp, #672]
    27e0:	3d80a7e0 	str	q0, [sp, #656]
    27e4:	3dc0abe0 	ldr	q0, [sp, #672]
    27e8:	3dc0a7e1 	ldr	q1, [sp, #656]
    27ec:	4ea1bc00 	addp	v0.4s, v0.4s, v1.4s
    27f0:	3d80a3e0 	str	q0, [sp, #640]
    27f4:	3dc0a3e0 	ldr	q0, [sp, #640]
    27f8:	910343e1 	add	x1, sp, #0xd0
    27fc:	b9834fe0 	ldrsw	x0, [sp, #844]
    2800:	d37cec00 	lsl	x0, x0, #4
    2804:	8b000020 	add	x0, x1, x0
    2808:	3d800000 	str	q0, [x0]
    280c:	b9434fe0 	ldr	w0, [sp, #844]
    2810:	11000400 	add	w0, w0, #0x1
    2814:	b9034fe0 	str	w0, [sp, #844]
    2818:	b9434fe0 	ldr	w0, [sp, #844]
    281c:	71000c1f 	cmp	w0, #0x3
    2820:	54fffcad 	b.le	27b4 <test_neon+0xfc>
    2824:	f94007e0 	ldr	x0, [sp, #8]
    2828:	91020000 	add	x0, x0, #0x80
    282c:	f900efe0 	str	x0, [sp, #472]
    2830:	910243e0 	add	x0, sp, #0x90
    2834:	910343e1 	add	x1, sp, #0xd0
    2838:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    283c:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    2840:	910243e0 	add	x0, sp, #0x90
    2844:	3dc00000 	ldr	q0, [x0]
    2848:	4ea01c04 	mov	v4.16b, v0.16b
    284c:	910643e0 	add	x0, sp, #0x190
    2850:	910643e1 	add	x1, sp, #0x190
    2854:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2858:	4ea41c80 	mov	v0.16b, v4.16b
    285c:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    2860:	910243e0 	add	x0, sp, #0x90
    2864:	3dc00400 	ldr	q0, [x0, #16]
    2868:	4ea01c04 	mov	v4.16b, v0.16b
    286c:	910643e0 	add	x0, sp, #0x190
    2870:	910643e1 	add	x1, sp, #0x190
    2874:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2878:	4ea41c81 	mov	v1.16b, v4.16b
    287c:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    2880:	910243e0 	add	x0, sp, #0x90
    2884:	3dc00800 	ldr	q0, [x0, #32]
    2888:	4ea01c04 	mov	v4.16b, v0.16b
    288c:	910643e0 	add	x0, sp, #0x190
    2890:	910643e1 	add	x1, sp, #0x190
    2894:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2898:	4ea41c82 	mov	v2.16b, v4.16b
    289c:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    28a0:	910243e0 	add	x0, sp, #0x90
    28a4:	3dc00c00 	ldr	q0, [x0, #48]
    28a8:	4ea01c04 	mov	v4.16b, v0.16b
    28ac:	910643e0 	add	x0, sp, #0x190
    28b0:	910643e1 	add	x1, sp, #0x190
    28b4:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    28b8:	4ea41c83 	mov	v3.16b, v4.16b
    28bc:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    28c0:	f940efe0 	ldr	x0, [sp, #472]
    28c4:	910643e1 	add	x1, sp, #0x190
    28c8:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    28cc:	4c000800 	st4	{v0.4s-v3.4s}, [x0]
    28d0:	f94007e0 	ldr	x0, [sp, #8]
    28d4:	91030000 	add	x0, x0, #0xc0
    28d8:	f90117e0 	str	x0, [sp, #552]
    28dc:	910143e0 	add	x0, sp, #0x50
    28e0:	910543e1 	add	x1, sp, #0x150
    28e4:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    28e8:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    28ec:	910143e0 	add	x0, sp, #0x50
    28f0:	3dc00000 	ldr	q0, [x0]
    28f4:	4ea01c04 	mov	v4.16b, v0.16b
    28f8:	910783e0 	add	x0, sp, #0x1e0
    28fc:	910783e1 	add	x1, sp, #0x1e0
    2900:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2904:	4ea41c80 	mov	v0.16b, v4.16b
    2908:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    290c:	910143e0 	add	x0, sp, #0x50
    2910:	3dc00400 	ldr	q0, [x0, #16]
    2914:	4ea01c04 	mov	v4.16b, v0.16b
    2918:	910783e0 	add	x0, sp, #0x1e0
    291c:	910783e1 	add	x1, sp, #0x1e0
    2920:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2924:	4ea41c81 	mov	v1.16b, v4.16b
    2928:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    292c:	910143e0 	add	x0, sp, #0x50
    2930:	3dc00800 	ldr	q0, [x0, #32]
    2934:	4ea01c04 	mov	v4.16b, v0.16b
    2938:	910783e0 	add	x0, sp, #0x1e0
    293c:	910783e1 	add	x1, sp, #0x1e0
    2940:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2944:	4ea41c82 	mov	v2.16b, v4.16b
    2948:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    294c:	910143e0 	add	x0, sp, #0x50
    2950:	3dc00c00 	ldr	q0, [x0, #48]
    2954:	4ea01c04 	mov	v4.16b, v0.16b
    2958:	910783e0 	add	x0, sp, #0x1e0
    295c:	910783e1 	add	x1, sp, #0x1e0
    2960:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2964:	4ea41c83 	mov	v3.16b, v4.16b
    2968:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    296c:	f94117e0 	ldr	x0, [sp, #552]
    2970:	910783e1 	add	x1, sp, #0x1e0
    2974:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2978:	4c000800 	st4	{v0.4s-v3.4s}, [x0]
    297c:	f94007e0 	ldr	x0, [sp, #8]
    2980:	91040000 	add	x0, x0, #0x100
    2984:	f9013fe0 	str	x0, [sp, #632]
    2988:	910043e0 	add	x0, sp, #0x10
    298c:	910443e1 	add	x1, sp, #0x110
    2990:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2994:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    2998:	910043e0 	add	x0, sp, #0x10
    299c:	3dc00000 	ldr	q0, [x0]
    29a0:	4ea01c04 	mov	v4.16b, v0.16b
    29a4:	9108c3e0 	add	x0, sp, #0x230
    29a8:	9108c3e1 	add	x1, sp, #0x230
    29ac:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    29b0:	4ea41c80 	mov	v0.16b, v4.16b
    29b4:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    29b8:	910043e0 	add	x0, sp, #0x10
    29bc:	3dc00400 	ldr	q0, [x0, #16]
    29c0:	4ea01c04 	mov	v4.16b, v0.16b
    29c4:	9108c3e0 	add	x0, sp, #0x230
    29c8:	9108c3e1 	add	x1, sp, #0x230
    29cc:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    29d0:	4ea41c81 	mov	v1.16b, v4.16b
    29d4:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    29d8:	910043e0 	add	x0, sp, #0x10
    29dc:	3dc00800 	ldr	q0, [x0, #32]
    29e0:	4ea01c04 	mov	v4.16b, v0.16b
    29e4:	9108c3e0 	add	x0, sp, #0x230
    29e8:	9108c3e1 	add	x1, sp, #0x230
    29ec:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    29f0:	4ea41c82 	mov	v2.16b, v4.16b
    29f4:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    29f8:	910043e0 	add	x0, sp, #0x10
    29fc:	3dc00c00 	ldr	q0, [x0, #48]
    2a00:	4ea01c04 	mov	v4.16b, v0.16b
    2a04:	9108c3e0 	add	x0, sp, #0x230
    2a08:	9108c3e1 	add	x1, sp, #0x230
    2a0c:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2a10:	4ea41c83 	mov	v3.16b, v4.16b
    2a14:	4c002000 	st1	{v0.16b-v3.16b}, [x0]
    2a18:	f9413fe0 	ldr	x0, [sp, #632]
    2a1c:	9108c3e1 	add	x1, sp, #0x230
    2a20:	4c402020 	ld1	{v0.16b-v3.16b}, [x1]
    2a24:	4c000800 	st4	{v0.4s-v3.4s}, [x0]
    2a28:	d503201f 	nop
    2a2c:	910d43ff 	add	sp, sp, #0x350
    2a30:	d65f03c0 	ret

0000000000002a34 <test_neon_assembly>:
    2a34:	d10043ff 	sub	sp, sp, #0x10
    2a38:	f90007e0 	str	x0, [sp, #8]
    2a3c:	910023e0 	add	x0, sp, #0x8
    2a40:	f9400000 	ldr	x0, [x0]

0000000000002a44 <.loop>:
    2a44:	4cdf2000 	ld1	{v0.16b-v3.16b}, [x0], #64
    2a48:	4cdf2004 	ld1	{v4.16b-v7.16b}, [x0], #64
    2a4c:	4ea4bc08 	addp	v8.4s, v0.4s, v4.4s
    2a50:	4ea5bc29 	addp	v9.4s, v1.4s, v5.4s
    2a54:	4ea6bc4a 	addp	v10.4s, v2.4s, v6.4s
    2a58:	4ea7bc6b 	addp	v11.4s, v3.4s, v7.4s
    2a5c:	4c9f2000 	st1	{v0.16b-v3.16b}, [x0], #64
    2a60:	4c9f2004 	st1	{v4.16b-v7.16b}, [x0], #64
    2a64:	4c9f2008 	st1	{v8.16b-v11.16b}, [x0], #64
    2a68:	4c9f2000 	st1	{v0.16b-v3.16b}, [x0], #64
    2a6c:	4c9f2004 	st1	{v4.16b-v7.16b}, [x0], #64
    2a70:	4c9f2008 	st1	{v8.16b-v11.16b}, [x0], #64
    2a74:	4c9f2000 	st1	{v0.16b-v3.16b}, [x0], #64
    2a78:	4c9f2004 	st1	{v4.16b-v7.16b}, [x0], #64
    2a7c:	4c9f2008 	st1	{v8.16b-v11.16b}, [x0], #64
    2a80:	4c9f2000 	st1	{v0.16b-v3.16b}, [x0], #64
    2a84:	4c9f2004 	st1	{v4.16b-v7.16b}, [x0], #64
    2a88:	4c9f2008 	st1	{v8.16b-v11.16b}, [x0], #64
    2a8c:	d503201f 	nop
    2a90:	910043ff 	add	sp, sp, #0x10
    2a94:	d65f03c0 	ret

0000000000002a98 <main>:
    2a98:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    2a9c:	910003fd 	mov	x29, sp
    2aa0:	940001ca 	bl	31c8 <Xil_ICacheEnable>
    2aa4:	940000f3 	bl	2e70 <Xil_DCacheEnable>
    2aa8:	b9001fbf 	str	wzr, [x29, #28]
    2aac:	1400000c 	b	2adc <main+0x44>
    2ab0:	b0000000 	adrp	x0, 3000 <Xil_DCacheFlush+0x60>
    2ab4:	912ec000 	add	x0, x0, #0xbb0
    2ab8:	f9400001 	ldr	x1, [x0]
    2abc:	b9801fa0 	ldrsw	x0, [x29, #28]
    2ac0:	d37ef400 	lsl	x0, x0, #2
    2ac4:	8b000020 	add	x0, x1, x0
    2ac8:	b9401fa1 	ldr	w1, [x29, #28]
    2acc:	b9000001 	str	w1, [x0]
    2ad0:	b9401fa0 	ldr	w0, [x29, #28]
    2ad4:	11000400 	add	w0, w0, #0x1
    2ad8:	b9001fa0 	str	w0, [x29, #28]
    2adc:	b9401fa0 	ldr	w0, [x29, #28]
    2ae0:	711ffc1f 	cmp	w0, #0x7ff
    2ae4:	54fffe6d 	b.le	2ab0 <main+0x18>
    2ae8:	b9001fbf 	str	wzr, [x29, #28]
    2aec:	1400000b 	b	2b18 <main+0x80>
    2af0:	b0000000 	adrp	x0, 3000 <Xil_DCacheFlush+0x60>
    2af4:	912ee000 	add	x0, x0, #0xbb8
    2af8:	f9400001 	ldr	x1, [x0]
    2afc:	b9801fa0 	ldrsw	x0, [x29, #28]
    2b00:	d37ef400 	lsl	x0, x0, #2
    2b04:	8b000020 	add	x0, x1, x0
    2b08:	b900001f 	str	wzr, [x0]
    2b0c:	b9401fa0 	ldr	w0, [x29, #28]
    2b10:	11000400 	add	w0, w0, #0x1
    2b14:	b9001fa0 	str	w0, [x29, #28]
    2b18:	b9401fa0 	ldr	w0, [x29, #28]
    2b1c:	711ffc1f 	cmp	w0, #0x7ff
    2b20:	54fffe8d 	b.le	2af0 <main+0x58>
    2b24:	b9001fbf 	str	wzr, [x29, #28]
    2b28:	b0000000 	adrp	x0, 3000 <Xil_DCacheFlush+0x60>
    2b2c:	912ec000 	add	x0, x0, #0xbb0
    2b30:	f9400000 	ldr	x0, [x0]
    2b34:	97ffffc0 	bl	2a34 <test_neon_assembly>
    2b38:	17fffffc 	b	2b28 <main+0x90>
    2b3c:	00000000 	.inst	0x00000000 ; undefined

0000000000002b40 <initialise_monitor_handles>:
    2b40:	d65f03c0 	ret
    2b44:	00000000 	.inst	0x00000000 ; undefined

0000000000002b48 <FIQInterrupt>:
    2b48:	b0000000 	adrp	x0, 3000 <Xil_DCacheFlush+0x60>
    2b4c:	912f0000 	add	x0, x0, #0xbc0
    2b50:	a9430001 	ldp	x1, x0, [x0, #48]
    2b54:	d61f0020 	br	x1

0000000000002b58 <IRQInterrupt>:
    2b58:	b0000000 	adrp	x0, 3000 <Xil_DCacheFlush+0x60>
    2b5c:	912f0000 	add	x0, x0, #0xbc0
    2b60:	a9420001 	ldp	x1, x0, [x0, #32]
    2b64:	d61f0020 	br	x1

0000000000002b68 <SynchronousInterrupt>:
    2b68:	b0000000 	adrp	x0, 3000 <Xil_DCacheFlush+0x60>
    2b6c:	912f0000 	add	x0, x0, #0xbc0
    2b70:	a9410001 	ldp	x1, x0, [x0, #16]
    2b74:	d61f0020 	br	x1

0000000000002b78 <SErrorInterrupt>:
    2b78:	b0000000 	adrp	x0, 3000 <Xil_DCacheFlush+0x60>
    2b7c:	912f0000 	add	x0, x0, #0xbc0
    2b80:	a9440001 	ldp	x1, x0, [x0, #64]
    2b84:	d61f0020 	br	x1
    2b88:	0000c080 	.word	0x0000c080
    2b8c:	00000000 	.word	0x00000000
    2b90:	0000c080 	.word	0x0000c080
    2b94:	00000000 	.word	0x00000000
    2b98:	0000c080 	.word	0x0000c080
    2b9c:	00000000 	.word	0x00000000
    2ba0:	0001c2c0 	.word	0x0001c2c0
    2ba4:	00000000 	.word	0x00000000

0000000000002ba8 <_startup>:
    2ba8:	d2800000 	mov	x0, #0x0                   	// #0
    2bac:	5800036a 	ldr	x10, 2c18 <_startup+0x70>
    2bb0:	b940014b 	ldr	w11, [x10]
    2bb4:	d53800a2 	mrs	x2, mpidr_el1
    2bb8:	d3401c42 	ubfx	x2, x2, #0, #8
    2bbc:	52800021 	mov	w1, #0x1                   	// #1
    2bc0:	1ac22022 	lsl	w2, w1, w2
    2bc4:	6a02016b 	ands	w11, w11, w2
    2bc8:	540001a1 	b.ne	2bfc <_startup+0x54>  // b.any
    2bcc:	58fffde1 	ldr	x1, 2b88 <SErrorInterrupt+0x10>
    2bd0:	58fffe02 	ldr	x2, 2b90 <SErrorInterrupt+0x18>
    2bd4:	eb02003f 	cmp	x1, x2
    2bd8:	5400006a 	b.ge	2be4 <_startup+0x3c>  // b.tcont
    2bdc:	f8008420 	str	x0, [x1], #8
    2be0:	17fffffd 	b	2bd4 <_startup+0x2c>
    2be4:	58fffda1 	ldr	x1, 2b98 <SErrorInterrupt+0x20>
    2be8:	58fffdc2 	ldr	x2, 2ba0 <SErrorInterrupt+0x28>
    2bec:	eb02003f 	cmp	x1, x2
    2bf0:	5400006a 	b.ge	2bfc <_startup+0x54>  // b.tcont
    2bf4:	f8008420 	str	x0, [x1], #8
    2bf8:	17fffffd 	b	2bec <_startup+0x44>
    2bfc:	94000227 	bl	3498 <__libc_init_array>
    2c00:	d2800000 	mov	x0, #0x0                   	// #0
    2c04:	d2800001 	mov	x1, #0x0                   	// #0
    2c08:	97ffffa4 	bl	2a98 <main>
    2c0c:	9400020f 	bl	3448 <__libc_fini_array>
    2c10:	94000200 	bl	3410 <exit>
    2c14:	14000000 	b	2c14 <_startup+0x6c>
    2c18:	fd5c0090 	.word	0xfd5c0090
    2c1c:	00000000 	.word	0x00000000

0000000000002c20 <Xil_DCacheDisable>:
    2c20:	d5033f9f 	dsb	sy
    2c24:	d2800000 	mov	x0, #0x0                   	// #0
    2c28:	d53e1000 	mrs	x0, sctlr_el3
    2c2c:	121d7800 	and	w0, w0, #0xfffffffb
    2c30:	d51e1000 	msr	sctlr_el3, x0
    2c34:	d5033f9f 	dsb	sy
    2c38:	52800000 	mov	w0, #0x0                   	// #0
    2c3c:	d51a0000 	msr	csselr_el1, x0
    2c40:	d5033fdf 	isb
    2c44:	d5390000 	mrs	x0, ccsidr_el1
    2c48:	53033008 	ubfx	w8, w0, #3, #10
    2c4c:	530d6c05 	ubfx	w5, w0, #13, #15
    2c50:	11000508 	add	w8, w8, #0x1
    2c54:	110004a5 	add	w5, w5, #0x1
    2c58:	dac01107 	clz	x7, x8
    2c5c:	12001ce7 	and	w7, w7, #0xff
    2c60:	12000804 	and	w4, w0, #0x7
    2c64:	11001084 	add	w4, w4, #0x4
    2c68:	51007ce0 	sub	w0, w7, #0x1f
    2c6c:	52800027 	mov	w7, #0x1                   	// #1
    2c70:	52800006 	mov	w6, #0x0                   	// #0
    2c74:	1ac420e4 	lsl	w4, w7, w4
    2c78:	52800003 	mov	w3, #0x0                   	// #0
    2c7c:	1ac020e7 	lsl	w7, w7, w0
    2c80:	52800001 	mov	w1, #0x0                   	// #0
    2c84:	52800000 	mov	w0, #0x0                   	// #0
    2c88:	2a000062 	orr	w2, w3, w0
    2c8c:	d5087e42 	dc	cisw, x2
    2c90:	11000421 	add	w1, w1, #0x1
    2c94:	0b040000 	add	w0, w0, w4
    2c98:	6b0100bf 	cmp	w5, w1
    2c9c:	54ffff61 	b.ne	2c88 <Xil_DCacheDisable+0x68>  // b.any
    2ca0:	110004c6 	add	w6, w6, #0x1
    2ca4:	0b070063 	add	w3, w3, w7
    2ca8:	6b06011f 	cmp	w8, w6
    2cac:	54fffea1 	b.ne	2c80 <Xil_DCacheDisable+0x60>  // b.any
    2cb0:	d5033f9f 	dsb	sy
    2cb4:	52800040 	mov	w0, #0x2                   	// #2
    2cb8:	d51a0000 	msr	csselr_el1, x0
    2cbc:	d5033fdf 	isb
    2cc0:	d5390000 	mrs	x0, ccsidr_el1
    2cc4:	53033009 	ubfx	w9, w0, #3, #10
    2cc8:	530d6c05 	ubfx	w5, w0, #13, #15
    2ccc:	11000529 	add	w9, w9, #0x1
    2cd0:	110004a5 	add	w5, w5, #0x1
    2cd4:	dac01128 	clz	x8, x9
    2cd8:	12001d08 	and	w8, w8, #0xff
    2cdc:	12000803 	and	w3, w0, #0x7
    2ce0:	11001063 	add	w3, w3, #0x4
    2ce4:	51007d00 	sub	w0, w8, #0x1f
    2ce8:	52800028 	mov	w8, #0x1                   	// #1
    2cec:	52800007 	mov	w7, #0x0                   	// #0
    2cf0:	1ac32103 	lsl	w3, w8, w3
    2cf4:	52800006 	mov	w6, #0x0                   	// #0
    2cf8:	1ac02108 	lsl	w8, w8, w0
    2cfc:	d503201f 	nop
    2d00:	321f00c4 	orr	w4, w6, #0x2
    2d04:	52800001 	mov	w1, #0x0                   	// #0
    2d08:	52800000 	mov	w0, #0x0                   	// #0
    2d0c:	d503201f 	nop
    2d10:	2a000082 	orr	w2, w4, w0
    2d14:	d5087e42 	dc	cisw, x2
    2d18:	11000421 	add	w1, w1, #0x1
    2d1c:	0b030000 	add	w0, w0, w3
    2d20:	6b0100bf 	cmp	w5, w1
    2d24:	54ffff61 	b.ne	2d10 <Xil_DCacheDisable+0xf0>  // b.any
    2d28:	110004e7 	add	w7, w7, #0x1
    2d2c:	0b0800c6 	add	w6, w6, w8
    2d30:	6b07013f 	cmp	w9, w7
    2d34:	54fffe61 	b.ne	2d00 <Xil_DCacheDisable+0xe0>  // b.any
    2d38:	d5033f9f 	dsb	sy
    2d3c:	d50e871f 	tlbi	alle3
    2d40:	d5033f9f 	dsb	sy
    2d44:	d5033fdf 	isb
    2d48:	d65f03c0 	ret
    2d4c:	d503201f 	nop

0000000000002d50 <Xil_DCacheInvalidate>:
    2d50:	d53b422a 	mrs	x10, daif
    2d54:	321a0540 	orr	w0, w10, #0xc0
    2d58:	d51b4220 	msr	daif, x0
    2d5c:	52800000 	mov	w0, #0x0                   	// #0
    2d60:	d51a0000 	msr	csselr_el1, x0
    2d64:	d5033fdf 	isb
    2d68:	d5390000 	mrs	x0, ccsidr_el1
    2d6c:	53033008 	ubfx	w8, w0, #3, #10
    2d70:	530d6c05 	ubfx	w5, w0, #13, #15
    2d74:	11000508 	add	w8, w8, #0x1
    2d78:	110004a5 	add	w5, w5, #0x1
    2d7c:	dac01107 	clz	x7, x8
    2d80:	12001ce7 	and	w7, w7, #0xff
    2d84:	12000804 	and	w4, w0, #0x7
    2d88:	11001084 	add	w4, w4, #0x4
    2d8c:	51007ce0 	sub	w0, w7, #0x1f
    2d90:	52800027 	mov	w7, #0x1                   	// #1
    2d94:	52800006 	mov	w6, #0x0                   	// #0
    2d98:	1ac420e4 	lsl	w4, w7, w4
    2d9c:	52800003 	mov	w3, #0x0                   	// #0
    2da0:	1ac020e7 	lsl	w7, w7, w0
    2da4:	d503201f 	nop
    2da8:	52800001 	mov	w1, #0x0                   	// #0
    2dac:	52800000 	mov	w0, #0x0                   	// #0
    2db0:	2a000062 	orr	w2, w3, w0
    2db4:	d5087642 	dc	isw, x2
    2db8:	11000421 	add	w1, w1, #0x1
    2dbc:	0b040000 	add	w0, w0, w4
    2dc0:	6b0100bf 	cmp	w5, w1
    2dc4:	54ffff61 	b.ne	2db0 <Xil_DCacheInvalidate+0x60>  // b.any
    2dc8:	110004c6 	add	w6, w6, #0x1
    2dcc:	0b070063 	add	w3, w3, w7
    2dd0:	6b06011f 	cmp	w8, w6
    2dd4:	54fffea1 	b.ne	2da8 <Xil_DCacheInvalidate+0x58>  // b.any
    2dd8:	d5033f9f 	dsb	sy
    2ddc:	52800040 	mov	w0, #0x2                   	// #2
    2de0:	d51a0000 	msr	csselr_el1, x0
    2de4:	d5033fdf 	isb
    2de8:	d5390000 	mrs	x0, ccsidr_el1
    2dec:	53033009 	ubfx	w9, w0, #3, #10
    2df0:	530d6c05 	ubfx	w5, w0, #13, #15
    2df4:	11000529 	add	w9, w9, #0x1
    2df8:	110004a5 	add	w5, w5, #0x1
    2dfc:	dac01128 	clz	x8, x9
    2e00:	12001d08 	and	w8, w8, #0xff
    2e04:	12000803 	and	w3, w0, #0x7
    2e08:	11001063 	add	w3, w3, #0x4
    2e0c:	51007d00 	sub	w0, w8, #0x1f
    2e10:	52800028 	mov	w8, #0x1                   	// #1
    2e14:	52800007 	mov	w7, #0x0                   	// #0
    2e18:	1ac32103 	lsl	w3, w8, w3
    2e1c:	52800006 	mov	w6, #0x0                   	// #0
    2e20:	1ac02108 	lsl	w8, w8, w0
    2e24:	d503201f 	nop
    2e28:	321f00c4 	orr	w4, w6, #0x2
    2e2c:	52800001 	mov	w1, #0x0                   	// #0
    2e30:	52800000 	mov	w0, #0x0                   	// #0
    2e34:	d503201f 	nop
    2e38:	2a000082 	orr	w2, w4, w0
    2e3c:	d5087642 	dc	isw, x2
    2e40:	11000421 	add	w1, w1, #0x1
    2e44:	0b030000 	add	w0, w0, w3
    2e48:	6b0100bf 	cmp	w5, w1
    2e4c:	54ffff61 	b.ne	2e38 <Xil_DCacheInvalidate+0xe8>  // b.any
    2e50:	110004e7 	add	w7, w7, #0x1
    2e54:	0b0800c6 	add	w6, w6, w8
    2e58:	6b07013f 	cmp	w9, w7
    2e5c:	54fffe61 	b.ne	2e28 <Xil_DCacheInvalidate+0xd8>  // b.any
    2e60:	d5033f9f 	dsb	sy
    2e64:	d51b422a 	msr	daif, x10
    2e68:	d65f03c0 	ret
    2e6c:	d503201f 	nop

0000000000002e70 <Xil_DCacheEnable>:
    2e70:	d53e100b 	mrs	x11, sctlr_el3
    2e74:	3610004b 	tbz	w11, #2, 2e7c <Xil_DCacheEnable+0xc>
    2e78:	d65f03c0 	ret
    2e7c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    2e80:	910003fd 	mov	x29, sp
    2e84:	97ffffb3 	bl	2d50 <Xil_DCacheInvalidate>
    2e88:	321e016b 	orr	w11, w11, #0x4
    2e8c:	d51e100b 	msr	sctlr_el3, x11
    2e90:	a8c17bfd 	ldp	x29, x30, [sp], #16
    2e94:	d65f03c0 	ret

0000000000002e98 <Xil_DCacheInvalidateLine>:
    2e98:	d53b4221 	mrs	x1, daif
    2e9c:	321a0422 	orr	w2, w1, #0xc0
    2ea0:	d51b4222 	msr	daif, x2
    2ea4:	52800002 	mov	w2, #0x0                   	// #0
    2ea8:	d51a0002 	msr	csselr_el1, x2
    2eac:	927ae400 	and	x0, x0, #0xffffffffffffffc0
    2eb0:	d5087620 	dc	ivac, x0
    2eb4:	d5033f9f 	dsb	sy
    2eb8:	52800042 	mov	w2, #0x2                   	// #2
    2ebc:	d51a0002 	msr	csselr_el1, x2
    2ec0:	d5087620 	dc	ivac, x0
    2ec4:	d5033f9f 	dsb	sy
    2ec8:	d51b4221 	msr	daif, x1
    2ecc:	d65f03c0 	ret

0000000000002ed0 <Xil_DCacheInvalidateRange>:
    2ed0:	d53b4225 	mrs	x5, daif
    2ed4:	321a04a2 	orr	w2, w5, #0xc0
    2ed8:	d51b4222 	msr	daif, x2
    2edc:	b40005e1 	cbz	x1, 2f98 <Xil_DCacheInvalidateRange+0xc8>
    2ee0:	8b010001 	add	x1, x0, x1
    2ee4:	f240141f 	tst	x0, #0x3f
    2ee8:	540001e0 	b.eq	2f24 <Xil_DCacheInvalidateRange+0x54>  // b.none
    2eec:	927ae400 	and	x0, x0, #0xffffffffffffffc0
    2ef0:	d53b4222 	mrs	x2, daif
    2ef4:	321a0443 	orr	w3, w2, #0xc0
    2ef8:	d51b4223 	msr	daif, x3
    2efc:	52800003 	mov	w3, #0x0                   	// #0
    2f00:	d51a0003 	msr	csselr_el1, x3
    2f04:	d50b7e20 	dc	civac, x0
    2f08:	d5033f9f 	dsb	sy
    2f0c:	52800043 	mov	w3, #0x2                   	// #2
    2f10:	d51a0003 	msr	csselr_el1, x3
    2f14:	d50b7e20 	dc	civac, x0
    2f18:	d5033f9f 	dsb	sy
    2f1c:	d51b4222 	msr	daif, x2
    2f20:	91010000 	add	x0, x0, #0x40
    2f24:	f240143f 	tst	x1, #0x3f
    2f28:	540001c0 	b.eq	2f60 <Xil_DCacheInvalidateRange+0x90>  // b.none
    2f2c:	927ae421 	and	x1, x1, #0xffffffffffffffc0
    2f30:	d53b4222 	mrs	x2, daif
    2f34:	321a0443 	orr	w3, w2, #0xc0
    2f38:	d51b4223 	msr	daif, x3
    2f3c:	52800003 	mov	w3, #0x0                   	// #0
    2f40:	d51a0003 	msr	csselr_el1, x3
    2f44:	d50b7e21 	dc	civac, x1
    2f48:	d5033f9f 	dsb	sy
    2f4c:	52800043 	mov	w3, #0x2                   	// #2
    2f50:	d51a0003 	msr	csselr_el1, x3
    2f54:	d50b7e21 	dc	civac, x1
    2f58:	d5033f9f 	dsb	sy
    2f5c:	d51b4222 	msr	daif, x2
    2f60:	52800004 	mov	w4, #0x0                   	// #0
    2f64:	52800043 	mov	w3, #0x2                   	// #2
    2f68:	eb01001f 	cmp	x0, x1
    2f6c:	5400016a 	b.ge	2f98 <Xil_DCacheInvalidateRange+0xc8>  // b.tcont
    2f70:	d51a0004 	msr	csselr_el1, x4
    2f74:	927ae402 	and	x2, x0, #0xffffffffffffffc0
    2f78:	d5087622 	dc	ivac, x2
    2f7c:	d5033f9f 	dsb	sy
    2f80:	d51a0003 	msr	csselr_el1, x3
    2f84:	d5087622 	dc	ivac, x2
    2f88:	d5033f9f 	dsb	sy
    2f8c:	91010000 	add	x0, x0, #0x40
    2f90:	eb01001f 	cmp	x0, x1
    2f94:	54fffeeb 	b.lt	2f70 <Xil_DCacheInvalidateRange+0xa0>  // b.tstop
    2f98:	d51b4225 	msr	daif, x5
    2f9c:	d65f03c0 	ret

0000000000002fa0 <Xil_DCacheFlush>:
    2fa0:	d53b422a 	mrs	x10, daif
    2fa4:	321a0540 	orr	w0, w10, #0xc0
    2fa8:	d51b4220 	msr	daif, x0
    2fac:	52800000 	mov	w0, #0x0                   	// #0
    2fb0:	d51a0000 	msr	csselr_el1, x0
    2fb4:	d5033fdf 	isb
    2fb8:	d5390000 	mrs	x0, ccsidr_el1
    2fbc:	53033008 	ubfx	w8, w0, #3, #10
    2fc0:	530d6c05 	ubfx	w5, w0, #13, #15
    2fc4:	11000508 	add	w8, w8, #0x1
    2fc8:	110004a5 	add	w5, w5, #0x1
    2fcc:	dac01107 	clz	x7, x8
    2fd0:	12001ce7 	and	w7, w7, #0xff
    2fd4:	12000804 	and	w4, w0, #0x7
    2fd8:	11001084 	add	w4, w4, #0x4
    2fdc:	51007ce0 	sub	w0, w7, #0x1f
    2fe0:	52800027 	mov	w7, #0x1                   	// #1
    2fe4:	52800006 	mov	w6, #0x0                   	// #0
    2fe8:	1ac420e4 	lsl	w4, w7, w4
    2fec:	52800003 	mov	w3, #0x0                   	// #0
    2ff0:	1ac020e7 	lsl	w7, w7, w0
    2ff4:	d503201f 	nop
    2ff8:	52800001 	mov	w1, #0x0                   	// #0
    2ffc:	52800000 	mov	w0, #0x0                   	// #0
    3000:	2a000062 	orr	w2, w3, w0
    3004:	d5087e42 	dc	cisw, x2
    3008:	11000421 	add	w1, w1, #0x1
    300c:	0b040000 	add	w0, w0, w4
    3010:	6b0100bf 	cmp	w5, w1
    3014:	54ffff61 	b.ne	3000 <Xil_DCacheFlush+0x60>  // b.any
    3018:	110004c6 	add	w6, w6, #0x1
    301c:	0b070063 	add	w3, w3, w7
    3020:	6b06011f 	cmp	w8, w6
    3024:	54fffea1 	b.ne	2ff8 <Xil_DCacheFlush+0x58>  // b.any
    3028:	d5033f9f 	dsb	sy
    302c:	52800040 	mov	w0, #0x2                   	// #2
    3030:	d51a0000 	msr	csselr_el1, x0
    3034:	d5033fdf 	isb
    3038:	d5390000 	mrs	x0, ccsidr_el1
    303c:	53033009 	ubfx	w9, w0, #3, #10
    3040:	530d6c05 	ubfx	w5, w0, #13, #15
    3044:	11000529 	add	w9, w9, #0x1
    3048:	110004a5 	add	w5, w5, #0x1
    304c:	dac01128 	clz	x8, x9
    3050:	12001d08 	and	w8, w8, #0xff
    3054:	12000803 	and	w3, w0, #0x7
    3058:	11001063 	add	w3, w3, #0x4
    305c:	51007d00 	sub	w0, w8, #0x1f
    3060:	52800028 	mov	w8, #0x1                   	// #1
    3064:	52800007 	mov	w7, #0x0                   	// #0
    3068:	1ac32103 	lsl	w3, w8, w3
    306c:	52800006 	mov	w6, #0x0                   	// #0
    3070:	1ac02108 	lsl	w8, w8, w0
    3074:	d503201f 	nop
    3078:	321f00c4 	orr	w4, w6, #0x2
    307c:	52800001 	mov	w1, #0x0                   	// #0
    3080:	52800000 	mov	w0, #0x0                   	// #0
    3084:	d503201f 	nop
    3088:	2a000082 	orr	w2, w4, w0
    308c:	d5087e42 	dc	cisw, x2
    3090:	11000421 	add	w1, w1, #0x1
    3094:	0b030000 	add	w0, w0, w3
    3098:	6b0100bf 	cmp	w5, w1
    309c:	54ffff61 	b.ne	3088 <Xil_DCacheFlush+0xe8>  // b.any
    30a0:	110004e7 	add	w7, w7, #0x1
    30a4:	0b0800c6 	add	w6, w6, w8
    30a8:	6b07013f 	cmp	w9, w7
    30ac:	54fffe61 	b.ne	3078 <Xil_DCacheFlush+0xd8>  // b.any
    30b0:	d5033f9f 	dsb	sy
    30b4:	d51b422a 	msr	daif, x10
    30b8:	d65f03c0 	ret
    30bc:	d503201f 	nop

00000000000030c0 <Xil_DCacheFlushLine>:
    30c0:	d53b4221 	mrs	x1, daif
    30c4:	321a0422 	orr	w2, w1, #0xc0
    30c8:	d51b4222 	msr	daif, x2
    30cc:	52800002 	mov	w2, #0x0                   	// #0
    30d0:	d51a0002 	msr	csselr_el1, x2
    30d4:	927ae400 	and	x0, x0, #0xffffffffffffffc0
    30d8:	d50b7e20 	dc	civac, x0
    30dc:	d5033f9f 	dsb	sy
    30e0:	52800042 	mov	w2, #0x2                   	// #2
    30e4:	d51a0002 	msr	csselr_el1, x2
    30e8:	d50b7e20 	dc	civac, x0
    30ec:	d5033f9f 	dsb	sy
    30f0:	d51b4221 	msr	daif, x1
    30f4:	d65f03c0 	ret

00000000000030f8 <Xil_DCacheFlushRange>:
    30f8:	d53b4225 	mrs	x5, daif
    30fc:	321a04a2 	orr	w2, w5, #0xc0
    3100:	d51b4222 	msr	daif, x2
    3104:	b40005e1 	cbz	x1, 31c0 <Xil_DCacheFlushRange+0xc8>
    3108:	8b010001 	add	x1, x0, x1
    310c:	f240141f 	tst	x0, #0x3f
    3110:	540001e0 	b.eq	314c <Xil_DCacheFlushRange+0x54>  // b.none
    3114:	927ae400 	and	x0, x0, #0xffffffffffffffc0
    3118:	d53b4222 	mrs	x2, daif
    311c:	321a0443 	orr	w3, w2, #0xc0
    3120:	d51b4223 	msr	daif, x3
    3124:	52800003 	mov	w3, #0x0                   	// #0
    3128:	d51a0003 	msr	csselr_el1, x3
    312c:	d50b7e20 	dc	civac, x0
    3130:	d5033f9f 	dsb	sy
    3134:	52800043 	mov	w3, #0x2                   	// #2
    3138:	d51a0003 	msr	csselr_el1, x3
    313c:	d50b7e20 	dc	civac, x0
    3140:	d5033f9f 	dsb	sy
    3144:	d51b4222 	msr	daif, x2
    3148:	91010000 	add	x0, x0, #0x40
    314c:	f240143f 	tst	x1, #0x3f
    3150:	540001c0 	b.eq	3188 <Xil_DCacheFlushRange+0x90>  // b.none
    3154:	927ae421 	and	x1, x1, #0xffffffffffffffc0
    3158:	d53b4222 	mrs	x2, daif
    315c:	321a0443 	orr	w3, w2, #0xc0
    3160:	d51b4223 	msr	daif, x3
    3164:	52800003 	mov	w3, #0x0                   	// #0
    3168:	d51a0003 	msr	csselr_el1, x3
    316c:	d50b7e21 	dc	civac, x1
    3170:	d5033f9f 	dsb	sy
    3174:	52800043 	mov	w3, #0x2                   	// #2
    3178:	d51a0003 	msr	csselr_el1, x3
    317c:	d50b7e21 	dc	civac, x1
    3180:	d5033f9f 	dsb	sy
    3184:	d51b4222 	msr	daif, x2
    3188:	52800004 	mov	w4, #0x0                   	// #0
    318c:	52800043 	mov	w3, #0x2                   	// #2
    3190:	eb01001f 	cmp	x0, x1
    3194:	5400016a 	b.ge	31c0 <Xil_DCacheFlushRange+0xc8>  // b.tcont
    3198:	d51a0004 	msr	csselr_el1, x4
    319c:	927ae402 	and	x2, x0, #0xffffffffffffffc0
    31a0:	d50b7e22 	dc	civac, x2
    31a4:	d5033f9f 	dsb	sy
    31a8:	d51a0003 	msr	csselr_el1, x3
    31ac:	d50b7e22 	dc	civac, x2
    31b0:	d5033f9f 	dsb	sy
    31b4:	91010000 	add	x0, x0, #0x40
    31b8:	eb01001f 	cmp	x0, x1
    31bc:	54fffeeb 	b.lt	3198 <Xil_DCacheFlushRange+0xa0>  // b.tstop
    31c0:	d51b4225 	msr	daif, x5
    31c4:	d65f03c0 	ret

00000000000031c8 <Xil_ICacheEnable>:
    31c8:	d53e1000 	mrs	x0, sctlr_el3
    31cc:	37600180 	tbnz	w0, #12, 31fc <Xil_ICacheEnable+0x34>
    31d0:	d53b4221 	mrs	x1, daif
    31d4:	321a0422 	orr	w2, w1, #0xc0
    31d8:	d51b4222 	msr	daif, x2
    31dc:	52800022 	mov	w2, #0x1                   	// #1
    31e0:	d51a0002 	msr	csselr_el1, x2
    31e4:	d5033f9f 	dsb	sy
    31e8:	d508751f 	ic	iallu
    31ec:	d5033f9f 	dsb	sy
    31f0:	d51b4221 	msr	daif, x1
    31f4:	32140000 	orr	w0, w0, #0x1000
    31f8:	d51e1000 	msr	sctlr_el3, x0
    31fc:	d65f03c0 	ret

0000000000003200 <Xil_ICacheDisable>:
    3200:	d53e1000 	mrs	x0, sctlr_el3
    3204:	d53b4221 	mrs	x1, daif
    3208:	321a0422 	orr	w2, w1, #0xc0
    320c:	d51b4222 	msr	daif, x2
    3210:	52800022 	mov	w2, #0x1                   	// #1
    3214:	d51a0002 	msr	csselr_el1, x2
    3218:	d5033f9f 	dsb	sy
    321c:	d508751f 	ic	iallu
    3220:	d5033f9f 	dsb	sy
    3224:	d51b4221 	msr	daif, x1
    3228:	12137800 	and	w0, w0, #0xffffefff
    322c:	d51e1000 	msr	sctlr_el3, x0
    3230:	d65f03c0 	ret
    3234:	d503201f 	nop

0000000000003238 <Xil_ICacheInvalidate>:
    3238:	d53b4220 	mrs	x0, daif
    323c:	321a0401 	orr	w1, w0, #0xc0
    3240:	d51b4221 	msr	daif, x1
    3244:	52800021 	mov	w1, #0x1                   	// #1
    3248:	d51a0001 	msr	csselr_el1, x1
    324c:	d5033f9f 	dsb	sy
    3250:	d508751f 	ic	iallu
    3254:	d5033f9f 	dsb	sy
    3258:	d51b4220 	msr	daif, x0
    325c:	d65f03c0 	ret

0000000000003260 <Xil_ICacheInvalidateLine>:
    3260:	d53b4221 	mrs	x1, daif
    3264:	321a0422 	orr	w2, w1, #0xc0
    3268:	d51b4222 	msr	daif, x2
    326c:	52800022 	mov	w2, #0x1                   	// #1
    3270:	d51a0002 	msr	csselr_el1, x2
    3274:	927ae400 	and	x0, x0, #0xffffffffffffffc0
    3278:	d50b7520 	ic	ivau, x0
    327c:	d5033f9f 	dsb	sy
    3280:	d51b4221 	msr	daif, x1
    3284:	d65f03c0 	ret

0000000000003288 <Xil_ICacheInvalidateRange>:
    3288:	d53b4223 	mrs	x3, daif
    328c:	321a0462 	orr	w2, w3, #0xc0
    3290:	d51b4222 	msr	daif, x2
    3294:	b40001a1 	cbz	x1, 32c8 <Xil_ICacheInvalidateRange+0x40>
    3298:	8b010001 	add	x1, x0, x1
    329c:	52800022 	mov	w2, #0x1                   	// #1
    32a0:	927ae400 	and	x0, x0, #0xffffffffffffffc0
    32a4:	d51a0002 	msr	csselr_el1, x2
    32a8:	eb00003f 	cmp	x1, x0
    32ac:	540000ed 	b.le	32c8 <Xil_ICacheInvalidateRange+0x40>
    32b0:	aa0003e2 	mov	x2, x0
    32b4:	d503201f 	nop
    32b8:	d50b7520 	ic	ivau, x0
    32bc:	91010042 	add	x2, x2, #0x40
    32c0:	eb02003f 	cmp	x1, x2
    32c4:	54ffffac 	b.gt	32b8 <Xil_ICacheInvalidateRange+0x30>
    32c8:	d5033f9f 	dsb	sy
    32cc:	d51b4223 	msr	daif, x3
    32d0:	d65f03c0 	ret
    32d4:	d503201f 	nop

00000000000032d8 <Xil_ConfigureL1Prefetch>:
    32d8:	12001c00 	and	w0, w0, #0xff
    32dc:	d539f201 	mrs	x1, s3_1_c15_c2_0
    32e0:	9270f021 	and	x1, x1, #0xffffffffffff1fff
    32e4:	d3731c00 	ubfiz	x0, x0, #13, #8
    32e8:	aa010000 	orr	x0, x0, x1
    32ec:	d519f200 	msr	s3_1_c15_c2_0, x0
    32f0:	d65f03c0 	ret
    32f4:	00000000 	.inst	0x00000000 ; undefined

00000000000032f8 <Xil_ExceptionNullHandler>:
    32f8:	14000000 	b	32f8 <Xil_ExceptionNullHandler>
    32fc:	d503201f 	nop

0000000000003300 <Xil_SyncAbortHandler>:
    3300:	14000000 	b	3300 <Xil_SyncAbortHandler>
    3304:	d503201f 	nop

0000000000003308 <Xil_SErrorAbortHandler>:
    3308:	14000000 	b	3308 <Xil_SErrorAbortHandler>
    330c:	d503201f 	nop

0000000000003310 <Xil_ExceptionInit>:
    3310:	d65f03c0 	ret
    3314:	d503201f 	nop

0000000000003318 <Xil_ExceptionRegisterHandler>:
    3318:	d37c7c00 	ubfiz	x0, x0, #4, #32
    331c:	90000003 	adrp	x3, 3000 <Xil_DCacheFlush+0x60>
    3320:	912f0063 	add	x3, x3, #0xbc0
    3324:	8b000064 	add	x4, x3, x0
    3328:	f8206861 	str	x1, [x3, x0]
    332c:	f9000482 	str	x2, [x4, #8]
    3330:	d65f03c0 	ret
    3334:	d503201f 	nop

0000000000003338 <Xil_GetExceptionRegisterHandler>:
    3338:	d37c7c00 	ubfiz	x0, x0, #4, #32
    333c:	90000003 	adrp	x3, 3000 <Xil_DCacheFlush+0x60>
    3340:	912f0063 	add	x3, x3, #0xbc0
    3344:	8b000064 	add	x4, x3, x0
    3348:	f8606860 	ldr	x0, [x3, x0]
    334c:	f9000020 	str	x0, [x1]
    3350:	f9400480 	ldr	x0, [x4, #8]
    3354:	f9000040 	str	x0, [x2]
    3358:	d65f03c0 	ret
    335c:	d503201f 	nop

0000000000003360 <Xil_ExceptionRemoveHandler>:
    3360:	d37c7c00 	ubfiz	x0, x0, #4, #32
    3364:	90000001 	adrp	x1, 3000 <Xil_DCacheFlush+0x60>
    3368:	912f0021 	add	x1, x1, #0xbc0
    336c:	90000002 	adrp	x2, 3000 <Xil_DCacheFlush+0x60>
    3370:	8b000023 	add	x3, x1, x0
    3374:	910be042 	add	x2, x2, #0x2f8
    3378:	f8206822 	str	x2, [x1, x0]
    337c:	f900047f 	str	xzr, [x3, #8]
    3380:	d65f03c0 	ret
    3384:	00000000 	.inst	0x00000000 ; undefined

0000000000003388 <XTime_StartTimer>:
    3388:	d2bfe4c0 	mov	x0, #0xff260000            	// #4280680448
    338c:	b9400001 	ldr	w1, [x0]
    3390:	37000101 	tbnz	w1, #0, 33b0 <XTime_StartTimer+0x28>
    3394:	d2800402 	mov	x2, #0x20                  	// #32
    3398:	5293e103 	mov	w3, #0x9f08                	// #40712
    339c:	f2bfe4c2 	movk	x2, #0xff26, lsl #16
    33a0:	72a03f83 	movk	w3, #0x1fc, lsl #16
    33a4:	52800021 	mov	w1, #0x1                   	// #1
    33a8:	b9000043 	str	w3, [x2]
    33ac:	b9000001 	str	w1, [x0]
    33b0:	d65f03c0 	ret
    33b4:	d503201f 	nop

00000000000033b8 <XTime_SetTime>:
    33b8:	d65f03c0 	ret
    33bc:	d503201f 	nop

00000000000033c0 <XTime_GetTime>:
    33c0:	d2bfe4c1 	mov	x1, #0xff260000            	// #4280680448
    33c4:	b9400022 	ldr	w2, [x1]
    33c8:	37000102 	tbnz	w2, #0, 33e8 <XTime_GetTime+0x28>
    33cc:	d2800403 	mov	x3, #0x20                  	// #32
    33d0:	5293e104 	mov	w4, #0x9f08                	// #40712
    33d4:	f2bfe4c3 	movk	x3, #0xff26, lsl #16
    33d8:	72a03f84 	movk	w4, #0x1fc, lsl #16
    33dc:	52800022 	mov	w2, #0x1                   	// #1
    33e0:	b9000064 	str	w4, [x3]
    33e4:	b9000022 	str	w2, [x1]
    33e8:	d53be021 	mrs	x1, cntpct_el0
    33ec:	f9000001 	str	x1, [x0]
    33f0:	d65f03c0 	ret
    33f4:	00000000 	.inst	0x00000000 ; undefined

00000000000033f8 <atexit>:
    33f8:	aa0003e1 	mov	x1, x0
    33fc:	d2800003 	mov	x3, #0x0                   	// #0
    3400:	d2800002 	mov	x2, #0x0                   	// #0
    3404:	52800000 	mov	w0, #0x0                   	// #0
    3408:	140000c4 	b	3718 <__register_exitproc>
    340c:	00000000 	.inst	0x00000000 ; undefined

0000000000003410 <exit>:
    3410:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    3414:	d2800001 	mov	x1, #0x0                   	// #0
    3418:	910003fd 	mov	x29, sp
    341c:	f9000bf3 	str	x19, [sp, #16]
    3420:	2a0003f3 	mov	w19, w0
    3424:	940000fb 	bl	3810 <__call_exitprocs>
    3428:	90000000 	adrp	x0, 3000 <Xil_DCacheFlush+0x60>
    342c:	f9452000 	ldr	x0, [x0, #2624]
    3430:	f9402c01 	ldr	x1, [x0, #88]
    3434:	b4000041 	cbz	x1, 343c <exit+0x2c>
    3438:	d63f0020 	blr	x1
    343c:	2a1303e0 	mov	w0, w19
    3440:	9400014a 	bl	3968 <_exit>
    3444:	00000000 	.inst	0x00000000 ; undefined

0000000000003448 <__libc_fini_array>:
    3448:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    344c:	910003fd 	mov	x29, sp
    3450:	a90153f3 	stp	x19, x20, [sp, #16]
    3454:	580001b3 	ldr	x19, 3488 <__libc_fini_array+0x40>
    3458:	580001d4 	ldr	x20, 3490 <__libc_fini_array+0x48>
    345c:	cb140273 	sub	x19, x19, x20
    3460:	9343fe73 	asr	x19, x19, #3
    3464:	b40000b3 	cbz	x19, 3478 <__libc_fini_array+0x30>
    3468:	d1000673 	sub	x19, x19, #0x1
    346c:	f8737a80 	ldr	x0, [x20, x19, lsl #3]
    3470:	d63f0000 	blr	x0
    3474:	b5ffffb3 	cbnz	x19, 3468 <__libc_fini_array+0x20>
    3478:	a94153f3 	ldp	x19, x20, [sp, #16]
    347c:	a8c27bfd 	ldp	x29, x30, [sp], #32
    3480:	14000150 	b	39c0 <_fini>
    3484:	d503201f 	nop
    3488:	0000c048 	.word	0x0000c048
    348c:	00000000 	.word	0x00000000
    3490:	0000c040 	.word	0x0000c040
    3494:	00000000 	.word	0x00000000

0000000000003498 <__libc_init_array>:
    3498:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    349c:	910003fd 	mov	x29, sp
    34a0:	a90153f3 	stp	x19, x20, [sp, #16]
    34a4:	f90013f5 	str	x21, [sp, #32]
    34a8:	58000394 	ldr	x20, 3518 <__libc_init_array+0x80>
    34ac:	580003b5 	ldr	x21, 3520 <__libc_init_array+0x88>
    34b0:	cb150294 	sub	x20, x20, x21
    34b4:	9343fe94 	asr	x20, x20, #3
    34b8:	b40000f4 	cbz	x20, 34d4 <__libc_init_array+0x3c>
    34bc:	d2800013 	mov	x19, #0x0                   	// #0
    34c0:	f8737aa0 	ldr	x0, [x21, x19, lsl #3]
    34c4:	91000673 	add	x19, x19, #0x1
    34c8:	d63f0000 	blr	x0
    34cc:	eb13029f 	cmp	x20, x19
    34d0:	54ffff81 	b.ne	34c0 <__libc_init_array+0x28>  // b.any
    34d4:	9400012b 	bl	3980 <_init>
    34d8:	58000294 	ldr	x20, 3528 <__libc_init_array+0x90>
    34dc:	580002b5 	ldr	x21, 3530 <__libc_init_array+0x98>
    34e0:	cb150294 	sub	x20, x20, x21
    34e4:	9343fe94 	asr	x20, x20, #3
    34e8:	b40000f4 	cbz	x20, 3504 <__libc_init_array+0x6c>
    34ec:	d2800013 	mov	x19, #0x0                   	// #0
    34f0:	f8737aa0 	ldr	x0, [x21, x19, lsl #3]
    34f4:	91000673 	add	x19, x19, #0x1
    34f8:	d63f0000 	blr	x0
    34fc:	eb13029f 	cmp	x20, x19
    3500:	54ffff81 	b.ne	34f0 <__libc_init_array+0x58>  // b.any
    3504:	a94153f3 	ldp	x19, x20, [sp, #16]
    3508:	f94013f5 	ldr	x21, [sp, #32]
    350c:	a8c37bfd 	ldp	x29, x30, [sp], #48
    3510:	d65f03c0 	ret
    3514:	d503201f 	nop
    3518:	0000c000 	.word	0x0000c000
    351c:	00000000 	.word	0x00000000
    3520:	0000c000 	.word	0x0000c000
    3524:	00000000 	.word	0x00000000
    3528:	0000c008 	.word	0x0000c008
    352c:	00000000 	.word	0x00000000
    3530:	0000c000 	.word	0x0000c000
	...

0000000000003540 <memset>:
    3540:	4e010c20 	dup	v0.16b, w1
    3544:	8b020004 	add	x4, x0, x2
    3548:	f101805f 	cmp	x2, #0x60
    354c:	540003c8 	b.hi	35c4 <memset+0x84>  // b.pmore
    3550:	f100405f 	cmp	x2, #0x10
    3554:	54000202 	b.cs	3594 <memset+0x54>  // b.hs, b.nlast
    3558:	4e083c01 	mov	x1, v0.d[0]
    355c:	361800a2 	tbz	w2, #3, 3570 <memset+0x30>
    3560:	f9000001 	str	x1, [x0]
    3564:	f81f8081 	stur	x1, [x4, #-8]
    3568:	d65f03c0 	ret
    356c:	d503201f 	nop
    3570:	36100082 	tbz	w2, #2, 3580 <memset+0x40>
    3574:	b9000001 	str	w1, [x0]
    3578:	b81fc081 	stur	w1, [x4, #-4]
    357c:	d65f03c0 	ret
    3580:	b4000082 	cbz	x2, 3590 <memset+0x50>
    3584:	39000001 	strb	w1, [x0]
    3588:	36080042 	tbz	w2, #1, 3590 <memset+0x50>
    358c:	781fe081 	sturh	w1, [x4, #-2]
    3590:	d65f03c0 	ret
    3594:	3d800000 	str	q0, [x0]
    3598:	373000c2 	tbnz	w2, #6, 35b0 <memset+0x70>
    359c:	3c9f0080 	stur	q0, [x4, #-16]
    35a0:	36280062 	tbz	w2, #5, 35ac <memset+0x6c>
    35a4:	3d800400 	str	q0, [x0, #16]
    35a8:	3c9e0080 	stur	q0, [x4, #-32]
    35ac:	d65f03c0 	ret
    35b0:	3d800400 	str	q0, [x0, #16]
    35b4:	ad010000 	stp	q0, q0, [x0, #32]
    35b8:	ad3f0080 	stp	q0, q0, [x4, #-32]
    35bc:	d65f03c0 	ret
    35c0:	d503201f 	nop
    35c4:	12001c21 	and	w1, w1, #0xff
    35c8:	927cec03 	and	x3, x0, #0xfffffffffffffff0
    35cc:	3d800000 	str	q0, [x0]
    35d0:	f104005f 	cmp	x2, #0x100
    35d4:	7a402820 	ccmp	w1, #0x0, #0x0, cs  // cs = hs, nlast
    35d8:	54000180 	b.eq	3608 <memset+0xc8>  // b.none
    35dc:	cb030082 	sub	x2, x4, x3
    35e0:	91004063 	add	x3, x3, #0x10
    35e4:	d1014042 	sub	x2, x2, #0x50
    35e8:	ac820060 	stp	q0, q0, [x3], #64
    35ec:	ad3f0060 	stp	q0, q0, [x3, #-32]
    35f0:	f1010042 	subs	x2, x2, #0x40
    35f4:	54ffffa8 	b.hi	35e8 <memset+0xa8>  // b.pmore
    35f8:	ad3e0080 	stp	q0, q0, [x4, #-64]
    35fc:	ad3f0080 	stp	q0, q0, [x4, #-32]
    3600:	d65f03c0 	ret
    3604:	d503201f 	nop
    3608:	d53b00e5 	mrs	x5, dczid_el0
    360c:	3727fe85 	tbnz	w5, #4, 35dc <memset+0x9c>
    3610:	12000ca5 	and	w5, w5, #0xf
    3614:	710010bf 	cmp	w5, #0x4
    3618:	54000281 	b.ne	3668 <memset+0x128>  // b.any
    361c:	3d800460 	str	q0, [x3, #16]
    3620:	ad010060 	stp	q0, q0, [x3, #32]
    3624:	927ae463 	and	x3, x3, #0xffffffffffffffc0
    3628:	ad020060 	stp	q0, q0, [x3, #64]
    362c:	ad030060 	stp	q0, q0, [x3, #96]
    3630:	cb030082 	sub	x2, x4, x3
    3634:	d1040042 	sub	x2, x2, #0x100
    3638:	91020063 	add	x3, x3, #0x80
    363c:	d503201f 	nop
    3640:	d50b7423 	dc	zva, x3
    3644:	91010063 	add	x3, x3, #0x40
    3648:	f1010042 	subs	x2, x2, #0x40
    364c:	54ffffa8 	b.hi	3640 <memset+0x100>  // b.pmore
    3650:	ad000060 	stp	q0, q0, [x3]
    3654:	ad010060 	stp	q0, q0, [x3, #32]
    3658:	ad3e0080 	stp	q0, q0, [x4, #-64]
    365c:	ad3f0080 	stp	q0, q0, [x4, #-32]
    3660:	d65f03c0 	ret
    3664:	d503201f 	nop
    3668:	710014bf 	cmp	w5, #0x5
    366c:	54000241 	b.ne	36b4 <memset+0x174>  // b.any
    3670:	3d800460 	str	q0, [x3, #16]
    3674:	ad010060 	stp	q0, q0, [x3, #32]
    3678:	ad020060 	stp	q0, q0, [x3, #64]
    367c:	ad030060 	stp	q0, q0, [x3, #96]
    3680:	9279e063 	and	x3, x3, #0xffffffffffffff80
    3684:	cb030082 	sub	x2, x4, x3
    3688:	d1040042 	sub	x2, x2, #0x100
    368c:	91020063 	add	x3, x3, #0x80
    3690:	d50b7423 	dc	zva, x3
    3694:	91020063 	add	x3, x3, #0x80
    3698:	f1020042 	subs	x2, x2, #0x80
    369c:	54ffffa8 	b.hi	3690 <memset+0x150>  // b.pmore
    36a0:	ad3c0080 	stp	q0, q0, [x4, #-128]
    36a4:	ad3d0080 	stp	q0, q0, [x4, #-96]
    36a8:	ad3e0080 	stp	q0, q0, [x4, #-64]
    36ac:	ad3f0080 	stp	q0, q0, [x4, #-32]
    36b0:	d65f03c0 	ret
    36b4:	52800086 	mov	w6, #0x4                   	// #4
    36b8:	1ac520c7 	lsl	w7, w6, w5
    36bc:	910100e5 	add	x5, x7, #0x40
    36c0:	eb05005f 	cmp	x2, x5
    36c4:	54fff8c3 	b.cc	35dc <memset+0x9c>  // b.lo, b.ul, b.last
    36c8:	d10004e6 	sub	x6, x7, #0x1
    36cc:	8b070065 	add	x5, x3, x7
    36d0:	91004063 	add	x3, x3, #0x10
    36d4:	eb0300a2 	subs	x2, x5, x3
    36d8:	8a2600a5 	bic	x5, x5, x6
    36dc:	540000a0 	b.eq	36f0 <memset+0x1b0>  // b.none
    36e0:	ac820060 	stp	q0, q0, [x3], #64
    36e4:	ad3f0060 	stp	q0, q0, [x3, #-32]
    36e8:	f1010042 	subs	x2, x2, #0x40
    36ec:	54ffffa8 	b.hi	36e0 <memset+0x1a0>  // b.pmore
    36f0:	aa0503e3 	mov	x3, x5
    36f4:	cb050082 	sub	x2, x4, x5
    36f8:	eb070042 	subs	x2, x2, x7
    36fc:	540000a3 	b.cc	3710 <memset+0x1d0>  // b.lo, b.ul, b.last
    3700:	d50b7423 	dc	zva, x3
    3704:	8b070063 	add	x3, x3, x7
    3708:	eb070042 	subs	x2, x2, x7
    370c:	54ffffa2 	b.cs	3700 <memset+0x1c0>  // b.hs, b.nlast
    3710:	8b070042 	add	x2, x2, x7
    3714:	17ffffb7 	b	35f0 <memset+0xb0>

0000000000003718 <__register_exitproc>:
    3718:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    371c:	90000004 	adrp	x4, 3000 <Xil_DCacheFlush+0x60>
    3720:	910003fd 	mov	x29, sp
    3724:	a90153f3 	stp	x19, x20, [sp, #16]
    3728:	2a0003f4 	mov	w20, w0
    372c:	f9452093 	ldr	x19, [x4, #2624]
    3730:	a9025bf5 	stp	x21, x22, [sp, #32]
    3734:	aa0103f5 	mov	x21, x1
    3738:	aa0303f6 	mov	x22, x3
    373c:	f940fe64 	ldr	x4, [x19, #504]
    3740:	f9001bf7 	str	x23, [sp, #48]
    3744:	aa0203f7 	mov	x23, x2
    3748:	b4000564 	cbz	x4, 37f4 <__register_exitproc+0xdc>
    374c:	b9400880 	ldr	w0, [x4, #8]
    3750:	11000401 	add	w1, w0, #0x1
    3754:	71007c1f 	cmp	w0, #0x1f
    3758:	540001cd 	b.le	3790 <__register_exitproc+0x78>
    375c:	58000560 	ldr	x0, 3808 <__register_exitproc+0xf0>
    3760:	b4000500 	cbz	x0, 3800 <__register_exitproc+0xe8>
    3764:	d2806300 	mov	x0, #0x318                 	// #792
    3768:	d503201f 	nop
    376c:	aa0003e4 	mov	x4, x0
    3770:	b4000480 	cbz	x0, 3800 <__register_exitproc+0xe8>
    3774:	f940fe60 	ldr	x0, [x19, #504]
    3778:	52800021 	mov	w1, #0x1                   	// #1
    377c:	f9000080 	str	x0, [x4]
    3780:	b900089f 	str	wzr, [x4, #8]
    3784:	52800000 	mov	w0, #0x0                   	// #0
    3788:	f900fe64 	str	x4, [x19, #504]
    378c:	f901889f 	str	xzr, [x4, #784]
    3790:	93407c05 	sxtw	x5, w0
    3794:	35000154 	cbnz	w20, 37bc <__register_exitproc+0xa4>
    3798:	910008a5 	add	x5, x5, #0x2
    379c:	b9000881 	str	w1, [x4, #8]
    37a0:	52800000 	mov	w0, #0x0                   	// #0
    37a4:	f8257895 	str	x21, [x4, x5, lsl #3]
    37a8:	a94153f3 	ldp	x19, x20, [sp, #16]
    37ac:	a9425bf5 	ldp	x21, x22, [sp, #32]
    37b0:	f9401bf7 	ldr	x23, [sp, #48]
    37b4:	a8c47bfd 	ldp	x29, x30, [sp], #64
    37b8:	d65f03c0 	ret
    37bc:	8b050c83 	add	x3, x4, x5, lsl #3
    37c0:	52800026 	mov	w6, #0x1                   	// #1
    37c4:	1ac020c0 	lsl	w0, w6, w0
    37c8:	71000a9f 	cmp	w20, #0x2
    37cc:	f9008877 	str	x23, [x3, #272]
    37d0:	b9431082 	ldr	w2, [x4, #784]
    37d4:	2a000042 	orr	w2, w2, w0
    37d8:	b9031082 	str	w2, [x4, #784]
    37dc:	f9010876 	str	x22, [x3, #528]
    37e0:	54fffdc1 	b.ne	3798 <__register_exitproc+0x80>  // b.any
    37e4:	b9431482 	ldr	w2, [x4, #788]
    37e8:	2a000040 	orr	w0, w2, w0
    37ec:	b9031480 	str	w0, [x4, #788]
    37f0:	17ffffea 	b	3798 <__register_exitproc+0x80>
    37f4:	91080264 	add	x4, x19, #0x200
    37f8:	f900fe64 	str	x4, [x19, #504]
    37fc:	17ffffd4 	b	374c <__register_exitproc+0x34>
    3800:	12800000 	mov	w0, #0xffffffff            	// #-1
    3804:	17ffffe9 	b	37a8 <__register_exitproc+0x90>
	...

0000000000003810 <__call_exitprocs>:
    3810:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
    3814:	90000002 	adrp	x2, 3000 <Xil_DCacheFlush+0x60>
    3818:	910003fd 	mov	x29, sp
    381c:	a90363f7 	stp	x23, x24, [sp, #48]
    3820:	f9452057 	ldr	x23, [x2, #2624]
    3824:	a9046bf9 	stp	x25, x26, [sp, #64]
    3828:	580009d9 	ldr	x25, 3960 <__call_exitprocs+0x150>
    382c:	9107e2f8 	add	x24, x23, #0x1f8
    3830:	a90573fb 	stp	x27, x28, [sp, #80]
    3834:	aa0103fb 	mov	x27, x1
    3838:	a90153f3 	stp	x19, x20, [sp, #16]
    383c:	a9025bf5 	stp	x21, x22, [sp, #32]
    3840:	52800036 	mov	w22, #0x1                   	// #1
    3844:	b9006fa0 	str	w0, [x29, #108]
    3848:	f940fef5 	ldr	x21, [x23, #504]
    384c:	b4000335 	cbz	x21, 38b0 <__call_exitprocs+0xa0>
    3850:	aa1803fa 	mov	x26, x24
    3854:	b9400ab3 	ldr	w19, [x21, #8]
    3858:	71000673 	subs	w19, w19, #0x1
    385c:	54000164 	b.mi	3888 <__call_exitprocs+0x78>  // b.first
    3860:	8b33ceb4 	add	x20, x21, w19, sxtw #3
    3864:	d503201f 	nop
    3868:	b400033b 	cbz	x27, 38cc <__call_exitprocs+0xbc>
    386c:	f9410a80 	ldr	x0, [x20, #528]
    3870:	eb1b001f 	cmp	x0, x27
    3874:	540002c0 	b.eq	38cc <__call_exitprocs+0xbc>  // b.none
    3878:	51000673 	sub	w19, w19, #0x1
    387c:	d1002294 	sub	x20, x20, #0x8
    3880:	3100067f 	cmn	w19, #0x1
    3884:	54ffff21 	b.ne	3868 <__call_exitprocs+0x58>  // b.any
    3888:	b4000159 	cbz	x25, 38b0 <__call_exitprocs+0xa0>
    388c:	b9400aa1 	ldr	w1, [x21, #8]
    3890:	f94002a0 	ldr	x0, [x21]
    3894:	350005a1 	cbnz	w1, 3948 <__call_exitprocs+0x138>
    3898:	b4000580 	cbz	x0, 3948 <__call_exitprocs+0x138>
    389c:	f9000340 	str	x0, [x26]
    38a0:	aa1503e0 	mov	x0, x21
    38a4:	d503201f 	nop
    38a8:	f9400355 	ldr	x21, [x26]
    38ac:	b5fffd55 	cbnz	x21, 3854 <__call_exitprocs+0x44>
    38b0:	a94153f3 	ldp	x19, x20, [sp, #16]
    38b4:	a9425bf5 	ldp	x21, x22, [sp, #32]
    38b8:	a94363f7 	ldp	x23, x24, [sp, #48]
    38bc:	a9446bf9 	ldp	x25, x26, [sp, #64]
    38c0:	a94573fb 	ldp	x27, x28, [sp, #80]
    38c4:	a8c77bfd 	ldp	x29, x30, [sp], #112
    38c8:	d65f03c0 	ret
    38cc:	b9400aa0 	ldr	w0, [x21, #8]
    38d0:	f9400a82 	ldr	x2, [x20, #16]
    38d4:	51000400 	sub	w0, w0, #0x1
    38d8:	6b13001f 	cmp	w0, w19
    38dc:	54000220 	b.eq	3920 <__call_exitprocs+0x110>  // b.none
    38e0:	f9000a9f 	str	xzr, [x20, #16]
    38e4:	b4fffca2 	cbz	x2, 3878 <__call_exitprocs+0x68>
    38e8:	910442a0 	add	x0, x21, #0x110
    38ec:	b9420001 	ldr	w1, [x0, #512]
    38f0:	1ad322c3 	lsl	w3, w22, w19
    38f4:	b9400abc 	ldr	w28, [x21, #8]
    38f8:	6a01007f 	tst	w3, w1
    38fc:	54000161 	b.ne	3928 <__call_exitprocs+0x118>  // b.any
    3900:	d63f0040 	blr	x2
    3904:	b9400aa0 	ldr	w0, [x21, #8]
    3908:	6b1c001f 	cmp	w0, w28
    390c:	54fff9e1 	b.ne	3848 <__call_exitprocs+0x38>  // b.any
    3910:	f9400340 	ldr	x0, [x26]
    3914:	eb15001f 	cmp	x0, x21
    3918:	54fffb00 	b.eq	3878 <__call_exitprocs+0x68>  // b.none
    391c:	17ffffcb 	b	3848 <__call_exitprocs+0x38>
    3920:	b9000ab3 	str	w19, [x21, #8]
    3924:	17fffff0 	b	38e4 <__call_exitprocs+0xd4>
    3928:	b9420401 	ldr	w1, [x0, #516]
    392c:	f9408a80 	ldr	x0, [x20, #272]
    3930:	6a01007f 	tst	w3, w1
    3934:	54000121 	b.ne	3958 <__call_exitprocs+0x148>  // b.any
    3938:	aa0003e1 	mov	x1, x0
    393c:	b9406fa0 	ldr	w0, [x29, #108]
    3940:	d63f0040 	blr	x2
    3944:	17fffff0 	b	3904 <__call_exitprocs+0xf4>
    3948:	aa1503fa 	mov	x26, x21
    394c:	aa0003f5 	mov	x21, x0
    3950:	b5fff835 	cbnz	x21, 3854 <__call_exitprocs+0x44>
    3954:	17ffffd7 	b	38b0 <__call_exitprocs+0xa0>
    3958:	d63f0040 	blr	x2
    395c:	17ffffea 	b	3904 <__call_exitprocs+0xf4>
	...

0000000000003968 <_exit>:
    3968:	14000000 	b	3968 <_exit>

Disassembly of section .init:

0000000000003980 <_init>:
    3980:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    3984:	a9bf73fb 	stp	x27, x28, [sp, #-16]!
    3988:	a9bf6bf9 	stp	x25, x26, [sp, #-16]!
    398c:	a9bf63f7 	stp	x23, x24, [sp, #-16]!
    3990:	a9bf5bf5 	stp	x21, x22, [sp, #-16]!
    3994:	a9bf53f3 	stp	x19, x20, [sp, #-16]!
    3998:	a8c153f3 	ldp	x19, x20, [sp], #16
    399c:	a8c15bf5 	ldp	x21, x22, [sp], #16
    39a0:	a8c163f7 	ldp	x23, x24, [sp], #16
    39a4:	a8c16bf9 	ldp	x25, x26, [sp], #16
    39a8:	a8c173fb 	ldp	x27, x28, [sp], #16
    39ac:	a8c17bfd 	ldp	x29, x30, [sp], #16
    39b0:	d65f03c0 	ret

Disassembly of section .fini:

00000000000039c0 <_fini>:
    39c0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    39c4:	a9bf73fb 	stp	x27, x28, [sp, #-16]!
    39c8:	a9bf6bf9 	stp	x25, x26, [sp, #-16]!
    39cc:	a9bf63f7 	stp	x23, x24, [sp, #-16]!
    39d0:	a9bf5bf5 	stp	x21, x22, [sp, #-16]!
    39d4:	a9bf53f3 	stp	x19, x20, [sp, #-16]!
    39d8:	a8c153f3 	ldp	x19, x20, [sp], #16
    39dc:	a8c15bf5 	ldp	x21, x22, [sp], #16
    39e0:	a8c163f7 	ldp	x23, x24, [sp], #16
    39e4:	a8c16bf9 	ldp	x25, x26, [sp], #16
    39e8:	a8c173fb 	ldp	x27, x28, [sp], #16
    39ec:	a8c17bfd 	ldp	x29, x30, [sp], #16
    39f0:	d65f03c0 	ret