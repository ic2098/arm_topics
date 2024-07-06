
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
     454:	9400091d 	.word	0x9400091d

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
     4d8:	940008f8 	.word	0x940008f8
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
     5b0:	940008be 	.word	0x940008be
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
     610:	940008b2 	.word	0x940008b2
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
     ab0:	14000796 	b	2908 <_startup>

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
     b58:	0002a340 	.word	0x0002a340
     b5c:	00000000 	.word	0x00000000
     b60:	00000918 	.word	0x00000918
     b64:	00000000 	.word	0x00000000
     b68:	080ca000 	.word	0x080ca000
     b6c:	00000000 	.word	0x00000000
     b70:	01fc9f08 	.word	0x01fc9f08
     b74:	00000000 	.word	0x00000000
     b78:	0000f000 	.word	0x0000f000
     b7c:	00000000 	.word	0x00000000
     b80:	0400ff44 	.word	0x0400ff44
     b84:	000000bb 	.word	0x000000bb
     b88:	80823518 	.word	0x80823518
     b8c:	00000000 	.word	0x00000000

0000000000000b90 <deregister_tm_clones>:
     b90:	d0000060 	adrp	x0, e000 <__malloc_av_+0xb8>
     b94:	911dc000 	add	x0, x0, #0x770
     b98:	d0000061 	adrp	x1, e000 <__malloc_av_+0xb8>
     b9c:	911dc021 	add	x1, x1, #0x770
     ba0:	eb00003f 	cmp	x1, x0
     ba4:	54000080 	b.eq	bb4 <deregister_tm_clones+0x24>  // b.none
     ba8:	58000081 	ldr	x1, bb8 <deregister_tm_clones+0x28>
     bac:	b4000041 	cbz	x1, bb4 <deregister_tm_clones+0x24>
     bb0:	d61f0020 	br	x1
     bb4:	d65f03c0 	ret
	...

0000000000000bc0 <register_tm_clones>:
     bc0:	d0000060 	adrp	x0, e000 <__malloc_av_+0xb8>
     bc4:	911dc000 	add	x0, x0, #0x770
     bc8:	d0000061 	adrp	x1, e000 <__malloc_av_+0xb8>
     bcc:	911dc021 	add	x1, x1, #0x770
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
     c0c:	d00000b3 	adrp	x19, 16000 <__exidx_end>
     c10:	39420260 	ldrb	w0, [x19, #128]
     c14:	35000120 	cbnz	w0, c38 <__do_global_dtors_aux+0x38>
     c18:	97ffffde 	bl	b90 <deregister_tm_clones>
     c1c:	58000160 	ldr	x0, c48 <__do_global_dtors_aux+0x48>
     c20:	b4000080 	cbz	x0, c30 <__do_global_dtors_aux+0x30>
     c24:	d0000060 	adrp	x0, e000 <__malloc_av_+0xb8>
     c28:	911e0000 	add	x0, x0, #0x780
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
     c5c:	d00000a1 	adrp	x1, 16000 <__exidx_end>
     c60:	d0000060 	adrp	x0, e000 <__malloc_av_+0xb8>
     c64:	91022021 	add	x1, x1, #0x88
     c68:	910003fd 	mov	x29, sp
     c6c:	911e0000 	add	x0, x0, #0x780
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
     cc4:	940007bf 	bl	2bc0 <memset>
     cc8:	940006f6 	bl	28a0 <initialise_monitor_handles>
     ccc:	58000660 	ldr	x0, d98 <_cpu_init_hook+0x1c>
     cd0:	9400076c 	bl	2a80 <atexit>
     cd4:	94000793 	bl	2b20 <__libc_init_array>
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
     d74:	94000648 	bl	2694 <main>
     d78:	14000748 	b	2a98 <exit>

0000000000000d7c <_cpu_init_hook>:
     d7c:	d65f03c0 	ret
     d80:	0000d5c8 	.word	0x0000d5c8
     d84:	00000000 	.word	0x00000000
     d88:	00016080 	.word	0x00016080
     d8c:	00000000 	.word	0x00000000
     d90:	00026340 	.word	0x00026340
     d94:	00000000 	.word	0x00000000
     d98:	00002ad0 	.word	0x00002ad0
     d9c:	00000000 	.word	0x00000000
     da0:	0000d5e8 	.word	0x0000d5e8
     da4:	00000000 	.word	0x00000000
     da8:	0000d5f0 	.word	0x0000d5f0
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
    2684:	940000f1 	bl	2a48 <XTime_GetTime>
    2688:	f9400fa0 	ldr	x0, [x29, #24]
    268c:	a8c27bfd 	ldp	x29, x30, [sp], #32
    2690:	d65f03c0 	ret

0000000000002694 <main>:
    2694:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    2698:	910003fd 	mov	x29, sp
    269c:	52807d00 	mov	w0, #0x3e8                 	// #1000
    26a0:	b9002fa0 	str	w0, [x29, #44]
    26a4:	b9003fbf 	str	wzr, [x29, #60]
    26a8:	14000012 	b	26f0 <main+0x5c>
    26ac:	90000100 	adrp	x0, 22000 <green.21471+0x3d40>
    26b0:	910b0003 	add	x3, x0, #0x2c0
    26b4:	900000e0 	adrp	x0, 1e000 <red.21470+0x3d40>
    26b8:	910b0002 	add	x2, x0, #0x2c0
    26bc:	900000c0 	adrp	x0, 1a000 <src.21469+0x3f48>
    26c0:	910b0001 	add	x1, x0, #0x2c0
    26c4:	900000a0 	adrp	x0, 16000 <__exidx_end>
    26c8:	9102e000 	add	x0, x0, #0xb8
    26cc:	aa0303e5 	mov	x5, x3
    26d0:	aa0203e4 	mov	x4, x2
    26d4:	aa0103e3 	mov	x3, x1
    26d8:	52801042 	mov	w2, #0x82                  	// #130
    26dc:	52801041 	mov	w1, #0x82                  	// #130
    26e0:	97fff9b6 	bl	db8 <debayer_neon64>
    26e4:	b9403fa0 	ldr	w0, [x29, #60]
    26e8:	11000400 	add	w0, w0, #0x1
    26ec:	b9003fa0 	str	w0, [x29, #60]
    26f0:	b9403fa0 	ldr	w0, [x29, #60]
    26f4:	7100241f 	cmp	w0, #0x9
    26f8:	54fffdad 	b.le	26ac <main+0x18>
    26fc:	97ffffdf 	bl	2678 <clock>
    2700:	f90013a0 	str	x0, [x29, #32]
    2704:	b9003bbf 	str	wzr, [x29, #56]
    2708:	14000012 	b	2750 <main+0xbc>
    270c:	90000100 	adrp	x0, 22000 <green.21471+0x3d40>
    2710:	910b0003 	add	x3, x0, #0x2c0
    2714:	900000e0 	adrp	x0, 1e000 <red.21470+0x3d40>
    2718:	910b0002 	add	x2, x0, #0x2c0
    271c:	900000c0 	adrp	x0, 1a000 <src.21469+0x3f48>
    2720:	910b0001 	add	x1, x0, #0x2c0
    2724:	900000a0 	adrp	x0, 16000 <__exidx_end>
    2728:	9102e000 	add	x0, x0, #0xb8
    272c:	aa0303e5 	mov	x5, x3
    2730:	aa0203e4 	mov	x4, x2
    2734:	aa0103e3 	mov	x3, x1
    2738:	52801042 	mov	w2, #0x82                  	// #130
    273c:	52801041 	mov	w1, #0x82                  	// #130
    2740:	97fff99e 	bl	db8 <debayer_neon64>
    2744:	b9403ba0 	ldr	w0, [x29, #56]
    2748:	11000400 	add	w0, w0, #0x1
    274c:	b9003ba0 	str	w0, [x29, #56]
    2750:	b9403ba1 	ldr	w1, [x29, #56]
    2754:	b9402fa0 	ldr	w0, [x29, #44]
    2758:	6b00003f 	cmp	w1, w0
    275c:	54fffd8b 	b.lt	270c <main+0x78>  // b.tstop
    2760:	97ffffc6 	bl	2678 <clock>
    2764:	f9000fa0 	str	x0, [x29, #24]
    2768:	f9400fa1 	ldr	x1, [x29, #24]
    276c:	f94013a0 	ldr	x0, [x29, #32]
    2770:	cb000020 	sub	x0, x1, x0
    2774:	9e630000 	ucvtf	d0, x0
    2778:	d2d09000 	mov	x0, #0x848000000000        	// #145685290680320
    277c:	f2e825c0 	movk	x0, #0x412e, lsl #48
    2780:	9e670001 	fmov	d1, x0
    2784:	1e610800 	fmul	d0, d0, d1
    2788:	d2e80b20 	mov	x0, #0x4059000000000000    	// #4636737291354636288
    278c:	9e670001 	fmov	d1, x0
    2790:	1e611800 	fdiv	d0, d0, d1
    2794:	fd000ba0 	str	d0, [x29, #16]
    2798:	f0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    279c:	91080000 	add	x0, x0, #0x200
    27a0:	fd400ba0 	ldr	d0, [x29, #16]
    27a4:	9400019d 	bl	2e18 <printf>
    27a8:	b90037bf 	str	wzr, [x29, #52]
    27ac:	1400000f 	b	27e8 <main+0x154>
    27b0:	90000100 	adrp	x0, 22000 <green.21471+0x3d40>
    27b4:	910b0003 	add	x3, x0, #0x2c0
    27b8:	900000e0 	adrp	x0, 1e000 <red.21470+0x3d40>
    27bc:	910b0002 	add	x2, x0, #0x2c0
    27c0:	900000c0 	adrp	x0, 1a000 <src.21469+0x3f48>
    27c4:	910b0001 	add	x1, x0, #0x2c0
    27c8:	900000a0 	adrp	x0, 16000 <__exidx_end>
    27cc:	9102e000 	add	x0, x0, #0xb8
    27d0:	52801045 	mov	w5, #0x82                  	// #130
    27d4:	52801044 	mov	w4, #0x82                  	// #130
    27d8:	97fffe5d 	bl	214c <debayer>
    27dc:	b94037a0 	ldr	w0, [x29, #52]
    27e0:	11000400 	add	w0, w0, #0x1
    27e4:	b90037a0 	str	w0, [x29, #52]
    27e8:	b94037a0 	ldr	w0, [x29, #52]
    27ec:	7100241f 	cmp	w0, #0x9
    27f0:	54fffe0d 	b.le	27b0 <main+0x11c>
    27f4:	97ffffa1 	bl	2678 <clock>
    27f8:	f90013a0 	str	x0, [x29, #32]
    27fc:	b90033bf 	str	wzr, [x29, #48]
    2800:	1400000f 	b	283c <main+0x1a8>
    2804:	90000100 	adrp	x0, 22000 <green.21471+0x3d40>
    2808:	910b0003 	add	x3, x0, #0x2c0
    280c:	900000e0 	adrp	x0, 1e000 <red.21470+0x3d40>
    2810:	910b0002 	add	x2, x0, #0x2c0
    2814:	900000c0 	adrp	x0, 1a000 <src.21469+0x3f48>
    2818:	910b0001 	add	x1, x0, #0x2c0
    281c:	900000a0 	adrp	x0, 16000 <__exidx_end>
    2820:	9102e000 	add	x0, x0, #0xb8
    2824:	52801045 	mov	w5, #0x82                  	// #130
    2828:	52801044 	mov	w4, #0x82                  	// #130
    282c:	97fffe48 	bl	214c <debayer>
    2830:	b94033a0 	ldr	w0, [x29, #48]
    2834:	11000400 	add	w0, w0, #0x1
    2838:	b90033a0 	str	w0, [x29, #48]
    283c:	b94033a1 	ldr	w1, [x29, #48]
    2840:	b9402fa0 	ldr	w0, [x29, #44]
    2844:	6b00003f 	cmp	w1, w0
    2848:	54fffdeb 	b.lt	2804 <main+0x170>  // b.tstop
    284c:	97ffff8b 	bl	2678 <clock>
    2850:	f9000fa0 	str	x0, [x29, #24]
    2854:	f9400fa1 	ldr	x1, [x29, #24]
    2858:	f94013a0 	ldr	x0, [x29, #32]
    285c:	cb000020 	sub	x0, x1, x0
    2860:	9e630000 	ucvtf	d0, x0
    2864:	d2d09000 	mov	x0, #0x848000000000        	// #145685290680320
    2868:	f2e825c0 	movk	x0, #0x412e, lsl #48
    286c:	9e670001 	fmov	d1, x0
    2870:	1e610800 	fmul	d0, d0, d1
    2874:	d2e80b20 	mov	x0, #0x4059000000000000    	// #4636737291354636288
    2878:	9e670001 	fmov	d1, x0
    287c:	1e611800 	fdiv	d0, d0, d1
    2880:	fd000ba0 	str	d0, [x29, #16]
    2884:	f0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    2888:	91088000 	add	x0, x0, #0x220
    288c:	fd400ba0 	ldr	d0, [x29, #16]
    2890:	94000162 	bl	2e18 <printf>
    2894:	52800000 	mov	w0, #0x0                   	// #0
    2898:	a8c47bfd 	ldp	x29, x30, [sp], #64
    289c:	d65f03c0 	ret

00000000000028a0 <initialise_monitor_handles>:
    28a0:	d65f03c0 	ret
    28a4:	00000000 	.inst	0x00000000 ; undefined

00000000000028a8 <FIQInterrupt>:
    28a8:	f0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    28ac:	911bc000 	add	x0, x0, #0x6f0
    28b0:	a9430001 	ldp	x1, x0, [x0, #48]
    28b4:	d61f0020 	br	x1

00000000000028b8 <IRQInterrupt>:
    28b8:	f0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    28bc:	911bc000 	add	x0, x0, #0x6f0
    28c0:	a9420001 	ldp	x1, x0, [x0, #32]
    28c4:	d61f0020 	br	x1

00000000000028c8 <SynchronousInterrupt>:
    28c8:	f0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    28cc:	911bc000 	add	x0, x0, #0x6f0
    28d0:	a9410001 	ldp	x1, x0, [x0, #16]
    28d4:	d61f0020 	br	x1

00000000000028d8 <SErrorInterrupt>:
    28d8:	f0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    28dc:	911bc000 	add	x0, x0, #0x6f0
    28e0:	a9440001 	ldp	x1, x0, [x0, #64]
    28e4:	d61f0020 	br	x1
    28e8:	00016080 	.word	0x00016080
    28ec:	00000000 	.word	0x00000000
    28f0:	00016080 	.word	0x00016080
    28f4:	00000000 	.word	0x00000000
    28f8:	00016080 	.word	0x00016080
    28fc:	00000000 	.word	0x00000000
    2900:	00026340 	.word	0x00026340
    2904:	00000000 	.word	0x00000000

0000000000002908 <_startup>:
    2908:	d2800000 	mov	x0, #0x0                   	// #0
    290c:	5800036a 	ldr	x10, 2978 <_startup+0x70>
    2910:	b940014b 	ldr	w11, [x10]
    2914:	d53800a2 	mrs	x2, mpidr_el1
    2918:	d3401c42 	ubfx	x2, x2, #0, #8
    291c:	52800021 	mov	w1, #0x1                   	// #1
    2920:	1ac22022 	lsl	w2, w1, w2
    2924:	6a02016b 	ands	w11, w11, w2
    2928:	540001a1 	b.ne	295c <_startup+0x54>  // b.any
    292c:	58fffde1 	ldr	x1, 28e8 <SErrorInterrupt+0x10>
    2930:	58fffe02 	ldr	x2, 28f0 <SErrorInterrupt+0x18>
    2934:	eb02003f 	cmp	x1, x2
    2938:	5400006a 	b.ge	2944 <_startup+0x3c>  // b.tcont
    293c:	f8008420 	str	x0, [x1], #8
    2940:	17fffffd 	b	2934 <_startup+0x2c>
    2944:	58fffda1 	ldr	x1, 28f8 <SErrorInterrupt+0x20>
    2948:	58fffdc2 	ldr	x2, 2900 <SErrorInterrupt+0x28>
    294c:	eb02003f 	cmp	x1, x2
    2950:	5400006a 	b.ge	295c <_startup+0x54>  // b.tcont
    2954:	f8008420 	str	x0, [x1], #8
    2958:	17fffffd 	b	294c <_startup+0x44>
    295c:	94000071 	bl	2b20 <__libc_init_array>
    2960:	d2800000 	mov	x0, #0x0                   	// #0
    2964:	d2800001 	mov	x1, #0x0                   	// #0
    2968:	97ffff4b 	bl	2694 <main>
    296c:	94000059 	bl	2ad0 <__libc_fini_array>
    2970:	9400004a 	bl	2a98 <exit>
    2974:	14000000 	b	2974 <_startup+0x6c>
    2978:	fd5c0090 	.word	0xfd5c0090
    297c:	00000000 	.word	0x00000000

0000000000002980 <Xil_ExceptionNullHandler>:
    2980:	14000000 	b	2980 <Xil_ExceptionNullHandler>
    2984:	d503201f 	nop

0000000000002988 <Xil_SyncAbortHandler>:
    2988:	14000000 	b	2988 <Xil_SyncAbortHandler>
    298c:	d503201f 	nop

0000000000002990 <Xil_SErrorAbortHandler>:
    2990:	14000000 	b	2990 <Xil_SErrorAbortHandler>
    2994:	d503201f 	nop

0000000000002998 <Xil_ExceptionInit>:
    2998:	d65f03c0 	ret
    299c:	d503201f 	nop

00000000000029a0 <Xil_ExceptionRegisterHandler>:
    29a0:	d37c7c00 	ubfiz	x0, x0, #4, #32
    29a4:	f0000043 	adrp	x3, d000 <__trunctfdf2+0x290>
    29a8:	911bc063 	add	x3, x3, #0x6f0
    29ac:	8b000064 	add	x4, x3, x0
    29b0:	f8206861 	str	x1, [x3, x0]
    29b4:	f9000482 	str	x2, [x4, #8]
    29b8:	d65f03c0 	ret
    29bc:	d503201f 	nop

00000000000029c0 <Xil_GetExceptionRegisterHandler>:
    29c0:	d37c7c00 	ubfiz	x0, x0, #4, #32
    29c4:	f0000043 	adrp	x3, d000 <__trunctfdf2+0x290>
    29c8:	911bc063 	add	x3, x3, #0x6f0
    29cc:	8b000064 	add	x4, x3, x0
    29d0:	f8606860 	ldr	x0, [x3, x0]
    29d4:	f9000020 	str	x0, [x1]
    29d8:	f9400480 	ldr	x0, [x4, #8]
    29dc:	f9000040 	str	x0, [x2]
    29e0:	d65f03c0 	ret
    29e4:	d503201f 	nop

00000000000029e8 <Xil_ExceptionRemoveHandler>:
    29e8:	d37c7c00 	ubfiz	x0, x0, #4, #32
    29ec:	f0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    29f0:	911bc021 	add	x1, x1, #0x6f0
    29f4:	90000002 	adrp	x2, 2000 <_HEAP_SIZE>
    29f8:	8b000023 	add	x3, x1, x0
    29fc:	91260042 	add	x2, x2, #0x980
    2a00:	f8206822 	str	x2, [x1, x0]
    2a04:	f900047f 	str	xzr, [x3, #8]
    2a08:	d65f03c0 	ret
    2a0c:	00000000 	.inst	0x00000000 ; undefined

0000000000002a10 <XTime_StartTimer>:
    2a10:	d2bfe4c0 	mov	x0, #0xff260000            	// #4280680448
    2a14:	b9400001 	ldr	w1, [x0]
    2a18:	37000101 	tbnz	w1, #0, 2a38 <XTime_StartTimer+0x28>
    2a1c:	d2800402 	mov	x2, #0x20                  	// #32
    2a20:	5293e103 	mov	w3, #0x9f08                	// #40712
    2a24:	f2bfe4c2 	movk	x2, #0xff26, lsl #16
    2a28:	72a03f83 	movk	w3, #0x1fc, lsl #16
    2a2c:	52800021 	mov	w1, #0x1                   	// #1
    2a30:	b9000043 	str	w3, [x2]
    2a34:	b9000001 	str	w1, [x0]
    2a38:	d65f03c0 	ret
    2a3c:	d503201f 	nop

0000000000002a40 <XTime_SetTime>:
    2a40:	d65f03c0 	ret
    2a44:	d503201f 	nop

0000000000002a48 <XTime_GetTime>:
    2a48:	d2bfe4c1 	mov	x1, #0xff260000            	// #4280680448
    2a4c:	b9400022 	ldr	w2, [x1]
    2a50:	37000102 	tbnz	w2, #0, 2a70 <XTime_GetTime+0x28>
    2a54:	d2800403 	mov	x3, #0x20                  	// #32
    2a58:	5293e104 	mov	w4, #0x9f08                	// #40712
    2a5c:	f2bfe4c3 	movk	x3, #0xff26, lsl #16
    2a60:	72a03f84 	movk	w4, #0x1fc, lsl #16
    2a64:	52800022 	mov	w2, #0x1                   	// #1
    2a68:	b9000064 	str	w4, [x3]
    2a6c:	b9000022 	str	w2, [x1]
    2a70:	d53be021 	mrs	x1, cntpct_el0
    2a74:	f9000001 	str	x1, [x0]
    2a78:	d65f03c0 	ret
    2a7c:	00000000 	.inst	0x00000000 ; undefined

0000000000002a80 <atexit>:
    2a80:	aa0003e1 	mov	x1, x0
    2a84:	d2800003 	mov	x3, #0x0                   	// #0
    2a88:	d2800002 	mov	x2, #0x0                   	// #0
    2a8c:	52800000 	mov	w0, #0x0                   	// #0
    2a90:	14000bc0 	b	5990 <__register_exitproc>
    2a94:	00000000 	.inst	0x00000000 ; undefined

0000000000002a98 <exit>:
    2a98:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    2a9c:	d2800001 	mov	x1, #0x0                   	// #0
    2aa0:	910003fd 	mov	x29, sp
    2aa4:	f9000bf3 	str	x19, [sp, #16]
    2aa8:	2a0003f3 	mov	w19, w0
    2aac:	94000bf7 	bl	5a88 <__call_exitprocs>
    2ab0:	f0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    2ab4:	f9412000 	ldr	x0, [x0, #576]
    2ab8:	f9402c01 	ldr	x1, [x0, #88]
    2abc:	b4000041 	cbz	x1, 2ac4 <exit+0x2c>
    2ac0:	d63f0020 	blr	x1
    2ac4:	2a1303e0 	mov	w0, w19
    2ac8:	9400281a 	bl	cb30 <_exit>
    2acc:	00000000 	.inst	0x00000000 ; undefined

0000000000002ad0 <__libc_fini_array>:
    2ad0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    2ad4:	910003fd 	mov	x29, sp
    2ad8:	a90153f3 	stp	x19, x20, [sp, #16]
    2adc:	580001b3 	ldr	x19, 2b10 <__libc_fini_array+0x40>
    2ae0:	580001d4 	ldr	x20, 2b18 <__libc_fini_array+0x48>
    2ae4:	cb140273 	sub	x19, x19, x20
    2ae8:	9343fe73 	asr	x19, x19, #3
    2aec:	b40000b3 	cbz	x19, 2b00 <__libc_fini_array+0x30>
    2af0:	d1000673 	sub	x19, x19, #0x1
    2af4:	f8737a80 	ldr	x0, [x20, x19, lsl #3]
    2af8:	d63f0000 	blr	x0
    2afc:	b5ffffb3 	cbnz	x19, 2af0 <__libc_fini_array+0x20>
    2b00:	a94153f3 	ldp	x19, x20, [sp, #16]
    2b04:	a8c27bfd 	ldp	x29, x30, [sp], #32
    2b08:	1400299e 	b	d180 <_fini>
    2b0c:	d503201f 	nop
    2b10:	00016048 	.word	0x00016048
    2b14:	00000000 	.word	0x00000000
    2b18:	00016040 	.word	0x00016040
    2b1c:	00000000 	.word	0x00000000

0000000000002b20 <__libc_init_array>:
    2b20:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    2b24:	910003fd 	mov	x29, sp
    2b28:	a90153f3 	stp	x19, x20, [sp, #16]
    2b2c:	f90013f5 	str	x21, [sp, #32]
    2b30:	58000394 	ldr	x20, 2ba0 <__libc_init_array+0x80>
    2b34:	580003b5 	ldr	x21, 2ba8 <__libc_init_array+0x88>
    2b38:	cb150294 	sub	x20, x20, x21
    2b3c:	9343fe94 	asr	x20, x20, #3
    2b40:	b40000f4 	cbz	x20, 2b5c <__libc_init_array+0x3c>
    2b44:	d2800013 	mov	x19, #0x0                   	// #0
    2b48:	f8737aa0 	ldr	x0, [x21, x19, lsl #3]
    2b4c:	91000673 	add	x19, x19, #0x1
    2b50:	d63f0000 	blr	x0
    2b54:	eb13029f 	cmp	x20, x19
    2b58:	54ffff81 	b.ne	2b48 <__libc_init_array+0x28>  // b.any
    2b5c:	94002979 	bl	d140 <_init>
    2b60:	58000294 	ldr	x20, 2bb0 <__libc_init_array+0x90>
    2b64:	580002b5 	ldr	x21, 2bb8 <__libc_init_array+0x98>
    2b68:	cb150294 	sub	x20, x20, x21
    2b6c:	9343fe94 	asr	x20, x20, #3
    2b70:	b40000f4 	cbz	x20, 2b8c <__libc_init_array+0x6c>
    2b74:	d2800013 	mov	x19, #0x0                   	// #0
    2b78:	f8737aa0 	ldr	x0, [x21, x19, lsl #3]
    2b7c:	91000673 	add	x19, x19, #0x1
    2b80:	d63f0000 	blr	x0
    2b84:	eb13029f 	cmp	x20, x19
    2b88:	54ffff81 	b.ne	2b78 <__libc_init_array+0x58>  // b.any
    2b8c:	a94153f3 	ldp	x19, x20, [sp, #16]
    2b90:	f94013f5 	ldr	x21, [sp, #32]
    2b94:	a8c37bfd 	ldp	x29, x30, [sp], #48
    2b98:	d65f03c0 	ret
    2b9c:	d503201f 	nop
    2ba0:	00016000 	.word	0x00016000
    2ba4:	00000000 	.word	0x00000000
    2ba8:	00016000 	.word	0x00016000
    2bac:	00000000 	.word	0x00000000
    2bb0:	00016008 	.word	0x00016008
    2bb4:	00000000 	.word	0x00000000
    2bb8:	00016000 	.word	0x00016000
    2bbc:	00000000 	.word	0x00000000

0000000000002bc0 <memset>:
    2bc0:	4e010c20 	dup	v0.16b, w1
    2bc4:	8b020004 	add	x4, x0, x2
    2bc8:	f101805f 	cmp	x2, #0x60
    2bcc:	540003c8 	b.hi	2c44 <memset+0x84>  // b.pmore
    2bd0:	f100405f 	cmp	x2, #0x10
    2bd4:	54000202 	b.cs	2c14 <memset+0x54>  // b.hs, b.nlast
    2bd8:	4e083c01 	mov	x1, v0.d[0]
    2bdc:	361800a2 	tbz	w2, #3, 2bf0 <memset+0x30>
    2be0:	f9000001 	str	x1, [x0]
    2be4:	f81f8081 	stur	x1, [x4, #-8]
    2be8:	d65f03c0 	ret
    2bec:	d503201f 	nop
    2bf0:	36100082 	tbz	w2, #2, 2c00 <memset+0x40>
    2bf4:	b9000001 	str	w1, [x0]
    2bf8:	b81fc081 	stur	w1, [x4, #-4]
    2bfc:	d65f03c0 	ret
    2c00:	b4000082 	cbz	x2, 2c10 <memset+0x50>
    2c04:	39000001 	strb	w1, [x0]
    2c08:	36080042 	tbz	w2, #1, 2c10 <memset+0x50>
    2c0c:	781fe081 	sturh	w1, [x4, #-2]
    2c10:	d65f03c0 	ret
    2c14:	3d800000 	str	q0, [x0]
    2c18:	373000c2 	tbnz	w2, #6, 2c30 <memset+0x70>
    2c1c:	3c9f0080 	stur	q0, [x4, #-16]
    2c20:	36280062 	tbz	w2, #5, 2c2c <memset+0x6c>
    2c24:	3d800400 	str	q0, [x0, #16]
    2c28:	3c9e0080 	stur	q0, [x4, #-32]
    2c2c:	d65f03c0 	ret
    2c30:	3d800400 	str	q0, [x0, #16]
    2c34:	ad010000 	stp	q0, q0, [x0, #32]
    2c38:	ad3f0080 	stp	q0, q0, [x4, #-32]
    2c3c:	d65f03c0 	ret
    2c40:	d503201f 	nop
    2c44:	12001c21 	and	w1, w1, #0xff
    2c48:	927cec03 	and	x3, x0, #0xfffffffffffffff0
    2c4c:	3d800000 	str	q0, [x0]
    2c50:	f104005f 	cmp	x2, #0x100
    2c54:	7a402820 	ccmp	w1, #0x0, #0x0, cs  // cs = hs, nlast
    2c58:	54000180 	b.eq	2c88 <memset+0xc8>  // b.none
    2c5c:	cb030082 	sub	x2, x4, x3
    2c60:	91004063 	add	x3, x3, #0x10
    2c64:	d1014042 	sub	x2, x2, #0x50
    2c68:	ac820060 	stp	q0, q0, [x3], #64
    2c6c:	ad3f0060 	stp	q0, q0, [x3, #-32]
    2c70:	f1010042 	subs	x2, x2, #0x40
    2c74:	54ffffa8 	b.hi	2c68 <memset+0xa8>  // b.pmore
    2c78:	ad3e0080 	stp	q0, q0, [x4, #-64]
    2c7c:	ad3f0080 	stp	q0, q0, [x4, #-32]
    2c80:	d65f03c0 	ret
    2c84:	d503201f 	nop
    2c88:	d53b00e5 	mrs	x5, dczid_el0
    2c8c:	3727fe85 	tbnz	w5, #4, 2c5c <memset+0x9c>
    2c90:	12000ca5 	and	w5, w5, #0xf
    2c94:	710010bf 	cmp	w5, #0x4
    2c98:	54000281 	b.ne	2ce8 <memset+0x128>  // b.any
    2c9c:	3d800460 	str	q0, [x3, #16]
    2ca0:	ad010060 	stp	q0, q0, [x3, #32]
    2ca4:	927ae463 	and	x3, x3, #0xffffffffffffffc0
    2ca8:	ad020060 	stp	q0, q0, [x3, #64]
    2cac:	ad030060 	stp	q0, q0, [x3, #96]
    2cb0:	cb030082 	sub	x2, x4, x3
    2cb4:	d1040042 	sub	x2, x2, #0x100
    2cb8:	91020063 	add	x3, x3, #0x80
    2cbc:	d503201f 	nop
    2cc0:	d50b7423 	dc	zva, x3
    2cc4:	91010063 	add	x3, x3, #0x40
    2cc8:	f1010042 	subs	x2, x2, #0x40
    2ccc:	54ffffa8 	b.hi	2cc0 <memset+0x100>  // b.pmore
    2cd0:	ad000060 	stp	q0, q0, [x3]
    2cd4:	ad010060 	stp	q0, q0, [x3, #32]
    2cd8:	ad3e0080 	stp	q0, q0, [x4, #-64]
    2cdc:	ad3f0080 	stp	q0, q0, [x4, #-32]
    2ce0:	d65f03c0 	ret
    2ce4:	d503201f 	nop
    2ce8:	710014bf 	cmp	w5, #0x5
    2cec:	54000241 	b.ne	2d34 <memset+0x174>  // b.any
    2cf0:	3d800460 	str	q0, [x3, #16]
    2cf4:	ad010060 	stp	q0, q0, [x3, #32]
    2cf8:	ad020060 	stp	q0, q0, [x3, #64]
    2cfc:	ad030060 	stp	q0, q0, [x3, #96]
    2d00:	9279e063 	and	x3, x3, #0xffffffffffffff80
    2d04:	cb030082 	sub	x2, x4, x3
    2d08:	d1040042 	sub	x2, x2, #0x100
    2d0c:	91020063 	add	x3, x3, #0x80
    2d10:	d50b7423 	dc	zva, x3
    2d14:	91020063 	add	x3, x3, #0x80
    2d18:	f1020042 	subs	x2, x2, #0x80
    2d1c:	54ffffa8 	b.hi	2d10 <memset+0x150>  // b.pmore
    2d20:	ad3c0080 	stp	q0, q0, [x4, #-128]
    2d24:	ad3d0080 	stp	q0, q0, [x4, #-96]
    2d28:	ad3e0080 	stp	q0, q0, [x4, #-64]
    2d2c:	ad3f0080 	stp	q0, q0, [x4, #-32]
    2d30:	d65f03c0 	ret
    2d34:	52800086 	mov	w6, #0x4                   	// #4
    2d38:	1ac520c7 	lsl	w7, w6, w5
    2d3c:	910100e5 	add	x5, x7, #0x40
    2d40:	eb05005f 	cmp	x2, x5
    2d44:	54fff8c3 	b.cc	2c5c <memset+0x9c>  // b.lo, b.ul, b.last
    2d48:	d10004e6 	sub	x6, x7, #0x1
    2d4c:	8b070065 	add	x5, x3, x7
    2d50:	91004063 	add	x3, x3, #0x10
    2d54:	eb0300a2 	subs	x2, x5, x3
    2d58:	8a2600a5 	bic	x5, x5, x6
    2d5c:	540000a0 	b.eq	2d70 <memset+0x1b0>  // b.none
    2d60:	ac820060 	stp	q0, q0, [x3], #64
    2d64:	ad3f0060 	stp	q0, q0, [x3, #-32]
    2d68:	f1010042 	subs	x2, x2, #0x40
    2d6c:	54ffffa8 	b.hi	2d60 <memset+0x1a0>  // b.pmore
    2d70:	aa0503e3 	mov	x3, x5
    2d74:	cb050082 	sub	x2, x4, x5
    2d78:	eb070042 	subs	x2, x2, x7
    2d7c:	540000a3 	b.cc	2d90 <memset+0x1d0>  // b.lo, b.ul, b.last
    2d80:	d50b7423 	dc	zva, x3
    2d84:	8b070063 	add	x3, x3, x7
    2d88:	eb070042 	subs	x2, x2, x7
    2d8c:	54ffffa2 	b.cs	2d80 <memset+0x1c0>  // b.hs, b.nlast
    2d90:	8b070042 	add	x2, x2, x7
    2d94:	17ffffb7 	b	2c70 <memset+0xb0>

0000000000002d98 <_printf_r>:
    2d98:	a9b07bfd 	stp	x29, x30, [sp, #-256]!
    2d9c:	910003fd 	mov	x29, sp
    2da0:	910403a8 	add	x8, x29, #0x100
    2da4:	910343a9 	add	x9, x29, #0xd0
    2da8:	a90323a8 	stp	x8, x8, [x29, #48]
    2dac:	128005e8 	mov	w8, #0xffffffd0            	// #-48
    2db0:	f90023a9 	str	x9, [x29, #64]
    2db4:	b9004ba8 	str	w8, [x29, #72]
    2db8:	12800fe8 	mov	w8, #0xffffff80            	// #-128
    2dbc:	b9004fa8 	str	w8, [x29, #76]
    2dc0:	a9432faa 	ldp	x10, x11, [x29, #48]
    2dc4:	a9012faa 	stp	x10, x11, [x29, #16]
    2dc8:	a94427a8 	ldp	x8, x9, [x29, #64]
    2dcc:	a90227a8 	stp	x8, x9, [x29, #32]
    2dd0:	a90d0fa2 	stp	x2, x3, [x29, #208]
    2dd4:	aa0103e2 	mov	x2, x1
    2dd8:	a90e17a4 	stp	x4, x5, [x29, #224]
    2ddc:	910043a3 	add	x3, x29, #0x10
    2de0:	a90f1fa6 	stp	x6, x7, [x29, #240]
    2de4:	3d8017a0 	str	q0, [x29, #80]
    2de8:	3d801ba1 	str	q1, [x29, #96]
    2dec:	3d801fa2 	str	q2, [x29, #112]
    2df0:	3d8023a3 	str	q3, [x29, #128]
    2df4:	3d8027a4 	str	q4, [x29, #144]
    2df8:	3d802ba5 	str	q5, [x29, #160]
    2dfc:	3d802fa6 	str	q6, [x29, #176]
    2e00:	3d8033a7 	str	q7, [x29, #192]
    2e04:	f9400801 	ldr	x1, [x0, #16]
    2e08:	94000028 	bl	2ea8 <_vfprintf_r>
    2e0c:	a8d07bfd 	ldp	x29, x30, [sp], #256
    2e10:	d65f03c0 	ret
    2e14:	d503201f 	nop

0000000000002e18 <printf>:
    2e18:	a9af7bfd 	stp	x29, x30, [sp, #-272]!
    2e1c:	f0000048 	adrp	x8, d000 <__trunctfdf2+0x290>
    2e20:	910003fd 	mov	x29, sp
    2e24:	910443a9 	add	x9, x29, #0x110
    2e28:	910343aa 	add	x10, x29, #0xd0
    2e2c:	f943a908 	ldr	x8, [x8, #1872]
    2e30:	a90327a9 	stp	x9, x9, [x29, #48]
    2e34:	128006e9 	mov	w9, #0xffffffc8            	// #-56
    2e38:	f90023aa 	str	x10, [x29, #64]
    2e3c:	b9004ba9 	str	w9, [x29, #72]
    2e40:	12800fe9 	mov	w9, #0xffffff80            	// #-128
    2e44:	b9004fa9 	str	w9, [x29, #76]
    2e48:	a94337ac 	ldp	x12, x13, [x29, #48]
    2e4c:	a90137ac 	stp	x12, x13, [x29, #16]
    2e50:	a9442faa 	ldp	x10, x11, [x29, #64]
    2e54:	a9022faa 	stp	x10, x11, [x29, #32]
    2e58:	a90d8ba1 	stp	x1, x2, [x29, #216]
    2e5c:	aa0003e2 	mov	x2, x0
    2e60:	a90e93a3 	stp	x3, x4, [x29, #232]
    2e64:	aa0803e0 	mov	x0, x8
    2e68:	a90f9ba5 	stp	x5, x6, [x29, #248]
    2e6c:	910043a3 	add	x3, x29, #0x10
    2e70:	f90087a7 	str	x7, [x29, #264]
    2e74:	3d8017a0 	str	q0, [x29, #80]
    2e78:	3d801ba1 	str	q1, [x29, #96]
    2e7c:	3d801fa2 	str	q2, [x29, #112]
    2e80:	3d8023a3 	str	q3, [x29, #128]
    2e84:	3d8027a4 	str	q4, [x29, #144]
    2e88:	3d802ba5 	str	q5, [x29, #160]
    2e8c:	3d802fa6 	str	q6, [x29, #176]
    2e90:	3d8033a7 	str	q7, [x29, #192]
    2e94:	f9400901 	ldr	x1, [x8, #16]
    2e98:	94000004 	bl	2ea8 <_vfprintf_r>
    2e9c:	a8d17bfd 	ldp	x29, x30, [sp], #272
    2ea0:	d65f03c0 	ret
    2ea4:	00000000 	.inst	0x00000000 ; undefined

0000000000002ea8 <_vfprintf_r>:
    2ea8:	d109c3ff 	sub	sp, sp, #0x270
    2eac:	a9007bfd 	stp	x29, x30, [sp]
    2eb0:	910003fd 	mov	x29, sp
    2eb4:	a902dff6 	stp	x22, x23, [sp, #40]
    2eb8:	aa0103f6 	mov	x22, x1
    2ebc:	f9400061 	ldr	x1, [x3]
    2ec0:	aa0003f7 	mov	x23, x0
    2ec4:	f90083a1 	str	x1, [x29, #256]
    2ec8:	f9400461 	ldr	x1, [x3, #8]
    2ecc:	f9005fa1 	str	x1, [x29, #184]
    2ed0:	f9400861 	ldr	x1, [x3, #16]
    2ed4:	f9004ba1 	str	x1, [x29, #144]
    2ed8:	b9401861 	ldr	w1, [x3, #24]
    2edc:	b90113a1 	str	w1, [x29, #272]
    2ee0:	b9401c61 	ldr	w1, [x3, #28]
    2ee4:	b900aba1 	str	w1, [x29, #168]
    2ee8:	f9000bf3 	str	x19, [sp, #16]
    2eec:	aa0303f3 	mov	x19, x3
    2ef0:	f90027fa 	str	x26, [sp, #72]
    2ef4:	aa0203fa 	mov	x26, x2
    2ef8:	94001330 	bl	7bb8 <_localeconv_r>
    2efc:	f9400000 	ldr	x0, [x0]
    2f00:	f90067a0 	str	x0, [x29, #200]
    2f04:	94001a9f 	bl	9980 <strlen>
    2f08:	f9006fa0 	str	x0, [x29, #216]
    2f0c:	b4000077 	cbz	x23, 2f18 <_vfprintf_r+0x70>
    2f10:	b94052e0 	ldr	w0, [x23, #80]
    2f14:	34002ca0 	cbz	w0, 34a8 <_vfprintf_r+0x600>
    2f18:	79c022c1 	ldrsh	w1, [x22, #16]
    2f1c:	12003c20 	and	w0, w1, #0xffff
    2f20:	376800e0 	tbnz	w0, #13, 2f3c <_vfprintf_r+0x94>
    2f24:	b940aec2 	ldr	w2, [x22, #172]
    2f28:	32130021 	orr	w1, w1, #0x2000
    2f2c:	12003c20 	and	w0, w1, #0xffff
    2f30:	790022c1 	strh	w1, [x22, #16]
    2f34:	12127841 	and	w1, w2, #0xffffdfff
    2f38:	b900aec1 	str	w1, [x22, #172]
    2f3c:	36182700 	tbz	w0, #3, 341c <_vfprintf_r+0x574>
    2f40:	f9400ec1 	ldr	x1, [x22, #24]
    2f44:	b40026c1 	cbz	x1, 341c <_vfprintf_r+0x574>
    2f48:	52800341 	mov	w1, #0x1a                  	// #26
    2f4c:	0a010000 	and	w0, w0, w1
    2f50:	7100281f 	cmp	w0, #0xa
    2f54:	54002760 	b.eq	3440 <_vfprintf_r+0x598>  // b.none
    2f58:	9107c3a0 	add	x0, x29, #0x1f0
    2f5c:	fd0033a8 	str	d8, [x29, #96]
    2f60:	aa0003e6 	mov	x6, x0
    2f64:	f900bba0 	str	x0, [x29, #368]
    2f68:	2f00e408 	movi	d8, #0x0
    2f6c:	f0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    2f70:	910c0000 	add	x0, x0, #0x300
    2f74:	a90573bb 	stp	x27, x28, [x29, #80]
    2f78:	9100401b 	add	x27, x0, #0x10
    2f7c:	a901d7b4 	stp	x20, x21, [x29, #24]
    2f80:	a903e7b8 	stp	x24, x25, [x29, #56]
    2f84:	a909ffbf 	stp	xzr, xzr, [x29, #152]
    2f88:	b900afbf 	str	wzr, [x29, #172]
    2f8c:	f9005bbf 	str	xzr, [x29, #176]
    2f90:	f90063bf 	str	xzr, [x29, #192]
    2f94:	f9006ba0 	str	x0, [x29, #208]
    2f98:	b900f3bf 	str	wzr, [x29, #240]
    2f9c:	b90117bf 	str	wzr, [x29, #276]
    2fa0:	f9008fb6 	str	x22, [x29, #280]
    2fa4:	b9017bbf 	str	wzr, [x29, #376]
    2fa8:	f900c3bf 	str	xzr, [x29, #384]
    2fac:	39400340 	ldrb	w0, [x26]
    2fb0:	aa1a03f4 	mov	x20, x26
    2fb4:	7100941f 	cmp	w0, #0x25
    2fb8:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
    2fbc:	540002a0 	b.eq	3010 <_vfprintf_r+0x168>  // b.none
    2fc0:	38401e80 	ldrb	w0, [x20, #1]!
    2fc4:	7100941f 	cmp	w0, #0x25
    2fc8:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
    2fcc:	54ffffa1 	b.ne	2fc0 <_vfprintf_r+0x118>  // b.any
    2fd0:	cb1a0293 	sub	x19, x20, x26
    2fd4:	340001f3 	cbz	w19, 3010 <_vfprintf_r+0x168>
    2fd8:	b9417ba0 	ldr	w0, [x29, #376]
    2fdc:	93407e61 	sxtw	x1, w19
    2fe0:	a90004da 	stp	x26, x1, [x6]
    2fe4:	910040c6 	add	x6, x6, #0x10
    2fe8:	11000400 	add	w0, w0, #0x1
    2fec:	b9017ba0 	str	w0, [x29, #376]
    2ff0:	71001c1f 	cmp	w0, #0x7
    2ff4:	f940c3a0 	ldr	x0, [x29, #384]
    2ff8:	8b010000 	add	x0, x0, x1
    2ffc:	f900c3a0 	str	x0, [x29, #384]
    3000:	540025ac 	b.gt	34b4 <_vfprintf_r+0x60c>
    3004:	b94117a0 	ldr	w0, [x29, #276]
    3008:	0b130000 	add	w0, w0, w19
    300c:	b90117a0 	str	w0, [x29, #276]
    3010:	39400280 	ldrb	w0, [x20]
    3014:	34004b00 	cbz	w0, 3974 <_vfprintf_r+0xacc>
    3018:	91000693 	add	x19, x20, #0x1
    301c:	39400688 	ldrb	w8, [x20, #1]
    3020:	12800007 	mov	w7, #0xffffffff            	// #-1
    3024:	d0000058 	adrp	x24, d000 <__trunctfdf2+0x290>
    3028:	2a0703f4 	mov	w20, w7
    302c:	91092318 	add	x24, x24, #0x248
    3030:	aa0603f9 	mov	x25, x6
    3034:	39053fbf 	strb	wzr, [x29, #335]
    3038:	52800015 	mov	w21, #0x0                   	// #0
    303c:	52800016 	mov	w22, #0x0                   	// #0
    3040:	91000673 	add	x19, x19, #0x1
    3044:	2a0803fc 	mov	w28, w8
    3048:	51008380 	sub	w0, w28, #0x20
    304c:	7101681f 	cmp	w0, #0x5a
    3050:	540021e9 	b.ls	348c <_vfprintf_r+0x5e4>  // b.plast
    3054:	aa1903e6 	mov	x6, x25
    3058:	340048fc 	cbz	w28, 3974 <_vfprintf_r+0xacc>
    305c:	39053fbf 	strb	wzr, [x29, #335]
    3060:	390623bc 	strb	w28, [x29, #392]
    3064:	52800034 	mov	w20, #0x1                   	// #1
    3068:	910623ba 	add	x26, x29, #0x188
    306c:	2a1403f8 	mov	w24, w20
    3070:	52800001 	mov	w1, #0x0                   	// #0
    3074:	52800007 	mov	w7, #0x0                   	// #0
    3078:	b900e3bf 	str	wzr, [x29, #224]
    307c:	b900ebbf 	str	wzr, [x29, #232]
    3080:	b900fbbf 	str	wzr, [x29, #248]
    3084:	f90087bf 	str	xzr, [x29, #264]
    3088:	721f02ca 	ands	w10, w22, #0x2
    308c:	11000a80 	add	w0, w20, #0x2
    3090:	1a941014 	csel	w20, w0, w20, ne  // ne = any
    3094:	52801099 	mov	w25, #0x84                  	// #132
    3098:	f940c3a0 	ldr	x0, [x29, #384]
    309c:	6a1902d9 	ands	w25, w22, w25
    30a0:	540006c1 	b.ne	3178 <_vfprintf_r+0x2d0>  // b.any
    30a4:	4b1402a4 	sub	w4, w21, w20
    30a8:	7100009f 	cmp	w4, #0x0
    30ac:	5400066d 	b.le	3178 <_vfprintf_r+0x2d0>
    30b0:	7100409f 	cmp	w4, #0x10
    30b4:	b9417ba1 	ldr	w1, [x29, #376]
    30b8:	5400046d 	b.le	3144 <_vfprintf_r+0x29c>
    30bc:	290f1fb4 	stp	w20, w7, [x29, #120]
    30c0:	d2800205 	mov	x5, #0x10                  	// #16
    30c4:	f90043b3 	str	x19, [x29, #128]
    30c8:	2a0403f3 	mov	w19, w4
    30cc:	b9008baa 	str	w10, [x29, #136]
    30d0:	f9406bb4 	ldr	x20, [x29, #208]
    30d4:	14000005 	b	30e8 <_vfprintf_r+0x240>
    30d8:	51004273 	sub	w19, w19, #0x10
    30dc:	910040c6 	add	x6, x6, #0x10
    30e0:	7100427f 	cmp	w19, #0x10
    30e4:	5400028d 	b.le	3134 <_vfprintf_r+0x28c>
    30e8:	11000421 	add	w1, w1, #0x1
    30ec:	91004000 	add	x0, x0, #0x10
    30f0:	a90014d4 	stp	x20, x5, [x6]
    30f4:	71001c3f 	cmp	w1, #0x7
    30f8:	b9017ba1 	str	w1, [x29, #376]
    30fc:	f900c3a0 	str	x0, [x29, #384]
    3100:	54fffecd 	b.le	30d8 <_vfprintf_r+0x230>
    3104:	f9408fa1 	ldr	x1, [x29, #280]
    3108:	9105c3a2 	add	x2, x29, #0x170
    310c:	aa1703e0 	mov	x0, x23
    3110:	94001ad2 	bl	9c58 <__sprint_r>
    3114:	350059a0 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    3118:	51004273 	sub	w19, w19, #0x10
    311c:	9107c3a6 	add	x6, x29, #0x1f0
    3120:	d2800205 	mov	x5, #0x10                  	// #16
    3124:	b9417ba1 	ldr	w1, [x29, #376]
    3128:	f940c3a0 	ldr	x0, [x29, #384]
    312c:	7100427f 	cmp	w19, #0x10
    3130:	54fffdcc 	b.gt	30e8 <_vfprintf_r+0x240>
    3134:	2a1303e4 	mov	w4, w19
    3138:	b9408baa 	ldr	w10, [x29, #136]
    313c:	294f1fb4 	ldp	w20, w7, [x29, #120]
    3140:	f94043b3 	ldr	x19, [x29, #128]
    3144:	11000421 	add	w1, w1, #0x1
    3148:	93407c84 	sxtw	x4, w4
    314c:	8b040000 	add	x0, x0, x4
    3150:	71001c3f 	cmp	w1, #0x7
    3154:	b9017ba1 	str	w1, [x29, #376]
    3158:	d0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    315c:	f90004c4 	str	x4, [x6, #8]
    3160:	910c0021 	add	x1, x1, #0x300
    3164:	f900c3a0 	str	x0, [x29, #384]
    3168:	f90000c1 	str	x1, [x6]
    316c:	54006a0c 	b.gt	3eac <_vfprintf_r+0x1004>
    3170:	39453fa1 	ldrb	w1, [x29, #335]
    3174:	910040c6 	add	x6, x6, #0x10
    3178:	340001a1 	cbz	w1, 31ac <_vfprintf_r+0x304>
    317c:	b9417ba1 	ldr	w1, [x29, #376]
    3180:	91000400 	add	x0, x0, #0x1
    3184:	f900c3a0 	str	x0, [x29, #384]
    3188:	910040c6 	add	x6, x6, #0x10
    318c:	11000421 	add	w1, w1, #0x1
    3190:	b9017ba1 	str	w1, [x29, #376]
    3194:	71001c3f 	cmp	w1, #0x7
    3198:	91053fa1 	add	x1, x29, #0x14f
    319c:	f81f00c1 	stur	x1, [x6, #-16]
    31a0:	d2800021 	mov	x1, #0x1                   	// #1
    31a4:	f81f80c1 	stur	x1, [x6, #-8]
    31a8:	54003fec 	b.gt	39a4 <_vfprintf_r+0xafc>
    31ac:	340001aa 	cbz	w10, 31e0 <_vfprintf_r+0x338>
    31b0:	b9417ba1 	ldr	w1, [x29, #376]
    31b4:	91000800 	add	x0, x0, #0x2
    31b8:	f900c3a0 	str	x0, [x29, #384]
    31bc:	910040c6 	add	x6, x6, #0x10
    31c0:	11000421 	add	w1, w1, #0x1
    31c4:	b9017ba1 	str	w1, [x29, #376]
    31c8:	71001c3f 	cmp	w1, #0x7
    31cc:	910543a1 	add	x1, x29, #0x150
    31d0:	f81f00c1 	stur	x1, [x6, #-16]
    31d4:	d2800041 	mov	x1, #0x2                   	// #2
    31d8:	f81f80c1 	stur	x1, [x6, #-8]
    31dc:	540054ec 	b.gt	3c78 <_vfprintf_r+0xdd0>
    31e0:	7102033f 	cmp	w25, #0x80
    31e4:	540049e0 	b.eq	3b20 <_vfprintf_r+0xc78>  // b.none
    31e8:	4b1800f9 	sub	w25, w7, w24
    31ec:	7100033f 	cmp	w25, #0x0
    31f0:	540007cd 	b.le	32e8 <_vfprintf_r+0x440>
    31f4:	7100433f 	cmp	w25, #0x10
    31f8:	b9417ba1 	ldr	w1, [x29, #376]
    31fc:	540004cd 	b.le	3294 <_vfprintf_r+0x3ec>
    3200:	aa1b03e2 	mov	x2, x27
    3204:	d2800204 	mov	x4, #0x10                  	// #16
    3208:	2a1903fb 	mov	w27, w25
    320c:	2a1803f9 	mov	w25, w24
    3210:	2a1403f8 	mov	w24, w20
    3214:	aa1303f4 	mov	x20, x19
    3218:	aa0203f3 	mov	x19, x2
    321c:	14000005 	b	3230 <_vfprintf_r+0x388>
    3220:	5100437b 	sub	w27, w27, #0x10
    3224:	910040c6 	add	x6, x6, #0x10
    3228:	7100437f 	cmp	w27, #0x10
    322c:	5400028d 	b.le	327c <_vfprintf_r+0x3d4>
    3230:	11000421 	add	w1, w1, #0x1
    3234:	91004000 	add	x0, x0, #0x10
    3238:	a90010d3 	stp	x19, x4, [x6]
    323c:	71001c3f 	cmp	w1, #0x7
    3240:	b9017ba1 	str	w1, [x29, #376]
    3244:	f900c3a0 	str	x0, [x29, #384]
    3248:	54fffecd 	b.le	3220 <_vfprintf_r+0x378>
    324c:	f9408fa1 	ldr	x1, [x29, #280]
    3250:	9105c3a2 	add	x2, x29, #0x170
    3254:	aa1703e0 	mov	x0, x23
    3258:	94001a80 	bl	9c58 <__sprint_r>
    325c:	35004f60 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    3260:	5100437b 	sub	w27, w27, #0x10
    3264:	9107c3a6 	add	x6, x29, #0x1f0
    3268:	d2800204 	mov	x4, #0x10                  	// #16
    326c:	b9417ba1 	ldr	w1, [x29, #376]
    3270:	f940c3a0 	ldr	x0, [x29, #384]
    3274:	7100437f 	cmp	w27, #0x10
    3278:	54fffdcc 	b.gt	3230 <_vfprintf_r+0x388>
    327c:	aa1303e2 	mov	x2, x19
    3280:	aa1403f3 	mov	x19, x20
    3284:	2a1803f4 	mov	w20, w24
    3288:	2a1903f8 	mov	w24, w25
    328c:	2a1b03f9 	mov	w25, w27
    3290:	aa0203fb 	mov	x27, x2
    3294:	11000421 	add	w1, w1, #0x1
    3298:	93407f39 	sxtw	x25, w25
    329c:	71001c3f 	cmp	w1, #0x7
    32a0:	b9017ba1 	str	w1, [x29, #376]
    32a4:	d0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    32a8:	910c0021 	add	x1, x1, #0x300
    32ac:	8b190000 	add	x0, x0, x25
    32b0:	f90004d9 	str	x25, [x6, #8]
    32b4:	91004021 	add	x1, x1, #0x10
    32b8:	f900c3a0 	str	x0, [x29, #384]
    32bc:	f90000c1 	str	x1, [x6]
    32c0:	910040c6 	add	x6, x6, #0x10
    32c4:	5400012d 	b.le	32e8 <_vfprintf_r+0x440>
    32c8:	f9408fa1 	ldr	x1, [x29, #280]
    32cc:	9105c3a2 	add	x2, x29, #0x170
    32d0:	aa1703e0 	mov	x0, x23
    32d4:	94001a61 	bl	9c58 <__sprint_r>
    32d8:	35004b80 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    32dc:	f940c3a0 	ldr	x0, [x29, #384]
    32e0:	9107c3a6 	add	x6, x29, #0x1f0
    32e4:	d503201f 	nop
    32e8:	37403ed6 	tbnz	w22, #8, 3ac0 <_vfprintf_r+0xc18>
    32ec:	b9417ba1 	ldr	w1, [x29, #376]
    32f0:	93407f18 	sxtw	x24, w24
    32f4:	8b180000 	add	x0, x0, x24
    32f8:	a90060da 	stp	x26, x24, [x6]
    32fc:	11000421 	add	w1, w1, #0x1
    3300:	b9017ba1 	str	w1, [x29, #376]
    3304:	f900c3a0 	str	x0, [x29, #384]
    3308:	71001c3f 	cmp	w1, #0x7
    330c:	54003cac 	b.gt	3aa0 <_vfprintf_r+0xbf8>
    3310:	910040c6 	add	x6, x6, #0x10
    3314:	36100676 	tbz	w22, #2, 33e0 <_vfprintf_r+0x538>
    3318:	4b1402b8 	sub	w24, w21, w20
    331c:	7100031f 	cmp	w24, #0x0
    3320:	5400060d 	b.le	33e0 <_vfprintf_r+0x538>
    3324:	7100431f 	cmp	w24, #0x10
    3328:	b9417ba1 	ldr	w1, [x29, #376]
    332c:	5400036d 	b.le	3398 <_vfprintf_r+0x4f0>
    3330:	d2800219 	mov	x25, #0x10                  	// #16
    3334:	f9406bba 	ldr	x26, [x29, #208]
    3338:	f9408fb6 	ldr	x22, [x29, #280]
    333c:	14000005 	b	3350 <_vfprintf_r+0x4a8>
    3340:	51004318 	sub	w24, w24, #0x10
    3344:	910040c6 	add	x6, x6, #0x10
    3348:	7100431f 	cmp	w24, #0x10
    334c:	5400026d 	b.le	3398 <_vfprintf_r+0x4f0>
    3350:	11000421 	add	w1, w1, #0x1
    3354:	91004000 	add	x0, x0, #0x10
    3358:	a90064da 	stp	x26, x25, [x6]
    335c:	71001c3f 	cmp	w1, #0x7
    3360:	b9017ba1 	str	w1, [x29, #376]
    3364:	f900c3a0 	str	x0, [x29, #384]
    3368:	54fffecd 	b.le	3340 <_vfprintf_r+0x498>
    336c:	9105c3a2 	add	x2, x29, #0x170
    3370:	aa1603e1 	mov	x1, x22
    3374:	aa1703e0 	mov	x0, x23
    3378:	94001a38 	bl	9c58 <__sprint_r>
    337c:	35004680 	cbnz	w0, 3c4c <_vfprintf_r+0xda4>
    3380:	51004318 	sub	w24, w24, #0x10
    3384:	9107c3a6 	add	x6, x29, #0x1f0
    3388:	b9417ba1 	ldr	w1, [x29, #376]
    338c:	7100431f 	cmp	w24, #0x10
    3390:	f940c3a0 	ldr	x0, [x29, #384]
    3394:	54fffdec 	b.gt	3350 <_vfprintf_r+0x4a8>
    3398:	11000421 	add	w1, w1, #0x1
    339c:	93407f18 	sxtw	x24, w24
    33a0:	8b180000 	add	x0, x0, x24
    33a4:	71001c3f 	cmp	w1, #0x7
    33a8:	b9017ba1 	str	w1, [x29, #376]
    33ac:	d0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    33b0:	f90004d8 	str	x24, [x6, #8]
    33b4:	910c0021 	add	x1, x1, #0x300
    33b8:	f900c3a0 	str	x0, [x29, #384]
    33bc:	f90000c1 	str	x1, [x6]
    33c0:	5400010d 	b.le	33e0 <_vfprintf_r+0x538>
    33c4:	f9408fa1 	ldr	x1, [x29, #280]
    33c8:	9105c3a2 	add	x2, x29, #0x170
    33cc:	aa1703e0 	mov	x0, x23
    33d0:	94001a22 	bl	9c58 <__sprint_r>
    33d4:	350043a0 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    33d8:	f940c3a0 	ldr	x0, [x29, #384]
    33dc:	d503201f 	nop
    33e0:	b94117a1 	ldr	w1, [x29, #276]
    33e4:	6b1402bf 	cmp	w21, w20
    33e8:	1a94a2b4 	csel	w20, w21, w20, ge  // ge = tcont
    33ec:	0b140021 	add	w1, w1, w20
    33f0:	b90117a1 	str	w1, [x29, #276]
    33f4:	b50041e0 	cbnz	x0, 3c30 <_vfprintf_r+0xd88>
    33f8:	f94087a0 	ldr	x0, [x29, #264]
    33fc:	b9017bbf 	str	wzr, [x29, #376]
    3400:	b4000080 	cbz	x0, 3410 <_vfprintf_r+0x568>
    3404:	f94087a1 	ldr	x1, [x29, #264]
    3408:	aa1703e0 	mov	x0, x23
    340c:	9400109b 	bl	7678 <_free_r>
    3410:	9107c3a6 	add	x6, x29, #0x1f0
    3414:	aa1303fa 	mov	x26, x19
    3418:	17fffee5 	b	2fac <_vfprintf_r+0x104>
    341c:	aa1603e1 	mov	x1, x22
    3420:	aa1703e0 	mov	x0, x23
    3424:	9400090b 	bl	5850 <__swsetup_r>
    3428:	35002b80 	cbnz	w0, 3998 <_vfprintf_r+0xaf0>
    342c:	794022c0 	ldrh	w0, [x22, #16]
    3430:	52800341 	mov	w1, #0x1a                  	// #26
    3434:	0a010000 	and	w0, w0, w1
    3438:	7100281f 	cmp	w0, #0xa
    343c:	54ffd8e1 	b.ne	2f58 <_vfprintf_r+0xb0>  // b.any
    3440:	79c026c0 	ldrsh	w0, [x22, #18]
    3444:	37ffd8a0 	tbnz	w0, #31, 2f58 <_vfprintf_r+0xb0>
    3448:	a9400e62 	ldp	x2, x3, [x19]
    344c:	a9410660 	ldp	x0, x1, [x19, #16]
    3450:	a9120fa2 	stp	x2, x3, [x29, #288]
    3454:	a91307a0 	stp	x0, x1, [x29, #304]
    3458:	910483a3 	add	x3, x29, #0x120
    345c:	aa1a03e2 	mov	x2, x26
    3460:	aa1603e1 	mov	x1, x22
    3464:	aa1703e0 	mov	x0, x23
    3468:	940008c8 	bl	5788 <__sbprintf>
    346c:	b90117a0 	str	w0, [x29, #276]
    3470:	b94117a0 	ldr	w0, [x29, #276]
    3474:	a9407bfd 	ldp	x29, x30, [sp]
    3478:	f9400bf3 	ldr	x19, [sp, #16]
    347c:	a942dff6 	ldp	x22, x23, [sp, #40]
    3480:	f94027fa 	ldr	x26, [sp, #72]
    3484:	9109c3ff 	add	sp, sp, #0x270
    3488:	d65f03c0 	ret
    348c:	78605b00 	ldrh	w0, [x24, w0, uxtw #1]
    3490:	10000061 	adr	x1, 349c <_vfprintf_r+0x5f4>
    3494:	8b20a820 	add	x0, x1, w0, sxth #2
    3498:	d61f0000 	br	x0
    349c:	321c02d6 	orr	w22, w22, #0x10
    34a0:	39400268 	ldrb	w8, [x19]
    34a4:	17fffee7 	b	3040 <_vfprintf_r+0x198>
    34a8:	aa1703e0 	mov	x0, x23
    34ac:	94001017 	bl	7508 <__sinit>
    34b0:	17fffe9a 	b	2f18 <_vfprintf_r+0x70>
    34b4:	f9408fa1 	ldr	x1, [x29, #280]
    34b8:	9105c3a2 	add	x2, x29, #0x170
    34bc:	aa1703e0 	mov	x0, x23
    34c0:	940019e6 	bl	9c58 <__sprint_r>
    34c4:	3500b0a0 	cbnz	w0, 4ad8 <_vfprintf_r+0x1c30>
    34c8:	9107c3a6 	add	x6, x29, #0x1f0
    34cc:	17fffece 	b	3004 <_vfprintf_r+0x15c>
    34d0:	5100c380 	sub	w0, w28, #0x30
    34d4:	52800015 	mov	w21, #0x0                   	// #0
    34d8:	0b150ab5 	add	w21, w21, w21, lsl #2
    34dc:	3840167c 	ldrb	w28, [x19], #1
    34e0:	0b150415 	add	w21, w0, w21, lsl #1
    34e4:	5100c380 	sub	w0, w28, #0x30
    34e8:	7100241f 	cmp	w0, #0x9
    34ec:	54ffff69 	b.ls	34d8 <_vfprintf_r+0x630>  // b.plast
    34f0:	17fffed6 	b	3048 <_vfprintf_r+0x1a0>
    34f4:	aa1903e6 	mov	x6, x25
    34f8:	2a1403e7 	mov	w7, w20
    34fc:	2a1603f9 	mov	w25, w22
    3500:	b94113a0 	ldr	w0, [x29, #272]
    3504:	36280c79 	tbz	w25, #5, 3690 <_vfprintf_r+0x7e8>
    3508:	36f800c0 	tbz	w0, #31, 3520 <_vfprintf_r+0x678>
    350c:	b94113a0 	ldr	w0, [x29, #272]
    3510:	11002001 	add	w1, w0, #0x8
    3514:	7100003f 	cmp	w1, #0x0
    3518:	5400fbed 	b.le	5494 <_vfprintf_r+0x25ec>
    351c:	b90113a1 	str	w1, [x29, #272]
    3520:	f94083a0 	ldr	x0, [x29, #256]
    3524:	91003c01 	add	x1, x0, #0xf
    3528:	927df021 	and	x1, x1, #0xfffffffffffffff8
    352c:	f90083a1 	str	x1, [x29, #256]
    3530:	f9400014 	ldr	x20, [x0]
    3534:	910623a3 	add	x3, x29, #0x188
    3538:	39053fbf 	strb	wzr, [x29, #335]
    353c:	52800020 	mov	w0, #0x1                   	// #1
    3540:	310004ff 	cmn	w7, #0x1
    3544:	91019078 	add	x24, x3, #0x64
    3548:	540086a1 	b.ne	461c <_vfprintf_r+0x1774>  // b.any
    354c:	d503201f 	nop
    3550:	7100041f 	cmp	w0, #0x1
    3554:	540005e0 	b.eq	3610 <_vfprintf_r+0x768>  // b.none
    3558:	7100081f 	cmp	w0, #0x2
    355c:	54009201 	b.ne	479c <_vfprintf_r+0x18f4>  // b.any
    3560:	f94063a1 	ldr	x1, [x29, #192]
    3564:	9101907a 	add	x26, x3, #0x64
    3568:	92400e80 	and	x0, x20, #0xf
    356c:	d344fe94 	lsr	x20, x20, #4
    3570:	38606820 	ldrb	w0, [x1, x0]
    3574:	381fff40 	strb	w0, [x26, #-1]!
    3578:	b5ffff94 	cbnz	x20, 3568 <_vfprintf_r+0x6c0>
    357c:	39453fa1 	ldrb	w1, [x29, #335]
    3580:	4b1a0318 	sub	w24, w24, w26
    3584:	b900e3bf 	str	wzr, [x29, #224]
    3588:	6b07031f 	cmp	w24, w7
    358c:	b900ebbf 	str	wzr, [x29, #232]
    3590:	2a1903f6 	mov	w22, w25
    3594:	b900fbbf 	str	wzr, [x29, #248]
    3598:	1a87a314 	csel	w20, w24, w7, ge  // ge = tcont
    359c:	f90087bf 	str	xzr, [x29, #264]
    35a0:	34ffd741 	cbz	w1, 3088 <_vfprintf_r+0x1e0>
    35a4:	11000694 	add	w20, w20, #0x1
    35a8:	17fffeb8 	b	3088 <_vfprintf_r+0x1e0>
    35ac:	aa1903e6 	mov	x6, x25
    35b0:	2a1403e7 	mov	w7, w20
    35b4:	2a1603f9 	mov	w25, w22
    35b8:	b94113a0 	ldr	w0, [x29, #272]
    35bc:	36281439 	tbz	w25, #5, 3840 <_vfprintf_r+0x998>
    35c0:	36f800c0 	tbz	w0, #31, 35d8 <_vfprintf_r+0x730>
    35c4:	b94113a0 	ldr	w0, [x29, #272]
    35c8:	11002001 	add	w1, w0, #0x8
    35cc:	7100003f 	cmp	w1, #0x0
    35d0:	5400f2ad 	b.le	5424 <_vfprintf_r+0x257c>
    35d4:	b90113a1 	str	w1, [x29, #272]
    35d8:	f94083a0 	ldr	x0, [x29, #256]
    35dc:	91003c01 	add	x1, x0, #0xf
    35e0:	927df021 	and	x1, x1, #0xfffffffffffffff8
    35e4:	f90083a1 	str	x1, [x29, #256]
    35e8:	f9400014 	ldr	x20, [x0]
    35ec:	b6f80094 	tbz	x20, #63, 35fc <_vfprintf_r+0x754>
    35f0:	cb1403f4 	neg	x20, x20
    35f4:	528005a0 	mov	w0, #0x2d                  	// #45
    35f8:	39053fa0 	strb	w0, [x29, #335]
    35fc:	910623a3 	add	x3, x29, #0x188
    3600:	310004ff 	cmn	w7, #0x1
    3604:	91019078 	add	x24, x3, #0x64
    3608:	52800020 	mov	w0, #0x1                   	// #1
    360c:	54008081 	b.ne	461c <_vfprintf_r+0x1774>  // b.any
    3610:	f100269f 	cmp	x20, #0x9
    3614:	54009108 	b.hi	4834 <_vfprintf_r+0x198c>  // b.pmore
    3618:	1100c294 	add	w20, w20, #0x30
    361c:	2a1903f6 	mov	w22, w25
    3620:	3907afb4 	strb	w20, [x29, #491]
    3624:	91018c7a 	add	x26, x3, #0x63
    3628:	52800038 	mov	w24, #0x1                   	// #1
    362c:	14000407 	b	4648 <_vfprintf_r+0x17a0>
    3630:	d0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    3634:	91152000 	add	x0, x0, #0x548
    3638:	f90063a0 	str	x0, [x29, #192]
    363c:	2a1403e7 	mov	w7, w20
    3640:	aa1903e6 	mov	x6, x25
    3644:	b94113a0 	ldr	w0, [x29, #272]
    3648:	36280656 	tbz	w22, #5, 3710 <_vfprintf_r+0x868>
    364c:	36f800c0 	tbz	w0, #31, 3664 <_vfprintf_r+0x7bc>
    3650:	b94113a0 	ldr	w0, [x29, #272]
    3654:	11002001 	add	w1, w0, #0x8
    3658:	7100003f 	cmp	w1, #0x0
    365c:	5400eced 	b.le	53f8 <_vfprintf_r+0x2550>
    3660:	b90113a1 	str	w1, [x29, #272]
    3664:	f94083a0 	ldr	x0, [x29, #256]
    3668:	91003c01 	add	x1, x0, #0xf
    366c:	927df021 	and	x1, x1, #0xfffffffffffffff8
    3670:	f90083a1 	str	x1, [x29, #256]
    3674:	f9400014 	ldr	x20, [x0]
    3678:	14000389 	b	449c <_vfprintf_r+0x15f4>
    367c:	aa1903e6 	mov	x6, x25
    3680:	2a1403e7 	mov	w7, w20
    3684:	321c02d9 	orr	w25, w22, #0x10
    3688:	b94113a0 	ldr	w0, [x29, #272]
    368c:	372ff3f9 	tbnz	w25, #5, 3508 <_vfprintf_r+0x660>
    3690:	3727f3d9 	tbnz	w25, #4, 3508 <_vfprintf_r+0x660>
    3694:	36306e59 	tbz	w25, #6, 445c <_vfprintf_r+0x15b4>
    3698:	36f800c0 	tbz	w0, #31, 36b0 <_vfprintf_r+0x808>
    369c:	b94113a0 	ldr	w0, [x29, #272]
    36a0:	11002001 	add	w1, w0, #0x8
    36a4:	7100003f 	cmp	w1, #0x0
    36a8:	540102ed 	b.le	5704 <_vfprintf_r+0x285c>
    36ac:	b90113a1 	str	w1, [x29, #272]
    36b0:	f94083a0 	ldr	x0, [x29, #256]
    36b4:	91002c01 	add	x1, x0, #0xb
    36b8:	927df021 	and	x1, x1, #0xfffffffffffffff8
    36bc:	f90083a1 	str	x1, [x29, #256]
    36c0:	79400014 	ldrh	w20, [x0]
    36c4:	52800020 	mov	w0, #0x1                   	// #1
    36c8:	140003d0 	b	4608 <_vfprintf_r+0x1760>
    36cc:	39400268 	ldrb	w8, [x19]
    36d0:	7101a11f 	cmp	w8, #0x68
    36d4:	54005bc0 	b.eq	424c <_vfprintf_r+0x13a4>  // b.none
    36d8:	321a02d6 	orr	w22, w22, #0x40
    36dc:	17fffe59 	b	3040 <_vfprintf_r+0x198>
    36e0:	39400268 	ldrb	w8, [x19]
    36e4:	7101b11f 	cmp	w8, #0x6c
    36e8:	54005ba0 	b.eq	425c <_vfprintf_r+0x13b4>  // b.none
    36ec:	321c02d6 	orr	w22, w22, #0x10
    36f0:	17fffe54 	b	3040 <_vfprintf_r+0x198>
    36f4:	d0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    36f8:	91158000 	add	x0, x0, #0x560
    36fc:	f90063a0 	str	x0, [x29, #192]
    3700:	2a1403e7 	mov	w7, w20
    3704:	aa1903e6 	mov	x6, x25
    3708:	b94113a0 	ldr	w0, [x29, #272]
    370c:	372ffa16 	tbnz	w22, #5, 364c <_vfprintf_r+0x7a4>
    3710:	3727f9f6 	tbnz	w22, #4, 364c <_vfprintf_r+0x7a4>
    3714:	36306b76 	tbz	w22, #6, 4480 <_vfprintf_r+0x15d8>
    3718:	36f800c0 	tbz	w0, #31, 3730 <_vfprintf_r+0x888>
    371c:	b94113a0 	ldr	w0, [x29, #272]
    3720:	11002001 	add	w1, w0, #0x8
    3724:	7100003f 	cmp	w1, #0x0
    3728:	5401004d 	b.le	5730 <_vfprintf_r+0x2888>
    372c:	b90113a1 	str	w1, [x29, #272]
    3730:	f94083a0 	ldr	x0, [x29, #256]
    3734:	91002c01 	add	x1, x0, #0xb
    3738:	927df021 	and	x1, x1, #0xfffffffffffffff8
    373c:	79400014 	ldrh	w20, [x0]
    3740:	f90083a1 	str	x1, [x29, #256]
    3744:	14000356 	b	449c <_vfprintf_r+0x15f4>
    3748:	52800560 	mov	w0, #0x2b                  	// #43
    374c:	39400268 	ldrb	w8, [x19]
    3750:	39053fa0 	strb	w0, [x29, #335]
    3754:	17fffe3b 	b	3040 <_vfprintf_r+0x198>
    3758:	39400268 	ldrb	w8, [x19]
    375c:	321e02d6 	orr	w22, w22, #0x4
    3760:	17fffe38 	b	3040 <_vfprintf_r+0x198>
    3764:	3940027c 	ldrb	w28, [x19]
    3768:	91000660 	add	x0, x19, #0x1
    376c:	7100ab9f 	cmp	w28, #0x2a
    3770:	5400e160 	b.eq	539c <_vfprintf_r+0x24f4>  // b.none
    3774:	aa0003f3 	mov	x19, x0
    3778:	5100c380 	sub	w0, w28, #0x30
    377c:	7100241f 	cmp	w0, #0x9
    3780:	52800014 	mov	w20, #0x0                   	// #0
    3784:	54ffc628 	b.hi	3048 <_vfprintf_r+0x1a0>  // b.pmore
    3788:	0b140a87 	add	w7, w20, w20, lsl #2
    378c:	3840167c 	ldrb	w28, [x19], #1
    3790:	0b070414 	add	w20, w0, w7, lsl #1
    3794:	5100c380 	sub	w0, w28, #0x30
    3798:	7100241f 	cmp	w0, #0x9
    379c:	54ffff69 	b.ls	3788 <_vfprintf_r+0x8e0>  // b.plast
    37a0:	17fffe2a 	b	3048 <_vfprintf_r+0x1a0>
    37a4:	2a1403e7 	mov	w7, w20
    37a8:	aa1903e6 	mov	x6, x25
    37ac:	b940aba0 	ldr	w0, [x29, #168]
    37b0:	36189af6 	tbz	w22, #3, 4b0c <_vfprintf_r+0x1c64>
    37b4:	37f8dd00 	tbnz	w0, #31, 5354 <_vfprintf_r+0x24ac>
    37b8:	f94083a0 	ldr	x0, [x29, #256]
    37bc:	91003c00 	add	x0, x0, #0xf
    37c0:	927cec00 	and	x0, x0, #0xfffffffffffffff0
    37c4:	91004001 	add	x1, x0, #0x10
    37c8:	f90083a1 	str	x1, [x29, #256]
    37cc:	140006ec 	b	537c <_vfprintf_r+0x24d4>
    37d0:	321902d6 	orr	w22, w22, #0x80
    37d4:	39400268 	ldrb	w8, [x19]
    37d8:	17fffe1a 	b	3040 <_vfprintf_r+0x198>
    37dc:	321d02d6 	orr	w22, w22, #0x8
    37e0:	39400268 	ldrb	w8, [x19]
    37e4:	17fffe17 	b	3040 <_vfprintf_r+0x198>
    37e8:	2a1403e7 	mov	w7, w20
    37ec:	aa1903e6 	mov	x6, x25
    37f0:	321c02d6 	orr	w22, w22, #0x10
    37f4:	b94113a0 	ldr	w0, [x29, #272]
    37f8:	36280a36 	tbz	w22, #5, 393c <_vfprintf_r+0xa94>
    37fc:	36f800c0 	tbz	w0, #31, 3814 <_vfprintf_r+0x96c>
    3800:	b94113a0 	ldr	w0, [x29, #272]
    3804:	11002001 	add	w1, w0, #0x8
    3808:	7100003f 	cmp	w1, #0x0
    380c:	5400d98d 	b.le	533c <_vfprintf_r+0x2494>
    3810:	b90113a1 	str	w1, [x29, #272]
    3814:	f94083a0 	ldr	x0, [x29, #256]
    3818:	91003c01 	add	x1, x0, #0xf
    381c:	927df021 	and	x1, x1, #0xfffffffffffffff8
    3820:	f90083a1 	str	x1, [x29, #256]
    3824:	f9400014 	ldr	x20, [x0]
    3828:	140003ab 	b	46d4 <_vfprintf_r+0x182c>
    382c:	aa1903e6 	mov	x6, x25
    3830:	2a1403e7 	mov	w7, w20
    3834:	321c02d9 	orr	w25, w22, #0x10
    3838:	b94113a0 	ldr	w0, [x29, #272]
    383c:	372fec39 	tbnz	w25, #5, 35c0 <_vfprintf_r+0x718>
    3840:	3727ec19 	tbnz	w25, #4, 35c0 <_vfprintf_r+0x718>
    3844:	36305299 	tbz	w25, #6, 4294 <_vfprintf_r+0x13ec>
    3848:	36f800c0 	tbz	w0, #31, 3860 <_vfprintf_r+0x9b8>
    384c:	b94113a0 	ldr	w0, [x29, #272]
    3850:	11002001 	add	w1, w0, #0x8
    3854:	7100003f 	cmp	w1, #0x0
    3858:	5400e98d 	b.le	5588 <_vfprintf_r+0x26e0>
    385c:	b90113a1 	str	w1, [x29, #272]
    3860:	f94083a0 	ldr	x0, [x29, #256]
    3864:	91002c01 	add	x1, x0, #0xb
    3868:	927df021 	and	x1, x1, #0xfffffffffffffff8
    386c:	79800014 	ldrsh	x20, [x0]
    3870:	f90083a1 	str	x1, [x29, #256]
    3874:	17ffff5e 	b	35ec <_vfprintf_r+0x744>
    3878:	39453fa0 	ldrb	w0, [x29, #335]
    387c:	39400268 	ldrb	w8, [x19]
    3880:	35ffbe00 	cbnz	w0, 3040 <_vfprintf_r+0x198>
    3884:	52800400 	mov	w0, #0x20                  	// #32
    3888:	39053fa0 	strb	w0, [x29, #335]
    388c:	17fffded 	b	3040 <_vfprintf_r+0x198>
    3890:	320002d6 	orr	w22, w22, #0x1
    3894:	39400268 	ldrb	w8, [x19]
    3898:	17fffdea 	b	3040 <_vfprintf_r+0x198>
    389c:	aa1703e0 	mov	x0, x23
    38a0:	940010c6 	bl	7bb8 <_localeconv_r>
    38a4:	f9400400 	ldr	x0, [x0, #8]
    38a8:	f9005ba0 	str	x0, [x29, #176]
    38ac:	94001835 	bl	9980 <strlen>
    38b0:	aa0003fc 	mov	x28, x0
    38b4:	aa1703e0 	mov	x0, x23
    38b8:	f9004fbc 	str	x28, [x29, #152]
    38bc:	940010bf 	bl	7bb8 <_localeconv_r>
    38c0:	f9400800 	ldr	x0, [x0, #16]
    38c4:	f90053a0 	str	x0, [x29, #160]
    38c8:	f100039f 	cmp	x28, #0x0
    38cc:	fa401804 	ccmp	x0, #0x0, #0x4, ne  // ne = any
    38d0:	54004240 	b.eq	4118 <_vfprintf_r+0x1270>  // b.none
    38d4:	39400000 	ldrb	w0, [x0]
    38d8:	39400268 	ldrb	w8, [x19]
    38dc:	7100001f 	cmp	w0, #0x0
    38e0:	321602c0 	orr	w0, w22, #0x400
    38e4:	1a961016 	csel	w22, w0, w22, ne  // ne = any
    38e8:	17fffdd6 	b	3040 <_vfprintf_r+0x198>
    38ec:	aa1903e6 	mov	x6, x25
    38f0:	b94113a0 	ldr	w0, [x29, #272]
    38f4:	36284176 	tbz	w22, #5, 4120 <_vfprintf_r+0x1278>
    38f8:	37f8de40 	tbnz	w0, #31, 54c0 <_vfprintf_r+0x2618>
    38fc:	f94083a0 	ldr	x0, [x29, #256]
    3900:	91003c01 	add	x1, x0, #0xf
    3904:	927df021 	and	x1, x1, #0xfffffffffffffff8
    3908:	f90083a1 	str	x1, [x29, #256]
    390c:	f9400000 	ldr	x0, [x0]
    3910:	aa1303fa 	mov	x26, x19
    3914:	b98117a1 	ldrsw	x1, [x29, #276]
    3918:	f9000001 	str	x1, [x0]
    391c:	17fffda4 	b	2fac <_vfprintf_r+0x104>
    3920:	321b02d6 	orr	w22, w22, #0x20
    3924:	39400268 	ldrb	w8, [x19]
    3928:	17fffdc6 	b	3040 <_vfprintf_r+0x198>
    392c:	2a1403e7 	mov	w7, w20
    3930:	aa1903e6 	mov	x6, x25
    3934:	b94113a0 	ldr	w0, [x29, #272]
    3938:	372ff636 	tbnz	w22, #5, 37fc <_vfprintf_r+0x954>
    393c:	3727f616 	tbnz	w22, #4, 37fc <_vfprintf_r+0x954>
    3940:	36305bd6 	tbz	w22, #6, 44b8 <_vfprintf_r+0x1610>
    3944:	36f800c0 	tbz	w0, #31, 395c <_vfprintf_r+0xab4>
    3948:	b94113a0 	ldr	w0, [x29, #272]
    394c:	11002001 	add	w1, w0, #0x8
    3950:	7100003f 	cmp	w1, #0x0
    3954:	5400ee2d 	b.le	5718 <_vfprintf_r+0x2870>
    3958:	b90113a1 	str	w1, [x29, #272]
    395c:	f94083a0 	ldr	x0, [x29, #256]
    3960:	91002c01 	add	x1, x0, #0xb
    3964:	927df021 	and	x1, x1, #0xfffffffffffffff8
    3968:	79400014 	ldrh	w20, [x0]
    396c:	f90083a1 	str	x1, [x29, #256]
    3970:	14000359 	b	46d4 <_vfprintf_r+0x182c>
    3974:	f940c3a0 	ldr	x0, [x29, #384]
    3978:	f9408fb6 	ldr	x22, [x29, #280]
    397c:	b5006f40 	cbnz	x0, 4764 <_vfprintf_r+0x18bc>
    3980:	794022c0 	ldrh	w0, [x22, #16]
    3984:	a941d7b4 	ldp	x20, x21, [x29, #24]
    3988:	a943e7b8 	ldp	x24, x25, [x29, #56]
    398c:	a94573bb 	ldp	x27, x28, [x29, #80]
    3990:	fd4033a8 	ldr	d8, [x29, #96]
    3994:	3637d6e0 	tbz	w0, #6, 3470 <_vfprintf_r+0x5c8>
    3998:	12800000 	mov	w0, #0xffffffff            	// #-1
    399c:	b90117a0 	str	w0, [x29, #276]
    39a0:	17fffeb4 	b	3470 <_vfprintf_r+0x5c8>
    39a4:	f9408fa1 	ldr	x1, [x29, #280]
    39a8:	9105c3a2 	add	x2, x29, #0x170
    39ac:	aa1703e0 	mov	x0, x23
    39b0:	b90083a7 	str	w7, [x29, #128]
    39b4:	b9008baa 	str	w10, [x29, #136]
    39b8:	940018a8 	bl	9c58 <__sprint_r>
    39bc:	35001460 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    39c0:	9107c3a6 	add	x6, x29, #0x1f0
    39c4:	b94083a7 	ldr	w7, [x29, #128]
    39c8:	b9408baa 	ldr	w10, [x29, #136]
    39cc:	f940c3a0 	ldr	x0, [x29, #384]
    39d0:	17fffdf7 	b	31ac <_vfprintf_r+0x304>
    39d4:	b940f3a1 	ldr	w1, [x29, #240]
    39d8:	91000400 	add	x0, x0, #0x1
    39dc:	b9417ba4 	ldr	w4, [x29, #376]
    39e0:	910040c2 	add	x2, x6, #0x10
    39e4:	7100043f 	cmp	w1, #0x1
    39e8:	f90000da 	str	x26, [x6]
    39ec:	11000481 	add	w1, w4, #0x1
    39f0:	b9017ba1 	str	w1, [x29, #376]
    39f4:	540024ad 	b.le	3e88 <_vfprintf_r+0xfe0>
    39f8:	d2800024 	mov	x4, #0x1                   	// #1
    39fc:	f900c3a0 	str	x0, [x29, #384]
    3a00:	f90004c4 	str	x4, [x6, #8]
    3a04:	71001c3f 	cmp	w1, #0x7
    3a08:	540034cc 	b.gt	40a0 <_vfprintf_r+0x11f8>
    3a0c:	f9406fa3 	ldr	x3, [x29, #216]
    3a10:	11000421 	add	w1, w1, #0x1
    3a14:	f94067a4 	ldr	x4, [x29, #200]
    3a18:	71001c3f 	cmp	w1, #0x7
    3a1c:	8b030000 	add	x0, x0, x3
    3a20:	a9000c44 	stp	x4, x3, [x2]
    3a24:	b9017ba1 	str	w1, [x29, #376]
    3a28:	f900c3a0 	str	x0, [x29, #384]
    3a2c:	540034cc 	b.gt	40c4 <_vfprintf_r+0x121c>
    3a30:	91004042 	add	x2, x2, #0x10
    3a34:	1e602108 	fcmp	d8, #0.0
    3a38:	b940f3a3 	ldr	w3, [x29, #240]
    3a3c:	11000424 	add	w4, w1, #0x1
    3a40:	91004046 	add	x6, x2, #0x10
    3a44:	51000478 	sub	w24, w3, #0x1
    3a48:	54001940 	b.eq	3d70 <_vfprintf_r+0xec8>  // b.none
    3a4c:	93407f18 	sxtw	x24, w24
    3a50:	91000743 	add	x3, x26, #0x1
    3a54:	8b180000 	add	x0, x0, x24
    3a58:	a9006043 	stp	x3, x24, [x2]
    3a5c:	b9017ba4 	str	w4, [x29, #376]
    3a60:	71001c9f 	cmp	w4, #0x7
    3a64:	f900c3a0 	str	x0, [x29, #384]
    3a68:	5400340c 	b.gt	40e8 <_vfprintf_r+0x1240>
    3a6c:	91008043 	add	x3, x2, #0x20
    3a70:	11000824 	add	w4, w1, #0x2
    3a74:	aa0603e2 	mov	x2, x6
    3a78:	aa0303e6 	mov	x6, x3
    3a7c:	b980afa1 	ldrsw	x1, [x29, #172]
    3a80:	71001c9f 	cmp	w4, #0x7
    3a84:	f9000441 	str	x1, [x2, #8]
    3a88:	8b000020 	add	x0, x1, x0
    3a8c:	b9017ba4 	str	w4, [x29, #376]
    3a90:	910583a1 	add	x1, x29, #0x160
    3a94:	f900c3a0 	str	x0, [x29, #384]
    3a98:	f9000041 	str	x1, [x2]
    3a9c:	54ffc3cd 	b.le	3314 <_vfprintf_r+0x46c>
    3aa0:	f9408fa1 	ldr	x1, [x29, #280]
    3aa4:	9105c3a2 	add	x2, x29, #0x170
    3aa8:	aa1703e0 	mov	x0, x23
    3aac:	9400186b 	bl	9c58 <__sprint_r>
    3ab0:	35000cc0 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    3ab4:	9107c3a6 	add	x6, x29, #0x1f0
    3ab8:	f940c3a0 	ldr	x0, [x29, #384]
    3abc:	17fffe16 	b	3314 <_vfprintf_r+0x46c>
    3ac0:	7101979f 	cmp	w28, #0x65
    3ac4:	54fff88d 	b.le	39d4 <_vfprintf_r+0xb2c>
    3ac8:	1e602108 	fcmp	d8, #0.0
    3acc:	54000ea1 	b.ne	3ca0 <_vfprintf_r+0xdf8>  // b.any
    3ad0:	91000400 	add	x0, x0, #0x1
    3ad4:	f900c3a0 	str	x0, [x29, #384]
    3ad8:	b9417ba0 	ldr	w0, [x29, #376]
    3adc:	910040c6 	add	x6, x6, #0x10
    3ae0:	11000400 	add	w0, w0, #0x1
    3ae4:	b9017ba0 	str	w0, [x29, #376]
    3ae8:	71001c1f 	cmp	w0, #0x7
    3aec:	d0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    3af0:	91160000 	add	x0, x0, #0x580
    3af4:	f81f00c0 	stur	x0, [x6, #-16]
    3af8:	d2800020 	mov	x0, #0x1                   	// #1
    3afc:	f81f80c0 	stur	x0, [x6, #-8]
    3b00:	5400378c 	b.gt	41f0 <_vfprintf_r+0x1348>
    3b04:	b940f3a1 	ldr	w1, [x29, #240]
    3b08:	b9415ba0 	ldr	w0, [x29, #344]
    3b0c:	6b01001f 	cmp	w0, w1
    3b10:	5400168b 	b.lt	3de0 <_vfprintf_r+0xf38>  // b.tstop
    3b14:	37001676 	tbnz	w22, #0, 3de0 <_vfprintf_r+0xf38>
    3b18:	f940c3a0 	ldr	x0, [x29, #384]
    3b1c:	17fffdfe 	b	3314 <_vfprintf_r+0x46c>
    3b20:	4b1402b9 	sub	w25, w21, w20
    3b24:	7100033f 	cmp	w25, #0x0
    3b28:	54ffb60d 	b.le	31e8 <_vfprintf_r+0x340>
    3b2c:	7100433f 	cmp	w25, #0x10
    3b30:	b9417ba1 	ldr	w1, [x29, #376]
    3b34:	5400050d 	b.le	3bd4 <_vfprintf_r+0xd2c>
    3b38:	f90047b3 	str	x19, [x29, #136]
    3b3c:	d2800204 	mov	x4, #0x10                  	// #16
    3b40:	2a1903f3 	mov	w19, w25
    3b44:	2a1403f9 	mov	w25, w20
    3b48:	aa1b03f4 	mov	x20, x27
    3b4c:	aa1a03fb 	mov	x27, x26
    3b50:	2a1803fa 	mov	w26, w24
    3b54:	2a0703f8 	mov	w24, w7
    3b58:	14000005 	b	3b6c <_vfprintf_r+0xcc4>
    3b5c:	51004273 	sub	w19, w19, #0x10
    3b60:	910040c6 	add	x6, x6, #0x10
    3b64:	7100427f 	cmp	w19, #0x10
    3b68:	5400028d 	b.le	3bb8 <_vfprintf_r+0xd10>
    3b6c:	11000421 	add	w1, w1, #0x1
    3b70:	91004000 	add	x0, x0, #0x10
    3b74:	a90010d4 	stp	x20, x4, [x6]
    3b78:	71001c3f 	cmp	w1, #0x7
    3b7c:	b9017ba1 	str	w1, [x29, #376]
    3b80:	f900c3a0 	str	x0, [x29, #384]
    3b84:	54fffecd 	b.le	3b5c <_vfprintf_r+0xcb4>
    3b88:	f9408fa1 	ldr	x1, [x29, #280]
    3b8c:	9105c3a2 	add	x2, x29, #0x170
    3b90:	aa1703e0 	mov	x0, x23
    3b94:	94001831 	bl	9c58 <__sprint_r>
    3b98:	35000580 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    3b9c:	51004273 	sub	w19, w19, #0x10
    3ba0:	9107c3a6 	add	x6, x29, #0x1f0
    3ba4:	d2800204 	mov	x4, #0x10                  	// #16
    3ba8:	b9417ba1 	ldr	w1, [x29, #376]
    3bac:	f940c3a0 	ldr	x0, [x29, #384]
    3bb0:	7100427f 	cmp	w19, #0x10
    3bb4:	54fffdcc 	b.gt	3b6c <_vfprintf_r+0xcc4>
    3bb8:	2a1803e7 	mov	w7, w24
    3bbc:	2a1a03f8 	mov	w24, w26
    3bc0:	aa1b03fa 	mov	x26, x27
    3bc4:	aa1403fb 	mov	x27, x20
    3bc8:	2a1903f4 	mov	w20, w25
    3bcc:	2a1303f9 	mov	w25, w19
    3bd0:	f94047b3 	ldr	x19, [x29, #136]
    3bd4:	11000421 	add	w1, w1, #0x1
    3bd8:	93407f39 	sxtw	x25, w25
    3bdc:	71001c3f 	cmp	w1, #0x7
    3be0:	b9017ba1 	str	w1, [x29, #376]
    3be4:	d0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    3be8:	910c0021 	add	x1, x1, #0x300
    3bec:	8b190000 	add	x0, x0, x25
    3bf0:	f90004d9 	str	x25, [x6, #8]
    3bf4:	91004021 	add	x1, x1, #0x10
    3bf8:	f900c3a0 	str	x0, [x29, #384]
    3bfc:	f90000c1 	str	x1, [x6]
    3c00:	910040c6 	add	x6, x6, #0x10
    3c04:	54ffaf2d 	b.le	31e8 <_vfprintf_r+0x340>
    3c08:	f9408fa1 	ldr	x1, [x29, #280]
    3c0c:	9105c3a2 	add	x2, x29, #0x170
    3c10:	aa1703e0 	mov	x0, x23
    3c14:	b9008ba7 	str	w7, [x29, #136]
    3c18:	94001810 	bl	9c58 <__sprint_r>
    3c1c:	35000160 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    3c20:	9107c3a6 	add	x6, x29, #0x1f0
    3c24:	b9408ba7 	ldr	w7, [x29, #136]
    3c28:	f940c3a0 	ldr	x0, [x29, #384]
    3c2c:	17fffd6f 	b	31e8 <_vfprintf_r+0x340>
    3c30:	f9408fa1 	ldr	x1, [x29, #280]
    3c34:	9105c3a2 	add	x2, x29, #0x170
    3c38:	aa1703e0 	mov	x0, x23
    3c3c:	94001807 	bl	9c58 <__sprint_r>
    3c40:	34ffbdc0 	cbz	w0, 33f8 <_vfprintf_r+0x550>
    3c44:	d503201f 	nop
    3c48:	f9408fb6 	ldr	x22, [x29, #280]
    3c4c:	f94087a1 	ldr	x1, [x29, #264]
    3c50:	b4ffe981 	cbz	x1, 3980 <_vfprintf_r+0xad8>
    3c54:	aa1703e0 	mov	x0, x23
    3c58:	94000e88 	bl	7678 <_free_r>
    3c5c:	794022c0 	ldrh	w0, [x22, #16]
    3c60:	a941d7b4 	ldp	x20, x21, [x29, #24]
    3c64:	a943e7b8 	ldp	x24, x25, [x29, #56]
    3c68:	a94573bb 	ldp	x27, x28, [x29, #80]
    3c6c:	fd4033a8 	ldr	d8, [x29, #96]
    3c70:	3637c000 	tbz	w0, #6, 3470 <_vfprintf_r+0x5c8>
    3c74:	17ffff49 	b	3998 <_vfprintf_r+0xaf0>
    3c78:	f9408fa1 	ldr	x1, [x29, #280]
    3c7c:	9105c3a2 	add	x2, x29, #0x170
    3c80:	aa1703e0 	mov	x0, x23
    3c84:	b9008ba7 	str	w7, [x29, #136]
    3c88:	940017f4 	bl	9c58 <__sprint_r>
    3c8c:	35fffde0 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    3c90:	9107c3a6 	add	x6, x29, #0x1f0
    3c94:	b9408ba7 	ldr	w7, [x29, #136]
    3c98:	f940c3a0 	ldr	x0, [x29, #384]
    3c9c:	17fffd51 	b	31e0 <_vfprintf_r+0x338>
    3ca0:	b9415ba2 	ldr	w2, [x29, #344]
    3ca4:	7100005f 	cmp	w2, #0x0
    3ca8:	5400256d 	b.le	4154 <_vfprintf_r+0x12ac>
    3cac:	b940f3a2 	ldr	w2, [x29, #240]
    3cb0:	b940fba1 	ldr	w1, [x29, #248]
    3cb4:	6b02003f 	cmp	w1, w2
    3cb8:	1a82d038 	csel	w24, w1, w2, le
    3cbc:	7100031f 	cmp	w24, #0x0
    3cc0:	5400018d 	b.le	3cf0 <_vfprintf_r+0xe48>
    3cc4:	b9417ba1 	ldr	w1, [x29, #376]
    3cc8:	910040c6 	add	x6, x6, #0x10
    3ccc:	f81f00da 	stur	x26, [x6, #-16]
    3cd0:	11000421 	add	w1, w1, #0x1
    3cd4:	b9017ba1 	str	w1, [x29, #376]
    3cd8:	71001c3f 	cmp	w1, #0x7
    3cdc:	93407f01 	sxtw	x1, w24
    3ce0:	8b010000 	add	x0, x0, x1
    3ce4:	f81f80c1 	stur	x1, [x6, #-8]
    3ce8:	f900c3a0 	str	x0, [x29, #384]
    3cec:	540063cc 	b.gt	4964 <_vfprintf_r+0x1abc>
    3cf0:	7100031f 	cmp	w24, #0x0
    3cf4:	b940fba1 	ldr	w1, [x29, #248]
    3cf8:	1a9fa318 	csel	w24, w24, wzr, ge  // ge = tcont
    3cfc:	4b180038 	sub	w24, w1, w24
    3d00:	7100031f 	cmp	w24, #0x0
    3d04:	5400116d 	b.le	3f30 <_vfprintf_r+0x1088>
    3d08:	7100431f 	cmp	w24, #0x10
    3d0c:	b9417ba1 	ldr	w1, [x29, #376]
    3d10:	54000e8d 	b.le	3ee0 <_vfprintf_r+0x1038>
    3d14:	d2800219 	mov	x25, #0x10                  	// #16
    3d18:	f9408fbc 	ldr	x28, [x29, #280]
    3d1c:	14000005 	b	3d30 <_vfprintf_r+0xe88>
    3d20:	910040c6 	add	x6, x6, #0x10
    3d24:	51004318 	sub	w24, w24, #0x10
    3d28:	7100431f 	cmp	w24, #0x10
    3d2c:	54000dad 	b.le	3ee0 <_vfprintf_r+0x1038>
    3d30:	11000421 	add	w1, w1, #0x1
    3d34:	91004000 	add	x0, x0, #0x10
    3d38:	a90064db 	stp	x27, x25, [x6]
    3d3c:	71001c3f 	cmp	w1, #0x7
    3d40:	b9017ba1 	str	w1, [x29, #376]
    3d44:	f900c3a0 	str	x0, [x29, #384]
    3d48:	54fffecd 	b.le	3d20 <_vfprintf_r+0xe78>
    3d4c:	9105c3a2 	add	x2, x29, #0x170
    3d50:	aa1c03e1 	mov	x1, x28
    3d54:	aa1703e0 	mov	x0, x23
    3d58:	940017c0 	bl	9c58 <__sprint_r>
    3d5c:	35006460 	cbnz	w0, 49e8 <_vfprintf_r+0x1b40>
    3d60:	9107c3a6 	add	x6, x29, #0x1f0
    3d64:	b9417ba1 	ldr	w1, [x29, #376]
    3d68:	f940c3a0 	ldr	x0, [x29, #384]
    3d6c:	17ffffee 	b	3d24 <_vfprintf_r+0xe7c>
    3d70:	7100031f 	cmp	w24, #0x0
    3d74:	54ffe84d 	b.le	3a7c <_vfprintf_r+0xbd4>
    3d78:	7100431f 	cmp	w24, #0x10
    3d7c:	54006b2d 	b.le	4ae0 <_vfprintf_r+0x1c38>
    3d80:	d2800219 	mov	x25, #0x10                  	// #16
    3d84:	2a0403e1 	mov	w1, w4
    3d88:	f9408fba 	ldr	x26, [x29, #280]
    3d8c:	14000006 	b	3da4 <_vfprintf_r+0xefc>
    3d90:	91004042 	add	x2, x2, #0x10
    3d94:	51004318 	sub	w24, w24, #0x10
    3d98:	7100431f 	cmp	w24, #0x10
    3d9c:	5400238d 	b.le	420c <_vfprintf_r+0x1364>
    3da0:	11000421 	add	w1, w1, #0x1
    3da4:	91004000 	add	x0, x0, #0x10
    3da8:	a900645b 	stp	x27, x25, [x2]
    3dac:	b9017ba1 	str	w1, [x29, #376]
    3db0:	71001c3f 	cmp	w1, #0x7
    3db4:	f900c3a0 	str	x0, [x29, #384]
    3db8:	54fffecd 	b.le	3d90 <_vfprintf_r+0xee8>
    3dbc:	9105c3a2 	add	x2, x29, #0x170
    3dc0:	aa1a03e1 	mov	x1, x26
    3dc4:	aa1703e0 	mov	x0, x23
    3dc8:	940017a4 	bl	9c58 <__sprint_r>
    3dcc:	35002600 	cbnz	w0, 428c <_vfprintf_r+0x13e4>
    3dd0:	9107c3a2 	add	x2, x29, #0x1f0
    3dd4:	b9417ba1 	ldr	w1, [x29, #376]
    3dd8:	f940c3a0 	ldr	x0, [x29, #384]
    3ddc:	17ffffee 	b	3d94 <_vfprintf_r+0xeec>
    3de0:	f94067a0 	ldr	x0, [x29, #200]
    3de4:	f9406fa1 	ldr	x1, [x29, #216]
    3de8:	a90004c0 	stp	x0, x1, [x6]
    3dec:	910040c6 	add	x6, x6, #0x10
    3df0:	b9417ba0 	ldr	w0, [x29, #376]
    3df4:	11000400 	add	w0, w0, #0x1
    3df8:	b9017ba0 	str	w0, [x29, #376]
    3dfc:	71001c1f 	cmp	w0, #0x7
    3e00:	f940c3a0 	ldr	x0, [x29, #384]
    3e04:	8b000020 	add	x0, x1, x0
    3e08:	f900c3a0 	str	x0, [x29, #384]
    3e0c:	5400230c 	b.gt	426c <_vfprintf_r+0x13c4>
    3e10:	b940f3a1 	ldr	w1, [x29, #240]
    3e14:	51000438 	sub	w24, w1, #0x1
    3e18:	7100031f 	cmp	w24, #0x0
    3e1c:	54ffa7cd 	b.le	3314 <_vfprintf_r+0x46c>
    3e20:	7100431f 	cmp	w24, #0x10
    3e24:	b9417ba1 	ldr	w1, [x29, #376]
    3e28:	5400120d 	b.le	4068 <_vfprintf_r+0x11c0>
    3e2c:	d2800219 	mov	x25, #0x10                  	// #16
    3e30:	f9408fba 	ldr	x26, [x29, #280]
    3e34:	14000005 	b	3e48 <_vfprintf_r+0xfa0>
    3e38:	910040c6 	add	x6, x6, #0x10
    3e3c:	51004318 	sub	w24, w24, #0x10
    3e40:	7100431f 	cmp	w24, #0x10
    3e44:	5400112d 	b.le	4068 <_vfprintf_r+0x11c0>
    3e48:	11000421 	add	w1, w1, #0x1
    3e4c:	91004000 	add	x0, x0, #0x10
    3e50:	a90064db 	stp	x27, x25, [x6]
    3e54:	71001c3f 	cmp	w1, #0x7
    3e58:	b9017ba1 	str	w1, [x29, #376]
    3e5c:	f900c3a0 	str	x0, [x29, #384]
    3e60:	54fffecd 	b.le	3e38 <_vfprintf_r+0xf90>
    3e64:	9105c3a2 	add	x2, x29, #0x170
    3e68:	aa1a03e1 	mov	x1, x26
    3e6c:	aa1703e0 	mov	x0, x23
    3e70:	9400177a 	bl	9c58 <__sprint_r>
    3e74:	350020c0 	cbnz	w0, 428c <_vfprintf_r+0x13e4>
    3e78:	9107c3a6 	add	x6, x29, #0x1f0
    3e7c:	b9417ba1 	ldr	w1, [x29, #376]
    3e80:	f940c3a0 	ldr	x0, [x29, #384]
    3e84:	17ffffee 	b	3e3c <_vfprintf_r+0xf94>
    3e88:	3707db96 	tbnz	w22, #0, 39f8 <_vfprintf_r+0xb50>
    3e8c:	71001c3f 	cmp	w1, #0x7
    3e90:	f900c3a0 	str	x0, [x29, #384]
    3e94:	d2800021 	mov	x1, #0x1                   	// #1
    3e98:	f90004c1 	str	x1, [x6, #8]
    3e9c:	5400126c 	b.gt	40e8 <_vfprintf_r+0x1240>
    3ea0:	11000884 	add	w4, w4, #0x2
    3ea4:	910080c6 	add	x6, x6, #0x20
    3ea8:	17fffef5 	b	3a7c <_vfprintf_r+0xbd4>
    3eac:	f9408fa1 	ldr	x1, [x29, #280]
    3eb0:	9105c3a2 	add	x2, x29, #0x170
    3eb4:	aa1703e0 	mov	x0, x23
    3eb8:	b90083a7 	str	w7, [x29, #128]
    3ebc:	b9008baa 	str	w10, [x29, #136]
    3ec0:	94001766 	bl	9c58 <__sprint_r>
    3ec4:	35ffec20 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    3ec8:	39453fa1 	ldrb	w1, [x29, #335]
    3ecc:	9107c3a6 	add	x6, x29, #0x1f0
    3ed0:	b94083a7 	ldr	w7, [x29, #128]
    3ed4:	b9408baa 	ldr	w10, [x29, #136]
    3ed8:	f940c3a0 	ldr	x0, [x29, #384]
    3edc:	17fffca7 	b	3178 <_vfprintf_r+0x2d0>
    3ee0:	11000421 	add	w1, w1, #0x1
    3ee4:	93407f18 	sxtw	x24, w24
    3ee8:	71001c3f 	cmp	w1, #0x7
    3eec:	b9017ba1 	str	w1, [x29, #376]
    3ef0:	d0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    3ef4:	910c0021 	add	x1, x1, #0x300
    3ef8:	8b180000 	add	x0, x0, x24
    3efc:	f90004d8 	str	x24, [x6, #8]
    3f00:	91004021 	add	x1, x1, #0x10
    3f04:	f900c3a0 	str	x0, [x29, #384]
    3f08:	f90000c1 	str	x1, [x6]
    3f0c:	910040c6 	add	x6, x6, #0x10
    3f10:	5400010d 	b.le	3f30 <_vfprintf_r+0x1088>
    3f14:	f9408fa1 	ldr	x1, [x29, #280]
    3f18:	9105c3a2 	add	x2, x29, #0x170
    3f1c:	aa1703e0 	mov	x0, x23
    3f20:	9400174e 	bl	9c58 <__sprint_r>
    3f24:	35ffe920 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    3f28:	f940c3a0 	ldr	x0, [x29, #384]
    3f2c:	9107c3a6 	add	x6, x29, #0x1f0
    3f30:	b940fba1 	ldr	w1, [x29, #248]
    3f34:	8b21c35c 	add	x28, x26, w1, sxtw
    3f38:	37501bf6 	tbnz	w22, #10, 42b4 <_vfprintf_r+0x140c>
    3f3c:	b940f3a1 	ldr	w1, [x29, #240]
    3f40:	b9415bb8 	ldr	w24, [x29, #344]
    3f44:	6b01031f 	cmp	w24, w1
    3f48:	5400068b 	b.lt	4018 <_vfprintf_r+0x1170>  // b.tstop
    3f4c:	37000676 	tbnz	w22, #0, 4018 <_vfprintf_r+0x1170>
    3f50:	b940f3a1 	ldr	w1, [x29, #240]
    3f54:	4b180038 	sub	w24, w1, w24
    3f58:	8b21c359 	add	x25, x26, w1, sxtw
    3f5c:	cb1c0339 	sub	x25, x25, x28
    3f60:	6b19031f 	cmp	w24, w25
    3f64:	1a99d319 	csel	w25, w24, w25, le
    3f68:	7100033f 	cmp	w25, #0x0
    3f6c:	5400018d 	b.le	3f9c <_vfprintf_r+0x10f4>
    3f70:	b9417ba1 	ldr	w1, [x29, #376]
    3f74:	910040c6 	add	x6, x6, #0x10
    3f78:	f81f00dc 	stur	x28, [x6, #-16]
    3f7c:	11000421 	add	w1, w1, #0x1
    3f80:	b9017ba1 	str	w1, [x29, #376]
    3f84:	71001c3f 	cmp	w1, #0x7
    3f88:	93407f21 	sxtw	x1, w25
    3f8c:	8b010000 	add	x0, x0, x1
    3f90:	f81f80c1 	stur	x1, [x6, #-8]
    3f94:	f900c3a0 	str	x0, [x29, #384]
    3f98:	54003d0c 	b.gt	4738 <_vfprintf_r+0x1890>
    3f9c:	7100033f 	cmp	w25, #0x0
    3fa0:	1a9fa339 	csel	w25, w25, wzr, ge  // ge = tcont
    3fa4:	4b190318 	sub	w24, w24, w25
    3fa8:	7100031f 	cmp	w24, #0x0
    3fac:	54ff9b4d 	b.le	3314 <_vfprintf_r+0x46c>
    3fb0:	7100431f 	cmp	w24, #0x10
    3fb4:	b9417ba1 	ldr	w1, [x29, #376]
    3fb8:	5400058d 	b.le	4068 <_vfprintf_r+0x11c0>
    3fbc:	d2800219 	mov	x25, #0x10                  	// #16
    3fc0:	f9408fba 	ldr	x26, [x29, #280]
    3fc4:	14000005 	b	3fd8 <_vfprintf_r+0x1130>
    3fc8:	910040c6 	add	x6, x6, #0x10
    3fcc:	51004318 	sub	w24, w24, #0x10
    3fd0:	7100431f 	cmp	w24, #0x10
    3fd4:	540004ad 	b.le	4068 <_vfprintf_r+0x11c0>
    3fd8:	11000421 	add	w1, w1, #0x1
    3fdc:	91004000 	add	x0, x0, #0x10
    3fe0:	a90064db 	stp	x27, x25, [x6]
    3fe4:	71001c3f 	cmp	w1, #0x7
    3fe8:	b9017ba1 	str	w1, [x29, #376]
    3fec:	f900c3a0 	str	x0, [x29, #384]
    3ff0:	54fffecd 	b.le	3fc8 <_vfprintf_r+0x1120>
    3ff4:	9105c3a2 	add	x2, x29, #0x170
    3ff8:	aa1a03e1 	mov	x1, x26
    3ffc:	aa1703e0 	mov	x0, x23
    4000:	94001716 	bl	9c58 <__sprint_r>
    4004:	35001440 	cbnz	w0, 428c <_vfprintf_r+0x13e4>
    4008:	9107c3a6 	add	x6, x29, #0x1f0
    400c:	b9417ba1 	ldr	w1, [x29, #376]
    4010:	f940c3a0 	ldr	x0, [x29, #384]
    4014:	17ffffee 	b	3fcc <_vfprintf_r+0x1124>
    4018:	f9406fa1 	ldr	x1, [x29, #216]
    401c:	f94067a2 	ldr	x2, [x29, #200]
    4020:	8b010000 	add	x0, x0, x1
    4024:	a90004c2 	stp	x2, x1, [x6]
    4028:	b9417ba1 	ldr	w1, [x29, #376]
    402c:	910040c6 	add	x6, x6, #0x10
    4030:	f900c3a0 	str	x0, [x29, #384]
    4034:	11000421 	add	w1, w1, #0x1
    4038:	b9017ba1 	str	w1, [x29, #376]
    403c:	71001c3f 	cmp	w1, #0x7
    4040:	54fff88d 	b.le	3f50 <_vfprintf_r+0x10a8>
    4044:	f9408fa1 	ldr	x1, [x29, #280]
    4048:	9105c3a2 	add	x2, x29, #0x170
    404c:	aa1703e0 	mov	x0, x23
    4050:	94001702 	bl	9c58 <__sprint_r>
    4054:	35ffdfa0 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    4058:	9107c3a6 	add	x6, x29, #0x1f0
    405c:	b9415bb8 	ldr	w24, [x29, #344]
    4060:	f940c3a0 	ldr	x0, [x29, #384]
    4064:	17ffffbb 	b	3f50 <_vfprintf_r+0x10a8>
    4068:	11000421 	add	w1, w1, #0x1
    406c:	93407f18 	sxtw	x24, w24
    4070:	f90004d8 	str	x24, [x6, #8]
    4074:	8b180000 	add	x0, x0, x24
    4078:	b9017ba1 	str	w1, [x29, #376]
    407c:	71001c3f 	cmp	w1, #0x7
    4080:	f900c3a0 	str	x0, [x29, #384]
    4084:	b0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    4088:	910c0021 	add	x1, x1, #0x300
    408c:	91004021 	add	x1, x1, #0x10
    4090:	f90000c1 	str	x1, [x6]
    4094:	54ffd06c 	b.gt	3aa0 <_vfprintf_r+0xbf8>
    4098:	910040c6 	add	x6, x6, #0x10
    409c:	17fffc9e 	b	3314 <_vfprintf_r+0x46c>
    40a0:	f9408fa1 	ldr	x1, [x29, #280]
    40a4:	9105c3a2 	add	x2, x29, #0x170
    40a8:	aa1703e0 	mov	x0, x23
    40ac:	940016eb 	bl	9c58 <__sprint_r>
    40b0:	35ffdcc0 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    40b4:	9107c3a2 	add	x2, x29, #0x1f0
    40b8:	b9417ba1 	ldr	w1, [x29, #376]
    40bc:	f940c3a0 	ldr	x0, [x29, #384]
    40c0:	17fffe53 	b	3a0c <_vfprintf_r+0xb64>
    40c4:	f9408fa1 	ldr	x1, [x29, #280]
    40c8:	9105c3a2 	add	x2, x29, #0x170
    40cc:	aa1703e0 	mov	x0, x23
    40d0:	940016e2 	bl	9c58 <__sprint_r>
    40d4:	35ffdba0 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    40d8:	9107c3a2 	add	x2, x29, #0x1f0
    40dc:	b9417ba1 	ldr	w1, [x29, #376]
    40e0:	f940c3a0 	ldr	x0, [x29, #384]
    40e4:	17fffe54 	b	3a34 <_vfprintf_r+0xb8c>
    40e8:	f9408fa1 	ldr	x1, [x29, #280]
    40ec:	9105c3a2 	add	x2, x29, #0x170
    40f0:	aa1703e0 	mov	x0, x23
    40f4:	940016d9 	bl	9c58 <__sprint_r>
    40f8:	35ffda80 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    40fc:	b9417ba4 	ldr	w4, [x29, #376]
    4100:	9107c3a1 	add	x1, x29, #0x1f0
    4104:	910803a6 	add	x6, x29, #0x200
    4108:	aa0103e2 	mov	x2, x1
    410c:	11000484 	add	w4, w4, #0x1
    4110:	f940c3a0 	ldr	x0, [x29, #384]
    4114:	17fffe5a 	b	3a7c <_vfprintf_r+0xbd4>
    4118:	39400268 	ldrb	w8, [x19]
    411c:	17fffbc9 	b	3040 <_vfprintf_r+0x198>
    4120:	3727bed6 	tbnz	w22, #4, 38f8 <_vfprintf_r+0xa50>
    4124:	37302b96 	tbnz	w22, #6, 4694 <_vfprintf_r+0x17ec>
    4128:	36489fb6 	tbz	w22, #9, 551c <_vfprintf_r+0x2674>
    412c:	37f89ec0 	tbnz	w0, #31, 5504 <_vfprintf_r+0x265c>
    4130:	f94083a0 	ldr	x0, [x29, #256]
    4134:	91003c01 	add	x1, x0, #0xf
    4138:	927df021 	and	x1, x1, #0xfffffffffffffff8
    413c:	f90083a1 	str	x1, [x29, #256]
    4140:	f9400000 	ldr	x0, [x0]
    4144:	aa1303fa 	mov	x26, x19
    4148:	394453a1 	ldrb	w1, [x29, #276]
    414c:	39000001 	strb	w1, [x0]
    4150:	17fffb97 	b	2fac <_vfprintf_r+0x104>
    4154:	b9417ba1 	ldr	w1, [x29, #376]
    4158:	91000400 	add	x0, x0, #0x1
    415c:	f900c3a0 	str	x0, [x29, #384]
    4160:	910040c6 	add	x6, x6, #0x10
    4164:	11000421 	add	w1, w1, #0x1
    4168:	b9017ba1 	str	w1, [x29, #376]
    416c:	71001c3f 	cmp	w1, #0x7
    4170:	b0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    4174:	91160021 	add	x1, x1, #0x580
    4178:	f81f00c1 	stur	x1, [x6, #-16]
    417c:	d2800021 	mov	x1, #0x1                   	// #1
    4180:	f81f80c1 	stur	x1, [x6, #-8]
    4184:	5400400c 	b.gt	4984 <_vfprintf_r+0x1adc>
    4188:	b940f3a1 	ldr	w1, [x29, #240]
    418c:	2a020021 	orr	w1, w1, w2
    4190:	34004281 	cbz	w1, 49e0 <_vfprintf_r+0x1b38>
    4194:	f9406fa1 	ldr	x1, [x29, #216]
    4198:	f94067a3 	ldr	x3, [x29, #200]
    419c:	8b000020 	add	x0, x1, x0
    41a0:	a90004c3 	stp	x3, x1, [x6]
    41a4:	b9417ba1 	ldr	w1, [x29, #376]
    41a8:	910040c6 	add	x6, x6, #0x10
    41ac:	f900c3a0 	str	x0, [x29, #384]
    41b0:	11000421 	add	w1, w1, #0x1
    41b4:	b9017ba1 	str	w1, [x29, #376]
    41b8:	71001c3f 	cmp	w1, #0x7
    41bc:	5400258c 	b.gt	466c <_vfprintf_r+0x17c4>
    41c0:	37f843c2 	tbnz	w2, #31, 4a38 <_vfprintf_r+0x1b90>
    41c4:	11000421 	add	w1, w1, #0x1
    41c8:	b9017ba1 	str	w1, [x29, #376]
    41cc:	71001c3f 	cmp	w1, #0x7
    41d0:	b980f3a1 	ldrsw	x1, [x29, #240]
    41d4:	f90000da 	str	x26, [x6]
    41d8:	8b000020 	add	x0, x1, x0
    41dc:	f90004c1 	str	x1, [x6, #8]
    41e0:	f900c3a0 	str	x0, [x29, #384]
    41e4:	54ffc5ec 	b.gt	3aa0 <_vfprintf_r+0xbf8>
    41e8:	910040c6 	add	x6, x6, #0x10
    41ec:	17fffc4a 	b	3314 <_vfprintf_r+0x46c>
    41f0:	f9408fa1 	ldr	x1, [x29, #280]
    41f4:	9105c3a2 	add	x2, x29, #0x170
    41f8:	aa1703e0 	mov	x0, x23
    41fc:	94001697 	bl	9c58 <__sprint_r>
    4200:	35ffd240 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    4204:	9107c3a6 	add	x6, x29, #0x1f0
    4208:	17fffe3f 	b	3b04 <_vfprintf_r+0xc5c>
    420c:	11000424 	add	w4, w1, #0x1
    4210:	91004043 	add	x3, x2, #0x10
    4214:	93407f18 	sxtw	x24, w24
    4218:	b0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    421c:	910c0021 	add	x1, x1, #0x300
    4220:	8b180000 	add	x0, x0, x24
    4224:	91004021 	add	x1, x1, #0x10
    4228:	b9017ba4 	str	w4, [x29, #376]
    422c:	a9006041 	stp	x1, x24, [x2]
    4230:	71001c9f 	cmp	w4, #0x7
    4234:	f900c3a0 	str	x0, [x29, #384]
    4238:	54fff58c 	b.gt	40e8 <_vfprintf_r+0x1240>
    423c:	11000484 	add	w4, w4, #0x1
    4240:	91004066 	add	x6, x3, #0x10
    4244:	aa0303e2 	mov	x2, x3
    4248:	17fffe0d 	b	3a7c <_vfprintf_r+0xbd4>
    424c:	39400668 	ldrb	w8, [x19, #1]
    4250:	321702d6 	orr	w22, w22, #0x200
    4254:	91000673 	add	x19, x19, #0x1
    4258:	17fffb7a 	b	3040 <_vfprintf_r+0x198>
    425c:	39400668 	ldrb	w8, [x19, #1]
    4260:	321b02d6 	orr	w22, w22, #0x20
    4264:	91000673 	add	x19, x19, #0x1
    4268:	17fffb76 	b	3040 <_vfprintf_r+0x198>
    426c:	f9408fa1 	ldr	x1, [x29, #280]
    4270:	9105c3a2 	add	x2, x29, #0x170
    4274:	aa1703e0 	mov	x0, x23
    4278:	94001678 	bl	9c58 <__sprint_r>
    427c:	35ffce60 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    4280:	9107c3a6 	add	x6, x29, #0x1f0
    4284:	f940c3a0 	ldr	x0, [x29, #384]
    4288:	17fffee2 	b	3e10 <_vfprintf_r+0xf68>
    428c:	aa1a03f6 	mov	x22, x26
    4290:	17fffe6f 	b	3c4c <_vfprintf_r+0xda4>
    4294:	36482459 	tbz	w25, #9, 471c <_vfprintf_r+0x1874>
    4298:	37f89c60 	tbnz	w0, #31, 5624 <_vfprintf_r+0x277c>
    429c:	f94083a0 	ldr	x0, [x29, #256]
    42a0:	91002c01 	add	x1, x0, #0xb
    42a4:	927df021 	and	x1, x1, #0xfffffffffffffff8
    42a8:	39800014 	ldrsb	x20, [x0]
    42ac:	f90083a1 	str	x1, [x29, #256]
    42b0:	17fffccf 	b	35ec <_vfprintf_r+0x744>
    42b4:	b940eba1 	ldr	w1, [x29, #232]
    42b8:	7100003f 	cmp	w1, #0x0
    42bc:	b940e3a1 	ldr	w1, [x29, #224]
    42c0:	7a40d820 	ccmp	w1, #0x0, #0x0, le
    42c4:	540025ad 	b.le	4778 <_vfprintf_r+0x18d0>
    42c8:	290f57b4 	stp	w20, w21, [x29, #120]
    42cc:	b90083b6 	str	w22, [x29, #128]
    42d0:	a949d3b5 	ldp	x21, x20, [x29, #152]
    42d4:	f90047b3 	str	x19, [x29, #136]
    42d8:	f9408fb6 	ldr	x22, [x29, #280]
    42dc:	2a0103f3 	mov	w19, w1
    42e0:	b980f3a2 	ldrsw	x2, [x29, #240]
    42e4:	f90073a2 	str	x2, [x29, #224]
    42e8:	f9007fba 	str	x26, [x29, #248]
    42ec:	d503201f 	nop
    42f0:	34002893 	cbz	w19, 4800 <_vfprintf_r+0x1958>
    42f4:	51000673 	sub	w19, w19, #0x1
    42f8:	f9405ba1 	ldr	x1, [x29, #176]
    42fc:	8b150000 	add	x0, x0, x21
    4300:	a90054c1 	stp	x1, x21, [x6]
    4304:	910040c6 	add	x6, x6, #0x10
    4308:	b9417ba1 	ldr	w1, [x29, #376]
    430c:	f900c3a0 	str	x0, [x29, #384]
    4310:	11000421 	add	w1, w1, #0x1
    4314:	b9017ba1 	str	w1, [x29, #376]
    4318:	71001c3f 	cmp	w1, #0x7
    431c:	540027cc 	b.gt	4814 <_vfprintf_r+0x196c>
    4320:	f94073a3 	ldr	x3, [x29, #224]
    4324:	f9407fa2 	ldr	x2, [x29, #248]
    4328:	39400281 	ldrb	w1, [x20]
    432c:	8b030058 	add	x24, x2, x3
    4330:	cb1c0303 	sub	x3, x24, x28
    4334:	6b03003f 	cmp	w1, w3
    4338:	1a83d039 	csel	w25, w1, w3, le
    433c:	7100033f 	cmp	w25, #0x0
    4340:	540001ad 	b.le	4374 <_vfprintf_r+0x14cc>
    4344:	b9417ba1 	ldr	w1, [x29, #376]
    4348:	f90000dc 	str	x28, [x6]
    434c:	11000421 	add	w1, w1, #0x1
    4350:	b9017ba1 	str	w1, [x29, #376]
    4354:	71001c3f 	cmp	w1, #0x7
    4358:	93407f21 	sxtw	x1, w25
    435c:	8b010000 	add	x0, x0, x1
    4360:	f90004c1 	str	x1, [x6, #8]
    4364:	f900c3a0 	str	x0, [x29, #384]
    4368:	54002a2c 	b.gt	48ac <_vfprintf_r+0x1a04>
    436c:	39400281 	ldrb	w1, [x20]
    4370:	910040c6 	add	x6, x6, #0x10
    4374:	7100033f 	cmp	w25, #0x0
    4378:	1a9fa323 	csel	w3, w25, wzr, ge  // ge = tcont
    437c:	4b03003a 	sub	w26, w1, w3
    4380:	7100035f 	cmp	w26, #0x0
    4384:	5400054d 	b.le	442c <_vfprintf_r+0x1584>
    4388:	7100435f 	cmp	w26, #0x10
    438c:	b9417ba1 	ldr	w1, [x29, #376]
    4390:	5400032d 	b.le	43f4 <_vfprintf_r+0x154c>
    4394:	d2800219 	mov	x25, #0x10                  	// #16
    4398:	14000005 	b	43ac <_vfprintf_r+0x1504>
    439c:	5100435a 	sub	w26, w26, #0x10
    43a0:	910040c6 	add	x6, x6, #0x10
    43a4:	7100435f 	cmp	w26, #0x10
    43a8:	5400026d 	b.le	43f4 <_vfprintf_r+0x154c>
    43ac:	11000421 	add	w1, w1, #0x1
    43b0:	91004000 	add	x0, x0, #0x10
    43b4:	a90064db 	stp	x27, x25, [x6]
    43b8:	71001c3f 	cmp	w1, #0x7
    43bc:	b9017ba1 	str	w1, [x29, #376]
    43c0:	f900c3a0 	str	x0, [x29, #384]
    43c4:	54fffecd 	b.le	439c <_vfprintf_r+0x14f4>
    43c8:	9105c3a2 	add	x2, x29, #0x170
    43cc:	aa1603e1 	mov	x1, x22
    43d0:	aa1703e0 	mov	x0, x23
    43d4:	94001621 	bl	9c58 <__sprint_r>
    43d8:	35ffc3a0 	cbnz	w0, 3c4c <_vfprintf_r+0xda4>
    43dc:	5100435a 	sub	w26, w26, #0x10
    43e0:	9107c3a6 	add	x6, x29, #0x1f0
    43e4:	b9417ba1 	ldr	w1, [x29, #376]
    43e8:	7100435f 	cmp	w26, #0x10
    43ec:	f940c3a0 	ldr	x0, [x29, #384]
    43f0:	54fffdec 	b.gt	43ac <_vfprintf_r+0x1504>
    43f4:	11000421 	add	w1, w1, #0x1
    43f8:	93407f43 	sxtw	x3, w26
    43fc:	71001c3f 	cmp	w1, #0x7
    4400:	b9017ba1 	str	w1, [x29, #376]
    4404:	b0000041 	adrp	x1, d000 <__trunctfdf2+0x290>
    4408:	910c0021 	add	x1, x1, #0x300
    440c:	8b030000 	add	x0, x0, x3
    4410:	91004021 	add	x1, x1, #0x10
    4414:	f900c3a0 	str	x0, [x29, #384]
    4418:	f90000c1 	str	x1, [x6]
    441c:	f90004c3 	str	x3, [x6, #8]
    4420:	5400290c 	b.gt	4940 <_vfprintf_r+0x1a98>
    4424:	39400281 	ldrb	w1, [x20]
    4428:	910040c6 	add	x6, x6, #0x10
    442c:	8b21039c 	add	x28, x28, w1, uxtb
    4430:	b940eba1 	ldr	w1, [x29, #232]
    4434:	7100003f 	cmp	w1, #0x0
    4438:	7a40da60 	ccmp	w19, #0x0, #0x0, le
    443c:	54fff5ac 	b.gt	42f0 <_vfprintf_r+0x1448>
    4440:	f90053b4 	str	x20, [x29, #160]
    4444:	aa1803e1 	mov	x1, x24
    4448:	294fdbb5 	ldp	w21, w22, [x29, #124]
    444c:	f94047b3 	ldr	x19, [x29, #136]
    4450:	f9407fba 	ldr	x26, [x29, #248]
    4454:	b9407bb4 	ldr	w20, [x29, #120]
    4458:	140000ca 	b	4780 <_vfprintf_r+0x18d8>
    445c:	36481519 	tbz	w25, #9, 46fc <_vfprintf_r+0x1854>
    4460:	37f89320 	tbnz	w0, #31, 56c4 <_vfprintf_r+0x281c>
    4464:	f94083a0 	ldr	x0, [x29, #256]
    4468:	91002c01 	add	x1, x0, #0xb
    446c:	927df021 	and	x1, x1, #0xfffffffffffffff8
    4470:	f90083a1 	str	x1, [x29, #256]
    4474:	39400014 	ldrb	w20, [x0]
    4478:	52800020 	mov	w0, #0x1                   	// #1
    447c:	14000063 	b	4608 <_vfprintf_r+0x1760>
    4480:	36481316 	tbz	w22, #9, 46e0 <_vfprintf_r+0x1838>
    4484:	37f872e0 	tbnz	w0, #31, 52e0 <_vfprintf_r+0x2438>
    4488:	f94083a0 	ldr	x0, [x29, #256]
    448c:	91002c01 	add	x1, x0, #0xb
    4490:	927df021 	and	x1, x1, #0xfffffffffffffff8
    4494:	f90083a1 	str	x1, [x29, #256]
    4498:	39400014 	ldrb	w20, [x0]
    449c:	f100029f 	cmp	x20, #0x0
    44a0:	120002c0 	and	w0, w22, #0x1
    44a4:	1a9f1000 	csel	w0, w0, wzr, ne  // ne = any
    44a8:	35002920 	cbnz	w0, 49cc <_vfprintf_r+0x1b24>
    44ac:	12157ad9 	and	w25, w22, #0xfffffbff
    44b0:	52800040 	mov	w0, #0x2                   	// #2
    44b4:	14000055 	b	4608 <_vfprintf_r+0x1760>
    44b8:	36481036 	tbz	w22, #9, 46bc <_vfprintf_r+0x1814>
    44bc:	37f871e0 	tbnz	w0, #31, 52f8 <_vfprintf_r+0x2450>
    44c0:	f94083a0 	ldr	x0, [x29, #256]
    44c4:	91002c01 	add	x1, x0, #0xb
    44c8:	927df021 	and	x1, x1, #0xfffffffffffffff8
    44cc:	39400014 	ldrb	w20, [x0]
    44d0:	f90083a1 	str	x1, [x29, #256]
    44d4:	14000080 	b	46d4 <_vfprintf_r+0x182c>
    44d8:	b94113a0 	ldr	w0, [x29, #272]
    44dc:	aa1903e6 	mov	x6, x25
    44e0:	37f88480 	tbnz	w0, #31, 5570 <_vfprintf_r+0x26c8>
    44e4:	f94083a0 	ldr	x0, [x29, #256]
    44e8:	91002c01 	add	x1, x0, #0xb
    44ec:	927df021 	and	x1, x1, #0xfffffffffffffff8
    44f0:	f90083a1 	str	x1, [x29, #256]
    44f4:	b9400000 	ldr	w0, [x0]
    44f8:	39053fbf 	strb	wzr, [x29, #335]
    44fc:	390623a0 	strb	w0, [x29, #392]
    4500:	17fffad9 	b	3064 <_vfprintf_r+0x1bc>
    4504:	b94113a0 	ldr	w0, [x29, #272]
    4508:	37f88be0 	tbnz	w0, #31, 5684 <_vfprintf_r+0x27dc>
    450c:	f94083a0 	ldr	x0, [x29, #256]
    4510:	91002c01 	add	x1, x0, #0xb
    4514:	927df021 	and	x1, x1, #0xfffffffffffffff8
    4518:	f90083a1 	str	x1, [x29, #256]
    451c:	b9400015 	ldr	w21, [x0]
    4520:	39400268 	ldrb	w8, [x19]
    4524:	36ff58f5 	tbz	w21, #31, 3040 <_vfprintf_r+0x198>
    4528:	4b1503f5 	neg	w21, w21
    452c:	321e02d6 	orr	w22, w22, #0x4
    4530:	17fffac4 	b	3040 <_vfprintf_r+0x198>
    4534:	b94113a0 	ldr	w0, [x29, #272]
    4538:	2a1403e7 	mov	w7, w20
    453c:	aa1903e6 	mov	x6, x25
    4540:	37f877e0 	tbnz	w0, #31, 543c <_vfprintf_r+0x2594>
    4544:	f94083a0 	ldr	x0, [x29, #256]
    4548:	91003c01 	add	x1, x0, #0xf
    454c:	927df021 	and	x1, x1, #0xfffffffffffffff8
    4550:	f90083a1 	str	x1, [x29, #256]
    4554:	f940001a 	ldr	x26, [x0]
    4558:	39053fbf 	strb	wzr, [x29, #335]
    455c:	b4001bba 	cbz	x26, 48d0 <_vfprintf_r+0x1a28>
    4560:	310004ff 	cmn	w7, #0x1
    4564:	54001d00 	b.eq	4904 <_vfprintf_r+0x1a5c>  // b.none
    4568:	93407ce2 	sxtw	x2, w7
    456c:	f90077a6 	str	x6, [x29, #232]
    4570:	b900fba7 	str	w7, [x29, #248]
    4574:	52800001 	mov	w1, #0x0                   	// #0
    4578:	aa1a03e0 	mov	x0, x26
    457c:	94001015 	bl	85d0 <memchr>
    4580:	f90087a0 	str	x0, [x29, #264]
    4584:	b940fba7 	ldr	w7, [x29, #248]
    4588:	f94077a6 	ldr	x6, [x29, #232]
    458c:	b40020e0 	cbz	x0, 49a8 <_vfprintf_r+0x1b00>
    4590:	f94087a0 	ldr	x0, [x29, #264]
    4594:	52800007 	mov	w7, #0x0                   	// #0
    4598:	39453fa1 	ldrb	w1, [x29, #335]
    459c:	cb1a0014 	sub	x20, x0, x26
    45a0:	b900e3bf 	str	wzr, [x29, #224]
    45a4:	b900ebbf 	str	wzr, [x29, #232]
    45a8:	7100029f 	cmp	w20, #0x0
    45ac:	b900fbbf 	str	wzr, [x29, #248]
    45b0:	2a1403f8 	mov	w24, w20
    45b4:	f90087bf 	str	xzr, [x29, #264]
    45b8:	1a9fa294 	csel	w20, w20, wzr, ge  // ge = tcont
    45bc:	34ff5661 	cbz	w1, 3088 <_vfprintf_r+0x1e0>
    45c0:	17fffbf9 	b	35a4 <_vfprintf_r+0x6fc>
    45c4:	b94113a0 	ldr	w0, [x29, #272]
    45c8:	2a1403e7 	mov	w7, w20
    45cc:	aa1903e6 	mov	x6, x25
    45d0:	37f884e0 	tbnz	w0, #31, 566c <_vfprintf_r+0x27c4>
    45d4:	f94083a0 	ldr	x0, [x29, #256]
    45d8:	91003c01 	add	x1, x0, #0xf
    45dc:	927df021 	and	x1, x1, #0xfffffffffffffff8
    45e0:	f90083a1 	str	x1, [x29, #256]
    45e4:	f9400014 	ldr	x20, [x0]
    45e8:	528f0600 	mov	w0, #0x7830                	// #30768
    45ec:	321f02d9 	orr	w25, w22, #0x2
    45f0:	7902a3a0 	strh	w0, [x29, #336]
    45f4:	b0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    45f8:	91152000 	add	x0, x0, #0x548
    45fc:	52800f1c 	mov	w28, #0x78                  	// #120
    4600:	f90063a0 	str	x0, [x29, #192]
    4604:	52800040 	mov	w0, #0x2                   	// #2
    4608:	39053fbf 	strb	wzr, [x29, #335]
    460c:	910623a3 	add	x3, x29, #0x188
    4610:	310004ff 	cmn	w7, #0x1
    4614:	91019078 	add	x24, x3, #0x64
    4618:	54ff79c0 	b.eq	3550 <_vfprintf_r+0x6a8>  // b.none
    461c:	f100029f 	cmp	x20, #0x0
    4620:	12187b36 	and	w22, w25, #0xffffff7f
    4624:	7a4008e0 	ccmp	w7, #0x0, #0x0, eq  // eq = none
    4628:	54000e21 	b.ne	47ec <_vfprintf_r+0x1944>  // b.any
    462c:	35000b00 	cbnz	w0, 478c <_vfprintf_r+0x18e4>
    4630:	12000338 	and	w24, w25, #0x1
    4634:	36000e19 	tbz	w25, #0, 47f4 <_vfprintf_r+0x194c>
    4638:	91018c7a 	add	x26, x3, #0x63
    463c:	52800600 	mov	w0, #0x30                  	// #48
    4640:	52800007 	mov	w7, #0x0                   	// #0
    4644:	3907afa0 	strb	w0, [x29, #491]
    4648:	39453fa1 	ldrb	w1, [x29, #335]
    464c:	6b07031f 	cmp	w24, w7
    4650:	b900e3bf 	str	wzr, [x29, #224]
    4654:	1a87a314 	csel	w20, w24, w7, ge  // ge = tcont
    4658:	b900ebbf 	str	wzr, [x29, #232]
    465c:	b900fbbf 	str	wzr, [x29, #248]
    4660:	f90087bf 	str	xzr, [x29, #264]
    4664:	34ff5121 	cbz	w1, 3088 <_vfprintf_r+0x1e0>
    4668:	17fffbcf 	b	35a4 <_vfprintf_r+0x6fc>
    466c:	f9408fa1 	ldr	x1, [x29, #280]
    4670:	9105c3a2 	add	x2, x29, #0x170
    4674:	aa1703e0 	mov	x0, x23
    4678:	94001578 	bl	9c58 <__sprint_r>
    467c:	35ffae60 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    4680:	9107c3a6 	add	x6, x29, #0x1f0
    4684:	b9415ba2 	ldr	w2, [x29, #344]
    4688:	b9417ba1 	ldr	w1, [x29, #376]
    468c:	f940c3a0 	ldr	x0, [x29, #384]
    4690:	17fffecc 	b	41c0 <_vfprintf_r+0x1318>
    4694:	37f87900 	tbnz	w0, #31, 55b4 <_vfprintf_r+0x270c>
    4698:	f94083a0 	ldr	x0, [x29, #256]
    469c:	91003c01 	add	x1, x0, #0xf
    46a0:	927df021 	and	x1, x1, #0xfffffffffffffff8
    46a4:	f90083a1 	str	x1, [x29, #256]
    46a8:	f9400000 	ldr	x0, [x0]
    46ac:	aa1303fa 	mov	x26, x19
    46b0:	79422ba1 	ldrh	w1, [x29, #276]
    46b4:	79000001 	strh	w1, [x0]
    46b8:	17fffa3d 	b	2fac <_vfprintf_r+0x104>
    46bc:	37f86cc0 	tbnz	w0, #31, 5454 <_vfprintf_r+0x25ac>
    46c0:	f94083a0 	ldr	x0, [x29, #256]
    46c4:	91002c01 	add	x1, x0, #0xb
    46c8:	927df021 	and	x1, x1, #0xfffffffffffffff8
    46cc:	f90083a1 	str	x1, [x29, #256]
    46d0:	b9400014 	ldr	w20, [x0]
    46d4:	12157ad9 	and	w25, w22, #0xfffffbff
    46d8:	52800000 	mov	w0, #0x0                   	// #0
    46dc:	17ffffcb 	b	4608 <_vfprintf_r+0x1760>
    46e0:	37f86e40 	tbnz	w0, #31, 54a8 <_vfprintf_r+0x2600>
    46e4:	f94083a0 	ldr	x0, [x29, #256]
    46e8:	91002c01 	add	x1, x0, #0xb
    46ec:	927df021 	and	x1, x1, #0xfffffffffffffff8
    46f0:	b9400014 	ldr	w20, [x0]
    46f4:	f90083a1 	str	x1, [x29, #256]
    46f8:	17ffff69 	b	449c <_vfprintf_r+0x15f4>
    46fc:	37f87680 	tbnz	w0, #31, 55cc <_vfprintf_r+0x2724>
    4700:	f94083a0 	ldr	x0, [x29, #256]
    4704:	91002c01 	add	x1, x0, #0xb
    4708:	927df021 	and	x1, x1, #0xfffffffffffffff8
    470c:	f90083a1 	str	x1, [x29, #256]
    4710:	b9400014 	ldr	w20, [x0]
    4714:	52800020 	mov	w0, #0x1                   	// #1
    4718:	17ffffbc 	b	4608 <_vfprintf_r+0x1760>
    471c:	37f87780 	tbnz	w0, #31, 560c <_vfprintf_r+0x2764>
    4720:	f94083a0 	ldr	x0, [x29, #256]
    4724:	91002c01 	add	x1, x0, #0xb
    4728:	927df021 	and	x1, x1, #0xfffffffffffffff8
    472c:	b9800014 	ldrsw	x20, [x0]
    4730:	f90083a1 	str	x1, [x29, #256]
    4734:	17fffbae 	b	35ec <_vfprintf_r+0x744>
    4738:	f9408fa1 	ldr	x1, [x29, #280]
    473c:	9105c3a2 	add	x2, x29, #0x170
    4740:	aa1703e0 	mov	x0, x23
    4744:	94001545 	bl	9c58 <__sprint_r>
    4748:	35ffa800 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    474c:	b940f3a0 	ldr	w0, [x29, #240]
    4750:	9107c3a6 	add	x6, x29, #0x1f0
    4754:	b9415bb8 	ldr	w24, [x29, #344]
    4758:	4b180018 	sub	w24, w0, w24
    475c:	f940c3a0 	ldr	x0, [x29, #384]
    4760:	17fffe0f 	b	3f9c <_vfprintf_r+0x10f4>
    4764:	9105c3a2 	add	x2, x29, #0x170
    4768:	aa1603e1 	mov	x1, x22
    476c:	aa1703e0 	mov	x0, x23
    4770:	9400153a 	bl	9c58 <__sprint_r>
    4774:	17fffc83 	b	3980 <_vfprintf_r+0xad8>
    4778:	b940f3a1 	ldr	w1, [x29, #240]
    477c:	8b21c341 	add	x1, x26, w1, sxtw
    4780:	eb01039f 	cmp	x28, x1
    4784:	9a81939c 	csel	x28, x28, x1, ls  // ls = plast
    4788:	17fffded 	b	3f3c <_vfprintf_r+0x1094>
    478c:	9101907a 	add	x26, x3, #0x64
    4790:	52800007 	mov	w7, #0x0                   	// #0
    4794:	52800018 	mov	w24, #0x0                   	// #0
    4798:	17ffffac 	b	4648 <_vfprintf_r+0x17a0>
    479c:	91019060 	add	x0, x3, #0x64
    47a0:	14000002 	b	47a8 <_vfprintf_r+0x1900>
    47a4:	aa1a03e0 	mov	x0, x26
    47a8:	12000a81 	and	w1, w20, #0x7
    47ac:	d100041a 	sub	x26, x0, #0x1
    47b0:	1100c021 	add	w1, w1, #0x30
    47b4:	381ff001 	sturb	w1, [x0, #-1]
    47b8:	d343fe94 	lsr	x20, x20, #3
    47bc:	b5ffff54 	cbnz	x20, 47a4 <_vfprintf_r+0x18fc>
    47c0:	7100c03f 	cmp	w1, #0x30
    47c4:	12000321 	and	w1, w25, #0x1
    47c8:	1a9f1021 	csel	w1, w1, wzr, ne  // ne = any
    47cc:	34ff6d81 	cbz	w1, 357c <_vfprintf_r+0x6d4>
    47d0:	d1000800 	sub	x0, x0, #0x2
    47d4:	52800601 	mov	w1, #0x30                  	// #48
    47d8:	2a1903f6 	mov	w22, w25
    47dc:	381ff341 	sturb	w1, [x26, #-1]
    47e0:	4b000318 	sub	w24, w24, w0
    47e4:	aa0003fa 	mov	x26, x0
    47e8:	17ffff98 	b	4648 <_vfprintf_r+0x17a0>
    47ec:	2a1603f9 	mov	w25, w22
    47f0:	17fffb58 	b	3550 <_vfprintf_r+0x6a8>
    47f4:	9101907a 	add	x26, x3, #0x64
    47f8:	52800007 	mov	w7, #0x0                   	// #0
    47fc:	17ffff93 	b	4648 <_vfprintf_r+0x17a0>
    4800:	b940eba1 	ldr	w1, [x29, #232]
    4804:	d1000694 	sub	x20, x20, #0x1
    4808:	51000421 	sub	w1, w1, #0x1
    480c:	b900eba1 	str	w1, [x29, #232]
    4810:	17fffeba 	b	42f8 <_vfprintf_r+0x1450>
    4814:	9105c3a2 	add	x2, x29, #0x170
    4818:	aa1603e1 	mov	x1, x22
    481c:	aa1703e0 	mov	x0, x23
    4820:	9400150e 	bl	9c58 <__sprint_r>
    4824:	35ffa140 	cbnz	w0, 3c4c <_vfprintf_r+0xda4>
    4828:	9107c3a6 	add	x6, x29, #0x1f0
    482c:	f940c3a0 	ldr	x0, [x29, #384]
    4830:	17fffebc 	b	4320 <_vfprintf_r+0x1478>
    4834:	12160324 	and	w4, w25, #0x400
    4838:	b202e7f6 	mov	x22, #0xcccccccccccccccc    	// #-3689348814741910324
    483c:	2a0403fa 	mov	w26, w4
    4840:	f94053a4 	ldr	x4, [x29, #160]
    4844:	91019063 	add	x3, x3, #0x64
    4848:	52800001 	mov	w1, #0x0                   	// #0
    484c:	f29999b6 	movk	x22, #0xcccd
    4850:	9bd67e80 	umulh	x0, x20, x22
    4854:	11000421 	add	w1, w1, #0x1
    4858:	d1000463 	sub	x3, x3, #0x1
    485c:	d343fc00 	lsr	x0, x0, #3
    4860:	8b000800 	add	x0, x0, x0, lsl #2
    4864:	cb000680 	sub	x0, x20, x0, lsl #1
    4868:	1100c000 	add	w0, w0, #0x30
    486c:	39000060 	strb	w0, [x3]
    4870:	340000da 	cbz	w26, 4888 <_vfprintf_r+0x19e0>
    4874:	39400080 	ldrb	w0, [x4]
    4878:	7103fc1f 	cmp	w0, #0xff
    487c:	fa491a80 	ccmp	x20, #0x9, #0x0, ne  // ne = any
    4880:	7a418000 	ccmp	w0, w1, #0x0, hi  // hi = pmore
    4884:	54000b60 	b.eq	49f0 <_vfprintf_r+0x1b48>  // b.none
    4888:	9bd67e94 	umulh	x20, x20, x22
    488c:	d343fe94 	lsr	x20, x20, #3
    4890:	b5fffe14 	cbnz	x20, 4850 <_vfprintf_r+0x19a8>
    4894:	aa0303fa 	mov	x26, x3
    4898:	4b030318 	sub	w24, w24, w3
    489c:	2a1903f6 	mov	w22, w25
    48a0:	f90053a4 	str	x4, [x29, #160]
    48a4:	b900f3a1 	str	w1, [x29, #240]
    48a8:	17ffff68 	b	4648 <_vfprintf_r+0x17a0>
    48ac:	9105c3a2 	add	x2, x29, #0x170
    48b0:	aa1603e1 	mov	x1, x22
    48b4:	aa1703e0 	mov	x0, x23
    48b8:	940014e8 	bl	9c58 <__sprint_r>
    48bc:	35ff9c80 	cbnz	w0, 3c4c <_vfprintf_r+0xda4>
    48c0:	39400281 	ldrb	w1, [x20]
    48c4:	9107c3a6 	add	x6, x29, #0x1f0
    48c8:	f940c3a0 	ldr	x0, [x29, #384]
    48cc:	17fffeaa 	b	4374 <_vfprintf_r+0x14cc>
    48d0:	710018ff 	cmp	w7, #0x6
    48d4:	528000d4 	mov	w20, #0x6                   	// #6
    48d8:	1a9490f4 	csel	w20, w7, w20, ls  // ls = plast
    48dc:	b0000043 	adrp	x3, d000 <__trunctfdf2+0x290>
    48e0:	2a1403f8 	mov	w24, w20
    48e4:	9115e07a 	add	x26, x3, #0x578
    48e8:	52800001 	mov	w1, #0x0                   	// #0
    48ec:	52800007 	mov	w7, #0x0                   	// #0
    48f0:	b900e3bf 	str	wzr, [x29, #224]
    48f4:	b900ebbf 	str	wzr, [x29, #232]
    48f8:	b900fbbf 	str	wzr, [x29, #248]
    48fc:	f90087bf 	str	xzr, [x29, #264]
    4900:	17fff9e2 	b	3088 <_vfprintf_r+0x1e0>
    4904:	f90047a6 	str	x6, [x29, #136]
    4908:	aa1a03e0 	mov	x0, x26
    490c:	9400141d 	bl	9980 <strlen>
    4910:	b900e3bf 	str	wzr, [x29, #224]
    4914:	39453fa1 	ldrb	w1, [x29, #335]
    4918:	7100001f 	cmp	w0, #0x0
    491c:	b900ebbf 	str	wzr, [x29, #232]
    4920:	2a0003f8 	mov	w24, w0
    4924:	b900fbbf 	str	wzr, [x29, #248]
    4928:	1a9fa014 	csel	w20, w0, wzr, ge  // ge = tcont
    492c:	f90087bf 	str	xzr, [x29, #264]
    4930:	52800007 	mov	w7, #0x0                   	// #0
    4934:	f94047a6 	ldr	x6, [x29, #136]
    4938:	34ff3a81 	cbz	w1, 3088 <_vfprintf_r+0x1e0>
    493c:	17fffb1a 	b	35a4 <_vfprintf_r+0x6fc>
    4940:	9105c3a2 	add	x2, x29, #0x170
    4944:	aa1603e1 	mov	x1, x22
    4948:	aa1703e0 	mov	x0, x23
    494c:	940014c3 	bl	9c58 <__sprint_r>
    4950:	35ff97e0 	cbnz	w0, 3c4c <_vfprintf_r+0xda4>
    4954:	39400281 	ldrb	w1, [x20]
    4958:	9107c3a6 	add	x6, x29, #0x1f0
    495c:	f940c3a0 	ldr	x0, [x29, #384]
    4960:	17fffeb3 	b	442c <_vfprintf_r+0x1584>
    4964:	f9408fa1 	ldr	x1, [x29, #280]
    4968:	9105c3a2 	add	x2, x29, #0x170
    496c:	aa1703e0 	mov	x0, x23
    4970:	940014ba 	bl	9c58 <__sprint_r>
    4974:	35ff96a0 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    4978:	9107c3a6 	add	x6, x29, #0x1f0
    497c:	f940c3a0 	ldr	x0, [x29, #384]
    4980:	17fffcdc 	b	3cf0 <_vfprintf_r+0xe48>
    4984:	f9408fa1 	ldr	x1, [x29, #280]
    4988:	9105c3a2 	add	x2, x29, #0x170
    498c:	aa1703e0 	mov	x0, x23
    4990:	940014b2 	bl	9c58 <__sprint_r>
    4994:	35ff95a0 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    4998:	9107c3a6 	add	x6, x29, #0x1f0
    499c:	b9415ba2 	ldr	w2, [x29, #344]
    49a0:	f940c3a0 	ldr	x0, [x29, #384]
    49a4:	17fffdf9 	b	4188 <_vfprintf_r+0x12e0>
    49a8:	39453fa1 	ldrb	w1, [x29, #335]
    49ac:	2a0703f4 	mov	w20, w7
    49b0:	b900e3bf 	str	wzr, [x29, #224]
    49b4:	2a0703f8 	mov	w24, w7
    49b8:	b900ebbf 	str	wzr, [x29, #232]
    49bc:	52800007 	mov	w7, #0x0                   	// #0
    49c0:	b900fbbf 	str	wzr, [x29, #248]
    49c4:	34ff3621 	cbz	w1, 3088 <_vfprintf_r+0x1e0>
    49c8:	17fffaf7 	b	35a4 <_vfprintf_r+0x6fc>
    49cc:	52800600 	mov	w0, #0x30                  	// #48
    49d0:	321f02d6 	orr	w22, w22, #0x2
    49d4:	390543a0 	strb	w0, [x29, #336]
    49d8:	390547bc 	strb	w28, [x29, #337]
    49dc:	17fffeb4 	b	44ac <_vfprintf_r+0x1604>
    49e0:	360749b6 	tbz	w22, #0, 3314 <_vfprintf_r+0x46c>
    49e4:	17fffdec 	b	4194 <_vfprintf_r+0x12ec>
    49e8:	aa1c03f6 	mov	x22, x28
    49ec:	17fffc98 	b	3c4c <_vfprintf_r+0xda4>
    49f0:	f9404fa0 	ldr	x0, [x29, #152]
    49f4:	f9405ba1 	ldr	x1, [x29, #176]
    49f8:	cb000063 	sub	x3, x3, x0
    49fc:	aa0003e2 	mov	x2, x0
    4a00:	a90e93a6 	stp	x6, x4, [x29, #232]
    4a04:	aa0303e0 	mov	x0, x3
    4a08:	b900fba7 	str	w7, [x29, #248]
    4a0c:	f90087a3 	str	x3, [x29, #264]
    4a10:	9400142c 	bl	9ac0 <strncpy>
    4a14:	a94e93a6 	ldp	x6, x4, [x29, #232]
    4a18:	52800001 	mov	w1, #0x0                   	// #0
    4a1c:	b940fba7 	ldr	w7, [x29, #248]
    4a20:	f94087a3 	ldr	x3, [x29, #264]
    4a24:	39400480 	ldrb	w0, [x4, #1]
    4a28:	7100001f 	cmp	w0, #0x0
    4a2c:	1a9f07e0 	cset	w0, ne  // ne = any
    4a30:	8b000084 	add	x4, x4, x0
    4a34:	17ffff95 	b	4888 <_vfprintf_r+0x19e0>
    4a38:	3100405f 	cmn	w2, #0x10
    4a3c:	4b0203f8 	neg	w24, w2
    4a40:	5400030a 	b.ge	4aa0 <_vfprintf_r+0x1bf8>  // b.tcont
    4a44:	d2800219 	mov	x25, #0x10                  	// #16
    4a48:	f9408fbc 	ldr	x28, [x29, #280]
    4a4c:	14000005 	b	4a60 <_vfprintf_r+0x1bb8>
    4a50:	910040c6 	add	x6, x6, #0x10
    4a54:	51004318 	sub	w24, w24, #0x10
    4a58:	7100431f 	cmp	w24, #0x10
    4a5c:	5400022d 	b.le	4aa0 <_vfprintf_r+0x1bf8>
    4a60:	11000421 	add	w1, w1, #0x1
    4a64:	91004000 	add	x0, x0, #0x10
    4a68:	a90064db 	stp	x27, x25, [x6]
    4a6c:	71001c3f 	cmp	w1, #0x7
    4a70:	b9017ba1 	str	w1, [x29, #376]
    4a74:	f900c3a0 	str	x0, [x29, #384]
    4a78:	54fffecd 	b.le	4a50 <_vfprintf_r+0x1ba8>
    4a7c:	9105c3a2 	add	x2, x29, #0x170
    4a80:	aa1c03e1 	mov	x1, x28
    4a84:	aa1703e0 	mov	x0, x23
    4a88:	94001474 	bl	9c58 <__sprint_r>
    4a8c:	35fffae0 	cbnz	w0, 49e8 <_vfprintf_r+0x1b40>
    4a90:	9107c3a6 	add	x6, x29, #0x1f0
    4a94:	b9417ba1 	ldr	w1, [x29, #376]
    4a98:	f940c3a0 	ldr	x0, [x29, #384]
    4a9c:	17ffffee 	b	4a54 <_vfprintf_r+0x1bac>
    4aa0:	93407f02 	sxtw	x2, w24
    4aa4:	f90004c2 	str	x2, [x6, #8]
    4aa8:	8b020000 	add	x0, x0, x2
    4aac:	b0000042 	adrp	x2, d000 <__trunctfdf2+0x290>
    4ab0:	910c0042 	add	x2, x2, #0x300
    4ab4:	11000421 	add	w1, w1, #0x1
    4ab8:	91004042 	add	x2, x2, #0x10
    4abc:	b9017ba1 	str	w1, [x29, #376]
    4ac0:	f90000c2 	str	x2, [x6]
    4ac4:	71001c3f 	cmp	w1, #0x7
    4ac8:	f900c3a0 	str	x0, [x29, #384]
    4acc:	540000ec 	b.gt	4ae8 <_vfprintf_r+0x1c40>
    4ad0:	910040c6 	add	x6, x6, #0x10
    4ad4:	17fffdbc 	b	41c4 <_vfprintf_r+0x131c>
    4ad8:	f9408fb6 	ldr	x22, [x29, #280]
    4adc:	17fffba9 	b	3980 <_vfprintf_r+0xad8>
    4ae0:	aa0603e3 	mov	x3, x6
    4ae4:	17fffdcc 	b	4214 <_vfprintf_r+0x136c>
    4ae8:	f9408fa1 	ldr	x1, [x29, #280]
    4aec:	9105c3a2 	add	x2, x29, #0x170
    4af0:	aa1703e0 	mov	x0, x23
    4af4:	94001459 	bl	9c58 <__sprint_r>
    4af8:	35ff8a80 	cbnz	w0, 3c48 <_vfprintf_r+0xda0>
    4afc:	9107c3a6 	add	x6, x29, #0x1f0
    4b00:	b9417ba1 	ldr	w1, [x29, #376]
    4b04:	f940c3a0 	ldr	x0, [x29, #384]
    4b08:	17fffdaf 	b	41c4 <_vfprintf_r+0x131c>
    4b0c:	37f83c40 	tbnz	w0, #31, 5294 <_vfprintf_r+0x23ec>
    4b10:	f94083a0 	ldr	x0, [x29, #256]
    4b14:	91003c01 	add	x1, x0, #0xf
    4b18:	927df021 	and	x1, x1, #0xfffffffffffffff8
    4b1c:	f90083a1 	str	x1, [x29, #256]
    4b20:	fd400008 	ldr	d8, [x0]
    4b24:	1e60c101 	fabs	d1, d8
    4b28:	92f00200 	mov	x0, #0x7fefffffffffffff    	// #9218868437227405311
    4b2c:	9e670000 	fmov	d0, x0
    4b30:	1e602020 	fcmp	d1, d0
    4b34:	5400028d 	b.le	4b84 <_vfprintf_r+0x1cdc>
    4b38:	1e602118 	fcmpe	d8, #0.0
    4b3c:	54001764 	b.mi	4e28 <_vfprintf_r+0x1f80>  // b.first
    4b40:	39453fa1 	ldrb	w1, [x29, #335]
    4b44:	71011f9f 	cmp	w28, #0x47
    4b48:	b0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    4b4c:	b0000043 	adrp	x3, d000 <__trunctfdf2+0x290>
    4b50:	9114a000 	add	x0, x0, #0x528
    4b54:	9114c063 	add	x3, x3, #0x530
    4b58:	12187ad6 	and	w22, w22, #0xffffff7f
    4b5c:	9a80c07a 	csel	x26, x3, x0, gt
    4b60:	52800074 	mov	w20, #0x3                   	// #3
    4b64:	b900e3bf 	str	wzr, [x29, #224]
    4b68:	2a1403f8 	mov	w24, w20
    4b6c:	b900ebbf 	str	wzr, [x29, #232]
    4b70:	52800007 	mov	w7, #0x0                   	// #0
    4b74:	b900fbbf 	str	wzr, [x29, #248]
    4b78:	f90087bf 	str	xzr, [x29, #264]
    4b7c:	34ff2861 	cbz	w1, 3088 <_vfprintf_r+0x1e0>
    4b80:	17fffa89 	b	35a4 <_vfprintf_r+0x6fc>
    4b84:	1e682100 	fcmp	d8, d8
    4b88:	54003306 	b.vs	51e8 <_vfprintf_r+0x2340>
    4b8c:	121a7b98 	and	w24, w28, #0xffffffdf
    4b90:	fd0037a9 	str	d9, [x29, #104]
    4b94:	7101071f 	cmp	w24, #0x41
    4b98:	540011e1 	b.ne	4dd4 <_vfprintf_r+0x1f2c>  // b.any
    4b9c:	7101879f 	cmp	w28, #0x61
    4ba0:	52800600 	mov	w0, #0x30                  	// #48
    4ba4:	52800f01 	mov	w1, #0x78                  	// #120
    4ba8:	390543a0 	strb	w0, [x29, #336]
    4bac:	52800b00 	mov	w0, #0x58                  	// #88
    4bb0:	1a811000 	csel	w0, w0, w1, ne  // ne = any
    4bb4:	390547a0 	strb	w0, [x29, #337]
    4bb8:	71018cff 	cmp	w7, #0x63
    4bbc:	321f02d4 	orr	w20, w22, #0x2
    4bc0:	5400268c 	b.gt	5090 <_vfprintf_r+0x21e8>
    4bc4:	9e660100 	fmov	x0, d8
    4bc8:	52802041 	mov	w1, #0x102                 	// #258
    4bcc:	910623ba 	add	x26, x29, #0x188
    4bd0:	2a0102d6 	orr	w22, w22, w1
    4bd4:	f90087bf 	str	xzr, [x29, #264]
    4bd8:	d360fc00 	lsr	x0, x0, #32
    4bdc:	1e604109 	fmov	d9, d8
    4be0:	52800019 	mov	w25, #0x0                   	// #0
    4be4:	37f812e0 	tbnz	w0, #31, 4e40 <_vfprintf_r+0x1f98>
    4be8:	7101071f 	cmp	w24, #0x41
    4bec:	540015e0 	b.eq	4ea8 <_vfprintf_r+0x2000>  // b.none
    4bf0:	71011b1f 	cmp	w24, #0x46
    4bf4:	540012c0 	b.eq	4e4c <_vfprintf_r+0x1fa4>  // b.none
    4bf8:	7101171f 	cmp	w24, #0x45
    4bfc:	540026a1 	b.ne	50d0 <_vfprintf_r+0x2228>  // b.any
    4c00:	1e604120 	fmov	d0, d9
    4c04:	110004ea 	add	w10, w7, #0x1
    4c08:	2a0a03e2 	mov	w2, w10
    4c0c:	f90077a6 	str	x6, [x29, #232]
    4c10:	b900f3a7 	str	w7, [x29, #240]
    4c14:	9105a3a5 	add	x5, x29, #0x168
    4c18:	b900fbaa 	str	w10, [x29, #248]
    4c1c:	910573a4 	add	x4, x29, #0x15c
    4c20:	910563a3 	add	x3, x29, #0x158
    4c24:	52800041 	mov	w1, #0x2                   	// #2
    4c28:	aa1703e0 	mov	x0, x23
    4c2c:	94000459 	bl	5d90 <_dtoa_r>
    4c30:	b940f3a7 	ldr	w7, [x29, #240]
    4c34:	aa0003fa 	mov	x26, x0
    4c38:	b940fbaa 	ldr	w10, [x29, #248]
    4c3c:	f94077a6 	ldr	x6, [x29, #232]
    4c40:	8b2ac341 	add	x1, x26, w10, sxtw
    4c44:	1e602128 	fcmp	d9, #0.0
    4c48:	aa0103e0 	mov	x0, x1
    4c4c:	54000160 	b.eq	4c78 <_vfprintf_r+0x1dd0>  // b.none
    4c50:	f940b7a0 	ldr	x0, [x29, #360]
    4c54:	52800604 	mov	w4, #0x30                  	// #48
    4c58:	eb00003f 	cmp	x1, x0
    4c5c:	540000e9 	b.ls	4c78 <_vfprintf_r+0x1dd0>  // b.plast
    4c60:	91000402 	add	x2, x0, #0x1
    4c64:	f900b7a2 	str	x2, [x29, #360]
    4c68:	39000004 	strb	w4, [x0]
    4c6c:	f940b7a0 	ldr	x0, [x29, #360]
    4c70:	eb00003f 	cmp	x1, x0
    4c74:	54ffff68 	b.hi	4c60 <_vfprintf_r+0x1db8>  // b.pmore
    4c78:	b9415ba1 	ldr	w1, [x29, #344]
    4c7c:	cb1a0000 	sub	x0, x0, x26
    4c80:	b900f3a0 	str	w0, [x29, #240]
    4c84:	71011f1f 	cmp	w24, #0x47
    4c88:	b900fba1 	str	w1, [x29, #248]
    4c8c:	540002a0 	b.eq	4ce0 <_vfprintf_r+0x1e38>  // b.none
    4c90:	71011b1f 	cmp	w24, #0x46
    4c94:	54000301 	b.ne	4cf4 <_vfprintf_r+0x1e4c>  // b.any
    4c98:	b940fba0 	ldr	w0, [x29, #248]
    4c9c:	7100001f 	cmp	w0, #0x0
    4ca0:	54002bed 	b.le	521c <_vfprintf_r+0x2374>
    4ca4:	35002967 	cbnz	w7, 51d0 <_vfprintf_r+0x2328>
    4ca8:	37002954 	tbnz	w20, #0, 51d0 <_vfprintf_r+0x2328>
    4cac:	b940fbb8 	ldr	w24, [x29, #248]
    4cb0:	52800cdc 	mov	w28, #0x66                  	// #102
    4cb4:	37501ad4 	tbnz	w20, #10, 500c <_vfprintf_r+0x2164>
    4cb8:	7100031f 	cmp	w24, #0x0
    4cbc:	1a9fa314 	csel	w20, w24, wzr, ge  // ge = tcont
    4cc0:	b900e3bf 	str	wzr, [x29, #224]
    4cc4:	b900ebbf 	str	wzr, [x29, #232]
    4cc8:	35000a39 	cbnz	w25, 4e0c <_vfprintf_r+0x1f64>
    4ccc:	39453fa1 	ldrb	w1, [x29, #335]
    4cd0:	52800007 	mov	w7, #0x0                   	// #0
    4cd4:	fd4037a9 	ldr	d9, [x29, #104]
    4cd8:	34ff1d81 	cbz	w1, 3088 <_vfprintf_r+0x1e0>
    4cdc:	17fffa32 	b	35a4 <_vfprintf_r+0x6fc>
    4ce0:	6b0100ff 	cmp	w7, w1
    4ce4:	3a43a821 	ccmn	w1, #0x3, #0x1, ge  // ge = tcont
    4ce8:	5400056a 	b.ge	4d94 <_vfprintf_r+0x1eec>  // b.tcont
    4cec:	51000b9c 	sub	w28, w28, #0x2
    4cf0:	121a7b98 	and	w24, w28, #0xffffffdf
    4cf4:	12001f80 	and	w0, w28, #0xff
    4cf8:	7101071f 	cmp	w24, #0x41
    4cfc:	11003c01 	add	w1, w0, #0xf
    4d00:	12001c21 	and	w1, w1, #0xff
    4d04:	1a811000 	csel	w0, w0, w1, ne  // ne = any
    4d08:	390583a0 	strb	w0, [x29, #352]
    4d0c:	b940fba0 	ldr	w0, [x29, #248]
    4d10:	51000400 	sub	w0, w0, #0x1
    4d14:	b9015ba0 	str	w0, [x29, #344]
    4d18:	37f828e0 	tbnz	w0, #31, 5234 <_vfprintf_r+0x238c>
    4d1c:	52800561 	mov	w1, #0x2b                  	// #43
    4d20:	390587a1 	strb	w1, [x29, #353]
    4d24:	7100241f 	cmp	w0, #0x9
    4d28:	540020ac 	b.gt	513c <_vfprintf_r+0x2294>
    4d2c:	910583a1 	add	x1, x29, #0x160
    4d30:	7101071f 	cmp	w24, #0x41
    4d34:	91000822 	add	x2, x1, #0x2
    4d38:	54000080 	b.eq	4d48 <_vfprintf_r+0x1ea0>  // b.none
    4d3c:	52800602 	mov	w2, #0x30                  	// #48
    4d40:	39058ba2 	strb	w2, [x29, #354]
    4d44:	91000c22 	add	x2, x1, #0x3
    4d48:	1100c000 	add	w0, w0, #0x30
    4d4c:	39000040 	strb	w0, [x2]
    4d50:	91000440 	add	x0, x2, #0x1
    4d54:	cb010000 	sub	x0, x0, x1
    4d58:	b940f3a1 	ldr	w1, [x29, #240]
    4d5c:	b900afa0 	str	w0, [x29, #172]
    4d60:	7100043f 	cmp	w1, #0x1
    4d64:	0b000038 	add	w24, w1, w0
    4d68:	5400272d 	b.le	524c <_vfprintf_r+0x23a4>
    4d6c:	b940dba0 	ldr	w0, [x29, #216]
    4d70:	0b000318 	add	w24, w24, w0
    4d74:	12157a89 	and	w9, w20, #0xfffffbff
    4d78:	7100031f 	cmp	w24, #0x0
    4d7c:	32180136 	orr	w22, w9, #0x100
    4d80:	1a9fa314 	csel	w20, w24, wzr, ge  // ge = tcont
    4d84:	b900e3bf 	str	wzr, [x29, #224]
    4d88:	b900ebbf 	str	wzr, [x29, #232]
    4d8c:	b900fbbf 	str	wzr, [x29, #248]
    4d90:	17ffffce 	b	4cc8 <_vfprintf_r+0x1e20>
    4d94:	b940fba1 	ldr	w1, [x29, #248]
    4d98:	6b01001f 	cmp	w0, w1
    4d9c:	5400122c 	b.gt	4fe0 <_vfprintf_r+0x2138>
    4da0:	2a0103e0 	mov	w0, w1
    4da4:	f240029f 	tst	x20, #0x1
    4da8:	b940dba1 	ldr	w1, [x29, #216]
    4dac:	0b010018 	add	w24, w0, w1
    4db0:	1a801318 	csel	w24, w24, w0, ne  // ne = any
    4db4:	36500094 	tbz	w20, #10, 4dc4 <_vfprintf_r+0x1f1c>
    4db8:	b940fba0 	ldr	w0, [x29, #248]
    4dbc:	7100001f 	cmp	w0, #0x0
    4dc0:	5400124c 	b.gt	5008 <_vfprintf_r+0x2160>
    4dc4:	7100031f 	cmp	w24, #0x0
    4dc8:	52800cfc 	mov	w28, #0x67                  	// #103
    4dcc:	1a9fa314 	csel	w20, w24, wzr, ge  // ge = tcont
    4dd0:	17ffffbc 	b	4cc0 <_vfprintf_r+0x1e18>
    4dd4:	9e660101 	fmov	x1, d8
    4dd8:	2a1603f4 	mov	w20, w22
    4ddc:	310004ff 	cmn	w7, #0x1
    4de0:	321802c2 	orr	w2, w22, #0x100
    4de4:	d360fc21 	lsr	x1, x1, #32
    4de8:	2a0103e0 	mov	w0, w1
    4dec:	54001a00 	b.eq	512c <_vfprintf_r+0x2284>  // b.none
    4df0:	71011f1f 	cmp	w24, #0x47
    4df4:	54001901 	b.ne	5114 <_vfprintf_r+0x226c>  // b.any
    4df8:	f90087bf 	str	xzr, [x29, #264]
    4dfc:	2a0203f6 	mov	w22, w2
    4e00:	35ffeee7 	cbnz	w7, 4bdc <_vfprintf_r+0x1d34>
    4e04:	52800027 	mov	w7, #0x1                   	// #1
    4e08:	17ffff75 	b	4bdc <_vfprintf_r+0x1d34>
    4e0c:	528005a0 	mov	w0, #0x2d                  	// #45
    4e10:	528005a1 	mov	w1, #0x2d                  	// #45
    4e14:	39053fa0 	strb	w0, [x29, #335]
    4e18:	52800007 	mov	w7, #0x0                   	// #0
    4e1c:	fd4037a9 	ldr	d9, [x29, #104]
    4e20:	11000694 	add	w20, w20, #0x1
    4e24:	17fff899 	b	3088 <_vfprintf_r+0x1e0>
    4e28:	528005a0 	mov	w0, #0x2d                  	// #45
    4e2c:	528005a1 	mov	w1, #0x2d                  	// #45
    4e30:	39053fa0 	strb	w0, [x29, #335]
    4e34:	17ffff44 	b	4b44 <_vfprintf_r+0x1c9c>
    4e38:	2a0203f6 	mov	w22, w2
    4e3c:	f90087bf 	str	xzr, [x29, #264]
    4e40:	1e614109 	fneg	d9, d8
    4e44:	528005b9 	mov	w25, #0x2d                  	// #45
    4e48:	17ffff68 	b	4be8 <_vfprintf_r+0x1d40>
    4e4c:	1e604120 	fmov	d0, d9
    4e50:	2a0703e2 	mov	w2, w7
    4e54:	52800061 	mov	w1, #0x3                   	// #3
    4e58:	f9007ba6 	str	x6, [x29, #240]
    4e5c:	b900fba7 	str	w7, [x29, #248]
    4e60:	9105a3a5 	add	x5, x29, #0x168
    4e64:	910573a4 	add	x4, x29, #0x15c
    4e68:	910563a3 	add	x3, x29, #0x158
    4e6c:	aa1703e0 	mov	x0, x23
    4e70:	940003c8 	bl	5d90 <_dtoa_r>
    4e74:	aa0003fa 	mov	x26, x0
    4e78:	39400000 	ldrb	w0, [x0]
    4e7c:	2f00e400 	movi	d0, #0x0
    4e80:	b940fba7 	ldr	w7, [x29, #248]
    4e84:	7100c01f 	cmp	w0, #0x30
    4e88:	f9407ba6 	ldr	x6, [x29, #240]
    4e8c:	93407ce1 	sxtw	x1, w7
    4e90:	1e600524 	fccmp	d9, d0, #0x4, eq  // eq = none
    4e94:	54001f21 	b.ne	5278 <_vfprintf_r+0x23d0>  // b.any
    4e98:	b9415ba0 	ldr	w0, [x29, #344]
    4e9c:	8b20c020 	add	x0, x1, w0, sxtw
    4ea0:	8b000341 	add	x1, x26, x0
    4ea4:	17ffff68 	b	4c44 <_vfprintf_r+0x1d9c>
    4ea8:	1e604120 	fmov	d0, d9
    4eac:	f9007ba6 	str	x6, [x29, #240]
    4eb0:	b900fba7 	str	w7, [x29, #248]
    4eb4:	910563a0 	add	x0, x29, #0x158
    4eb8:	94001214 	bl	9708 <frexp>
    4ebc:	1e681001 	fmov	d1, #1.250000000000000000e-001
    4ec0:	b940fba7 	ldr	w7, [x29, #248]
    4ec4:	f9407ba6 	ldr	x6, [x29, #240]
    4ec8:	1e610800 	fmul	d0, d0, d1
    4ecc:	1e602008 	fcmp	d0, #0.0
    4ed0:	54000061 	b.ne	4edc <_vfprintf_r+0x2034>  // b.any
    4ed4:	52800020 	mov	w0, #0x1                   	// #1
    4ed8:	b9015ba0 	str	w0, [x29, #344]
    4edc:	7101879f 	cmp	w28, #0x61
    4ee0:	b0000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    4ee4:	b0000049 	adrp	x9, d000 <__trunctfdf2+0x290>
    4ee8:	91152000 	add	x0, x0, #0x548
    4eec:	91158129 	add	x9, x9, #0x560
    4ef0:	510004e7 	sub	w7, w7, #0x1
    4ef4:	1e661002 	fmov	d2, #1.600000000000000000e+001
    4ef8:	9a801129 	csel	x9, x9, x0, ne  // ne = any
    4efc:	aa1a03e2 	mov	x2, x26
    4f00:	14000005 	b	4f14 <_vfprintf_r+0x206c>
    4f04:	1e602008 	fcmp	d0, #0.0
    4f08:	510004e7 	sub	w7, w7, #0x1
    4f0c:	54000180 	b.eq	4f3c <_vfprintf_r+0x2094>  // b.none
    4f10:	aa0003e2 	mov	x2, x0
    4f14:	1e620800 	fmul	d0, d0, d2
    4f18:	aa0203e0 	mov	x0, x2
    4f1c:	310004ff 	cmn	w7, #0x1
    4f20:	2a0703e4 	mov	w4, w7
    4f24:	1e780001 	fcvtzs	w1, d0
    4f28:	1e620021 	scvtf	d1, w1
    4f2c:	3861c923 	ldrb	w3, [x9, w1, sxtw]
    4f30:	38001403 	strb	w3, [x0], #1
    4f34:	1e613800 	fsub	d0, d0, d1
    4f38:	54fffe61 	b.ne	4f04 <_vfprintf_r+0x205c>  // b.any
    4f3c:	1e6c1001 	fmov	d1, #5.000000000000000000e-001
    4f40:	1e612010 	fcmpe	d0, d1
    4f44:	5400008c 	b.gt	4f54 <_vfprintf_r+0x20ac>
    4f48:	1e612000 	fcmp	d0, d1
    4f4c:	54000381 	b.ne	4fbc <_vfprintf_r+0x2114>  // b.any
    4f50:	36000361 	tbz	w1, #0, 4fbc <_vfprintf_r+0x2114>
    4f54:	f900b7a2 	str	x2, [x29, #360]
    4f58:	39403d21 	ldrb	w1, [x9, #15]
    4f5c:	385ff004 	ldurb	w4, [x0, #-1]
    4f60:	6b04003f 	cmp	w1, w4
    4f64:	54001841 	b.ne	526c <_vfprintf_r+0x23c4>  // b.any
    4f68:	aa0003e1 	mov	x1, x0
    4f6c:	52800605 	mov	w5, #0x30                  	// #48
    4f70:	381ff025 	sturb	w5, [x1, #-1]
    4f74:	f940b7a1 	ldr	x1, [x29, #360]
    4f78:	d1000422 	sub	x2, x1, #0x1
    4f7c:	f900b7a2 	str	x2, [x29, #360]
    4f80:	385ff022 	ldurb	w2, [x1, #-1]
    4f84:	6b04005f 	cmp	w2, w4
    4f88:	54ffff40 	b.eq	4f70 <_vfprintf_r+0x20c8>  // b.none
    4f8c:	7100e45f 	cmp	w2, #0x39
    4f90:	11000442 	add	w2, w2, #0x1
    4f94:	12001c42 	and	w2, w2, #0xff
    4f98:	540000e0 	b.eq	4fb4 <_vfprintf_r+0x210c>  // b.none
    4f9c:	381ff022 	sturb	w2, [x1, #-1]
    4fa0:	4b1a0000 	sub	w0, w0, w26
    4fa4:	b900f3a0 	str	w0, [x29, #240]
    4fa8:	b9415ba0 	ldr	w0, [x29, #344]
    4fac:	b900fba0 	str	w0, [x29, #248]
    4fb0:	17ffff51 	b	4cf4 <_vfprintf_r+0x1e4c>
    4fb4:	39402922 	ldrb	w2, [x9, #10]
    4fb8:	17fffff9 	b	4f9c <_vfprintf_r+0x20f4>
    4fbc:	37ffff24 	tbnz	w4, #31, 4fa0 <_vfprintf_r+0x20f8>
    4fc0:	93407c81 	sxtw	x1, w4
    4fc4:	52800602 	mov	w2, #0x30                  	// #48
    4fc8:	91000421 	add	x1, x1, #0x1
    4fcc:	8b010001 	add	x1, x0, x1
    4fd0:	38001402 	strb	w2, [x0], #1
    4fd4:	eb01001f 	cmp	x0, x1
    4fd8:	54ffffc1 	b.ne	4fd0 <_vfprintf_r+0x2128>  // b.any
    4fdc:	17fffff1 	b	4fa0 <_vfprintf_r+0x20f8>
    4fe0:	b940dba1 	ldr	w1, [x29, #216]
    4fe4:	52800cfc 	mov	w28, #0x67                  	// #103
    4fe8:	0b000038 	add	w24, w1, w0
    4fec:	b940fba0 	ldr	w0, [x29, #248]
    4ff0:	7100001f 	cmp	w0, #0x0
    4ff4:	54ffe60c 	b.gt	4cb4 <_vfprintf_r+0x1e0c>
    4ff8:	4b000318 	sub	w24, w24, w0
    4ffc:	31000718 	adds	w24, w24, #0x1
    5000:	1a9f5314 	csel	w20, w24, wzr, pl  // pl = nfrst
    5004:	17ffff2f 	b	4cc0 <_vfprintf_r+0x1e18>
    5008:	52800cfc 	mov	w28, #0x67                  	// #103
    500c:	f94053a3 	ldr	x3, [x29, #160]
    5010:	b940fba1 	ldr	w1, [x29, #248]
    5014:	b900e3bf 	str	wzr, [x29, #224]
    5018:	39400060 	ldrb	w0, [x3]
    501c:	b900ebbf 	str	wzr, [x29, #232]
    5020:	7103fc1f 	cmp	w0, #0xff
    5024:	540001a0 	b.eq	5058 <_vfprintf_r+0x21b0>  // b.none
    5028:	6b01001f 	cmp	w0, w1
    502c:	5400016a 	b.ge	5058 <_vfprintf_r+0x21b0>  // b.tcont
    5030:	39400462 	ldrb	w2, [x3, #1]
    5034:	4b000021 	sub	w1, w1, w0
    5038:	34000242 	cbz	w2, 5080 <_vfprintf_r+0x21d8>
    503c:	b940eba0 	ldr	w0, [x29, #232]
    5040:	91000463 	add	x3, x3, #0x1
    5044:	11000400 	add	w0, w0, #0x1
    5048:	b900eba0 	str	w0, [x29, #232]
    504c:	2a0203e0 	mov	w0, w2
    5050:	7103fc1f 	cmp	w0, #0xff
    5054:	54fffea1 	b.ne	5028 <_vfprintf_r+0x2180>  // b.any
    5058:	b940eba0 	ldr	w0, [x29, #232]
    505c:	b900fba1 	str	w1, [x29, #248]
    5060:	b940e3a1 	ldr	w1, [x29, #224]
    5064:	f90053a3 	str	x3, [x29, #160]
    5068:	0b010000 	add	w0, w0, w1
    506c:	b9409ba1 	ldr	w1, [x29, #152]
    5070:	1b016018 	madd	w24, w0, w1, w24
    5074:	7100031f 	cmp	w24, #0x0
    5078:	1a9fa314 	csel	w20, w24, wzr, ge  // ge = tcont
    507c:	17ffff13 	b	4cc8 <_vfprintf_r+0x1e20>
    5080:	b940e3a2 	ldr	w2, [x29, #224]
    5084:	11000442 	add	w2, w2, #0x1
    5088:	b900e3a2 	str	w2, [x29, #224]
    508c:	17ffffe5 	b	5020 <_vfprintf_r+0x2178>
    5090:	110004e1 	add	w1, w7, #0x1
    5094:	aa1703e0 	mov	x0, x23
    5098:	f9007ba6 	str	x6, [x29, #240]
    509c:	93407c21 	sxtw	x1, w1
    50a0:	b900fba7 	str	w7, [x29, #248]
    50a4:	94000b3b 	bl	7d90 <_malloc_r>
    50a8:	aa0003fa 	mov	x26, x0
    50ac:	b4001040 	cbz	x0, 52b4 <_vfprintf_r+0x240c>
    50b0:	9e660100 	fmov	x0, d8
    50b4:	52802041 	mov	w1, #0x102                 	// #258
    50b8:	b940fba7 	ldr	w7, [x29, #248]
    50bc:	2a0102d6 	orr	w22, w22, w1
    50c0:	f9407ba6 	ldr	x6, [x29, #240]
    50c4:	f90087ba 	str	x26, [x29, #264]
    50c8:	d360fc00 	lsr	x0, x0, #32
    50cc:	17fffec4 	b	4bdc <_vfprintf_r+0x1d34>
    50d0:	1e604120 	fmov	d0, d9
    50d4:	2a0703e2 	mov	w2, w7
    50d8:	f9007ba6 	str	x6, [x29, #240]
    50dc:	9105a3a5 	add	x5, x29, #0x168
    50e0:	b900fba7 	str	w7, [x29, #248]
    50e4:	910573a4 	add	x4, x29, #0x15c
    50e8:	910563a3 	add	x3, x29, #0x158
    50ec:	52800041 	mov	w1, #0x2                   	// #2
    50f0:	aa1703e0 	mov	x0, x23
    50f4:	94000327 	bl	5d90 <_dtoa_r>
    50f8:	71011f1f 	cmp	w24, #0x47
    50fc:	aa0003fa 	mov	x26, x0
    5100:	b940fba7 	ldr	w7, [x29, #248]
    5104:	f9407ba6 	ldr	x6, [x29, #240]
    5108:	54000840 	b.eq	5210 <_vfprintf_r+0x2368>  // b.none
    510c:	2a0703ea 	mov	w10, w7
    5110:	17fffecc 	b	4c40 <_vfprintf_r+0x1d98>
    5114:	37ffe921 	tbnz	w1, #31, 4e38 <_vfprintf_r+0x1f90>
    5118:	1e604109 	fmov	d9, d8
    511c:	2a0203f6 	mov	w22, w2
    5120:	52800019 	mov	w25, #0x0                   	// #0
    5124:	f90087bf 	str	xzr, [x29, #264]
    5128:	17fffeb2 	b	4bf0 <_vfprintf_r+0x1d48>
    512c:	2a0203f6 	mov	w22, w2
    5130:	528000c7 	mov	w7, #0x6                   	// #6
    5134:	f90087bf 	str	xzr, [x29, #264]
    5138:	17fffea9 	b	4bdc <_vfprintf_r+0x1d34>
    513c:	529999a7 	mov	w7, #0xcccd                	// #52429
    5140:	9105bfa4 	add	x4, x29, #0x16f
    5144:	72b99987 	movk	w7, #0xcccc, lsl #16
    5148:	14000002 	b	5150 <_vfprintf_r+0x22a8>
    514c:	aa0503e4 	mov	x4, x5
    5150:	9ba77c02 	umull	x2, w0, w7
    5154:	d1000485 	sub	x5, x4, #0x1
    5158:	d363fc42 	lsr	x2, x2, #35
    515c:	7100245f 	cmp	w2, #0x9
    5160:	0b020841 	add	w1, w2, w2, lsl #2
    5164:	4b010401 	sub	w1, w0, w1, lsl #1
    5168:	2a0203e0 	mov	w0, w2
    516c:	1100c021 	add	w1, w1, #0x30
    5170:	381ff081 	sturb	w1, [x4, #-1]
    5174:	54fffecc 	b.gt	514c <_vfprintf_r+0x22a4>
    5178:	1100c040 	add	w0, w2, #0x30
    517c:	9105bfa7 	add	x7, x29, #0x16f
    5180:	12001c00 	and	w0, w0, #0xff
    5184:	381ff0a0 	sturb	w0, [x5, #-1]
    5188:	d1000881 	sub	x1, x4, #0x2
    518c:	eb0100ff 	cmp	x7, x1
    5190:	540007c9 	b.ls	5288 <_vfprintf_r+0x23e0>  // b.plast
    5194:	cb0400e7 	sub	x7, x7, x4
    5198:	910583a1 	add	x1, x29, #0x160
    519c:	92800002 	mov	x2, #0xffffffffffffffff    	// #-1
    51a0:	14000003 	b	51ac <_vfprintf_r+0x2304>
    51a4:	38626880 	ldrb	w0, [x4, x2]
    51a8:	91000442 	add	x2, x2, #0x1
    51ac:	8b020023 	add	x3, x1, x2
    51b0:	eb0200ff 	cmp	x7, x2
    51b4:	39000c60 	strb	w0, [x3, #3]
    51b8:	54ffff61 	b.ne	51a4 <_vfprintf_r+0x22fc>  // b.any
    51bc:	9105c3a0 	add	x0, x29, #0x170
    51c0:	cb050002 	sub	x2, x0, x5
    51c4:	91000820 	add	x0, x1, #0x2
    51c8:	8b020000 	add	x0, x0, x2
    51cc:	17fffee2 	b	4d54 <_vfprintf_r+0x1eac>
    51d0:	b940dba1 	ldr	w1, [x29, #216]
    51d4:	52800cdc 	mov	w28, #0x66                  	// #102
    51d8:	b940fba0 	ldr	w0, [x29, #248]
    51dc:	0b010018 	add	w24, w0, w1
    51e0:	0b070318 	add	w24, w24, w7
    51e4:	17fffeb4 	b	4cb4 <_vfprintf_r+0x1e0c>
    51e8:	71011f9f 	cmp	w28, #0x47
    51ec:	90000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    51f0:	90000043 	adrp	x3, d000 <__trunctfdf2+0x290>
    51f4:	9114e000 	add	x0, x0, #0x538
    51f8:	91150063 	add	x3, x3, #0x540
    51fc:	12187ad6 	and	w22, w22, #0xffffff7f
    5200:	9a80c07a 	csel	x26, x3, x0, gt
    5204:	52800074 	mov	w20, #0x3                   	// #3
    5208:	39453fa1 	ldrb	w1, [x29, #335]
    520c:	17fffe56 	b	4b64 <_vfprintf_r+0x1cbc>
    5210:	370004f4 	tbnz	w20, #0, 52ac <_vfprintf_r+0x2404>
    5214:	f940b7a0 	ldr	x0, [x29, #360]
    5218:	17fffe98 	b	4c78 <_vfprintf_r+0x1dd0>
    521c:	350001c7 	cbnz	w7, 5254 <_vfprintf_r+0x23ac>
    5220:	370001b4 	tbnz	w20, #0, 5254 <_vfprintf_r+0x23ac>
    5224:	52800034 	mov	w20, #0x1                   	// #1
    5228:	52800cdc 	mov	w28, #0x66                  	// #102
    522c:	2a1403f8 	mov	w24, w20
    5230:	17fffea4 	b	4cc0 <_vfprintf_r+0x1e18>
    5234:	b940fba1 	ldr	w1, [x29, #248]
    5238:	52800020 	mov	w0, #0x1                   	// #1
    523c:	4b010000 	sub	w0, w0, w1
    5240:	528005a1 	mov	w1, #0x2d                  	// #45
    5244:	390587a1 	strb	w1, [x29, #353]
    5248:	17fffeb7 	b	4d24 <_vfprintf_r+0x1e7c>
    524c:	3607d954 	tbz	w20, #0, 4d74 <_vfprintf_r+0x1ecc>
    5250:	17fffec7 	b	4d6c <_vfprintf_r+0x1ec4>
    5254:	b940dba0 	ldr	w0, [x29, #216]
    5258:	52800cdc 	mov	w28, #0x66                  	// #102
    525c:	11000418 	add	w24, w0, #0x1
    5260:	2b070318 	adds	w24, w24, w7
    5264:	1a9f5314 	csel	w20, w24, wzr, pl  // pl = nfrst
    5268:	17fffe96 	b	4cc0 <_vfprintf_r+0x1e18>
    526c:	2a0403e2 	mov	w2, w4
    5270:	aa0003e1 	mov	x1, x0
    5274:	17ffff46 	b	4f8c <_vfprintf_r+0x20e4>
    5278:	52800020 	mov	w0, #0x1                   	// #1
    527c:	4b070000 	sub	w0, w0, w7
    5280:	b9015ba0 	str	w0, [x29, #344]
    5284:	17ffff06 	b	4e9c <_vfprintf_r+0x1ff4>
    5288:	910583a1 	add	x1, x29, #0x160
    528c:	91058ba0 	add	x0, x29, #0x162
    5290:	17fffeb1 	b	4d54 <_vfprintf_r+0x1eac>
    5294:	b940aba0 	ldr	w0, [x29, #168]
    5298:	11004001 	add	w1, w0, #0x10
    529c:	7100003f 	cmp	w1, #0x0
    52a0:	5400016d 	b.le	52cc <_vfprintf_r+0x2424>
    52a4:	b900aba1 	str	w1, [x29, #168]
    52a8:	17fffe1a 	b	4b10 <_vfprintf_r+0x1c68>
    52ac:	8b27c341 	add	x1, x26, w7, sxtw
    52b0:	17fffe65 	b	4c44 <_vfprintf_r+0x1d9c>
    52b4:	f9408fb6 	ldr	x22, [x29, #280]
    52b8:	fd4037a9 	ldr	d9, [x29, #104]
    52bc:	794022c0 	ldrh	w0, [x22, #16]
    52c0:	321a0000 	orr	w0, w0, #0x40
    52c4:	790022c0 	strh	w0, [x22, #16]
    52c8:	17fff9ae 	b	3980 <_vfprintf_r+0xad8>
    52cc:	b940aba0 	ldr	w0, [x29, #168]
    52d0:	f9404ba2 	ldr	x2, [x29, #144]
    52d4:	b900aba1 	str	w1, [x29, #168]
    52d8:	8b20c040 	add	x0, x2, w0, sxtw
    52dc:	17fffe11 	b	4b20 <_vfprintf_r+0x1c78>
    52e0:	b94113a0 	ldr	w0, [x29, #272]
    52e4:	11002001 	add	w1, w0, #0x8
    52e8:	7100003f 	cmp	w1, #0x0
    52ec:	5400012d 	b.le	5310 <_vfprintf_r+0x2468>
    52f0:	b90113a1 	str	w1, [x29, #272]
    52f4:	17fffc65 	b	4488 <_vfprintf_r+0x15e0>
    52f8:	b94113a0 	ldr	w0, [x29, #272]
    52fc:	11002001 	add	w1, w0, #0x8
    5300:	7100003f 	cmp	w1, #0x0
    5304:	5400010d 	b.le	5324 <_vfprintf_r+0x247c>
    5308:	b90113a1 	str	w1, [x29, #272]
    530c:	17fffc6d 	b	44c0 <_vfprintf_r+0x1618>
    5310:	b94113a0 	ldr	w0, [x29, #272]
    5314:	f9405fa2 	ldr	x2, [x29, #184]
    5318:	b90113a1 	str	w1, [x29, #272]
    531c:	8b20c040 	add	x0, x2, w0, sxtw
    5320:	17fffc5e 	b	4498 <_vfprintf_r+0x15f0>
    5324:	b94113a0 	ldr	w0, [x29, #272]
    5328:	f9405fa2 	ldr	x2, [x29, #184]
    532c:	b90113a1 	str	w1, [x29, #272]
    5330:	8b20c040 	add	x0, x2, w0, sxtw
    5334:	39400014 	ldrb	w20, [x0]
    5338:	17fffce7 	b	46d4 <_vfprintf_r+0x182c>
    533c:	b94113a0 	ldr	w0, [x29, #272]
    5340:	f9405fa2 	ldr	x2, [x29, #184]
    5344:	b90113a1 	str	w1, [x29, #272]
    5348:	8b20c040 	add	x0, x2, w0, sxtw
    534c:	f9400014 	ldr	x20, [x0]
    5350:	17fffce1 	b	46d4 <_vfprintf_r+0x182c>
    5354:	b940aba0 	ldr	w0, [x29, #168]
    5358:	11004001 	add	w1, w0, #0x10
    535c:	7100003f 	cmp	w1, #0x0
    5360:	5400036d 	b.le	53cc <_vfprintf_r+0x2524>
    5364:	f94083a0 	ldr	x0, [x29, #256]
    5368:	b900aba1 	str	w1, [x29, #168]
    536c:	91003c00 	add	x0, x0, #0xf
    5370:	927cec00 	and	x0, x0, #0xfffffffffffffff0
    5374:	91004001 	add	x1, x0, #0x10
    5378:	f90083a1 	str	x1, [x29, #256]
    537c:	3dc00000 	ldr	q0, [x0]
    5380:	f9007fa6 	str	x6, [x29, #248]
    5384:	b9010ba7 	str	w7, [x29, #264]
    5388:	94001e7a 	bl	cd70 <__trunctfdf2>
    538c:	1e604008 	fmov	d8, d0
    5390:	b9410ba7 	ldr	w7, [x29, #264]
    5394:	f9407fa6 	ldr	x6, [x29, #248]
    5398:	17fffde3 	b	4b24 <_vfprintf_r+0x1c7c>
    539c:	b94113a1 	ldr	w1, [x29, #272]
    53a0:	37f80201 	tbnz	w1, #31, 53e0 <_vfprintf_r+0x2538>
    53a4:	f94083a1 	ldr	x1, [x29, #256]
    53a8:	91002c22 	add	x2, x1, #0xb
    53ac:	927df042 	and	x2, x2, #0xfffffffffffffff8
    53b0:	f90083a2 	str	x2, [x29, #256]
    53b4:	b9400027 	ldr	w7, [x1]
    53b8:	39400668 	ldrb	w8, [x19, #1]
    53bc:	aa0003f3 	mov	x19, x0
    53c0:	710000ff 	cmp	w7, #0x0
    53c4:	5a9fa0f4 	csinv	w20, w7, wzr, ge  // ge = tcont
    53c8:	17fff71e 	b	3040 <_vfprintf_r+0x198>
    53cc:	b940aba0 	ldr	w0, [x29, #168]
    53d0:	f9404ba2 	ldr	x2, [x29, #144]
    53d4:	b900aba1 	str	w1, [x29, #168]
    53d8:	8b20c040 	add	x0, x2, w0, sxtw
    53dc:	17ffffe8 	b	537c <_vfprintf_r+0x24d4>
    53e0:	b94113a1 	ldr	w1, [x29, #272]
    53e4:	11002022 	add	w2, w1, #0x8
    53e8:	7100005f 	cmp	w2, #0x0
    53ec:	5400012d 	b.le	5410 <_vfprintf_r+0x2568>
    53f0:	b90113a2 	str	w2, [x29, #272]
    53f4:	17ffffec 	b	53a4 <_vfprintf_r+0x24fc>
    53f8:	b94113a0 	ldr	w0, [x29, #272]
    53fc:	f9405fa2 	ldr	x2, [x29, #184]
    5400:	b90113a1 	str	w1, [x29, #272]
    5404:	8b20c040 	add	x0, x2, w0, sxtw
    5408:	f9400014 	ldr	x20, [x0]
    540c:	17fffc24 	b	449c <_vfprintf_r+0x15f4>
    5410:	b94113a1 	ldr	w1, [x29, #272]
    5414:	f9405fa3 	ldr	x3, [x29, #184]
    5418:	b90113a2 	str	w2, [x29, #272]
    541c:	8b21c061 	add	x1, x3, w1, sxtw
    5420:	17ffffe5 	b	53b4 <_vfprintf_r+0x250c>
    5424:	b94113a0 	ldr	w0, [x29, #272]
    5428:	f9405fa2 	ldr	x2, [x29, #184]
    542c:	b90113a1 	str	w1, [x29, #272]
    5430:	8b20c040 	add	x0, x2, w0, sxtw
    5434:	f9400014 	ldr	x20, [x0]
    5438:	17fff86d 	b	35ec <_vfprintf_r+0x744>
    543c:	b94113a0 	ldr	w0, [x29, #272]
    5440:	11002001 	add	w1, w0, #0x8
    5444:	7100003f 	cmp	w1, #0x0
    5448:	5400012d 	b.le	546c <_vfprintf_r+0x25c4>
    544c:	b90113a1 	str	w1, [x29, #272]
    5450:	17fffc3d 	b	4544 <_vfprintf_r+0x169c>
    5454:	b94113a0 	ldr	w0, [x29, #272]
    5458:	11002001 	add	w1, w0, #0x8
    545c:	7100003f 	cmp	w1, #0x0
    5460:	5400010d 	b.le	5480 <_vfprintf_r+0x25d8>
    5464:	b90113a1 	str	w1, [x29, #272]
    5468:	17fffc96 	b	46c0 <_vfprintf_r+0x1818>
    546c:	b94113a0 	ldr	w0, [x29, #272]
    5470:	f9405fa2 	ldr	x2, [x29, #184]
    5474:	b90113a1 	str	w1, [x29, #272]
    5478:	8b20c040 	add	x0, x2, w0, sxtw
    547c:	17fffc36 	b	4554 <_vfprintf_r+0x16ac>
    5480:	b94113a0 	ldr	w0, [x29, #272]
    5484:	f9405fa2 	ldr	x2, [x29, #184]
    5488:	b90113a1 	str	w1, [x29, #272]
    548c:	8b20c040 	add	x0, x2, w0, sxtw
    5490:	17fffc90 	b	46d0 <_vfprintf_r+0x1828>
    5494:	b94113a0 	ldr	w0, [x29, #272]
    5498:	f9405fa2 	ldr	x2, [x29, #184]
    549c:	b90113a1 	str	w1, [x29, #272]
    54a0:	8b20c040 	add	x0, x2, w0, sxtw
    54a4:	17fff823 	b	3530 <_vfprintf_r+0x688>
    54a8:	b94113a0 	ldr	w0, [x29, #272]
    54ac:	11002001 	add	w1, w0, #0x8
    54b0:	7100003f 	cmp	w1, #0x0
    54b4:	5400012d 	b.le	54d8 <_vfprintf_r+0x2630>
    54b8:	b90113a1 	str	w1, [x29, #272]
    54bc:	17fffc8a 	b	46e4 <_vfprintf_r+0x183c>
    54c0:	b94113a0 	ldr	w0, [x29, #272]
    54c4:	11002001 	add	w1, w0, #0x8
    54c8:	7100003f 	cmp	w1, #0x0
    54cc:	5400012d 	b.le	54f0 <_vfprintf_r+0x2648>
    54d0:	b90113a1 	str	w1, [x29, #272]
    54d4:	17fff90a 	b	38fc <_vfprintf_r+0xa54>
    54d8:	b94113a0 	ldr	w0, [x29, #272]
    54dc:	f9405fa2 	ldr	x2, [x29, #184]
    54e0:	b90113a1 	str	w1, [x29, #272]
    54e4:	8b20c040 	add	x0, x2, w0, sxtw
    54e8:	b9400014 	ldr	w20, [x0]
    54ec:	17fffbec 	b	449c <_vfprintf_r+0x15f4>
    54f0:	b94113a0 	ldr	w0, [x29, #272]
    54f4:	f9405fa2 	ldr	x2, [x29, #184]
    54f8:	b90113a1 	str	w1, [x29, #272]
    54fc:	8b20c040 	add	x0, x2, w0, sxtw
    5500:	17fff903 	b	390c <_vfprintf_r+0xa64>
    5504:	b94113a0 	ldr	w0, [x29, #272]
    5508:	11002001 	add	w1, w0, #0x8
    550c:	7100003f 	cmp	w1, #0x0
    5510:	540001ad 	b.le	5544 <_vfprintf_r+0x269c>
    5514:	b90113a1 	str	w1, [x29, #272]
    5518:	17fffb06 	b	4130 <_vfprintf_r+0x1288>
    551c:	37f801e0 	tbnz	w0, #31, 5558 <_vfprintf_r+0x26b0>
    5520:	f94083a0 	ldr	x0, [x29, #256]
    5524:	91003c01 	add	x1, x0, #0xf
    5528:	927df021 	and	x1, x1, #0xfffffffffffffff8
    552c:	f90083a1 	str	x1, [x29, #256]
    5530:	f9400000 	ldr	x0, [x0]
    5534:	aa1303fa 	mov	x26, x19
    5538:	b94117a1 	ldr	w1, [x29, #276]
    553c:	b9000001 	str	w1, [x0]
    5540:	17fff69b 	b	2fac <_vfprintf_r+0x104>
    5544:	b94113a0 	ldr	w0, [x29, #272]
    5548:	f9405fa2 	ldr	x2, [x29, #184]
    554c:	b90113a1 	str	w1, [x29, #272]
    5550:	8b20c040 	add	x0, x2, w0, sxtw
    5554:	17fffafb 	b	4140 <_vfprintf_r+0x1298>
    5558:	b94113a0 	ldr	w0, [x29, #272]
    555c:	11002001 	add	w1, w0, #0x8
    5560:	7100003f 	cmp	w1, #0x0
    5564:	54000bcd 	b.le	56dc <_vfprintf_r+0x2834>
    5568:	b90113a1 	str	w1, [x29, #272]
    556c:	17ffffed 	b	5520 <_vfprintf_r+0x2678>
    5570:	b94113a0 	ldr	w0, [x29, #272]
    5574:	11002001 	add	w1, w0, #0x8
    5578:	7100003f 	cmp	w1, #0x0
    557c:	5400012d 	b.le	55a0 <_vfprintf_r+0x26f8>
    5580:	b90113a1 	str	w1, [x29, #272]
    5584:	17fffbd8 	b	44e4 <_vfprintf_r+0x163c>
    5588:	b94113a0 	ldr	w0, [x29, #272]
    558c:	f9405fa2 	ldr	x2, [x29, #184]
    5590:	b90113a1 	str	w1, [x29, #272]
    5594:	8b20c040 	add	x0, x2, w0, sxtw
    5598:	79800014 	ldrsh	x20, [x0]
    559c:	17fff814 	b	35ec <_vfprintf_r+0x744>
    55a0:	b94113a0 	ldr	w0, [x29, #272]
    55a4:	f9405fa2 	ldr	x2, [x29, #184]
    55a8:	b90113a1 	str	w1, [x29, #272]
    55ac:	8b20c040 	add	x0, x2, w0, sxtw
    55b0:	17fffbd1 	b	44f4 <_vfprintf_r+0x164c>
    55b4:	b94113a0 	ldr	w0, [x29, #272]
    55b8:	11002001 	add	w1, w0, #0x8
    55bc:	7100003f 	cmp	w1, #0x0
    55c0:	5400012d 	b.le	55e4 <_vfprintf_r+0x273c>
    55c4:	b90113a1 	str	w1, [x29, #272]
    55c8:	17fffc34 	b	4698 <_vfprintf_r+0x17f0>
    55cc:	b94113a0 	ldr	w0, [x29, #272]
    55d0:	11002001 	add	w1, w0, #0x8
    55d4:	7100003f 	cmp	w1, #0x0
    55d8:	5400010d 	b.le	55f8 <_vfprintf_r+0x2750>
    55dc:	b90113a1 	str	w1, [x29, #272]
    55e0:	17fffc48 	b	4700 <_vfprintf_r+0x1858>
    55e4:	b94113a0 	ldr	w0, [x29, #272]
    55e8:	f9405fa2 	ldr	x2, [x29, #184]
    55ec:	b90113a1 	str	w1, [x29, #272]
    55f0:	8b20c040 	add	x0, x2, w0, sxtw
    55f4:	17fffc2d 	b	46a8 <_vfprintf_r+0x1800>
    55f8:	b94113a0 	ldr	w0, [x29, #272]
    55fc:	f9405fa2 	ldr	x2, [x29, #184]
    5600:	b90113a1 	str	w1, [x29, #272]
    5604:	8b20c040 	add	x0, x2, w0, sxtw
    5608:	17fffc42 	b	4710 <_vfprintf_r+0x1868>
    560c:	b94113a0 	ldr	w0, [x29, #272]
    5610:	11002001 	add	w1, w0, #0x8
    5614:	7100003f 	cmp	w1, #0x0
    5618:	5400012d 	b.le	563c <_vfprintf_r+0x2794>
    561c:	b90113a1 	str	w1, [x29, #272]
    5620:	17fffc40 	b	4720 <_vfprintf_r+0x1878>
    5624:	b94113a0 	ldr	w0, [x29, #272]
    5628:	11002001 	add	w1, w0, #0x8
    562c:	7100003f 	cmp	w1, #0x0
    5630:	5400012d 	b.le	5654 <_vfprintf_r+0x27ac>
    5634:	b90113a1 	str	w1, [x29, #272]
    5638:	17fffb19 	b	429c <_vfprintf_r+0x13f4>
    563c:	b94113a0 	ldr	w0, [x29, #272]
    5640:	f9405fa2 	ldr	x2, [x29, #184]
    5644:	b90113a1 	str	w1, [x29, #272]
    5648:	8b20c040 	add	x0, x2, w0, sxtw
    564c:	b9800014 	ldrsw	x20, [x0]
    5650:	17fff7e7 	b	35ec <_vfprintf_r+0x744>
    5654:	b94113a0 	ldr	w0, [x29, #272]
    5658:	f9405fa2 	ldr	x2, [x29, #184]
    565c:	b90113a1 	str	w1, [x29, #272]
    5660:	8b20c040 	add	x0, x2, w0, sxtw
    5664:	39800014 	ldrsb	x20, [x0]
    5668:	17fff7e1 	b	35ec <_vfprintf_r+0x744>
    566c:	b94113a0 	ldr	w0, [x29, #272]
    5670:	11002001 	add	w1, w0, #0x8
    5674:	7100003f 	cmp	w1, #0x0
    5678:	5400012d 	b.le	569c <_vfprintf_r+0x27f4>
    567c:	b90113a1 	str	w1, [x29, #272]
    5680:	17fffbd5 	b	45d4 <_vfprintf_r+0x172c>
    5684:	b94113a0 	ldr	w0, [x29, #272]
    5688:	11002001 	add	w1, w0, #0x8
    568c:	7100003f 	cmp	w1, #0x0
    5690:	5400010d 	b.le	56b0 <_vfprintf_r+0x2808>
    5694:	b90113a1 	str	w1, [x29, #272]
    5698:	17fffb9d 	b	450c <_vfprintf_r+0x1664>
    569c:	b94113a0 	ldr	w0, [x29, #272]
    56a0:	f9405fa2 	ldr	x2, [x29, #184]
    56a4:	b90113a1 	str	w1, [x29, #272]
    56a8:	8b20c040 	add	x0, x2, w0, sxtw
    56ac:	17fffbce 	b	45e4 <_vfprintf_r+0x173c>
    56b0:	b94113a0 	ldr	w0, [x29, #272]
    56b4:	f9405fa2 	ldr	x2, [x29, #184]
    56b8:	b90113a1 	str	w1, [x29, #272]
    56bc:	8b20c040 	add	x0, x2, w0, sxtw
    56c0:	17fffb97 	b	451c <_vfprintf_r+0x1674>
    56c4:	b94113a0 	ldr	w0, [x29, #272]
    56c8:	11002001 	add	w1, w0, #0x8
    56cc:	7100003f 	cmp	w1, #0x0
    56d0:	5400010d 	b.le	56f0 <_vfprintf_r+0x2848>
    56d4:	b90113a1 	str	w1, [x29, #272]
    56d8:	17fffb63 	b	4464 <_vfprintf_r+0x15bc>
    56dc:	b94113a0 	ldr	w0, [x29, #272]
    56e0:	f9405fa2 	ldr	x2, [x29, #184]
    56e4:	b90113a1 	str	w1, [x29, #272]
    56e8:	8b20c040 	add	x0, x2, w0, sxtw
    56ec:	17ffff91 	b	5530 <_vfprintf_r+0x2688>
    56f0:	b94113a0 	ldr	w0, [x29, #272]
    56f4:	f9405fa2 	ldr	x2, [x29, #184]
    56f8:	b90113a1 	str	w1, [x29, #272]
    56fc:	8b20c040 	add	x0, x2, w0, sxtw
    5700:	17fffb5d 	b	4474 <_vfprintf_r+0x15cc>
    5704:	b94113a0 	ldr	w0, [x29, #272]
    5708:	f9405fa2 	ldr	x2, [x29, #184]
    570c:	b90113a1 	str	w1, [x29, #272]
    5710:	8b20c040 	add	x0, x2, w0, sxtw
    5714:	17fff7eb 	b	36c0 <_vfprintf_r+0x818>
    5718:	b94113a0 	ldr	w0, [x29, #272]
    571c:	f9405fa2 	ldr	x2, [x29, #184]
    5720:	b90113a1 	str	w1, [x29, #272]
    5724:	8b20c040 	add	x0, x2, w0, sxtw
    5728:	79400014 	ldrh	w20, [x0]
    572c:	17fffbea 	b	46d4 <_vfprintf_r+0x182c>
    5730:	b94113a0 	ldr	w0, [x29, #272]
    5734:	f9405fa2 	ldr	x2, [x29, #184]
    5738:	b90113a1 	str	w1, [x29, #272]
    573c:	8b20c040 	add	x0, x2, w0, sxtw
    5740:	79400014 	ldrh	w20, [x0]
    5744:	17fffb56 	b	449c <_vfprintf_r+0x15f4>

0000000000005748 <vfprintf>:
    5748:	aa0203e4 	mov	x4, x2
    574c:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    5750:	90000043 	adrp	x3, d000 <__trunctfdf2+0x290>
    5754:	aa0103e2 	mov	x2, x1
    5758:	910003fd 	mov	x29, sp
    575c:	aa0003e1 	mov	x1, x0
    5760:	a9401c86 	ldp	x6, x7, [x4]
    5764:	f943a860 	ldr	x0, [x3, #1872]
    5768:	910043a3 	add	x3, x29, #0x10
    576c:	a9411484 	ldp	x4, x5, [x4, #16]
    5770:	a9011fa6 	stp	x6, x7, [x29, #16]
    5774:	a90217a4 	stp	x4, x5, [x29, #32]
    5778:	97fff5cc 	bl	2ea8 <_vfprintf_r>
    577c:	a8c37bfd 	ldp	x29, x30, [sp], #48
    5780:	d65f03c0 	ret
    5784:	d503201f 	nop

0000000000005788 <__sbprintf>:
    5788:	d11403ff 	sub	sp, sp, #0x500
    578c:	52808004 	mov	w4, #0x400                 	// #1024
    5790:	a9007bfd 	stp	x29, x30, [sp]
    5794:	910003fd 	mov	x29, sp
    5798:	910403a5 	add	x5, x29, #0x100
    579c:	a940346c 	ldp	x12, x13, [x3]
    57a0:	a90153f3 	stp	x19, x20, [sp, #16]
    57a4:	aa0103f3 	mov	x19, x1
    57a8:	79402021 	ldrh	w1, [x1, #16]
    57ac:	a9411c66 	ldp	x6, x7, [x3, #16]
    57b0:	121e7821 	and	w1, w1, #0xfffffffd
    57b4:	7940266b 	ldrh	w11, [x19, #18]
    57b8:	9100c3a3 	add	x3, x29, #0x30
    57bc:	b940ae68 	ldr	w8, [x19, #172]
    57c0:	f9401a6a 	ldr	x10, [x19, #48]
    57c4:	f9402269 	ldr	x9, [x19, #64]
    57c8:	b900ffa8 	str	w8, [x29, #252]
    57cc:	f90013f5 	str	x21, [sp, #32]
    57d0:	aa0003f5 	mov	x21, x0
    57d4:	a90337ac 	stp	x12, x13, [x29, #48]
    57d8:	a9041fa6 	stp	x6, x7, [x29, #64]
    57dc:	f9002ba5 	str	x5, [x29, #80]
    57e0:	b9005fa4 	str	w4, [x29, #92]
    57e4:	7900c3a1 	strh	w1, [x29, #96]
    57e8:	910143a1 	add	x1, x29, #0x50
    57ec:	7900c7ab 	strh	w11, [x29, #98]
    57f0:	f90037a5 	str	x5, [x29, #104]
    57f4:	b90073a4 	str	w4, [x29, #112]
    57f8:	b9007bbf 	str	wzr, [x29, #120]
    57fc:	f90043aa 	str	x10, [x29, #128]
    5800:	f9004ba9 	str	x9, [x29, #144]
    5804:	97fff5a9 	bl	2ea8 <_vfprintf_r>
    5808:	2a0003f4 	mov	w20, w0
    580c:	37f800c0 	tbnz	w0, #31, 5824 <__sbprintf+0x9c>
    5810:	910143a1 	add	x1, x29, #0x50
    5814:	aa1503e0 	mov	x0, x21
    5818:	94000668 	bl	71b8 <_fflush_r>
    581c:	7100001f 	cmp	w0, #0x0
    5820:	5a9f0294 	csinv	w20, w20, wzr, eq  // eq = none
    5824:	7940c3a0 	ldrh	w0, [x29, #96]
    5828:	36300080 	tbz	w0, #6, 5838 <__sbprintf+0xb0>
    582c:	79402260 	ldrh	w0, [x19, #16]
    5830:	321a0000 	orr	w0, w0, #0x40
    5834:	79002260 	strh	w0, [x19, #16]
    5838:	2a1403e0 	mov	w0, w20
    583c:	f94013f5 	ldr	x21, [sp, #32]
    5840:	a9407bfd 	ldp	x29, x30, [sp]
    5844:	a94153f3 	ldp	x19, x20, [sp, #16]
    5848:	911403ff 	add	sp, sp, #0x500
    584c:	d65f03c0 	ret

0000000000005850 <__swsetup_r>:
    5850:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    5854:	90000042 	adrp	x2, d000 <__trunctfdf2+0x290>
    5858:	910003fd 	mov	x29, sp
    585c:	a90153f3 	stp	x19, x20, [sp, #16]
    5860:	aa0003f4 	mov	x20, x0
    5864:	f943a840 	ldr	x0, [x2, #1872]
    5868:	aa0103f3 	mov	x19, x1
    586c:	b4000060 	cbz	x0, 5878 <__swsetup_r+0x28>
    5870:	b9405001 	ldr	w1, [x0, #80]
    5874:	340005e1 	cbz	w1, 5930 <__swsetup_r+0xe0>
    5878:	79c02262 	ldrsh	w2, [x19, #16]
    587c:	12003c40 	and	w0, w2, #0xffff
    5880:	361801a0 	tbz	w0, #3, 58b4 <__swsetup_r+0x64>
    5884:	f9400e61 	ldr	x1, [x19, #24]
    5888:	b40003e1 	cbz	x1, 5904 <__swsetup_r+0xb4>
    588c:	36000240 	tbz	w0, #0, 58d4 <__swsetup_r+0x84>
    5890:	b9402260 	ldr	w0, [x19, #32]
    5894:	b9000e7f 	str	wzr, [x19, #12]
    5898:	4b0003e0 	neg	w0, w0
    589c:	b9002a60 	str	w0, [x19, #40]
    58a0:	52800000 	mov	w0, #0x0                   	// #0
    58a4:	b4000241 	cbz	x1, 58ec <__swsetup_r+0x9c>
    58a8:	a94153f3 	ldp	x19, x20, [sp, #16]
    58ac:	a8c27bfd 	ldp	x29, x30, [sp], #32
    58b0:	d65f03c0 	ret
    58b4:	36200600 	tbz	w0, #4, 5974 <__swsetup_r+0x124>
    58b8:	37100400 	tbnz	w0, #2, 5938 <__swsetup_r+0xe8>
    58bc:	f9400e61 	ldr	x1, [x19, #24]
    58c0:	321d0040 	orr	w0, w2, #0x8
    58c4:	79002260 	strh	w0, [x19, #16]
    58c8:	12003c00 	and	w0, w0, #0xffff
    58cc:	b5fffe01 	cbnz	x1, 588c <__swsetup_r+0x3c>
    58d0:	1400000d 	b	5904 <__swsetup_r+0xb4>
    58d4:	52800002 	mov	w2, #0x0                   	// #0
    58d8:	37080040 	tbnz	w0, #1, 58e0 <__swsetup_r+0x90>
    58dc:	b9402262 	ldr	w2, [x19, #32]
    58e0:	b9000e62 	str	w2, [x19, #12]
    58e4:	52800000 	mov	w0, #0x0                   	// #0
    58e8:	b5fffe01 	cbnz	x1, 58a8 <__swsetup_r+0x58>
    58ec:	79c02261 	ldrsh	w1, [x19, #16]
    58f0:	363ffdc1 	tbz	w1, #7, 58a8 <__swsetup_r+0x58>
    58f4:	321a0021 	orr	w1, w1, #0x40
    58f8:	12800000 	mov	w0, #0xffffffff            	// #-1
    58fc:	79002261 	strh	w1, [x19, #16]
    5900:	17ffffea 	b	58a8 <__swsetup_r+0x58>
    5904:	52805002 	mov	w2, #0x280                 	// #640
    5908:	0a020002 	and	w2, w0, w2
    590c:	7108005f 	cmp	w2, #0x200
    5910:	54fffbe0 	b.eq	588c <__swsetup_r+0x3c>  // b.none
    5914:	aa1303e1 	mov	x1, x19
    5918:	aa1403e0 	mov	x0, x20
    591c:	940008df 	bl	7c98 <__smakebuf_r>
    5920:	79402260 	ldrh	w0, [x19, #16]
    5924:	f9400e61 	ldr	x1, [x19, #24]
    5928:	3607fd60 	tbz	w0, #0, 58d4 <__swsetup_r+0x84>
    592c:	17ffffd9 	b	5890 <__swsetup_r+0x40>
    5930:	940006f6 	bl	7508 <__sinit>
    5934:	17ffffd1 	b	5878 <__swsetup_r+0x28>
    5938:	f9402e61 	ldr	x1, [x19, #88]
    593c:	b4000101 	cbz	x1, 595c <__swsetup_r+0x10c>
    5940:	9101d260 	add	x0, x19, #0x74
    5944:	eb00003f 	cmp	x1, x0
    5948:	54000080 	b.eq	5958 <__swsetup_r+0x108>  // b.none
    594c:	aa1403e0 	mov	x0, x20
    5950:	9400074a 	bl	7678 <_free_r>
    5954:	79c02262 	ldrsh	w2, [x19, #16]
    5958:	f9002e7f 	str	xzr, [x19, #88]
    595c:	f9400e61 	ldr	x1, [x19, #24]
    5960:	12800480 	mov	w0, #0xffffffdb            	// #-37
    5964:	f9000261 	str	x1, [x19]
    5968:	0a000042 	and	w2, w2, w0
    596c:	b9000a7f 	str	wzr, [x19, #8]
    5970:	17ffffd4 	b	58c0 <__swsetup_r+0x70>
    5974:	52800120 	mov	w0, #0x9                   	// #9
    5978:	b9000280 	str	w0, [x20]
    597c:	321a0042 	orr	w2, w2, #0x40
    5980:	12800000 	mov	w0, #0xffffffff            	// #-1
    5984:	79002262 	strh	w2, [x19, #16]
    5988:	17ffffc8 	b	58a8 <__swsetup_r+0x58>
    598c:	00000000 	.inst	0x00000000 ; undefined

0000000000005990 <__register_exitproc>:
    5990:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    5994:	90000044 	adrp	x4, d000 <__trunctfdf2+0x290>
    5998:	910003fd 	mov	x29, sp
    599c:	a90153f3 	stp	x19, x20, [sp, #16]
    59a0:	2a0003f4 	mov	w20, w0
    59a4:	f9412093 	ldr	x19, [x4, #576]
    59a8:	a9025bf5 	stp	x21, x22, [sp, #32]
    59ac:	aa0103f5 	mov	x21, x1
    59b0:	aa0303f6 	mov	x22, x3
    59b4:	f940fe64 	ldr	x4, [x19, #504]
    59b8:	f9001bf7 	str	x23, [sp, #48]
    59bc:	aa0203f7 	mov	x23, x2
    59c0:	b4000564 	cbz	x4, 5a6c <__register_exitproc+0xdc>
    59c4:	b9400880 	ldr	w0, [x4, #8]
    59c8:	11000401 	add	w1, w0, #0x1
    59cc:	71007c1f 	cmp	w0, #0x1f
    59d0:	540001cd 	b.le	5a08 <__register_exitproc+0x78>
    59d4:	58000560 	ldr	x0, 5a80 <__register_exitproc+0xf0>
    59d8:	b4000500 	cbz	x0, 5a78 <__register_exitproc+0xe8>
    59dc:	d2806300 	mov	x0, #0x318                 	// #792
    59e0:	d503201f 	nop
    59e4:	aa0003e4 	mov	x4, x0
    59e8:	b4000480 	cbz	x0, 5a78 <__register_exitproc+0xe8>
    59ec:	f940fe60 	ldr	x0, [x19, #504]
    59f0:	52800021 	mov	w1, #0x1                   	// #1
    59f4:	f9000080 	str	x0, [x4]
    59f8:	b900089f 	str	wzr, [x4, #8]
    59fc:	52800000 	mov	w0, #0x0                   	// #0
    5a00:	f900fe64 	str	x4, [x19, #504]
    5a04:	f901889f 	str	xzr, [x4, #784]
    5a08:	93407c05 	sxtw	x5, w0
    5a0c:	35000154 	cbnz	w20, 5a34 <__register_exitproc+0xa4>
    5a10:	910008a5 	add	x5, x5, #0x2
    5a14:	b9000881 	str	w1, [x4, #8]
    5a18:	52800000 	mov	w0, #0x0                   	// #0
    5a1c:	f8257895 	str	x21, [x4, x5, lsl #3]
    5a20:	a94153f3 	ldp	x19, x20, [sp, #16]
    5a24:	a9425bf5 	ldp	x21, x22, [sp, #32]
    5a28:	f9401bf7 	ldr	x23, [sp, #48]
    5a2c:	a8c47bfd 	ldp	x29, x30, [sp], #64
    5a30:	d65f03c0 	ret
    5a34:	8b050c83 	add	x3, x4, x5, lsl #3
    5a38:	52800026 	mov	w6, #0x1                   	// #1
    5a3c:	1ac020c0 	lsl	w0, w6, w0
    5a40:	71000a9f 	cmp	w20, #0x2
    5a44:	f9008877 	str	x23, [x3, #272]
    5a48:	b9431082 	ldr	w2, [x4, #784]
    5a4c:	2a000042 	orr	w2, w2, w0
    5a50:	b9031082 	str	w2, [x4, #784]
    5a54:	f9010876 	str	x22, [x3, #528]
    5a58:	54fffdc1 	b.ne	5a10 <__register_exitproc+0x80>  // b.any
    5a5c:	b9431482 	ldr	w2, [x4, #788]
    5a60:	2a000040 	orr	w0, w2, w0
    5a64:	b9031480 	str	w0, [x4, #788]
    5a68:	17ffffea 	b	5a10 <__register_exitproc+0x80>
    5a6c:	91080264 	add	x4, x19, #0x200
    5a70:	f900fe64 	str	x4, [x19, #504]
    5a74:	17ffffd4 	b	59c4 <__register_exitproc+0x34>
    5a78:	12800000 	mov	w0, #0xffffffff            	// #-1
    5a7c:	17ffffe9 	b	5a20 <__register_exitproc+0x90>
	...

0000000000005a88 <__call_exitprocs>:
    5a88:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
    5a8c:	90000042 	adrp	x2, d000 <__trunctfdf2+0x290>
    5a90:	910003fd 	mov	x29, sp
    5a94:	a90363f7 	stp	x23, x24, [sp, #48]
    5a98:	f9412057 	ldr	x23, [x2, #576]
    5a9c:	a9046bf9 	stp	x25, x26, [sp, #64]
    5aa0:	580009d9 	ldr	x25, 5bd8 <__call_exitprocs+0x150>
    5aa4:	9107e2f8 	add	x24, x23, #0x1f8
    5aa8:	a90573fb 	stp	x27, x28, [sp, #80]
    5aac:	aa0103fb 	mov	x27, x1
    5ab0:	a90153f3 	stp	x19, x20, [sp, #16]
    5ab4:	a9025bf5 	stp	x21, x22, [sp, #32]
    5ab8:	52800036 	mov	w22, #0x1                   	// #1
    5abc:	b9006fa0 	str	w0, [x29, #108]
    5ac0:	f940fef5 	ldr	x21, [x23, #504]
    5ac4:	b4000335 	cbz	x21, 5b28 <__call_exitprocs+0xa0>
    5ac8:	aa1803fa 	mov	x26, x24
    5acc:	b9400ab3 	ldr	w19, [x21, #8]
    5ad0:	71000673 	subs	w19, w19, #0x1
    5ad4:	54000164 	b.mi	5b00 <__call_exitprocs+0x78>  // b.first
    5ad8:	8b33ceb4 	add	x20, x21, w19, sxtw #3
    5adc:	d503201f 	nop
    5ae0:	b400033b 	cbz	x27, 5b44 <__call_exitprocs+0xbc>
    5ae4:	f9410a80 	ldr	x0, [x20, #528]
    5ae8:	eb1b001f 	cmp	x0, x27
    5aec:	540002c0 	b.eq	5b44 <__call_exitprocs+0xbc>  // b.none
    5af0:	51000673 	sub	w19, w19, #0x1
    5af4:	d1002294 	sub	x20, x20, #0x8
    5af8:	3100067f 	cmn	w19, #0x1
    5afc:	54ffff21 	b.ne	5ae0 <__call_exitprocs+0x58>  // b.any
    5b00:	b4000159 	cbz	x25, 5b28 <__call_exitprocs+0xa0>
    5b04:	b9400aa1 	ldr	w1, [x21, #8]
    5b08:	f94002a0 	ldr	x0, [x21]
    5b0c:	350005a1 	cbnz	w1, 5bc0 <__call_exitprocs+0x138>
    5b10:	b4000580 	cbz	x0, 5bc0 <__call_exitprocs+0x138>
    5b14:	f9000340 	str	x0, [x26]
    5b18:	aa1503e0 	mov	x0, x21
    5b1c:	d503201f 	nop
    5b20:	f9400355 	ldr	x21, [x26]
    5b24:	b5fffd55 	cbnz	x21, 5acc <__call_exitprocs+0x44>
    5b28:	a94153f3 	ldp	x19, x20, [sp, #16]
    5b2c:	a9425bf5 	ldp	x21, x22, [sp, #32]
    5b30:	a94363f7 	ldp	x23, x24, [sp, #48]
    5b34:	a9446bf9 	ldp	x25, x26, [sp, #64]
    5b38:	a94573fb 	ldp	x27, x28, [sp, #80]
    5b3c:	a8c77bfd 	ldp	x29, x30, [sp], #112
    5b40:	d65f03c0 	ret
    5b44:	b9400aa0 	ldr	w0, [x21, #8]
    5b48:	f9400a82 	ldr	x2, [x20, #16]
    5b4c:	51000400 	sub	w0, w0, #0x1
    5b50:	6b13001f 	cmp	w0, w19
    5b54:	54000220 	b.eq	5b98 <__call_exitprocs+0x110>  // b.none
    5b58:	f9000a9f 	str	xzr, [x20, #16]
    5b5c:	b4fffca2 	cbz	x2, 5af0 <__call_exitprocs+0x68>
    5b60:	910442a0 	add	x0, x21, #0x110
    5b64:	b9420001 	ldr	w1, [x0, #512]
    5b68:	1ad322c3 	lsl	w3, w22, w19
    5b6c:	b9400abc 	ldr	w28, [x21, #8]
    5b70:	6a01007f 	tst	w3, w1
    5b74:	54000161 	b.ne	5ba0 <__call_exitprocs+0x118>  // b.any
    5b78:	d63f0040 	blr	x2
    5b7c:	b9400aa0 	ldr	w0, [x21, #8]
    5b80:	6b1c001f 	cmp	w0, w28
    5b84:	54fff9e1 	b.ne	5ac0 <__call_exitprocs+0x38>  // b.any
    5b88:	f9400340 	ldr	x0, [x26]
    5b8c:	eb15001f 	cmp	x0, x21
    5b90:	54fffb00 	b.eq	5af0 <__call_exitprocs+0x68>  // b.none
    5b94:	17ffffcb 	b	5ac0 <__call_exitprocs+0x38>
    5b98:	b9000ab3 	str	w19, [x21, #8]
    5b9c:	17fffff0 	b	5b5c <__call_exitprocs+0xd4>
    5ba0:	b9420401 	ldr	w1, [x0, #516]
    5ba4:	f9408a80 	ldr	x0, [x20, #272]
    5ba8:	6a01007f 	tst	w3, w1
    5bac:	54000121 	b.ne	5bd0 <__call_exitprocs+0x148>  // b.any
    5bb0:	aa0003e1 	mov	x1, x0
    5bb4:	b9406fa0 	ldr	w0, [x29, #108]
    5bb8:	d63f0040 	blr	x2
    5bbc:	17fffff0 	b	5b7c <__call_exitprocs+0xf4>
    5bc0:	aa1503fa 	mov	x26, x21
    5bc4:	aa0003f5 	mov	x21, x0
    5bc8:	b5fff835 	cbnz	x21, 5acc <__call_exitprocs+0x44>
    5bcc:	17ffffd7 	b	5b28 <__call_exitprocs+0xa0>
    5bd0:	d63f0040 	blr	x2
    5bd4:	17ffffea 	b	5b7c <__call_exitprocs+0xf4>
	...

0000000000005be0 <quorem>:
    5be0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    5be4:	910003fd 	mov	x29, sp
    5be8:	b9401402 	ldr	w2, [x0, #20]
    5bec:	f90013f5 	str	x21, [sp, #32]
    5bf0:	b9401435 	ldr	w21, [x1, #20]
    5bf4:	6b15005f 	cmp	w2, w21
    5bf8:	54000c2b 	b.lt	5d7c <quorem+0x19c>  // b.tstop
    5bfc:	510006b5 	sub	w21, w21, #0x1
    5c00:	a90153b3 	stp	x19, x20, [x29, #16]
    5c04:	91006034 	add	x20, x1, #0x18
    5c08:	a902dfb6 	stp	x22, x23, [x29, #40]
    5c0c:	93407eaa 	sxtw	x10, w21
    5c10:	91006016 	add	x22, x0, #0x18
    5c14:	d37ef543 	lsl	x3, x10, #2
    5c18:	b86a7a82 	ldr	w2, [x20, x10, lsl #2]
    5c1c:	8b030297 	add	x23, x20, x3
    5c20:	b86a7ad3 	ldr	w19, [x22, x10, lsl #2]
    5c24:	8b0302cb 	add	x11, x22, x3
    5c28:	11000442 	add	w2, w2, #0x1
    5c2c:	f9001fb8 	str	x24, [x29, #56]
    5c30:	1ac20a73 	udiv	w19, w19, w2
    5c34:	340004f3 	cbz	w19, 5cd0 <quorem+0xf0>
    5c38:	aa1403e9 	mov	x9, x20
    5c3c:	aa1603e8 	mov	x8, x22
    5c40:	52800003 	mov	w3, #0x0                   	// #0
    5c44:	52800006 	mov	w6, #0x0                   	// #0
    5c48:	b8404524 	ldr	w4, [x9], #4
    5c4c:	b9400102 	ldr	w2, [x8]
    5c50:	12003c85 	and	w5, w4, #0xffff
    5c54:	eb0902ff 	cmp	x23, x9
    5c58:	53107c84 	lsr	w4, w4, #16
    5c5c:	53107c47 	lsr	w7, w2, #16
    5c60:	1b130ca5 	madd	w5, w5, w19, w3
    5c64:	53107ca3 	lsr	w3, w5, #16
    5c68:	4b2520c5 	sub	w5, w6, w5, uxth
    5c6c:	0b2220a2 	add	w2, w5, w2, uxth
    5c70:	12003c46 	and	w6, w2, #0xffff
    5c74:	1b130c83 	madd	w3, w4, w19, w3
    5c78:	4b2320e4 	sub	w4, w7, w3, uxth
    5c7c:	53107c63 	lsr	w3, w3, #16
    5c80:	0b824082 	add	w2, w4, w2, asr #16
    5c84:	2a0240c4 	orr	w4, w6, w2, lsl #16
    5c88:	b8004504 	str	w4, [x8], #4
    5c8c:	13107c46 	asr	w6, w2, #16
    5c90:	54fffdc2 	b.cs	5c48 <quorem+0x68>  // b.hs, b.nlast
    5c94:	b86a7ac2 	ldr	w2, [x22, x10, lsl #2]
    5c98:	350001c2 	cbnz	w2, 5cd0 <quorem+0xf0>
    5c9c:	d1001162 	sub	x2, x11, #0x4
    5ca0:	eb0202df 	cmp	x22, x2
    5ca4:	54000142 	b.cs	5ccc <quorem+0xec>  // b.hs, b.nlast
    5ca8:	b85fc163 	ldur	w3, [x11, #-4]
    5cac:	34000083 	cbz	w3, 5cbc <quorem+0xdc>
    5cb0:	14000007 	b	5ccc <quorem+0xec>
    5cb4:	b9400043 	ldr	w3, [x2]
    5cb8:	350000a3 	cbnz	w3, 5ccc <quorem+0xec>
    5cbc:	d1001042 	sub	x2, x2, #0x4
    5cc0:	510006b5 	sub	w21, w21, #0x1
    5cc4:	eb0202df 	cmp	x22, x2
    5cc8:	54ffff63 	b.cc	5cb4 <quorem+0xd4>  // b.lo, b.ul, b.last
    5ccc:	b9001415 	str	w21, [x0, #20]
    5cd0:	aa0003f8 	mov	x24, x0
    5cd4:	94000ce9 	bl	9078 <__mcmp>
    5cd8:	37f80440 	tbnz	w0, #31, 5d60 <quorem+0x180>
    5cdc:	11000673 	add	w19, w19, #0x1
    5ce0:	aa1603e4 	mov	x4, x22
    5ce4:	52800003 	mov	w3, #0x0                   	// #0
    5ce8:	b8404682 	ldr	w2, [x20], #4
    5cec:	b9400081 	ldr	w1, [x4]
    5cf0:	eb1402ff 	cmp	x23, x20
    5cf4:	4b222063 	sub	w3, w3, w2, uxth
    5cf8:	53107c25 	lsr	w5, w1, #16
    5cfc:	0b212061 	add	w1, w3, w1, uxth
    5d00:	4b4240a2 	sub	w2, w5, w2, lsr #16
    5d04:	12003c23 	and	w3, w1, #0xffff
    5d08:	0b814041 	add	w1, w2, w1, asr #16
    5d0c:	2a014062 	orr	w2, w3, w1, lsl #16
    5d10:	b8004482 	str	w2, [x4], #4
    5d14:	13107c23 	asr	w3, w1, #16
    5d18:	54fffe82 	b.cs	5ce8 <quorem+0x108>  // b.hs, b.nlast
    5d1c:	93407ea0 	sxtw	x0, w21
    5d20:	8b000ac1 	add	x1, x22, x0, lsl #2
    5d24:	b8607ac0 	ldr	w0, [x22, x0, lsl #2]
    5d28:	350001c0 	cbnz	w0, 5d60 <quorem+0x180>
    5d2c:	d1001020 	sub	x0, x1, #0x4
    5d30:	eb0002df 	cmp	x22, x0
    5d34:	54000142 	b.cs	5d5c <quorem+0x17c>  // b.hs, b.nlast
    5d38:	b85fc021 	ldur	w1, [x1, #-4]
    5d3c:	34000081 	cbz	w1, 5d4c <quorem+0x16c>
    5d40:	14000007 	b	5d5c <quorem+0x17c>
    5d44:	b9400001 	ldr	w1, [x0]
    5d48:	350000a1 	cbnz	w1, 5d5c <quorem+0x17c>
    5d4c:	d1001000 	sub	x0, x0, #0x4
    5d50:	510006b5 	sub	w21, w21, #0x1
    5d54:	eb0002df 	cmp	x22, x0
    5d58:	54ffff63 	b.cc	5d44 <quorem+0x164>  // b.lo, b.ul, b.last
    5d5c:	b9001715 	str	w21, [x24, #20]
    5d60:	2a1303e0 	mov	w0, w19
    5d64:	f9401fb8 	ldr	x24, [x29, #56]
    5d68:	a94153b3 	ldp	x19, x20, [x29, #16]
    5d6c:	a942dfb6 	ldp	x22, x23, [x29, #40]
    5d70:	f94013f5 	ldr	x21, [sp, #32]
    5d74:	a8c47bfd 	ldp	x29, x30, [sp], #64
    5d78:	d65f03c0 	ret
    5d7c:	52800000 	mov	w0, #0x0                   	// #0
    5d80:	f94013f5 	ldr	x21, [sp, #32]
    5d84:	a8c47bfd 	ldp	x29, x30, [sp], #64
    5d88:	d65f03c0 	ret
    5d8c:	d503201f 	nop

0000000000005d90 <_dtoa_r>:
    5d90:	a9b47bfd 	stp	x29, x30, [sp, #-192]!
    5d94:	910003fd 	mov	x29, sp
    5d98:	a90153f3 	stp	x19, x20, [sp, #16]
    5d9c:	aa0003f3 	mov	x19, x0
    5da0:	a9025bf5 	stp	x21, x22, [sp, #32]
    5da4:	aa0503f4 	mov	x20, x5
    5da8:	b900aba2 	str	w2, [x29, #168]
    5dac:	2a0103f5 	mov	w21, w1
    5db0:	f9403002 	ldr	x2, [x0, #96]
    5db4:	f9001bf7 	str	x23, [sp, #48]
    5db8:	aa0403f7 	mov	x23, x4
    5dbc:	a9046bf9 	stp	x25, x26, [sp, #64]
    5dc0:	aa0303f9 	mov	x25, x3
    5dc4:	fd0033e8 	str	d8, [sp, #96]
    5dc8:	9e66001a 	fmov	x26, d0
    5dcc:	1e604008 	fmov	d8, d0
    5dd0:	b4000102 	cbz	x2, 5df0 <_dtoa_r+0x60>
    5dd4:	b9406804 	ldr	w4, [x0, #104]
    5dd8:	52800023 	mov	w3, #0x1                   	// #1
    5ddc:	aa0203e1 	mov	x1, x2
    5de0:	1ac42063 	lsl	w3, w3, w4
    5de4:	29010c44 	stp	w4, w3, [x2, #8]
    5de8:	94000ac0 	bl	88e8 <_Bfree>
    5dec:	f900327f 	str	xzr, [x19, #96]
    5df0:	9e660100 	fmov	x0, d8
    5df4:	d360fc00 	lsr	x0, x0, #32
    5df8:	2a0003f6 	mov	w22, w0
    5dfc:	37f80e40 	tbnz	w0, #31, 5fc4 <_dtoa_r+0x234>
    5e00:	b90002ff 	str	wzr, [x23]
    5e04:	120c2ac1 	and	w1, w22, #0x7ff00000
    5e08:	52affe00 	mov	w0, #0x7ff00000            	// #2146435072
    5e0c:	6b00003f 	cmp	w1, w0
    5e10:	54000ec0 	b.eq	5fe8 <_dtoa_r+0x258>  // b.none
    5e14:	1e602108 	fcmp	d8, #0.0
    5e18:	54000221 	b.ne	5e5c <_dtoa_r+0xcc>  // b.any
    5e1c:	52800020 	mov	w0, #0x1                   	// #1
    5e20:	b9000320 	str	w0, [x25]
    5e24:	b40014d4 	cbz	x20, 60bc <_dtoa_r+0x32c>
    5e28:	90000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    5e2c:	90000055 	adrp	x21, d000 <__trunctfdf2+0x290>
    5e30:	91160400 	add	x0, x0, #0x581
    5e34:	911602b5 	add	x21, x21, #0x580
    5e38:	f9000280 	str	x0, [x20]
    5e3c:	aa1503e0 	mov	x0, x21
    5e40:	f9401bf7 	ldr	x23, [sp, #48]
    5e44:	a94153f3 	ldp	x19, x20, [sp, #16]
    5e48:	a9425bf5 	ldp	x21, x22, [sp, #32]
    5e4c:	a9446bf9 	ldp	x25, x26, [sp, #64]
    5e50:	fd4033e8 	ldr	d8, [sp, #96]
    5e54:	a8cc7bfd 	ldp	x29, x30, [sp], #192
    5e58:	d65f03c0 	ret
    5e5c:	1e604100 	fmov	d0, d8
    5e60:	9102f3a1 	add	x1, x29, #0xbc
    5e64:	a90573bb 	stp	x27, x28, [x29, #80]
    5e68:	9102e3a2 	add	x2, x29, #0xb8
    5e6c:	aa1303e0 	mov	x0, x19
    5e70:	f9001fb8 	str	x24, [x29, #56]
    5e74:	94000d5d 	bl	93e8 <__d2b>
    5e78:	aa0003f7 	mov	x23, x0
    5e7c:	53147ec1 	lsr	w1, w22, #20
    5e80:	35000d61 	cbnz	w1, 602c <_dtoa_r+0x29c>
    5e84:	295707a2 	ldp	w2, w1, [x29, #184]
    5e88:	0b010041 	add	w1, w2, w1
    5e8c:	1110c823 	add	w3, w1, #0x432
    5e90:	7100807f 	cmp	w3, #0x20
    5e94:	54002f4d 	b.le	647c <_dtoa_r+0x6ec>
    5e98:	52800804 	mov	w4, #0x40                  	// #64
    5e9c:	11104820 	add	w0, w1, #0x412
    5ea0:	4b030083 	sub	w3, w4, w3
    5ea4:	1ac02740 	lsr	w0, w26, w0
    5ea8:	1ac322d6 	lsl	w22, w22, w3
    5eac:	2a0002c0 	orr	w0, w22, w0
    5eb0:	1e630000 	ucvtf	d0, w0
    5eb4:	52800023 	mov	w3, #0x1                   	// #1
    5eb8:	b9007ba3 	str	w3, [x29, #120]
    5ebc:	52bfc204 	mov	w4, #0xfe100000            	// #-32505856
    5ec0:	51000421 	sub	w1, w1, #0x1
    5ec4:	9e660000 	fmov	x0, d0
    5ec8:	d360fc03 	lsr	x3, x0, #32
    5ecc:	0b040063 	add	w3, w3, w4
    5ed0:	b3607c60 	bfi	x0, x3, #32, #32
    5ed4:	9e670003 	fmov	d3, x0
    5ed8:	1e6f1001 	fmov	d1, #1.500000000000000000e+000
    5edc:	5c0082e4 	ldr	d4, 6f38 <_dtoa_r+0x11a8>
    5ee0:	1e620022 	scvtf	d2, w1
    5ee4:	1e613861 	fsub	d1, d3, d1
    5ee8:	5c0082c0 	ldr	d0, 6f40 <_dtoa_r+0x11b0>
    5eec:	5c0082e3 	ldr	d3, 6f48 <_dtoa_r+0x11b8>
    5ef0:	1f440020 	fmadd	d0, d1, d4, d0
    5ef4:	1f430040 	fmadd	d0, d2, d3, d0
    5ef8:	1e602018 	fcmpe	d0, #0.0
    5efc:	1e780016 	fcvtzs	w22, d0
    5f00:	540000a5 	b.pl	5f14 <_dtoa_r+0x184>  // b.nfrst
    5f04:	1e6202c1 	scvtf	d1, w22
    5f08:	1e602020 	fcmp	d1, d0
    5f0c:	1a9f07e0 	cset	w0, ne  // ne = any
    5f10:	4b0002d6 	sub	w22, w22, w0
    5f14:	52800020 	mov	w0, #0x1                   	// #1
    5f18:	b9009ba0 	str	w0, [x29, #152]
    5f1c:	71005adf 	cmp	w22, #0x16
    5f20:	54000128 	b.hi	5f44 <_dtoa_r+0x1b4>  // b.pmore
    5f24:	90000040 	adrp	x0, d000 <__trunctfdf2+0x290>
    5f28:	910cc000 	add	x0, x0, #0x330
    5f2c:	9e670341 	fmov	d1, x26
    5f30:	fc76d800 	ldr	d0, [x0, w22, sxtw #3]
    5f34:	1e612010 	fcmpe	d0, d1
    5f38:	54002aad 	b.le	648c <_dtoa_r+0x6fc>
    5f3c:	510006d6 	sub	w22, w22, #0x1
    5f40:	b9009bbf 	str	wzr, [x29, #152]
    5f44:	4b010041 	sub	w1, w2, w1
    5f48:	52800006 	mov	w6, #0x0                   	// #0
    5f4c:	71000424 	subs	w4, w1, #0x1
    5f50:	540007e4 	b.mi	604c <_dtoa_r+0x2bc>  // b.first
    5f54:	37f828d6 	tbnz	w22, #31, 646c <_dtoa_r+0x6dc>
    5f58:	0b160084 	add	w4, w4, w22
    5f5c:	5280001c 	mov	w28, #0x0                   	// #0
    5f60:	b90093b6 	str	w22, [x29, #144]
    5f64:	710026bf 	cmp	w21, #0x9
    5f68:	54000be8 	b.hi	60e4 <_dtoa_r+0x354>  // b.pmore
    5f6c:	5280003b 	mov	w27, #0x1                   	// #1
    5f70:	710016bf 	cmp	w21, #0x5
    5f74:	5400006d 	b.le	5f80 <_dtoa_r+0x1f0>
    5f78:	510012b5 	sub	w21, w21, #0x4
    5f7c:	5280001b 	mov	w27, #0x0                   	// #0
    5f80:	71000ebf 	cmp	w21, #0x3
    5f84:	54005a20 	b.eq	6ac8 <_dtoa_r+0xd38>  // b.none
    5f88:	5400286d 	b.le	6494 <_dtoa_r+0x704>
    5f8c:	52800020 	mov	w0, #0x1                   	// #1
    5f90:	b90097a0 	str	w0, [x29, #148]
    5f94:	710012bf 	cmp	w21, #0x4
    5f98:	54000620 	b.eq	605c <_dtoa_r+0x2cc>  // b.none
    5f9c:	710016bf 	cmp	w21, #0x5
    5fa0:	54002801 	b.ne	64a0 <_dtoa_r+0x710>  // b.any
    5fa4:	b940aba0 	ldr	w0, [x29, #168]
    5fa8:	0b0002c0 	add	w0, w22, w0
    5fac:	b9007fa0 	str	w0, [x29, #124]
    5fb0:	11000400 	add	w0, w0, #0x1
    5fb4:	b900a3a0 	str	w0, [x29, #160]
    5fb8:	7100001f 	cmp	w0, #0x0
    5fbc:	1a9fc400 	csinc	w0, w0, wzr, gt
    5fc0:	1400002c 	b	6070 <_dtoa_r+0x2e0>
    5fc4:	12007816 	and	w22, w0, #0x7fffffff
    5fc8:	52800020 	mov	w0, #0x1                   	// #1
    5fcc:	b90002e0 	str	w0, [x23]
    5fd0:	120c2ac1 	and	w1, w22, #0x7ff00000
    5fd4:	b3607eda 	bfi	x26, x22, #32, #32
    5fd8:	52affe00 	mov	w0, #0x7ff00000            	// #2146435072
    5fdc:	9e670348 	fmov	d8, x26
    5fe0:	6b00003f 	cmp	w1, w0
    5fe4:	54fff181 	b.ne	5e14 <_dtoa_r+0x84>  // b.any
    5fe8:	5284e1e0 	mov	w0, #0x270f                	// #9999
    5fec:	b9000320 	str	w0, [x25]
    5ff0:	9e660100 	fmov	x0, d8
    5ff4:	f240cc1f 	tst	x0, #0xfffffffffffff
    5ff8:	540000e1 	b.ne	6014 <_dtoa_r+0x284>  // b.any
    5ffc:	90000055 	adrp	x21, d000 <__trunctfdf2+0x290>
    6000:	b4003034 	cbz	x20, 6604 <_dtoa_r+0x874>
    6004:	f0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    6008:	911622b5 	add	x21, x21, #0x588
    600c:	91164000 	add	x0, x0, #0x590
    6010:	17ffff8a 	b	5e38 <_dtoa_r+0xa8>
    6014:	f0000035 	adrp	x21, d000 <__trunctfdf2+0x290>
    6018:	b4002fb4 	cbz	x20, 660c <_dtoa_r+0x87c>
    601c:	f0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    6020:	911662b5 	add	x21, x21, #0x598
    6024:	91166c00 	add	x0, x0, #0x59b
    6028:	17ffff84 	b	5e38 <_dtoa_r+0xa8>
    602c:	9e660100 	fmov	x0, d8
    6030:	510ffc21 	sub	w1, w1, #0x3ff
    6034:	b940bba2 	ldr	w2, [x29, #184]
    6038:	b9007bbf 	str	wzr, [x29, #120]
    603c:	d360cc03 	ubfx	x3, x0, #32, #20
    6040:	320c2463 	orr	w3, w3, #0x3ff00000
    6044:	b3607c60 	bfi	x0, x3, #32, #32
    6048:	17ffffa3 	b	5ed4 <_dtoa_r+0x144>
    604c:	52800026 	mov	w6, #0x1                   	// #1
    6050:	52800004 	mov	w4, #0x0                   	// #0
    6054:	4b0100c6 	sub	w6, w6, w1
    6058:	17ffffbf 	b	5f54 <_dtoa_r+0x1c4>
    605c:	b940aba0 	ldr	w0, [x29, #168]
    6060:	7100001f 	cmp	w0, #0x0
    6064:	5400298d 	b.le	6594 <_dtoa_r+0x804>
    6068:	b9007fa0 	str	w0, [x29, #124]
    606c:	b900a3a0 	str	w0, [x29, #160]
    6070:	b940a3a1 	ldr	w1, [x29, #160]
    6074:	93407c07 	sxtw	x7, w0
    6078:	b9006a7f 	str	wzr, [x19, #104]
    607c:	7100383f 	cmp	w1, #0xe
    6080:	1a9f87e1 	cset	w1, ls  // ls = plast
    6084:	71007c1f 	cmp	w0, #0x1f
    6088:	0a01037b 	and	w27, w27, w1
    608c:	5400748d 	b.le	6f1c <_dtoa_r+0x118c>
    6090:	52800023 	mov	w3, #0x1                   	// #1
    6094:	52800082 	mov	w2, #0x4                   	// #4
    6098:	531f7842 	lsl	w2, w2, #1
    609c:	2a0303e1 	mov	w1, w3
    60a0:	11000463 	add	w3, w3, #0x1
    60a4:	93407c40 	sxtw	x0, w2
    60a8:	91007000 	add	x0, x0, #0x1c
    60ac:	eb07001f 	cmp	x0, x7
    60b0:	54ffff49 	b.ls	6098 <_dtoa_r+0x308>  // b.plast
    60b4:	b9006a61 	str	w1, [x19, #104]
    60b8:	14000016 	b	6110 <_dtoa_r+0x380>
    60bc:	f0000035 	adrp	x21, d000 <__trunctfdf2+0x290>
    60c0:	911602b5 	add	x21, x21, #0x580
    60c4:	aa1503e0 	mov	x0, x21
    60c8:	f9401bf7 	ldr	x23, [sp, #48]
    60cc:	a94153f3 	ldp	x19, x20, [sp, #16]
    60d0:	a9425bf5 	ldp	x21, x22, [sp, #32]
    60d4:	a9446bf9 	ldp	x25, x26, [sp, #64]
    60d8:	fd4033e8 	ldr	d8, [sp, #96]
    60dc:	a8cc7bfd 	ldp	x29, x30, [sp], #192
    60e0:	d65f03c0 	ret
    60e4:	52800020 	mov	w0, #0x1                   	// #1
    60e8:	5280001b 	mov	w27, #0x0                   	// #0
    60ec:	b90097a0 	str	w0, [x29, #148]
    60f0:	52800015 	mov	w21, #0x0                   	// #0
    60f4:	12800000 	mov	w0, #0xffffffff            	// #-1
    60f8:	b900a3a0 	str	w0, [x29, #160]
    60fc:	b900abbf 	str	wzr, [x29, #168]
    6100:	b940a3a0 	ldr	w0, [x29, #160]
    6104:	52800001 	mov	w1, #0x0                   	// #0
    6108:	b9006a7f 	str	wzr, [x19, #104]
    610c:	b9007fa0 	str	w0, [x29, #124]
    6110:	b90083a4 	str	w4, [x29, #128]
    6114:	aa1303e0 	mov	x0, x19
    6118:	b9008ba6 	str	w6, [x29, #136]
    611c:	940009c9 	bl	8840 <_Balloc>
    6120:	f9003260 	str	x0, [x19, #96]
    6124:	aa0003f8 	mov	x24, x0
    6128:	b94083a4 	ldr	w4, [x29, #128]
    612c:	b9408ba6 	ldr	w6, [x29, #136]
    6130:	34000b5b 	cbz	w27, 6298 <_dtoa_r+0x508>
    6134:	9e670344 	fmov	d4, x26
    6138:	710002df 	cmp	w22, #0x0
    613c:	54003b4d 	b.le	68a4 <_dtoa_r+0xb14>
    6140:	f0000021 	adrp	x1, d000 <__trunctfdf2+0x290>
    6144:	92400ec2 	and	x2, x22, #0xf
    6148:	910cc021 	add	x1, x1, #0x330
    614c:	13047ec0 	asr	w0, w22, #4
    6150:	fc627821 	ldr	d1, [x1, x2, lsl #3]
    6154:	37202140 	tbnz	w0, #4, 657c <_dtoa_r+0x7ec>
    6158:	9e670340 	fmov	d0, x26
    615c:	52800041 	mov	w1, #0x2                   	// #2
    6160:	f0000022 	adrp	x2, d000 <__trunctfdf2+0x290>
    6164:	91108042 	add	x2, x2, #0x420
    6168:	34000120 	cbz	w0, 618c <_dtoa_r+0x3fc>
    616c:	d503201f 	nop
    6170:	36000080 	tbz	w0, #0, 6180 <_dtoa_r+0x3f0>
    6174:	fd400042 	ldr	d2, [x2]
    6178:	11000421 	add	w1, w1, #0x1
    617c:	1e620821 	fmul	d1, d1, d2
    6180:	13017c00 	asr	w0, w0, #1
    6184:	91002042 	add	x2, x2, #0x8
    6188:	35ffff40 	cbnz	w0, 6170 <_dtoa_r+0x3e0>
    618c:	1e611800 	fdiv	d0, d0, d1
    6190:	b9409ba0 	ldr	w0, [x29, #152]
    6194:	34000080 	cbz	w0, 61a4 <_dtoa_r+0x414>
    6198:	1e6e1001 	fmov	d1, #1.000000000000000000e+000
    619c:	1e612010 	fcmpe	d0, d1
    61a0:	54005144 	b.mi	6bc8 <_dtoa_r+0xe38>  // b.first
    61a4:	1e620021 	scvtf	d1, w1
    61a8:	1e639002 	fmov	d2, #7.000000000000000000e+000
    61ac:	52bf9802 	mov	w2, #0xfcc00000            	// #-54525952
    61b0:	1f400821 	fmadd	d1, d1, d0, d2
    61b4:	9e660020 	fmov	x0, d1
    61b8:	d360fc01 	lsr	x1, x0, #32
    61bc:	0b020021 	add	w1, w1, w2
    61c0:	b3607c20 	bfi	x0, x1, #32, #32
    61c4:	b940a3a1 	ldr	w1, [x29, #160]
    61c8:	34002041 	cbz	w1, 65d0 <_dtoa_r+0x840>
    61cc:	b940a3a2 	ldr	w2, [x29, #160]
    61d0:	b9008bb6 	str	w22, [x29, #136]
    61d4:	9e670001 	fmov	d1, x0
    61d8:	1e780000 	fcvtzs	w0, d0
    61dc:	51000443 	sub	w3, w2, #0x1
    61e0:	f0000021 	adrp	x1, d000 <__trunctfdf2+0x290>
    61e4:	910cc021 	add	x1, x1, #0x330
    61e8:	1e620002 	scvtf	d2, w0
    61ec:	fc63d823 	ldr	d3, [x1, w3, sxtw #3]
    61f0:	b94097a3 	ldr	w3, [x29, #148]
    61f4:	1100c000 	add	w0, w0, #0x30
    61f8:	12001c00 	and	w0, w0, #0xff
    61fc:	91000701 	add	x1, x24, #0x1
    6200:	1e623800 	fsub	d0, d0, d2
    6204:	340042e3 	cbz	w3, 6a60 <_dtoa_r+0xcd0>
    6208:	1e6c1002 	fmov	d2, #5.000000000000000000e-001
    620c:	39000300 	strb	w0, [x24]
    6210:	1e631842 	fdiv	d2, d2, d3
    6214:	1e613841 	fsub	d1, d2, d1
    6218:	1e602030 	fcmpe	d1, d0
    621c:	5400036c 	b.gt	6288 <_dtoa_r+0x4f8>
    6220:	1e6e1005 	fmov	d5, #1.000000000000000000e+000
    6224:	1e6038a2 	fsub	d2, d5, d0
    6228:	1e612050 	fcmpe	d2, d1
    622c:	54001984 	b.mi	655c <_dtoa_r+0x7cc>  // b.first
    6230:	7100045f 	cmp	w2, #0x1
    6234:	54000300 	b.eq	6294 <_dtoa_r+0x504>  // b.none
    6238:	51000842 	sub	w2, w2, #0x2
    623c:	1e649002 	fmov	d2, #1.000000000000000000e+001
    6240:	91000842 	add	x2, x2, #0x2
    6244:	8b020302 	add	x2, x24, x2
    6248:	14000006 	b	6260 <_dtoa_r+0x4d0>
    624c:	1e6038a3 	fsub	d3, d5, d0
    6250:	1e612070 	fcmpe	d3, d1
    6254:	54001844 	b.mi	655c <_dtoa_r+0x7cc>  // b.first
    6258:	eb02003f 	cmp	x1, x2
    625c:	540001c0 	b.eq	6294 <_dtoa_r+0x504>  // b.none
    6260:	1e620800 	fmul	d0, d0, d2
    6264:	1e620821 	fmul	d1, d1, d2
    6268:	1e780000 	fcvtzs	w0, d0
    626c:	1e620003 	scvtf	d3, w0
    6270:	1100c000 	add	w0, w0, #0x30
    6274:	12001c00 	and	w0, w0, #0xff
    6278:	38001420 	strb	w0, [x1], #1
    627c:	1e633800 	fsub	d0, d0, d3
    6280:	1e612010 	fcmpe	d0, d1
    6284:	54fffe45 	b.pl	624c <_dtoa_r+0x4bc>  // b.nfrst
    6288:	aa1803f5 	mov	x21, x24
    628c:	aa0103f8 	mov	x24, x1
    6290:	14000064 	b	6420 <_dtoa_r+0x690>
    6294:	9e66009a 	fmov	x26, d4
    6298:	b940bfa0 	ldr	w0, [x29, #188]
    629c:	7100001f 	cmp	w0, #0x0
    62a0:	7a4eaac0 	ccmp	w22, #0xe, #0x0, ge  // ge = tcont
    62a4:	54001bed 	b.le	6620 <_dtoa_r+0x890>
    62a8:	b94097a1 	ldr	w1, [x29, #148]
    62ac:	35001221 	cbnz	w1, 64f0 <_dtoa_r+0x760>
    62b0:	2a1c03e2 	mov	w2, w28
    62b4:	d280001b 	mov	x27, #0x0                   	// #0
    62b8:	b9008ba6 	str	w6, [x29, #136]
    62bc:	b9408ba1 	ldr	w1, [x29, #136]
    62c0:	7100003f 	cmp	w1, #0x0
    62c4:	7a40c884 	ccmp	w4, #0x0, #0x4, gt
    62c8:	540000ed 	b.le	62e4 <_dtoa_r+0x554>
    62cc:	6b04003f 	cmp	w1, w4
    62d0:	1a84d020 	csel	w0, w1, w4, le
    62d4:	4b0000c6 	sub	w6, w6, w0
    62d8:	4b000084 	sub	w4, w4, w0
    62dc:	4b000021 	sub	w1, w1, w0
    62e0:	b9008ba1 	str	w1, [x29, #136]
    62e4:	340001fc 	cbz	w28, 6320 <_dtoa_r+0x590>
    62e8:	b94097a0 	ldr	w0, [x29, #148]
    62ec:	340045a0 	cbz	w0, 6ba0 <_dtoa_r+0xe10>
    62f0:	4b02039c 	sub	w28, w28, w2
    62f4:	35004962 	cbnz	w2, 6c20 <_dtoa_r+0xe90>
    62f8:	aa1703e1 	mov	x1, x23
    62fc:	b9007ba4 	str	w4, [x29, #120]
    6300:	b90083a6 	str	w6, [x29, #128]
    6304:	2a1c03e2 	mov	w2, w28
    6308:	aa1303e0 	mov	x0, x19
    630c:	94000ac1 	bl	8e10 <__pow5mult>
    6310:	b9407ba4 	ldr	w4, [x29, #120]
    6314:	aa0003f7 	mov	x23, x0
    6318:	b94083a6 	ldr	w6, [x29, #128]
    631c:	d503201f 	nop
    6320:	b9007ba4 	str	w4, [x29, #120]
    6324:	52800021 	mov	w1, #0x1                   	// #1
    6328:	b90083a6 	str	w6, [x29, #128]
    632c:	aa1303e0 	mov	x0, x19
    6330:	94000a38 	bl	8c10 <__i2b>
    6334:	aa0003fc 	mov	x28, x0
    6338:	b94093a2 	ldr	w2, [x29, #144]
    633c:	b9407ba4 	ldr	w4, [x29, #120]
    6340:	b94083a6 	ldr	w6, [x29, #128]
    6344:	350019c2 	cbnz	w2, 667c <_dtoa_r+0x8ec>
    6348:	710006bf 	cmp	w21, #0x1
    634c:	54005dcd 	b.le	6f04 <_dtoa_r+0x1174>
    6350:	52800020 	mov	w0, #0x1                   	// #1
    6354:	0b040000 	add	w0, w0, w4
    6358:	72001000 	ands	w0, w0, #0x1f
    635c:	54001500 	b.eq	65fc <_dtoa_r+0x86c>  // b.none
    6360:	52800401 	mov	w1, #0x20                  	// #32
    6364:	4b000021 	sub	w1, w1, w0
    6368:	7100103f 	cmp	w1, #0x4
    636c:	54005dcd 	b.le	6f24 <_dtoa_r+0x1194>
    6370:	52800381 	mov	w1, #0x1c                  	// #28
    6374:	4b000020 	sub	w0, w1, w0
    6378:	b9408ba1 	ldr	w1, [x29, #136]
    637c:	0b0000c6 	add	w6, w6, w0
    6380:	0b000084 	add	w4, w4, w0
    6384:	0b000021 	add	w1, w1, w0
    6388:	b9008ba1 	str	w1, [x29, #136]
    638c:	710000df 	cmp	w6, #0x0
    6390:	5400010d 	b.le	63b0 <_dtoa_r+0x620>
    6394:	aa1703e1 	mov	x1, x23
    6398:	b90083a4 	str	w4, [x29, #128]
    639c:	2a0603e2 	mov	w2, w6
    63a0:	aa1303e0 	mov	x0, x19
    63a4:	94000ae5 	bl	8f38 <__lshift>
    63a8:	aa0003f7 	mov	x23, x0
    63ac:	b94083a4 	ldr	w4, [x29, #128]
    63b0:	7100009f 	cmp	w4, #0x0
    63b4:	540000cd 	b.le	63cc <_dtoa_r+0x63c>
    63b8:	aa1c03e1 	mov	x1, x28
    63bc:	2a0403e2 	mov	w2, w4
    63c0:	aa1303e0 	mov	x0, x19
    63c4:	94000add 	bl	8f38 <__lshift>
    63c8:	aa0003fc 	mov	x28, x0
    63cc:	b9409ba0 	ldr	w0, [x29, #152]
    63d0:	71000abf 	cmp	w21, #0x2
    63d4:	1a9fd7e4 	cset	w4, gt
    63d8:	350029e0 	cbnz	w0, 6914 <_dtoa_r+0xb84>
    63dc:	b940a3a0 	ldr	w0, [x29, #160]
    63e0:	7100001f 	cmp	w0, #0x0
    63e4:	7a40d884 	ccmp	w4, #0x0, #0x4, le
    63e8:	54001900 	b.eq	6708 <_dtoa_r+0x978>  // b.none
    63ec:	b940a3a0 	ldr	w0, [x29, #160]
    63f0:	34003c00 	cbz	w0, 6b70 <_dtoa_r+0xde0>
    63f4:	b940aba0 	ldr	w0, [x29, #168]
    63f8:	aa1803f5 	mov	x21, x24
    63fc:	2a2003e0 	mvn	w0, w0
    6400:	b9008ba0 	str	w0, [x29, #136]
    6404:	aa1c03e1 	mov	x1, x28
    6408:	aa1303e0 	mov	x0, x19
    640c:	94000937 	bl	88e8 <_Bfree>
    6410:	b400009b 	cbz	x27, 6420 <_dtoa_r+0x690>
    6414:	aa1b03e1 	mov	x1, x27
    6418:	aa1303e0 	mov	x0, x19
    641c:	94000933 	bl	88e8 <_Bfree>
    6420:	aa1303e0 	mov	x0, x19
    6424:	aa1703e1 	mov	x1, x23
    6428:	94000930 	bl	88e8 <_Bfree>
    642c:	3900031f 	strb	wzr, [x24]
    6430:	b9408ba0 	ldr	w0, [x29, #136]
    6434:	11000400 	add	w0, w0, #0x1
    6438:	b9000320 	str	w0, [x25]
    643c:	b4000b54 	cbz	x20, 65a4 <_dtoa_r+0x814>
    6440:	a94573bb 	ldp	x27, x28, [x29, #80]
    6444:	f9000298 	str	x24, [x20]
    6448:	aa1503e0 	mov	x0, x21
    644c:	f9401fb8 	ldr	x24, [x29, #56]
    6450:	a94153f3 	ldp	x19, x20, [sp, #16]
    6454:	a9425bf5 	ldp	x21, x22, [sp, #32]
    6458:	f9401bf7 	ldr	x23, [sp, #48]
    645c:	a9446bf9 	ldp	x25, x26, [sp, #64]
    6460:	fd4033e8 	ldr	d8, [sp, #96]
    6464:	a8cc7bfd 	ldp	x29, x30, [sp], #192
    6468:	d65f03c0 	ret
    646c:	4b1600c6 	sub	w6, w6, w22
    6470:	4b1603fc 	neg	w28, w22
    6474:	b90093bf 	str	wzr, [x29, #144]
    6478:	17fffebb 	b	5f64 <_dtoa_r+0x1d4>
    647c:	52800400 	mov	w0, #0x20                  	// #32
    6480:	4b030000 	sub	w0, w0, w3
    6484:	1ac02340 	lsl	w0, w26, w0
    6488:	17fffe8a 	b	5eb0 <_dtoa_r+0x120>
    648c:	b9009bbf 	str	wzr, [x29, #152]
    6490:	17fffead 	b	5f44 <_dtoa_r+0x1b4>
    6494:	b90097bf 	str	wzr, [x29, #148]
    6498:	71000abf 	cmp	w21, #0x2
    649c:	54ffde00 	b.eq	605c <_dtoa_r+0x2cc>  // b.none
    64a0:	b9006a7f 	str	wzr, [x19, #104]
    64a4:	52800001 	mov	w1, #0x0                   	// #0
    64a8:	aa1303e0 	mov	x0, x19
    64ac:	b90083a4 	str	w4, [x29, #128]
    64b0:	b9008ba6 	str	w6, [x29, #136]
    64b4:	940008e3 	bl	8840 <_Balloc>
    64b8:	aa0003f8 	mov	x24, x0
    64bc:	b940bfa0 	ldr	w0, [x29, #188]
    64c0:	f9003278 	str	x24, [x19, #96]
    64c4:	7100001f 	cmp	w0, #0x0
    64c8:	7a4eaac0 	ccmp	w22, #0xe, #0x0, ge  // ge = tcont
    64cc:	54000a4d 	b.le	6614 <_dtoa_r+0x884>
    64d0:	b94083a4 	ldr	w4, [x29, #128]
    64d4:	12800001 	mov	w1, #0xffffffff            	// #-1
    64d8:	b9408ba6 	ldr	w6, [x29, #136]
    64dc:	52800022 	mov	w2, #0x1                   	// #1
    64e0:	b9007fa1 	str	w1, [x29, #124]
    64e4:	b90097a2 	str	w2, [x29, #148]
    64e8:	b900a3a1 	str	w1, [x29, #160]
    64ec:	b900abbf 	str	wzr, [x29, #168]
    64f0:	710006bf 	cmp	w21, #0x1
    64f4:	54003bcd 	b.le	6c6c <_dtoa_r+0xedc>
    64f8:	b940a3a0 	ldr	w0, [x29, #160]
    64fc:	51000402 	sub	w2, w0, #0x1
    6500:	6b02039f 	cmp	w28, w2
    6504:	54003c4b 	b.lt	6c8c <_dtoa_r+0xefc>  // b.tstop
    6508:	4b020382 	sub	w2, w28, w2
    650c:	b940a3a0 	ldr	w0, [x29, #160]
    6510:	4b0000c1 	sub	w1, w6, w0
    6514:	b9008ba1 	str	w1, [x29, #136]
    6518:	37f80080 	tbnz	w0, #31, 6528 <_dtoa_r+0x798>
    651c:	b9008ba6 	str	w6, [x29, #136]
    6520:	0b000084 	add	w4, w4, w0
    6524:	0b0000c6 	add	w6, w6, w0
    6528:	290e8ba4 	stp	w4, w2, [x29, #116]
    652c:	52800021 	mov	w1, #0x1                   	// #1
    6530:	b90083a6 	str	w6, [x29, #128]
    6534:	aa1303e0 	mov	x0, x19
    6538:	940009b6 	bl	8c10 <__i2b>
    653c:	aa0003fb 	mov	x27, x0
    6540:	294e8ba4 	ldp	w4, w2, [x29, #116]
    6544:	b94083a6 	ldr	w6, [x29, #128]
    6548:	17ffff5d 	b	62bc <_dtoa_r+0x52c>
    654c:	eb18005f 	cmp	x2, x24
    6550:	54003ac0 	b.eq	6ca8 <_dtoa_r+0xf18>  // b.none
    6554:	385ff040 	ldurb	w0, [x2, #-1]
    6558:	aa0203e1 	mov	x1, x2
    655c:	d1000422 	sub	x2, x1, #0x1
    6560:	7100e41f 	cmp	w0, #0x39
    6564:	54ffff40 	b.eq	654c <_dtoa_r+0x7bc>  // b.none
    6568:	11000400 	add	w0, w0, #0x1
    656c:	aa1803f5 	mov	x21, x24
    6570:	39000040 	strb	w0, [x2]
    6574:	aa0103f8 	mov	x24, x1
    6578:	17ffffaa 	b	6420 <_dtoa_r+0x690>
    657c:	f0000022 	adrp	x2, d000 <__trunctfdf2+0x290>
    6580:	12000c00 	and	w0, w0, #0xf
    6584:	52800061 	mov	w1, #0x3                   	// #3
    6588:	fd422040 	ldr	d0, [x2, #1088]
    658c:	1e601880 	fdiv	d0, d4, d0
    6590:	17fffef4 	b	6160 <_dtoa_r+0x3d0>
    6594:	52800020 	mov	w0, #0x1                   	// #1
    6598:	b900a3a0 	str	w0, [x29, #160]
    659c:	b900aba0 	str	w0, [x29, #168]
    65a0:	17fffed8 	b	6100 <_dtoa_r+0x370>
    65a4:	f9401fb8 	ldr	x24, [x29, #56]
    65a8:	a94573bb 	ldp	x27, x28, [x29, #80]
    65ac:	17fffe24 	b	5e3c <_dtoa_r+0xac>
    65b0:	1e620021 	scvtf	d1, w1
    65b4:	1e639002 	fmov	d2, #7.000000000000000000e+000
    65b8:	52bf9802 	mov	w2, #0xfcc00000            	// #-54525952
    65bc:	1f400821 	fmadd	d1, d1, d0, d2
    65c0:	9e660020 	fmov	x0, d1
    65c4:	d360fc01 	lsr	x1, x0, #32
    65c8:	0b020021 	add	w1, w1, w2
    65cc:	b3607c20 	bfi	x0, x1, #32, #32
    65d0:	1e629002 	fmov	d2, #5.000000000000000000e+000
    65d4:	9e670001 	fmov	d1, x0
    65d8:	1e623800 	fsub	d0, d0, d2
    65dc:	1e612010 	fcmpe	d0, d1
    65e0:	540023ac 	b.gt	6a54 <_dtoa_r+0xcc4>
    65e4:	1e614021 	fneg	d1, d1
    65e8:	1e612010 	fcmpe	d0, d1
    65ec:	54ffe545 	b.pl	6294 <_dtoa_r+0x504>  // b.nfrst
    65f0:	d280001c 	mov	x28, #0x0                   	// #0
    65f4:	d280001b 	mov	x27, #0x0                   	// #0
    65f8:	17ffff7f 	b	63f4 <_dtoa_r+0x664>
    65fc:	52800380 	mov	w0, #0x1c                  	// #28
    6600:	17ffff5e 	b	6378 <_dtoa_r+0x5e8>
    6604:	911622b5 	add	x21, x21, #0x588
    6608:	17fffe0d 	b	5e3c <_dtoa_r+0xac>
    660c:	911662b5 	add	x21, x21, #0x598
    6610:	17fffe0b 	b	5e3c <_dtoa_r+0xac>
    6614:	12800000 	mov	w0, #0xffffffff            	// #-1
    6618:	b900a3a0 	str	w0, [x29, #160]
    661c:	b900abbf 	str	wzr, [x29, #168]
    6620:	b940aba1 	ldr	w1, [x29, #168]
    6624:	f0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    6628:	910cc000 	add	x0, x0, #0x330
    662c:	7100003f 	cmp	w1, #0x0
    6630:	b940a3a1 	ldr	w1, [x29, #160]
    6634:	fc76d802 	ldr	d2, [x0, w22, sxtw #3]
    6638:	7a40b820 	ccmp	w1, #0x0, #0x0, lt  // lt = tstop
    663c:	540024ac 	b.gt	6ad0 <_dtoa_r+0xd40>
    6640:	35fffd81 	cbnz	w1, 65f0 <_dtoa_r+0x860>
    6644:	1e629000 	fmov	d0, #5.000000000000000000e+000
    6648:	d280001c 	mov	x28, #0x0                   	// #0
    664c:	d280001b 	mov	x27, #0x0                   	// #0
    6650:	1e600842 	fmul	d2, d2, d0
    6654:	9e670340 	fmov	d0, x26
    6658:	1e602050 	fcmpe	d2, d0
    665c:	54ffecca 	b.ge	63f4 <_dtoa_r+0x664>  // b.tcont
    6660:	52800620 	mov	w0, #0x31                  	// #49
    6664:	aa1803f5 	mov	x21, x24
    6668:	39000300 	strb	w0, [x24]
    666c:	110006c0 	add	w0, w22, #0x1
    6670:	91000718 	add	x24, x24, #0x1
    6674:	b9008ba0 	str	w0, [x29, #136]
    6678:	17ffff63 	b	6404 <_dtoa_r+0x674>
    667c:	aa0003e1 	mov	x1, x0
    6680:	b9007ba4 	str	w4, [x29, #120]
    6684:	b90083a6 	str	w6, [x29, #128]
    6688:	aa1303e0 	mov	x0, x19
    668c:	940009e1 	bl	8e10 <__pow5mult>
    6690:	aa0003fc 	mov	x28, x0
    6694:	710006bf 	cmp	w21, #0x1
    6698:	b9407ba4 	ldr	w4, [x29, #120]
    669c:	b94083a6 	ldr	w6, [x29, #128]
    66a0:	54001d6c 	b.gt	6a4c <_dtoa_r+0xcbc>
    66a4:	f240cf5f 	tst	x26, #0xfffffffffffff
    66a8:	54001d21 	b.ne	6a4c <_dtoa_r+0xcbc>  // b.any
    66ac:	d360ff40 	lsr	x0, x26, #32
    66b0:	f26c281f 	tst	x0, #0x7ff00000
    66b4:	52800000 	mov	w0, #0x0                   	// #0
    66b8:	54000080 	b.eq	66c8 <_dtoa_r+0x938>  // b.none
    66bc:	110004c6 	add	w6, w6, #0x1
    66c0:	11000484 	add	w4, w4, #0x1
    66c4:	52800020 	mov	w0, #0x1                   	// #1
    66c8:	b94093a1 	ldr	w1, [x29, #144]
    66cc:	b90093a0 	str	w0, [x29, #144]
    66d0:	34ffe401 	cbz	w1, 6350 <_dtoa_r+0x5c0>
    66d4:	d503201f 	nop
    66d8:	b9401780 	ldr	w0, [x28, #20]
    66dc:	b9007ba4 	str	w4, [x29, #120]
    66e0:	51000400 	sub	w0, w0, #0x1
    66e4:	b90083a6 	str	w6, [x29, #128]
    66e8:	8b20cb80 	add	x0, x28, w0, sxtw #2
    66ec:	b9401800 	ldr	w0, [x0, #24]
    66f0:	94000908 	bl	8b10 <__hi0bits>
    66f4:	52800401 	mov	w1, #0x20                  	// #32
    66f8:	b9407ba4 	ldr	w4, [x29, #120]
    66fc:	4b000020 	sub	w0, w1, w0
    6700:	b94083a6 	ldr	w6, [x29, #128]
    6704:	17ffff14 	b	6354 <_dtoa_r+0x5c4>
    6708:	b94097a0 	ldr	w0, [x29, #148]
    670c:	34001360 	cbz	w0, 6978 <_dtoa_r+0xbe8>
    6710:	b9408ba0 	ldr	w0, [x29, #136]
    6714:	7100001f 	cmp	w0, #0x0
    6718:	540000cd 	b.le	6730 <_dtoa_r+0x9a0>
    671c:	2a0003e2 	mov	w2, w0
    6720:	aa1b03e1 	mov	x1, x27
    6724:	aa1303e0 	mov	x0, x19
    6728:	94000a04 	bl	8f38 <__lshift>
    672c:	aa0003fb 	mov	x27, x0
    6730:	b94093a0 	ldr	w0, [x29, #144]
    6734:	f90057bb 	str	x27, [x29, #168]
    6738:	350032e0 	cbnz	w0, 6d94 <_dtoa_r+0x1004>
    673c:	b940a3a0 	ldr	w0, [x29, #160]
    6740:	12000341 	and	w1, w26, #0x1
    6744:	b90083a1 	str	w1, [x29, #128]
    6748:	51000400 	sub	w0, w0, #0x1
    674c:	f90053b8 	str	x24, [x29, #160]
    6750:	91000400 	add	x0, x0, #0x1
    6754:	8b00031a 	add	x26, x24, x0
    6758:	aa1c03e1 	mov	x1, x28
    675c:	aa1703e0 	mov	x0, x23
    6760:	97fffd20 	bl	5be0 <quorem>
    6764:	b90097a0 	str	w0, [x29, #148]
    6768:	aa1b03e1 	mov	x1, x27
    676c:	aa1703e0 	mov	x0, x23
    6770:	94000a42 	bl	9078 <__mcmp>
    6774:	b90093a0 	str	w0, [x29, #144]
    6778:	f94057a2 	ldr	x2, [x29, #168]
    677c:	aa1c03e1 	mov	x1, x28
    6780:	aa1303e0 	mov	x0, x19
    6784:	94000a51 	bl	90c8 <__mdiff>
    6788:	aa0003e2 	mov	x2, x0
    678c:	b94097a0 	ldr	w0, [x29, #148]
    6790:	1100c000 	add	w0, w0, #0x30
    6794:	b9009ba0 	str	w0, [x29, #152]
    6798:	b9401040 	ldr	w0, [x2, #16]
    679c:	35000b80 	cbnz	w0, 690c <_dtoa_r+0xb7c>
    67a0:	aa0203e1 	mov	x1, x2
    67a4:	f90047a2 	str	x2, [x29, #136]
    67a8:	aa1703e0 	mov	x0, x23
    67ac:	94000a33 	bl	9078 <__mcmp>
    67b0:	f94047a2 	ldr	x2, [x29, #136]
    67b4:	2a0003e3 	mov	w3, w0
    67b8:	aa1303e0 	mov	x0, x19
    67bc:	b9008ba3 	str	w3, [x29, #136]
    67c0:	aa0203e1 	mov	x1, x2
    67c4:	94000849 	bl	88e8 <_Bfree>
    67c8:	b9408ba3 	ldr	w3, [x29, #136]
    67cc:	2a150060 	orr	w0, w3, w21
    67d0:	35000060 	cbnz	w0, 67dc <_dtoa_r+0xa4c>
    67d4:	b94083a0 	ldr	w0, [x29, #128]
    67d8:	34003520 	cbz	w0, 6e7c <_dtoa_r+0x10ec>
    67dc:	b94093a0 	ldr	w0, [x29, #144]
    67e0:	37f82b60 	tbnz	w0, #31, 6d4c <_dtoa_r+0xfbc>
    67e4:	2a150000 	orr	w0, w0, w21
    67e8:	35000060 	cbnz	w0, 67f4 <_dtoa_r+0xa64>
    67ec:	b94083a0 	ldr	w0, [x29, #128]
    67f0:	34002ae0 	cbz	w0, 6d4c <_dtoa_r+0xfbc>
    67f4:	f94053a0 	ldr	x0, [x29, #160]
    67f8:	7100007f 	cmp	w3, #0x0
    67fc:	91000404 	add	x4, x0, #0x1
    6800:	54002f4c 	b.gt	6de8 <_dtoa_r+0x1058>
    6804:	394263a0 	ldrb	w0, [x29, #152]
    6808:	eb04035f 	cmp	x26, x4
    680c:	381ff080 	sturb	w0, [x4, #-1]
    6810:	f90053a4 	str	x4, [x29, #160]
    6814:	54003000 	b.eq	6e14 <_dtoa_r+0x1084>  // b.none
    6818:	aa1703e1 	mov	x1, x23
    681c:	52800003 	mov	w3, #0x0                   	// #0
    6820:	52800142 	mov	w2, #0xa                   	// #10
    6824:	aa1303e0 	mov	x0, x19
    6828:	94000838 	bl	8908 <__multadd>
    682c:	aa0003f7 	mov	x23, x0
    6830:	a94a03a4 	ldp	x4, x0, [x29, #160]
    6834:	eb00037f 	cmp	x27, x0
    6838:	54000220 	b.eq	687c <_dtoa_r+0xaec>  // b.none
    683c:	aa1b03e1 	mov	x1, x27
    6840:	f90053a4 	str	x4, [x29, #160]
    6844:	52800003 	mov	w3, #0x0                   	// #0
    6848:	52800142 	mov	w2, #0xa                   	// #10
    684c:	aa1303e0 	mov	x0, x19
    6850:	9400082e 	bl	8908 <__multadd>
    6854:	f94057a1 	ldr	x1, [x29, #168]
    6858:	aa0003fb 	mov	x27, x0
    685c:	52800003 	mov	w3, #0x0                   	// #0
    6860:	52800142 	mov	w2, #0xa                   	// #10
    6864:	aa1303e0 	mov	x0, x19
    6868:	94000828 	bl	8908 <__multadd>
    686c:	f90057a0 	str	x0, [x29, #168]
    6870:	f94053a4 	ldr	x4, [x29, #160]
    6874:	f90053a4 	str	x4, [x29, #160]
    6878:	17ffffb8 	b	6758 <_dtoa_r+0x9c8>
    687c:	aa1b03e1 	mov	x1, x27
    6880:	52800003 	mov	w3, #0x0                   	// #0
    6884:	52800142 	mov	w2, #0xa                   	// #10
    6888:	aa1303e0 	mov	x0, x19
    688c:	9400081f 	bl	8908 <__multadd>
    6890:	aa0003fb 	mov	x27, x0
    6894:	f94053a4 	ldr	x4, [x29, #160]
    6898:	f90053a4 	str	x4, [x29, #160]
    689c:	f90057a0 	str	x0, [x29, #168]
    68a0:	17ffffae 	b	6758 <_dtoa_r+0x9c8>
    68a4:	54001b80 	b.eq	6c14 <_dtoa_r+0xe84>  // b.none
    68a8:	4b1603e0 	neg	w0, w22
    68ac:	f0000021 	adrp	x1, d000 <__trunctfdf2+0x290>
    68b0:	92400c02 	and	x2, x0, #0xf
    68b4:	910cc021 	add	x1, x1, #0x330
    68b8:	13047c00 	asr	w0, w0, #4
    68bc:	fc627820 	ldr	d0, [x1, x2, lsl #3]
    68c0:	1e600880 	fmul	d0, d4, d0
    68c4:	34002f80 	cbz	w0, 6eb4 <_dtoa_r+0x1124>
    68c8:	1e604001 	fmov	d1, d0
    68cc:	f0000022 	adrp	x2, d000 <__trunctfdf2+0x290>
    68d0:	91108042 	add	x2, x2, #0x420
    68d4:	52800003 	mov	w3, #0x0                   	// #0
    68d8:	52800041 	mov	w1, #0x2                   	// #2
    68dc:	d503201f 	nop
    68e0:	360000a0 	tbz	w0, #0, 68f4 <_dtoa_r+0xb64>
    68e4:	fd400042 	ldr	d2, [x2]
    68e8:	11000421 	add	w1, w1, #0x1
    68ec:	2a1b03e3 	mov	w3, w27
    68f0:	1e620821 	fmul	d1, d1, d2
    68f4:	13017c00 	asr	w0, w0, #1
    68f8:	91002042 	add	x2, x2, #0x8
    68fc:	35ffff20 	cbnz	w0, 68e0 <_dtoa_r+0xb50>
    6900:	7100007f 	cmp	w3, #0x0
    6904:	1e610c00 	fcsel	d0, d0, d1, eq  // eq = none
    6908:	17fffe22 	b	6190 <_dtoa_r+0x400>
    690c:	52800023 	mov	w3, #0x1                   	// #1
    6910:	17ffffaa 	b	67b8 <_dtoa_r+0xa28>
    6914:	b9009ba4 	str	w4, [x29, #152]
    6918:	aa1c03e1 	mov	x1, x28
    691c:	aa1703e0 	mov	x0, x23
    6920:	940009d6 	bl	9078 <__mcmp>
    6924:	b9409ba4 	ldr	w4, [x29, #152]
    6928:	36ffd5a0 	tbz	w0, #31, 63dc <_dtoa_r+0x64c>
    692c:	aa1703e1 	mov	x1, x23
    6930:	b900a3a4 	str	w4, [x29, #160]
    6934:	52800003 	mov	w3, #0x0                   	// #0
    6938:	52800142 	mov	w2, #0xa                   	// #10
    693c:	aa1303e0 	mov	x0, x19
    6940:	940007f2 	bl	8908 <__multadd>
    6944:	aa0003f7 	mov	x23, x0
    6948:	b9407fa0 	ldr	w0, [x29, #124]
    694c:	b940a3a4 	ldr	w4, [x29, #160]
    6950:	510006d6 	sub	w22, w22, #0x1
    6954:	7100001f 	cmp	w0, #0x0
    6958:	1a9fc7e0 	cset	w0, le
    695c:	0a000084 	and	w4, w4, w0
    6960:	b94097a0 	ldr	w0, [x29, #148]
    6964:	35002ac0 	cbnz	w0, 6ebc <_dtoa_r+0x112c>
    6968:	b9407fa0 	ldr	w0, [x29, #124]
    696c:	b900a3a0 	str	w0, [x29, #160]
    6970:	35ffd3e4 	cbnz	w4, 63ec <_dtoa_r+0x65c>
    6974:	d503201f 	nop
    6978:	aa1803fa 	mov	x26, x24
    697c:	14000003 	b	6988 <_dtoa_r+0xbf8>
    6980:	940007e2 	bl	8908 <__multadd>
    6984:	aa0003f7 	mov	x23, x0
    6988:	aa1c03e1 	mov	x1, x28
    698c:	aa1703e0 	mov	x0, x23
    6990:	97fffc94 	bl	5be0 <quorem>
    6994:	1100c000 	add	w0, w0, #0x30
    6998:	38001740 	strb	w0, [x26], #1
    699c:	52800003 	mov	w3, #0x0                   	// #0
    69a0:	b940a3a5 	ldr	w5, [x29, #160]
    69a4:	52800142 	mov	w2, #0xa                   	// #10
    69a8:	b9009ba0 	str	w0, [x29, #152]
    69ac:	4b180344 	sub	w4, w26, w24
    69b0:	aa1703e1 	mov	x1, x23
    69b4:	6b05009f 	cmp	w4, w5
    69b8:	aa1303e0 	mov	x0, x19
    69bc:	54fffe2b 	b.lt	6980 <_dtoa_r+0xbf0>  // b.tstop
    69c0:	d2800015 	mov	x21, #0x0                   	// #0
    69c4:	52800022 	mov	w2, #0x1                   	// #1
    69c8:	aa1703e1 	mov	x1, x23
    69cc:	aa1303e0 	mov	x0, x19
    69d0:	9400095a 	bl	8f38 <__lshift>
    69d4:	aa1c03e1 	mov	x1, x28
    69d8:	aa0003f7 	mov	x23, x0
    69dc:	940009a7 	bl	9078 <__mcmp>
    69e0:	7100001f 	cmp	w0, #0x0
    69e4:	385ff341 	ldurb	w1, [x26, #-1]
    69e8:	540000cc 	b.gt	6a00 <_dtoa_r+0xc70>
    69ec:	140000cd 	b	6d20 <_dtoa_r+0xf90>
    69f0:	eb18001f 	cmp	x0, x24
    69f4:	540017e0 	b.eq	6cf0 <_dtoa_r+0xf60>  // b.none
    69f8:	385ff001 	ldurb	w1, [x0, #-1]
    69fc:	aa0003fa 	mov	x26, x0
    6a00:	d1000740 	sub	x0, x26, #0x1
    6a04:	7100e43f 	cmp	w1, #0x39
    6a08:	54ffff40 	b.eq	69f0 <_dtoa_r+0xc60>  // b.none
    6a0c:	11000421 	add	w1, w1, #0x1
    6a10:	b9008bb6 	str	w22, [x29, #136]
    6a14:	39000001 	strb	w1, [x0]
    6a18:	aa1c03e1 	mov	x1, x28
    6a1c:	aa1303e0 	mov	x0, x19
    6a20:	940007b2 	bl	88e8 <_Bfree>
    6a24:	b400171b 	cbz	x27, 6d04 <_dtoa_r+0xf74>
    6a28:	f10002bf 	cmp	x21, #0x0
    6a2c:	fa5b12a4 	ccmp	x21, x27, #0x4, ne  // ne = any
    6a30:	54002700 	b.eq	6f10 <_dtoa_r+0x1180>  // b.none
    6a34:	aa1503e1 	mov	x1, x21
    6a38:	aa1303e0 	mov	x0, x19
    6a3c:	aa1803f5 	mov	x21, x24
    6a40:	940007aa 	bl	88e8 <_Bfree>
    6a44:	aa1a03f8 	mov	x24, x26
    6a48:	17fffe73 	b	6414 <_dtoa_r+0x684>
    6a4c:	b90093bf 	str	wzr, [x29, #144]
    6a50:	17ffff22 	b	66d8 <_dtoa_r+0x948>
    6a54:	d280001c 	mov	x28, #0x0                   	// #0
    6a58:	d280001b 	mov	x27, #0x0                   	// #0
    6a5c:	17ffff01 	b	6660 <_dtoa_r+0x8d0>
    6a60:	39000300 	strb	w0, [x24]
    6a64:	1e630821 	fmul	d1, d1, d3
    6a68:	7100045f 	cmp	w2, #0x1
    6a6c:	54000220 	b.eq	6ab0 <_dtoa_r+0xd20>  // b.none
    6a70:	51000842 	sub	w2, w2, #0x2
    6a74:	aa0103e3 	mov	x3, x1
    6a78:	91000845 	add	x5, x2, #0x2
    6a7c:	1e649003 	fmov	d3, #1.000000000000000000e+001
    6a80:	8b050305 	add	x5, x24, x5
    6a84:	d503201f 	nop
    6a88:	1e630800 	fmul	d0, d0, d3
    6a8c:	1e780000 	fcvtzs	w0, d0
    6a90:	1e620002 	scvtf	d2, w0
    6a94:	1100c000 	add	w0, w0, #0x30
    6a98:	38001460 	strb	w0, [x3], #1
    6a9c:	eb05007f 	cmp	x3, x5
    6aa0:	1e623800 	fsub	d0, d0, d2
    6aa4:	54ffff21 	b.ne	6a88 <_dtoa_r+0xcf8>  // b.any
    6aa8:	91000442 	add	x2, x2, #0x1
    6aac:	8b020021 	add	x1, x1, x2
    6ab0:	1e6c1002 	fmov	d2, #5.000000000000000000e-001
    6ab4:	1e622823 	fadd	d3, d1, d2
    6ab8:	1e602070 	fcmpe	d3, d0
    6abc:	54001065 	b.pl	6cc8 <_dtoa_r+0xf38>  // b.nfrst
    6ac0:	385ff020 	ldurb	w0, [x1, #-1]
    6ac4:	17fffea6 	b	655c <_dtoa_r+0x7cc>
    6ac8:	b90097bf 	str	wzr, [x29, #148]
    6acc:	17fffd36 	b	5fa4 <_dtoa_r+0x214>
    6ad0:	9e670341 	fmov	d1, x26
    6ad4:	b940a3a3 	ldr	w3, [x29, #160]
    6ad8:	91000702 	add	x2, x24, #0x1
    6adc:	1e621820 	fdiv	d0, d1, d2
    6ae0:	7100047f 	cmp	w3, #0x1
    6ae4:	1e780000 	fcvtzs	w0, d0
    6ae8:	1e620000 	scvtf	d0, w0
    6aec:	1100c001 	add	w1, w0, #0x30
    6af0:	39000301 	strb	w1, [x24]
    6af4:	1f408440 	fmsub	d0, d2, d0, d1
    6af8:	54001fa0 	b.eq	6eec <_dtoa_r+0x115c>  // b.none
    6afc:	1e649003 	fmov	d3, #1.000000000000000000e+001
    6b00:	1e630800 	fmul	d0, d0, d3
    6b04:	1e602008 	fcmp	d0, #0.0
    6b08:	54001040 	b.eq	6d10 <_dtoa_r+0xf80>  // b.none
    6b0c:	51000861 	sub	w1, w3, #0x2
    6b10:	91000821 	add	x1, x1, #0x2
    6b14:	8b010301 	add	x1, x24, x1
    6b18:	14000004 	b	6b28 <_dtoa_r+0xd98>
    6b1c:	1e630800 	fmul	d0, d0, d3
    6b20:	1e602008 	fcmp	d0, #0.0
    6b24:	54000f60 	b.eq	6d10 <_dtoa_r+0xf80>  // b.none
    6b28:	1e621801 	fdiv	d1, d0, d2
    6b2c:	1e780020 	fcvtzs	w0, d1
    6b30:	1e620001 	scvtf	d1, w0
    6b34:	1100c003 	add	w3, w0, #0x30
    6b38:	38001443 	strb	w3, [x2], #1
    6b3c:	eb01005f 	cmp	x2, x1
    6b40:	1f428020 	fmsub	d0, d1, d2, d0
    6b44:	54fffec1 	b.ne	6b1c <_dtoa_r+0xd8c>  // b.any
    6b48:	1e602800 	fadd	d0, d0, d0
    6b4c:	1e622010 	fcmpe	d0, d2
    6b50:	5400146c 	b.gt	6ddc <_dtoa_r+0x104c>
    6b54:	1e622000 	fcmp	d0, d2
    6b58:	54000041 	b.ne	6b60 <_dtoa_r+0xdd0>  // b.any
    6b5c:	37001400 	tbnz	w0, #0, 6ddc <_dtoa_r+0x104c>
    6b60:	aa1803f5 	mov	x21, x24
    6b64:	b9008bb6 	str	w22, [x29, #136]
    6b68:	aa0103f8 	mov	x24, x1
    6b6c:	17fffe2d 	b	6420 <_dtoa_r+0x690>
    6b70:	52800003 	mov	w3, #0x0                   	// #0
    6b74:	528000a2 	mov	w2, #0x5                   	// #5
    6b78:	aa1c03e1 	mov	x1, x28
    6b7c:	aa1303e0 	mov	x0, x19
    6b80:	94000762 	bl	8908 <__multadd>
    6b84:	aa0003e1 	mov	x1, x0
    6b88:	aa0003fc 	mov	x28, x0
    6b8c:	aa1703e0 	mov	x0, x23
    6b90:	9400093a 	bl	9078 <__mcmp>
    6b94:	7100001f 	cmp	w0, #0x0
    6b98:	54ffd64c 	b.gt	6660 <_dtoa_r+0x8d0>
    6b9c:	17fffe16 	b	63f4 <_dtoa_r+0x664>
    6ba0:	aa1703e1 	mov	x1, x23
    6ba4:	b9007ba4 	str	w4, [x29, #120]
    6ba8:	b90083a6 	str	w6, [x29, #128]
    6bac:	2a1c03e2 	mov	w2, w28
    6bb0:	aa1303e0 	mov	x0, x19
    6bb4:	94000897 	bl	8e10 <__pow5mult>
    6bb8:	b9407ba4 	ldr	w4, [x29, #120]
    6bbc:	aa0003f7 	mov	x23, x0
    6bc0:	b94083a6 	ldr	w6, [x29, #128]
    6bc4:	17fffdd7 	b	6320 <_dtoa_r+0x590>
    6bc8:	b940a3a0 	ldr	w0, [x29, #160]
    6bcc:	34ffcf20 	cbz	w0, 65b0 <_dtoa_r+0x820>
    6bd0:	b9407fa2 	ldr	w2, [x29, #124]
    6bd4:	7100005f 	cmp	w2, #0x0
    6bd8:	54ffb5ed 	b.le	6294 <_dtoa_r+0x504>
    6bdc:	1e649001 	fmov	d1, #1.000000000000000000e+001
    6be0:	11000421 	add	w1, w1, #0x1
    6be4:	1e639002 	fmov	d2, #7.000000000000000000e+000
    6be8:	510006c0 	sub	w0, w22, #0x1
    6bec:	1e610800 	fmul	d0, d0, d1
    6bf0:	1e620021 	scvtf	d1, w1
    6bf4:	b9008ba0 	str	w0, [x29, #136]
    6bf8:	52bf9803 	mov	w3, #0xfcc00000            	// #-54525952
    6bfc:	1f410801 	fmadd	d1, d0, d1, d2
    6c00:	9e660020 	fmov	x0, d1
    6c04:	d360fc01 	lsr	x1, x0, #32
    6c08:	0b030021 	add	w1, w1, w3
    6c0c:	b3607c20 	bfi	x0, x1, #32, #32
    6c10:	17fffd71 	b	61d4 <_dtoa_r+0x444>
    6c14:	9e670340 	fmov	d0, x26
    6c18:	52800041 	mov	w1, #0x2                   	// #2
    6c1c:	17fffd5d 	b	6190 <_dtoa_r+0x400>
    6c20:	290e9ba4 	stp	w4, w6, [x29, #116]
    6c24:	aa1b03e1 	mov	x1, x27
    6c28:	aa1303e0 	mov	x0, x19
    6c2c:	94000879 	bl	8e10 <__pow5mult>
    6c30:	aa1703e2 	mov	x2, x23
    6c34:	aa0003e1 	mov	x1, x0
    6c38:	aa0003fb 	mov	x27, x0
    6c3c:	aa1303e0 	mov	x0, x19
    6c40:	94000800 	bl	8c40 <__multiply>
    6c44:	aa0003e2 	mov	x2, x0
    6c48:	aa1703e1 	mov	x1, x23
    6c4c:	f90043a2 	str	x2, [x29, #128]
    6c50:	aa1303e0 	mov	x0, x19
    6c54:	94000725 	bl	88e8 <_Bfree>
    6c58:	f94043a2 	ldr	x2, [x29, #128]
    6c5c:	294e9ba4 	ldp	w4, w6, [x29, #116]
    6c60:	aa0203f7 	mov	x23, x2
    6c64:	34ffb5fc 	cbz	w28, 6320 <_dtoa_r+0x590>
    6c68:	17fffda4 	b	62f8 <_dtoa_r+0x568>
    6c6c:	b9407ba1 	ldr	w1, [x29, #120]
    6c70:	34000821 	cbz	w1, 6d74 <_dtoa_r+0xfe4>
    6c74:	1110cc00 	add	w0, w0, #0x433
    6c78:	b9008ba6 	str	w6, [x29, #136]
    6c7c:	0b000084 	add	w4, w4, w0
    6c80:	2a1c03e2 	mov	w2, w28
    6c84:	0b0000c6 	add	w6, w6, w0
    6c88:	17fffe28 	b	6528 <_dtoa_r+0x798>
    6c8c:	b94093a1 	ldr	w1, [x29, #144]
    6c90:	4b1c0040 	sub	w0, w2, w28
    6c94:	2a0203fc 	mov	w28, w2
    6c98:	52800002 	mov	w2, #0x0                   	// #0
    6c9c:	0b000020 	add	w0, w1, w0
    6ca0:	b90093a0 	str	w0, [x29, #144]
    6ca4:	17fffe1a 	b	650c <_dtoa_r+0x77c>
    6ca8:	52800600 	mov	w0, #0x30                  	// #48
    6cac:	39000300 	strb	w0, [x24]
    6cb0:	b9408ba0 	ldr	w0, [x29, #136]
    6cb4:	aa1803e2 	mov	x2, x24
    6cb8:	11000400 	add	w0, w0, #0x1
    6cbc:	b9008ba0 	str	w0, [x29, #136]
    6cc0:	385ff020 	ldurb	w0, [x1, #-1]
    6cc4:	17fffe29 	b	6568 <_dtoa_r+0x7d8>
    6cc8:	1e613841 	fsub	d1, d2, d1
    6ccc:	1e602030 	fcmpe	d1, d0
    6cd0:	5400006c 	b.gt	6cdc <_dtoa_r+0xf4c>
    6cd4:	17fffd70 	b	6294 <_dtoa_r+0x504>
    6cd8:	aa0203e1 	mov	x1, x2
    6cdc:	385ff020 	ldurb	w0, [x1, #-1]
    6ce0:	d1000422 	sub	x2, x1, #0x1
    6ce4:	7100c01f 	cmp	w0, #0x30
    6ce8:	54ffff80 	b.eq	6cd8 <_dtoa_r+0xf48>  // b.none
    6cec:	17fffd67 	b	6288 <_dtoa_r+0x4f8>
    6cf0:	52800620 	mov	w0, #0x31                  	// #49
    6cf4:	110006c1 	add	w1, w22, #0x1
    6cf8:	39000300 	strb	w0, [x24]
    6cfc:	b9008ba1 	str	w1, [x29, #136]
    6d00:	17ffff46 	b	6a18 <_dtoa_r+0xc88>
    6d04:	aa1803f5 	mov	x21, x24
    6d08:	aa1a03f8 	mov	x24, x26
    6d0c:	17fffdc5 	b	6420 <_dtoa_r+0x690>
    6d10:	aa1803f5 	mov	x21, x24
    6d14:	b9008bb6 	str	w22, [x29, #136]
    6d18:	aa0203f8 	mov	x24, x2
    6d1c:	17fffdc1 	b	6420 <_dtoa_r+0x690>
    6d20:	540000c1 	b.ne	6d38 <_dtoa_r+0xfa8>  // b.any
    6d24:	f9404fa0 	ldr	x0, [x29, #152]
    6d28:	3707e6c0 	tbnz	w0, #0, 6a00 <_dtoa_r+0xc70>
    6d2c:	14000003 	b	6d38 <_dtoa_r+0xfa8>
    6d30:	385ff001 	ldurb	w1, [x0, #-1]
    6d34:	aa0003fa 	mov	x26, x0
    6d38:	d1000740 	sub	x0, x26, #0x1
    6d3c:	7100c03f 	cmp	w1, #0x30
    6d40:	54ffff80 	b.eq	6d30 <_dtoa_r+0xfa0>  // b.none
    6d44:	b9008bb6 	str	w22, [x29, #136]
    6d48:	17ffff34 	b	6a18 <_dtoa_r+0xc88>
    6d4c:	f94053a0 	ldr	x0, [x29, #160]
    6d50:	7100007f 	cmp	w3, #0x0
    6d54:	9100041a 	add	x26, x0, #0x1
    6d58:	5400064c 	b.gt	6e20 <_dtoa_r+0x1090>
    6d5c:	aa1b03f5 	mov	x21, x27
    6d60:	394263a1 	ldrb	w1, [x29, #152]
    6d64:	a94a6fa0 	ldp	x0, x27, [x29, #160]
    6d68:	39000001 	strb	w1, [x0]
    6d6c:	b9008bb6 	str	w22, [x29, #136]
    6d70:	17ffff2a 	b	6a18 <_dtoa_r+0xc88>
    6d74:	b940bba1 	ldr	w1, [x29, #184]
    6d78:	528006c0 	mov	w0, #0x36                  	// #54
    6d7c:	b9008ba6 	str	w6, [x29, #136]
    6d80:	2a1c03e2 	mov	w2, w28
    6d84:	4b010000 	sub	w0, w0, w1
    6d88:	0b000084 	add	w4, w4, w0
    6d8c:	0b0000c6 	add	w6, w6, w0
    6d90:	17fffde6 	b	6528 <_dtoa_r+0x798>
    6d94:	b9400b61 	ldr	w1, [x27, #8]
    6d98:	aa1303e0 	mov	x0, x19
    6d9c:	940006a9 	bl	8840 <_Balloc>
    6da0:	aa0003e3 	mov	x3, x0
    6da4:	b9801762 	ldrsw	x2, [x27, #20]
    6da8:	91004361 	add	x1, x27, #0x10
    6dac:	f90057a3 	str	x3, [x29, #168]
    6db0:	91004000 	add	x0, x0, #0x10
    6db4:	91000842 	add	x2, x2, #0x2
    6db8:	d37ef442 	lsl	x2, x2, #2
    6dbc:	94000641 	bl	86c0 <memcpy>
    6dc0:	f94057a3 	ldr	x3, [x29, #168]
    6dc4:	52800022 	mov	w2, #0x1                   	// #1
    6dc8:	aa1303e0 	mov	x0, x19
    6dcc:	aa0303e1 	mov	x1, x3
    6dd0:	9400085a 	bl	8f38 <__lshift>
    6dd4:	f90057a0 	str	x0, [x29, #168]
    6dd8:	17fffe59 	b	673c <_dtoa_r+0x9ac>
    6ddc:	385ff020 	ldurb	w0, [x1, #-1]
    6de0:	b9008bb6 	str	w22, [x29, #136]
    6de4:	17fffdde 	b	655c <_dtoa_r+0x7cc>
    6de8:	b9409ba0 	ldr	w0, [x29, #152]
    6dec:	7100e41f 	cmp	w0, #0x39
    6df0:	54000380 	b.eq	6e60 <_dtoa_r+0x10d0>  // b.none
    6df4:	b9409ba0 	ldr	w0, [x29, #152]
    6df8:	aa1b03f5 	mov	x21, x27
    6dfc:	a94a6fa1 	ldp	x1, x27, [x29, #160]
    6e00:	11000400 	add	w0, w0, #0x1
    6e04:	aa0403fa 	mov	x26, x4
    6e08:	39000020 	strb	w0, [x1]
    6e0c:	b9008bb6 	str	w22, [x29, #136]
    6e10:	17ffff02 	b	6a18 <_dtoa_r+0xc88>
    6e14:	aa1b03f5 	mov	x21, x27
    6e18:	f94057bb 	ldr	x27, [x29, #168]
    6e1c:	17fffeea 	b	69c4 <_dtoa_r+0xc34>
    6e20:	52800022 	mov	w2, #0x1                   	// #1
    6e24:	aa1703e1 	mov	x1, x23
    6e28:	aa1303e0 	mov	x0, x19
    6e2c:	94000843 	bl	8f38 <__lshift>
    6e30:	aa1c03e1 	mov	x1, x28
    6e34:	aa0003f7 	mov	x23, x0
    6e38:	94000890 	bl	9078 <__mcmp>
    6e3c:	7100001f 	cmp	w0, #0x0
    6e40:	540005ad 	b.le	6ef4 <_dtoa_r+0x1164>
    6e44:	b9409ba0 	ldr	w0, [x29, #152]
    6e48:	7100e41f 	cmp	w0, #0x39
    6e4c:	540000c0 	b.eq	6e64 <_dtoa_r+0x10d4>  // b.none
    6e50:	b94097a0 	ldr	w0, [x29, #148]
    6e54:	1100c400 	add	w0, w0, #0x31
    6e58:	b9009ba0 	str	w0, [x29, #152]
    6e5c:	17ffffc0 	b	6d5c <_dtoa_r+0xfcc>
    6e60:	aa0403fa 	mov	x26, x4
    6e64:	aa1b03f5 	mov	x21, x27
    6e68:	52800720 	mov	w0, #0x39                  	// #57
    6e6c:	a94a6fa1 	ldp	x1, x27, [x29, #160]
    6e70:	39000020 	strb	w0, [x1]
    6e74:	52800721 	mov	w1, #0x39                  	// #57
    6e78:	17fffee2 	b	6a00 <_dtoa_r+0xc70>
    6e7c:	b9409ba2 	ldr	w2, [x29, #152]
    6e80:	f94053a1 	ldr	x1, [x29, #160]
    6e84:	7100e45f 	cmp	w2, #0x39
    6e88:	9100043a 	add	x26, x1, #0x1
    6e8c:	54fffec0 	b.eq	6e64 <_dtoa_r+0x10d4>  // b.none
    6e90:	295203a3 	ldp	w3, w0, [x29, #144]
    6e94:	aa1b03f5 	mov	x21, x27
    6e98:	b9008bb6 	str	w22, [x29, #136]
    6e9c:	1100c400 	add	w0, w0, #0x31
    6ea0:	7100007f 	cmp	w3, #0x0
    6ea4:	1a82c000 	csel	w0, w0, w2, gt
    6ea8:	f94057bb 	ldr	x27, [x29, #168]
    6eac:	39000020 	strb	w0, [x1]
    6eb0:	17fffeda 	b	6a18 <_dtoa_r+0xc88>
    6eb4:	52800041 	mov	w1, #0x2                   	// #2
    6eb8:	17fffcb6 	b	6190 <_dtoa_r+0x400>
    6ebc:	b9009ba4 	str	w4, [x29, #152]
    6ec0:	aa1b03e1 	mov	x1, x27
    6ec4:	b9407fa4 	ldr	w4, [x29, #124]
    6ec8:	52800003 	mov	w3, #0x0                   	// #0
    6ecc:	b900a3a4 	str	w4, [x29, #160]
    6ed0:	52800142 	mov	w2, #0xa                   	// #10
    6ed4:	aa1303e0 	mov	x0, x19
    6ed8:	9400068c 	bl	8908 <__multadd>
    6edc:	aa0003fb 	mov	x27, x0
    6ee0:	b9409ba4 	ldr	w4, [x29, #152]
    6ee4:	35ffa844 	cbnz	w4, 63ec <_dtoa_r+0x65c>
    6ee8:	17fffe0a 	b	6710 <_dtoa_r+0x980>
    6eec:	aa0203e1 	mov	x1, x2
    6ef0:	17ffff16 	b	6b48 <_dtoa_r+0xdb8>
    6ef4:	54fff341 	b.ne	6d5c <_dtoa_r+0xfcc>  // b.any
    6ef8:	f9404fa0 	ldr	x0, [x29, #152]
    6efc:	3607f300 	tbz	w0, #0, 6d5c <_dtoa_r+0xfcc>
    6f00:	17ffffd1 	b	6e44 <_dtoa_r+0x10b4>
    6f04:	f240cf5f 	tst	x26, #0xfffffffffffff
    6f08:	54ffbd20 	b.eq	66ac <_dtoa_r+0x91c>  // b.none
    6f0c:	17fffd11 	b	6350 <_dtoa_r+0x5c0>
    6f10:	aa1803f5 	mov	x21, x24
    6f14:	aa1a03f8 	mov	x24, x26
    6f18:	17fffd3f 	b	6414 <_dtoa_r+0x684>
    6f1c:	52800001 	mov	w1, #0x0                   	// #0
    6f20:	17fffc7c 	b	6110 <_dtoa_r+0x380>
    6f24:	54ffa340 	b.eq	638c <_dtoa_r+0x5fc>  // b.none
    6f28:	52800781 	mov	w1, #0x3c                  	// #60
    6f2c:	4b000020 	sub	w0, w1, w0
    6f30:	17fffd12 	b	6378 <_dtoa_r+0x5e8>
    6f34:	d503201f 	nop
    6f38:	636f4361 	.word	0x636f4361
    6f3c:	3fd287a7 	.word	0x3fd287a7
    6f40:	8b60c8b3 	.word	0x8b60c8b3
    6f44:	3fc68a28 	.word	0x3fc68a28
    6f48:	509f79fb 	.word	0x509f79fb
    6f4c:	3fd34413 	.word	0x3fd34413

0000000000006f50 <__sflush_r>:
    6f50:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    6f54:	910003fd 	mov	x29, sp
    6f58:	f9000bf3 	str	x19, [sp, #16]
    6f5c:	aa0103f3 	mov	x19, x1
    6f60:	f90017f6 	str	x22, [sp, #40]
    6f64:	aa0003f6 	mov	x22, x0
    6f68:	79c02020 	ldrsh	w0, [x1, #16]
    6f6c:	12003c01 	and	w1, w0, #0xffff
    6f70:	37180741 	tbnz	w1, #3, 7058 <__sflush_r+0x108>
    6f74:	32150000 	orr	w0, w0, #0x800
    6f78:	b9400a61 	ldr	w1, [x19, #8]
    6f7c:	79002260 	strh	w0, [x19, #16]
    6f80:	7100003f 	cmp	w1, #0x0
    6f84:	54000c2d 	b.le	7108 <__sflush_r+0x1b8>
    6f88:	f9402664 	ldr	x4, [x19, #72]
    6f8c:	b4000b04 	cbz	x4, 70ec <__sflush_r+0x19c>
    6f90:	f9401a61 	ldr	x1, [x19, #48]
    6f94:	12003c03 	and	w3, w0, #0xffff
    6f98:	f9000fb4 	str	x20, [x29, #24]
    6f9c:	b94002d4 	ldr	w20, [x22]
    6fa0:	b90002df 	str	wzr, [x22]
    6fa4:	37600f23 	tbnz	w3, #12, 7188 <__sflush_r+0x238>
    6fa8:	52800023 	mov	w3, #0x1                   	// #1
    6fac:	d2800002 	mov	x2, #0x0                   	// #0
    6fb0:	aa1603e0 	mov	x0, x22
    6fb4:	d63f0080 	blr	x4
    6fb8:	b100041f 	cmn	x0, #0x1
    6fbc:	54000ae0 	b.eq	7118 <__sflush_r+0x1c8>  // b.none
    6fc0:	79402263 	ldrh	w3, [x19, #16]
    6fc4:	f9401a61 	ldr	x1, [x19, #48]
    6fc8:	f9402664 	ldr	x4, [x19, #72]
    6fcc:	361000e3 	tbz	w3, #2, 6fe8 <__sflush_r+0x98>
    6fd0:	f9402e62 	ldr	x2, [x19, #88]
    6fd4:	b9800a63 	ldrsw	x3, [x19, #8]
    6fd8:	cb030000 	sub	x0, x0, x3
    6fdc:	b4000062 	cbz	x2, 6fe8 <__sflush_r+0x98>
    6fe0:	b9807262 	ldrsw	x2, [x19, #112]
    6fe4:	cb020000 	sub	x0, x0, x2
    6fe8:	aa0003e2 	mov	x2, x0
    6fec:	52800003 	mov	w3, #0x0                   	// #0
    6ff0:	aa1603e0 	mov	x0, x22
    6ff4:	d63f0080 	blr	x4
    6ff8:	b100041f 	cmn	x0, #0x1
    6ffc:	54000a00 	b.eq	713c <__sflush_r+0x1ec>  // b.none
    7000:	79c02261 	ldrsh	w1, [x19, #16]
    7004:	f9400e62 	ldr	x2, [x19, #24]
    7008:	12147821 	and	w1, w1, #0xfffff7ff
    700c:	f9000262 	str	x2, [x19]
    7010:	b9000a7f 	str	wzr, [x19, #8]
    7014:	79002261 	strh	w1, [x19, #16]
    7018:	37600ac1 	tbnz	w1, #12, 7170 <__sflush_r+0x220>
    701c:	f9402e61 	ldr	x1, [x19, #88]
    7020:	b90002d4 	str	w20, [x22]
    7024:	b4000ae1 	cbz	x1, 7180 <__sflush_r+0x230>
    7028:	9101d260 	add	x0, x19, #0x74
    702c:	eb00003f 	cmp	x1, x0
    7030:	54000060 	b.eq	703c <__sflush_r+0xec>  // b.none
    7034:	aa1603e0 	mov	x0, x22
    7038:	94000190 	bl	7678 <_free_r>
    703c:	f9400fb4 	ldr	x20, [x29, #24]
    7040:	52800000 	mov	w0, #0x0                   	// #0
    7044:	f9002e7f 	str	xzr, [x19, #88]
    7048:	f9400bf3 	ldr	x19, [sp, #16]
    704c:	f94017f6 	ldr	x22, [sp, #40]
    7050:	a8c37bfd 	ldp	x29, x30, [sp], #48
    7054:	d65f03c0 	ret
    7058:	f90013b5 	str	x21, [x29, #32]
    705c:	f9400e75 	ldr	x21, [x19, #24]
    7060:	b4000455 	cbz	x21, 70e8 <__sflush_r+0x198>
    7064:	f9400260 	ldr	x0, [x19]
    7068:	52800002 	mov	w2, #0x0                   	// #0
    706c:	f9000fb4 	str	x20, [x29, #24]
    7070:	f240043f 	tst	x1, #0x3
    7074:	f9000275 	str	x21, [x19]
    7078:	cb150000 	sub	x0, x0, x21
    707c:	2a0003f4 	mov	w20, w0
    7080:	54000400 	b.eq	7100 <__sflush_r+0x1b0>  // b.none
    7084:	b9000e62 	str	w2, [x19, #12]
    7088:	7100001f 	cmp	w0, #0x0
    708c:	540000ac 	b.gt	70a0 <__sflush_r+0x150>
    7090:	1400003a 	b	7178 <__sflush_r+0x228>
    7094:	8b20c2b5 	add	x21, x21, w0, sxtw
    7098:	7100029f 	cmp	w20, #0x0
    709c:	540006ed 	b.le	7178 <__sflush_r+0x228>
    70a0:	f9401a61 	ldr	x1, [x19, #48]
    70a4:	2a1403e3 	mov	w3, w20
    70a8:	f9402264 	ldr	x4, [x19, #64]
    70ac:	aa1503e2 	mov	x2, x21
    70b0:	aa1603e0 	mov	x0, x22
    70b4:	d63f0080 	blr	x4
    70b8:	4b000294 	sub	w20, w20, w0
    70bc:	7100001f 	cmp	w0, #0x0
    70c0:	54fffeac 	b.gt	7094 <__sflush_r+0x144>
    70c4:	79402261 	ldrh	w1, [x19, #16]
    70c8:	12800000 	mov	w0, #0xffffffff            	// #-1
    70cc:	a941d7b4 	ldp	x20, x21, [x29, #24]
    70d0:	321a0021 	orr	w1, w1, #0x40
    70d4:	79002261 	strh	w1, [x19, #16]
    70d8:	f9400bf3 	ldr	x19, [sp, #16]
    70dc:	f94017f6 	ldr	x22, [sp, #40]
    70e0:	a8c37bfd 	ldp	x29, x30, [sp], #48
    70e4:	d65f03c0 	ret
    70e8:	f94013b5 	ldr	x21, [x29, #32]
    70ec:	52800000 	mov	w0, #0x0                   	// #0
    70f0:	f9400bf3 	ldr	x19, [sp, #16]
    70f4:	f94017f6 	ldr	x22, [sp, #40]
    70f8:	a8c37bfd 	ldp	x29, x30, [sp], #48
    70fc:	d65f03c0 	ret
    7100:	b9402262 	ldr	w2, [x19, #32]
    7104:	17ffffe0 	b	7084 <__sflush_r+0x134>
    7108:	b9407261 	ldr	w1, [x19, #112]
    710c:	7100003f 	cmp	w1, #0x0
    7110:	54fff3cc 	b.gt	6f88 <__sflush_r+0x38>
    7114:	17fffff6 	b	70ec <__sflush_r+0x19c>
    7118:	b94002c1 	ldr	w1, [x22]
    711c:	34fff521 	cbz	w1, 6fc0 <__sflush_r+0x70>
    7120:	7100743f 	cmp	w1, #0x1d
    7124:	7a561824 	ccmp	w1, #0x16, #0x4, ne  // ne = any
    7128:	540003e1 	b.ne	71a4 <__sflush_r+0x254>  // b.any
    712c:	b90002d4 	str	w20, [x22]
    7130:	52800000 	mov	w0, #0x0                   	// #0
    7134:	f9400fb4 	ldr	x20, [x29, #24]
    7138:	17ffffee 	b	70f0 <__sflush_r+0x1a0>
    713c:	b94002c2 	ldr	w2, [x22]
    7140:	79c02261 	ldrsh	w1, [x19, #16]
    7144:	7100005f 	cmp	w2, #0x0
    7148:	7a5d1844 	ccmp	w2, #0x1d, #0x4, ne  // ne = any
    714c:	7a561844 	ccmp	w2, #0x16, #0x4, ne  // ne = any
    7150:	54000221 	b.ne	7194 <__sflush_r+0x244>  // b.any
    7154:	f9400e63 	ldr	x3, [x19, #24]
    7158:	12147821 	and	w1, w1, #0xfffff7ff
    715c:	f9000263 	str	x3, [x19]
    7160:	b9000a7f 	str	wzr, [x19, #8]
    7164:	79002261 	strh	w1, [x19, #16]
    7168:	3667f5a1 	tbz	w1, #12, 701c <__sflush_r+0xcc>
    716c:	35fff582 	cbnz	w2, 701c <__sflush_r+0xcc>
    7170:	f9004a60 	str	x0, [x19, #144]
    7174:	17ffffaa 	b	701c <__sflush_r+0xcc>
    7178:	a941d7b4 	ldp	x20, x21, [x29, #24]
    717c:	17ffffdc 	b	70ec <__sflush_r+0x19c>
    7180:	f9400fb4 	ldr	x20, [x29, #24]
    7184:	17ffffda 	b	70ec <__sflush_r+0x19c>
    7188:	f9404a60 	ldr	x0, [x19, #144]
    718c:	3617f2e3 	tbz	w3, #2, 6fe8 <__sflush_r+0x98>
    7190:	17ffff90 	b	6fd0 <__sflush_r+0x80>
    7194:	321a0021 	orr	w1, w1, #0x40
    7198:	f9400fb4 	ldr	x20, [x29, #24]
    719c:	79002261 	strh	w1, [x19, #16]
    71a0:	17ffffd4 	b	70f0 <__sflush_r+0x1a0>
    71a4:	79402261 	ldrh	w1, [x19, #16]
    71a8:	f9400fb4 	ldr	x20, [x29, #24]
    71ac:	321a0021 	orr	w1, w1, #0x40
    71b0:	79002261 	strh	w1, [x19, #16]
    71b4:	17ffffcf 	b	70f0 <__sflush_r+0x1a0>

00000000000071b8 <_fflush_r>:
    71b8:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    71bc:	910003fd 	mov	x29, sp
    71c0:	f9000bf3 	str	x19, [sp, #16]
    71c4:	aa0003f3 	mov	x19, x0
    71c8:	b4000060 	cbz	x0, 71d4 <_fflush_r+0x1c>
    71cc:	b9405002 	ldr	w2, [x0, #80]
    71d0:	340000e2 	cbz	w2, 71ec <_fflush_r+0x34>
    71d4:	79c02020 	ldrsh	w0, [x1, #16]
    71d8:	35000140 	cbnz	w0, 7200 <_fflush_r+0x48>
    71dc:	f9400bf3 	ldr	x19, [sp, #16]
    71e0:	52800000 	mov	w0, #0x0                   	// #0
    71e4:	a8c37bfd 	ldp	x29, x30, [sp], #48
    71e8:	d65f03c0 	ret
    71ec:	f90017a1 	str	x1, [x29, #40]
    71f0:	940000c6 	bl	7508 <__sinit>
    71f4:	f94017a1 	ldr	x1, [x29, #40]
    71f8:	79c02020 	ldrsh	w0, [x1, #16]
    71fc:	34ffff00 	cbz	w0, 71dc <_fflush_r+0x24>
    7200:	aa1303e0 	mov	x0, x19
    7204:	f9400bf3 	ldr	x19, [sp, #16]
    7208:	a8c37bfd 	ldp	x29, x30, [sp], #48
    720c:	17ffff51 	b	6f50 <__sflush_r>

0000000000007210 <fflush>:
    7210:	b40000a0 	cbz	x0, 7224 <fflush+0x14>
    7214:	d0000022 	adrp	x2, d000 <__trunctfdf2+0x290>
    7218:	aa0003e1 	mov	x1, x0
    721c:	f943a840 	ldr	x0, [x2, #1872]
    7220:	17ffffe6 	b	71b8 <_fflush_r>
    7224:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    7228:	90000001 	adrp	x1, 7000 <__sflush_r+0xb0>
    722c:	9106e021 	add	x1, x1, #0x1b8
    7230:	f9412000 	ldr	x0, [x0, #576]
    7234:	14000201 	b	7a38 <_fwalk_reent>

0000000000007238 <__fp_lock>:
    7238:	52800000 	mov	w0, #0x0                   	// #0
    723c:	d65f03c0 	ret

0000000000007240 <_cleanup_r>:
    7240:	90000021 	adrp	x1, b000 <_vfiprintf_r+0x1390>
    7244:	911be021 	add	x1, x1, #0x6f8
    7248:	140001fc 	b	7a38 <_fwalk_reent>
    724c:	d503201f 	nop

0000000000007250 <__sinit.part.1>:
    7250:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
    7254:	52800063 	mov	w3, #0x3                   	// #3
    7258:	52800081 	mov	w1, #0x4                   	// #4
    725c:	910003fd 	mov	x29, sp
    7260:	a9025bf5 	stp	x21, x22, [sp, #32]
    7264:	aa0003f5 	mov	x21, x0
    7268:	a90153f3 	stp	x19, x20, [sp, #16]
    726c:	9114e2a2 	add	x2, x21, #0x538
    7270:	a90363f7 	stp	x23, x24, [sp, #48]
    7274:	90000000 	adrp	x0, 7000 <__sflush_r+0xb0>
    7278:	f94006b3 	ldr	x19, [x21, #8]
    727c:	91090000 	add	x0, x0, #0x240
    7280:	f90023f9 	str	x25, [sp, #64]
    7284:	d0000018 	adrp	x24, 9000 <__lshift+0xc8>
    7288:	f9002ea0 	str	x0, [x21, #88]
    728c:	91029260 	add	x0, x19, #0xa4
    7290:	f90292bf 	str	xzr, [x21, #1312]
    7294:	911f8318 	add	x24, x24, #0x7e0
    7298:	b9052aa3 	str	w3, [x21, #1320]
    729c:	d0000017 	adrp	x23, 9000 <__lshift+0xc8>
    72a0:	f9029aa2 	str	x2, [x21, #1328]
    72a4:	d2800102 	mov	x2, #0x8                   	// #8
    72a8:	a9007e7f 	stp	xzr, xzr, [x19]
    72ac:	912122f7 	add	x23, x23, #0x848
    72b0:	b9001261 	str	w1, [x19, #16]
    72b4:	52800001 	mov	w1, #0x0                   	// #0
    72b8:	f9000e7f 	str	xzr, [x19, #24]
    72bc:	d0000016 	adrp	x22, 9000 <__lshift+0xc8>
    72c0:	b900227f 	str	wzr, [x19, #32]
    72c4:	912262d6 	add	x22, x22, #0x898
    72c8:	b9002a7f 	str	wzr, [x19, #40]
    72cc:	d0000019 	adrp	x25, 9000 <__lshift+0xc8>
    72d0:	b900ae7f 	str	wzr, [x19, #172]
    72d4:	911e2339 	add	x25, x25, #0x788
    72d8:	97ffee3a 	bl	2bc0 <memset>
    72dc:	f9400ab4 	ldr	x20, [x21, #16]
    72e0:	52800120 	mov	w0, #0x9                   	// #9
    72e4:	a9036673 	stp	x19, x25, [x19, #48]
    72e8:	a9045e78 	stp	x24, x23, [x19, #64]
    72ec:	72a00020 	movk	w0, #0x1, lsl #16
    72f0:	f9002a76 	str	x22, [x19, #80]
    72f4:	d2800102 	mov	x2, #0x8                   	// #8
    72f8:	a9007e9f 	stp	xzr, xzr, [x20]
    72fc:	52800001 	mov	w1, #0x0                   	// #0
    7300:	b9001280 	str	w0, [x20, #16]
    7304:	91029280 	add	x0, x20, #0xa4
    7308:	f9000e9f 	str	xzr, [x20, #24]
    730c:	b900229f 	str	wzr, [x20, #32]
    7310:	b9002a9f 	str	wzr, [x20, #40]
    7314:	b900ae9f 	str	wzr, [x20, #172]
    7318:	97ffee2a 	bl	2bc0 <memset>
    731c:	f9400eb3 	ldr	x19, [x21, #24]
    7320:	52800240 	mov	w0, #0x12                  	// #18
    7324:	a9036694 	stp	x20, x25, [x20, #48]
    7328:	a9045e98 	stp	x24, x23, [x20, #64]
    732c:	72a00040 	movk	w0, #0x2, lsl #16
    7330:	f9002a96 	str	x22, [x20, #80]
    7334:	d2800102 	mov	x2, #0x8                   	// #8
    7338:	a9007e7f 	stp	xzr, xzr, [x19]
    733c:	52800001 	mov	w1, #0x0                   	// #0
    7340:	b9001260 	str	w0, [x19, #16]
    7344:	91029260 	add	x0, x19, #0xa4
    7348:	f9000e7f 	str	xzr, [x19, #24]
    734c:	b900227f 	str	wzr, [x19, #32]
    7350:	b9002a7f 	str	wzr, [x19, #40]
    7354:	b900ae7f 	str	wzr, [x19, #172]
    7358:	97ffee1a 	bl	2bc0 <memset>
    735c:	a9036673 	stp	x19, x25, [x19, #48]
    7360:	a9045e78 	stp	x24, x23, [x19, #64]
    7364:	52800020 	mov	w0, #0x1                   	// #1
    7368:	f9002a76 	str	x22, [x19, #80]
    736c:	a94153f3 	ldp	x19, x20, [sp, #16]
    7370:	a94363f7 	ldp	x23, x24, [sp, #48]
    7374:	f94023f9 	ldr	x25, [sp, #64]
    7378:	b90052a0 	str	w0, [x21, #80]
    737c:	a9425bf5 	ldp	x21, x22, [sp, #32]
    7380:	a8c57bfd 	ldp	x29, x30, [sp], #80
    7384:	d65f03c0 	ret

0000000000007388 <__fp_unlock>:
    7388:	52800000 	mov	w0, #0x0                   	// #0
    738c:	d65f03c0 	ret

0000000000007390 <__sfmoreglue>:
    7390:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    7394:	52801602 	mov	w2, #0xb0                  	// #176
    7398:	910003fd 	mov	x29, sp
    739c:	a90153f3 	stp	x19, x20, [sp, #16]
    73a0:	51000434 	sub	w20, w1, #0x1
    73a4:	f90013f5 	str	x21, [sp, #32]
    73a8:	2a0103f5 	mov	w21, w1
    73ac:	9b227e94 	smull	x20, w20, w2
    73b0:	91032281 	add	x1, x20, #0xc8
    73b4:	94000277 	bl	7d90 <_malloc_r>
    73b8:	aa0003f3 	mov	x19, x0
    73bc:	b4000100 	cbz	x0, 73dc <__sfmoreglue+0x4c>
    73c0:	91006000 	add	x0, x0, #0x18
    73c4:	f900027f 	str	xzr, [x19]
    73c8:	b9000a75 	str	w21, [x19, #8]
    73cc:	9102c282 	add	x2, x20, #0xb0
    73d0:	f9000a60 	str	x0, [x19, #16]
    73d4:	52800001 	mov	w1, #0x0                   	// #0
    73d8:	97ffedfa 	bl	2bc0 <memset>
    73dc:	aa1303e0 	mov	x0, x19
    73e0:	f94013f5 	ldr	x21, [sp, #32]
    73e4:	a94153f3 	ldp	x19, x20, [sp, #16]
    73e8:	a8c37bfd 	ldp	x29, x30, [sp], #48
    73ec:	d65f03c0 	ret

00000000000073f0 <__sfp>:
    73f0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    73f4:	d0000021 	adrp	x1, d000 <__trunctfdf2+0x290>
    73f8:	910003fd 	mov	x29, sp
    73fc:	a90153f3 	stp	x19, x20, [sp, #16]
    7400:	f9412034 	ldr	x20, [x1, #576]
    7404:	f90013f5 	str	x21, [sp, #32]
    7408:	aa0003f5 	mov	x21, x0
    740c:	b9405280 	ldr	w0, [x20, #80]
    7410:	34000580 	cbz	w0, 74c0 <__sfp+0xd0>
    7414:	91148294 	add	x20, x20, #0x520
    7418:	b9400a80 	ldr	w0, [x20, #8]
    741c:	f9400a93 	ldr	x19, [x20, #16]
    7420:	7100001f 	cmp	w0, #0x0
    7424:	540001ed 	b.le	7460 <__sfp+0x70>
    7428:	79c02261 	ldrsh	w1, [x19, #16]
    742c:	34000221 	cbz	w1, 7470 <__sfp+0x80>
    7430:	51000400 	sub	w0, w0, #0x1
    7434:	91000401 	add	x1, x0, #0x1
    7438:	8b010420 	add	x0, x1, x1, lsl #1
    743c:	d37ef400 	lsl	x0, x0, #2
    7440:	cb010000 	sub	x0, x0, x1
    7444:	8b001260 	add	x0, x19, x0, lsl #4
    7448:	14000003 	b	7454 <__sfp+0x64>
    744c:	79c02261 	ldrsh	w1, [x19, #16]
    7450:	34000101 	cbz	w1, 7470 <__sfp+0x80>
    7454:	9102c273 	add	x19, x19, #0xb0
    7458:	eb00027f 	cmp	x19, x0
    745c:	54ffff81 	b.ne	744c <__sfp+0x5c>  // b.any
    7460:	f9400280 	ldr	x0, [x20]
    7464:	b4000340 	cbz	x0, 74cc <__sfp+0xdc>
    7468:	aa0003f4 	mov	x20, x0
    746c:	17ffffeb 	b	7418 <__sfp+0x28>
    7470:	129fffc0 	mov	w0, #0xffff0001            	// #-65535
    7474:	a9007e7f 	stp	xzr, xzr, [x19]
    7478:	b9001260 	str	w0, [x19, #16]
    747c:	d2800102 	mov	x2, #0x8                   	// #8
    7480:	f9000e7f 	str	xzr, [x19, #24]
    7484:	52800001 	mov	w1, #0x0                   	// #0
    7488:	b900227f 	str	wzr, [x19, #32]
    748c:	91029260 	add	x0, x19, #0xa4
    7490:	b9002a7f 	str	wzr, [x19, #40]
    7494:	b900ae7f 	str	wzr, [x19, #172]
    7498:	97ffedca 	bl	2bc0 <memset>
    749c:	f9002e7f 	str	xzr, [x19, #88]
    74a0:	b900627f 	str	wzr, [x19, #96]
    74a4:	f9003e7f 	str	xzr, [x19, #120]
    74a8:	b900827f 	str	wzr, [x19, #128]
    74ac:	aa1303e0 	mov	x0, x19
    74b0:	f94013f5 	ldr	x21, [sp, #32]
    74b4:	a94153f3 	ldp	x19, x20, [sp, #16]
    74b8:	a8c37bfd 	ldp	x29, x30, [sp], #48
    74bc:	d65f03c0 	ret
    74c0:	aa1403e0 	mov	x0, x20
    74c4:	97ffff63 	bl	7250 <__sinit.part.1>
    74c8:	17ffffd3 	b	7414 <__sfp+0x24>
    74cc:	52800081 	mov	w1, #0x4                   	// #4
    74d0:	aa1503e0 	mov	x0, x21
    74d4:	97ffffaf 	bl	7390 <__sfmoreglue>
    74d8:	f9000280 	str	x0, [x20]
    74dc:	b5fffc60 	cbnz	x0, 7468 <__sfp+0x78>
    74e0:	52800180 	mov	w0, #0xc                   	// #12
    74e4:	d2800013 	mov	x19, #0x0                   	// #0
    74e8:	b90002a0 	str	w0, [x21]
    74ec:	17fffff0 	b	74ac <__sfp+0xbc>

00000000000074f0 <_cleanup>:
    74f0:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    74f4:	90000021 	adrp	x1, b000 <_vfiprintf_r+0x1390>
    74f8:	911be021 	add	x1, x1, #0x6f8
    74fc:	f9412000 	ldr	x0, [x0, #576]
    7500:	1400014e 	b	7a38 <_fwalk_reent>
    7504:	d503201f 	nop

0000000000007508 <__sinit>:
    7508:	b9405001 	ldr	w1, [x0, #80]
    750c:	34000041 	cbz	w1, 7514 <__sinit+0xc>
    7510:	d65f03c0 	ret
    7514:	17ffff4f 	b	7250 <__sinit.part.1>

0000000000007518 <__sfp_lock_acquire>:
    7518:	d65f03c0 	ret
    751c:	d503201f 	nop

0000000000007520 <__sfp_lock_release>:
    7520:	d65f03c0 	ret
    7524:	d503201f 	nop

0000000000007528 <__sinit_lock_acquire>:
    7528:	d65f03c0 	ret
    752c:	d503201f 	nop

0000000000007530 <__sinit_lock_release>:
    7530:	d65f03c0 	ret
    7534:	d503201f 	nop

0000000000007538 <__fp_lock_all>:
    7538:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    753c:	90000001 	adrp	x1, 7000 <__sflush_r+0xb0>
    7540:	9108e021 	add	x1, x1, #0x238
    7544:	f943a800 	ldr	x0, [x0, #1872]
    7548:	1400010c 	b	7978 <_fwalk>
    754c:	d503201f 	nop

0000000000007550 <__fp_unlock_all>:
    7550:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    7554:	90000001 	adrp	x1, 7000 <__sflush_r+0xb0>
    7558:	910e2021 	add	x1, x1, #0x388
    755c:	f943a800 	ldr	x0, [x0, #1872]
    7560:	14000106 	b	7978 <_fwalk>
    7564:	00000000 	.inst	0x00000000 ; undefined

0000000000007568 <_malloc_trim_r>:
    7568:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    756c:	910003fd 	mov	x29, sp
    7570:	a9025bf5 	stp	x21, x22, [sp, #32]
    7574:	d0000035 	adrp	x21, d000 <__trunctfdf2+0x290>
    7578:	913d22b5 	add	x21, x21, #0xf48
    757c:	a90153f3 	stp	x19, x20, [sp, #16]
    7580:	aa0003f6 	mov	x22, x0
    7584:	aa0103f3 	mov	x19, x1
    7588:	940004aa 	bl	8830 <__malloc_lock>
    758c:	f9400aa0 	ldr	x0, [x21, #16]
    7590:	f9400414 	ldr	x20, [x0, #8]
    7594:	927ef694 	and	x20, x20, #0xfffffffffffffffc
    7598:	cb130293 	sub	x19, x20, x19
    759c:	913f7e73 	add	x19, x19, #0xfdf
    75a0:	9274ce73 	and	x19, x19, #0xfffffffffffff000
    75a4:	d1400673 	sub	x19, x19, #0x1, lsl #12
    75a8:	f13ffe7f 	cmp	x19, #0xfff
    75ac:	5400010d 	b.le	75cc <_malloc_trim_r+0x64>
    75b0:	d2800001 	mov	x1, #0x0                   	// #0
    75b4:	aa1603e0 	mov	x0, x22
    75b8:	94000840 	bl	96b8 <_sbrk_r>
    75bc:	f9400aa1 	ldr	x1, [x21, #16]
    75c0:	8b140021 	add	x1, x1, x20
    75c4:	eb01001f 	cmp	x0, x1
    75c8:	54000100 	b.eq	75e8 <_malloc_trim_r+0x80>  // b.none
    75cc:	aa1603e0 	mov	x0, x22
    75d0:	9400049a 	bl	8838 <__malloc_unlock>
    75d4:	52800000 	mov	w0, #0x0                   	// #0
    75d8:	a94153f3 	ldp	x19, x20, [sp, #16]
    75dc:	a9425bf5 	ldp	x21, x22, [sp, #32]
    75e0:	a8c37bfd 	ldp	x29, x30, [sp], #48
    75e4:	d65f03c0 	ret
    75e8:	cb1303e1 	neg	x1, x19
    75ec:	aa1603e0 	mov	x0, x22
    75f0:	94000832 	bl	96b8 <_sbrk_r>
    75f4:	b100041f 	cmn	x0, #0x1
    75f8:	54000200 	b.eq	7638 <_malloc_trim_r+0xd0>  // b.none
    75fc:	f00000e2 	adrp	x2, 26000 <blue.21472+0x3d40>
    7600:	f9400aa3 	ldr	x3, [x21, #16]
    7604:	cb130294 	sub	x20, x20, x19
    7608:	aa1603e0 	mov	x0, x22
    760c:	b942d841 	ldr	w1, [x2, #728]
    7610:	b2400294 	orr	x20, x20, #0x1
    7614:	f9000474 	str	x20, [x3, #8]
    7618:	4b130033 	sub	w19, w1, w19
    761c:	b902d853 	str	w19, [x2, #728]
    7620:	94000486 	bl	8838 <__malloc_unlock>
    7624:	52800020 	mov	w0, #0x1                   	// #1
    7628:	a94153f3 	ldp	x19, x20, [sp, #16]
    762c:	a9425bf5 	ldp	x21, x22, [sp, #32]
    7630:	a8c37bfd 	ldp	x29, x30, [sp], #48
    7634:	d65f03c0 	ret
    7638:	d2800001 	mov	x1, #0x0                   	// #0
    763c:	aa1603e0 	mov	x0, x22
    7640:	9400081e 	bl	96b8 <_sbrk_r>
    7644:	f9400aa2 	ldr	x2, [x21, #16]
    7648:	cb020001 	sub	x1, x0, x2
    764c:	f1007c3f 	cmp	x1, #0x1f
    7650:	54fffbed 	b.le	75cc <_malloc_trim_r+0x64>
    7654:	f0000024 	adrp	x4, e000 <__malloc_av_+0xb8>
    7658:	b2400021 	orr	x1, x1, #0x1
    765c:	f00000e3 	adrp	x3, 26000 <blue.21472+0x3d40>
    7660:	f9000441 	str	x1, [x2, #8]
    7664:	f943ac81 	ldr	x1, [x4, #1880]
    7668:	cb010000 	sub	x0, x0, x1
    766c:	b902d860 	str	w0, [x3, #728]
    7670:	17ffffd7 	b	75cc <_malloc_trim_r+0x64>
    7674:	d503201f 	nop

0000000000007678 <_free_r>:
    7678:	b40008a1 	cbz	x1, 778c <_free_r+0x114>
    767c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    7680:	910003fd 	mov	x29, sp
    7684:	a90153f3 	stp	x19, x20, [sp, #16]
    7688:	aa0103f3 	mov	x19, x1
    768c:	aa0003f4 	mov	x20, x0
    7690:	94000468 	bl	8830 <__malloc_lock>
    7694:	d1004262 	sub	x2, x19, #0x10
    7698:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    769c:	f85f8265 	ldur	x5, [x19, #-8]
    76a0:	913d2003 	add	x3, x0, #0xf48
    76a4:	927ff8a1 	and	x1, x5, #0xfffffffffffffffe
    76a8:	8b010044 	add	x4, x2, x1
    76ac:	f9400866 	ldr	x6, [x3, #16]
    76b0:	eb0400df 	cmp	x6, x4
    76b4:	f9400483 	ldr	x3, [x4, #8]
    76b8:	927ef463 	and	x3, x3, #0xfffffffffffffffc
    76bc:	540008a0 	b.eq	77d0 <_free_r+0x158>  // b.none
    76c0:	f9000483 	str	x3, [x4, #8]
    76c4:	8b030086 	add	x6, x4, x3
    76c8:	37000645 	tbnz	w5, #0, 7790 <_free_r+0x118>
    76cc:	f85f0267 	ldur	x7, [x19, #-16]
    76d0:	f94004c5 	ldr	x5, [x6, #8]
    76d4:	d0000026 	adrp	x6, d000 <__trunctfdf2+0x290>
    76d8:	cb070042 	sub	x2, x2, x7
    76dc:	8b070021 	add	x1, x1, x7
    76e0:	913d60c6 	add	x6, x6, #0xf58
    76e4:	924000a5 	and	x5, x5, #0x1
    76e8:	f9400847 	ldr	x7, [x2, #16]
    76ec:	eb0600ff 	cmp	x7, x6
    76f0:	54000c60 	b.eq	787c <_free_r+0x204>  // b.none
    76f4:	f9400c46 	ldr	x6, [x2, #24]
    76f8:	f9000ce6 	str	x6, [x7, #24]
    76fc:	f90008c7 	str	x7, [x6, #16]
    7700:	b40004e5 	cbz	x5, 779c <_free_r+0x124>
    7704:	b2400023 	orr	x3, x1, #0x1
    7708:	f9000443 	str	x3, [x2, #8]
    770c:	f8216841 	str	x1, [x2, x1]
    7710:	f107fc3f 	cmp	x1, #0x1ff
    7714:	540008e9 	b.ls	7830 <_free_r+0x1b8>  // b.plast
    7718:	d349fc23 	lsr	x3, x1, #9
    771c:	f100107f 	cmp	x3, #0x4
    7720:	54000c08 	b.hi	78a0 <_free_r+0x228>  // b.pmore
    7724:	d346fc23 	lsr	x3, x1, #6
    7728:	1100e464 	add	w4, w3, #0x39
    772c:	1100e065 	add	w5, w3, #0x38
    7730:	531f7884 	lsl	w4, w4, #1
    7734:	937d7c84 	sbfiz	x4, x4, #3, #32
    7738:	913d2000 	add	x0, x0, #0xf48
    773c:	8b040004 	add	x4, x0, x4
    7740:	f85f0483 	ldr	x3, [x4], #-16
    7744:	eb03009f 	cmp	x4, x3
    7748:	54000ce0 	b.eq	78e4 <_free_r+0x26c>  // b.none
    774c:	d503201f 	nop
    7750:	f9400460 	ldr	x0, [x3, #8]
    7754:	927ef400 	and	x0, x0, #0xfffffffffffffffc
    7758:	eb01001f 	cmp	x0, x1
    775c:	54000c09 	b.ls	78dc <_free_r+0x264>  // b.plast
    7760:	f9400863 	ldr	x3, [x3, #16]
    7764:	eb03009f 	cmp	x4, x3
    7768:	54ffff41 	b.ne	7750 <_free_r+0xd8>  // b.any
    776c:	f9400c81 	ldr	x1, [x4, #24]
    7770:	a9010444 	stp	x4, x1, [x2, #16]
    7774:	aa1403e0 	mov	x0, x20
    7778:	f9000822 	str	x2, [x1, #16]
    777c:	f9000c82 	str	x2, [x4, #24]
    7780:	a94153f3 	ldp	x19, x20, [sp, #16]
    7784:	a8c27bfd 	ldp	x29, x30, [sp], #32
    7788:	1400042c 	b	8838 <__malloc_unlock>
    778c:	d65f03c0 	ret
    7790:	f94004c5 	ldr	x5, [x6, #8]
    7794:	924000a5 	and	x5, x5, #0x1
    7798:	b5fffb65 	cbnz	x5, 7704 <_free_r+0x8c>
    779c:	f9400885 	ldr	x5, [x4, #16]
    77a0:	8b030021 	add	x1, x1, x3
    77a4:	d0000023 	adrp	x3, d000 <__trunctfdf2+0x290>
    77a8:	913d6063 	add	x3, x3, #0xf58
    77ac:	b2400026 	orr	x6, x1, #0x1
    77b0:	eb0300bf 	cmp	x5, x3
    77b4:	54000a80 	b.eq	7904 <_free_r+0x28c>  // b.none
    77b8:	f9400c83 	ldr	x3, [x4, #24]
    77bc:	f9000ca3 	str	x3, [x5, #24]
    77c0:	f9000865 	str	x5, [x3, #16]
    77c4:	f9000446 	str	x6, [x2, #8]
    77c8:	f8216841 	str	x1, [x2, x1]
    77cc:	17ffffd1 	b	7710 <_free_r+0x98>
    77d0:	8b030021 	add	x1, x1, x3
    77d4:	370000e5 	tbnz	w5, #0, 77f0 <_free_r+0x178>
    77d8:	f85f0263 	ldur	x3, [x19, #-16]
    77dc:	cb030042 	sub	x2, x2, x3
    77e0:	8b030021 	add	x1, x1, x3
    77e4:	a9410c44 	ldp	x4, x3, [x2, #16]
    77e8:	f9000c83 	str	x3, [x4, #24]
    77ec:	f9000864 	str	x4, [x3, #16]
    77f0:	913d2000 	add	x0, x0, #0xf48
    77f4:	f0000023 	adrp	x3, e000 <__malloc_av_+0xb8>
    77f8:	b2400024 	orr	x4, x1, #0x1
    77fc:	f9000444 	str	x4, [x2, #8]
    7800:	f943b063 	ldr	x3, [x3, #1888]
    7804:	f9000802 	str	x2, [x0, #16]
    7808:	eb01007f 	cmp	x3, x1
    780c:	540000a8 	b.hi	7820 <_free_r+0x1a8>  // b.pmore
    7810:	f00000e1 	adrp	x1, 26000 <blue.21472+0x3d40>
    7814:	aa1403e0 	mov	x0, x20
    7818:	f9416821 	ldr	x1, [x1, #720]
    781c:	97ffff53 	bl	7568 <_malloc_trim_r>
    7820:	aa1403e0 	mov	x0, x20
    7824:	a94153f3 	ldp	x19, x20, [sp, #16]
    7828:	a8c27bfd 	ldp	x29, x30, [sp], #32
    782c:	14000403 	b	8838 <__malloc_unlock>
    7830:	d343fc24 	lsr	x4, x1, #3
    7834:	913d2000 	add	x0, x0, #0xf48
    7838:	11000481 	add	w1, w4, #0x1
    783c:	d2800023 	mov	x3, #0x1                   	// #1
    7840:	13027c84 	asr	w4, w4, #2
    7844:	531f7821 	lsl	w1, w1, #1
    7848:	f9400405 	ldr	x5, [x0, #8]
    784c:	9ac42063 	lsl	x3, x3, x4
    7850:	8b21cc01 	add	x1, x0, w1, sxtw #3
    7854:	aa050063 	orr	x3, x3, x5
    7858:	f9000403 	str	x3, [x0, #8]
    785c:	f85f0420 	ldr	x0, [x1], #-16
    7860:	a9010440 	stp	x0, x1, [x2, #16]
    7864:	f9000822 	str	x2, [x1, #16]
    7868:	f9000c02 	str	x2, [x0, #24]
    786c:	aa1403e0 	mov	x0, x20
    7870:	a94153f3 	ldp	x19, x20, [sp, #16]
    7874:	a8c27bfd 	ldp	x29, x30, [sp], #32
    7878:	140003f0 	b	8838 <__malloc_unlock>
    787c:	b5000765 	cbnz	x5, 7968 <_free_r+0x2f0>
    7880:	a9410085 	ldp	x5, x0, [x4, #16]
    7884:	f9000ca0 	str	x0, [x5, #24]
    7888:	8b010061 	add	x1, x3, x1
    788c:	b2400023 	orr	x3, x1, #0x1
    7890:	f9000805 	str	x5, [x0, #16]
    7894:	f9000443 	str	x3, [x2, #8]
    7898:	f8216841 	str	x1, [x2, x1]
    789c:	17ffffe1 	b	7820 <_free_r+0x1a8>
    78a0:	f100507f 	cmp	x3, #0x14
    78a4:	54000129 	b.ls	78c8 <_free_r+0x250>  // b.plast
    78a8:	f101507f 	cmp	x3, #0x54
    78ac:	54000388 	b.hi	791c <_free_r+0x2a4>  // b.pmore
    78b0:	d34cfc23 	lsr	x3, x1, #12
    78b4:	1101bc64 	add	w4, w3, #0x6f
    78b8:	1101b865 	add	w5, w3, #0x6e
    78bc:	531f7884 	lsl	w4, w4, #1
    78c0:	937d7c84 	sbfiz	x4, x4, #3, #32
    78c4:	17ffff9d 	b	7738 <_free_r+0xc0>
    78c8:	11017064 	add	w4, w3, #0x5c
    78cc:	11016c65 	add	w5, w3, #0x5b
    78d0:	531f7884 	lsl	w4, w4, #1
    78d4:	937d7c84 	sbfiz	x4, x4, #3, #32
    78d8:	17ffff98 	b	7738 <_free_r+0xc0>
    78dc:	aa0303e4 	mov	x4, x3
    78e0:	17ffffa3 	b	776c <_free_r+0xf4>
    78e4:	13027ca3 	asr	w3, w5, #2
    78e8:	f9400406 	ldr	x6, [x0, #8]
    78ec:	d2800025 	mov	x5, #0x1                   	// #1
    78f0:	aa0403e1 	mov	x1, x4
    78f4:	9ac320a3 	lsl	x3, x5, x3
    78f8:	aa060063 	orr	x3, x3, x6
    78fc:	f9000403 	str	x3, [x0, #8]
    7900:	17ffff9c 	b	7770 <_free_r+0xf8>
    7904:	913d2000 	add	x0, x0, #0xf48
    7908:	a9020802 	stp	x2, x2, [x0, #32]
    790c:	a9009446 	stp	x6, x5, [x2, #8]
    7910:	f9000c45 	str	x5, [x2, #24]
    7914:	f8216841 	str	x1, [x2, x1]
    7918:	17ffffc2 	b	7820 <_free_r+0x1a8>
    791c:	f105507f 	cmp	x3, #0x154
    7920:	540000e8 	b.hi	793c <_free_r+0x2c4>  // b.pmore
    7924:	d34ffc23 	lsr	x3, x1, #15
    7928:	1101e064 	add	w4, w3, #0x78
    792c:	1101dc65 	add	w5, w3, #0x77
    7930:	531f7884 	lsl	w4, w4, #1
    7934:	937d7c84 	sbfiz	x4, x4, #3, #32
    7938:	17ffff80 	b	7738 <_free_r+0xc0>
    793c:	f115507f 	cmp	x3, #0x554
    7940:	540000e8 	b.hi	795c <_free_r+0x2e4>  // b.pmore
    7944:	d352fc23 	lsr	x3, x1, #18
    7948:	1101f464 	add	w4, w3, #0x7d
    794c:	1101f065 	add	w5, w3, #0x7c
    7950:	531f7884 	lsl	w4, w4, #1
    7954:	937d7c84 	sbfiz	x4, x4, #3, #32
    7958:	17ffff78 	b	7738 <_free_r+0xc0>
    795c:	d280fe04 	mov	x4, #0x7f0                 	// #2032
    7960:	52800fc5 	mov	w5, #0x7e                  	// #126
    7964:	17ffff75 	b	7738 <_free_r+0xc0>
    7968:	b2400020 	orr	x0, x1, #0x1
    796c:	f9000440 	str	x0, [x2, #8]
    7970:	f9000081 	str	x1, [x4]
    7974:	17ffffab 	b	7820 <_free_r+0x1a8>

0000000000007978 <_fwalk>:
    7978:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    797c:	910003fd 	mov	x29, sp
    7980:	f90013f5 	str	x21, [sp, #32]
    7984:	b1148015 	adds	x21, x0, #0x520
    7988:	f9001bf7 	str	x23, [sp, #48]
    798c:	54000480 	b.eq	7a1c <_fwalk+0xa4>  // b.none
    7990:	f90017b6 	str	x22, [x29, #40]
    7994:	aa0103f6 	mov	x22, x1
    7998:	a90153b3 	stp	x19, x20, [x29, #16]
    799c:	52800017 	mov	w23, #0x0                   	// #0
    79a0:	b9400aa0 	ldr	w0, [x21, #8]
    79a4:	f9400ab3 	ldr	x19, [x21, #16]
    79a8:	7100001f 	cmp	w0, #0x0
    79ac:	5400026d 	b.le	79f8 <_fwalk+0x80>
    79b0:	51000400 	sub	w0, w0, #0x1
    79b4:	91000400 	add	x0, x0, #0x1
    79b8:	8b000414 	add	x20, x0, x0, lsl #1
    79bc:	d37ef694 	lsl	x20, x20, #2
    79c0:	cb000294 	sub	x20, x20, x0
    79c4:	8b141274 	add	x20, x19, x20, lsl #4
    79c8:	79402262 	ldrh	w2, [x19, #16]
    79cc:	aa1303e0 	mov	x0, x19
    79d0:	7100045f 	cmp	w2, #0x1
    79d4:	540000c9 	b.ls	79ec <_fwalk+0x74>  // b.plast
    79d8:	79c02661 	ldrsh	w1, [x19, #18]
    79dc:	3100043f 	cmn	w1, #0x1
    79e0:	54000060 	b.eq	79ec <_fwalk+0x74>  // b.none
    79e4:	d63f02c0 	blr	x22
    79e8:	2a0002f7 	orr	w23, w23, w0
    79ec:	9102c273 	add	x19, x19, #0xb0
    79f0:	eb14027f 	cmp	x19, x20
    79f4:	54fffea1 	b.ne	79c8 <_fwalk+0x50>  // b.any
    79f8:	f94002b5 	ldr	x21, [x21]
    79fc:	b5fffd35 	cbnz	x21, 79a0 <_fwalk+0x28>
    7a00:	2a1703e0 	mov	w0, w23
    7a04:	f94017b6 	ldr	x22, [x29, #40]
    7a08:	a94153b3 	ldp	x19, x20, [x29, #16]
    7a0c:	f94013f5 	ldr	x21, [sp, #32]
    7a10:	f9401bf7 	ldr	x23, [sp, #48]
    7a14:	a8c47bfd 	ldp	x29, x30, [sp], #64
    7a18:	d65f03c0 	ret
    7a1c:	52800017 	mov	w23, #0x0                   	// #0
    7a20:	f94013f5 	ldr	x21, [sp, #32]
    7a24:	2a1703e0 	mov	w0, w23
    7a28:	f9401bf7 	ldr	x23, [sp, #48]
    7a2c:	a8c47bfd 	ldp	x29, x30, [sp], #64
    7a30:	d65f03c0 	ret
    7a34:	d503201f 	nop

0000000000007a38 <_fwalk_reent>:
    7a38:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    7a3c:	910003fd 	mov	x29, sp
    7a40:	f90017f6 	str	x22, [sp, #40]
    7a44:	b1148016 	adds	x22, x0, #0x520
    7a48:	f9001ff8 	str	x24, [sp, #56]
    7a4c:	54000500 	b.eq	7aec <_fwalk_reent+0xb4>  // b.none
    7a50:	f90013b5 	str	x21, [x29, #32]
    7a54:	aa0003f5 	mov	x21, x0
    7a58:	f9001bb7 	str	x23, [x29, #48]
    7a5c:	aa0103f7 	mov	x23, x1
    7a60:	a90153b3 	stp	x19, x20, [x29, #16]
    7a64:	52800018 	mov	w24, #0x0                   	// #0
    7a68:	b9400ac2 	ldr	w2, [x22, #8]
    7a6c:	f9400ad3 	ldr	x19, [x22, #16]
    7a70:	7100005f 	cmp	w2, #0x0
    7a74:	5400028d 	b.le	7ac4 <_fwalk_reent+0x8c>
    7a78:	51000442 	sub	w2, w2, #0x1
    7a7c:	91000442 	add	x2, x2, #0x1
    7a80:	8b020454 	add	x20, x2, x2, lsl #1
    7a84:	d37ef694 	lsl	x20, x20, #2
    7a88:	cb020294 	sub	x20, x20, x2
    7a8c:	8b141274 	add	x20, x19, x20, lsl #4
    7a90:	79402262 	ldrh	w2, [x19, #16]
    7a94:	aa1303e1 	mov	x1, x19
    7a98:	aa1503e0 	mov	x0, x21
    7a9c:	7100045f 	cmp	w2, #0x1
    7aa0:	540000c9 	b.ls	7ab8 <_fwalk_reent+0x80>  // b.plast
    7aa4:	79c02662 	ldrsh	w2, [x19, #18]
    7aa8:	3100045f 	cmn	w2, #0x1
    7aac:	54000060 	b.eq	7ab8 <_fwalk_reent+0x80>  // b.none
    7ab0:	d63f02e0 	blr	x23
    7ab4:	2a000318 	orr	w24, w24, w0
    7ab8:	9102c273 	add	x19, x19, #0xb0
    7abc:	eb14027f 	cmp	x19, x20
    7ac0:	54fffe81 	b.ne	7a90 <_fwalk_reent+0x58>  // b.any
    7ac4:	f94002d6 	ldr	x22, [x22]
    7ac8:	b5fffd16 	cbnz	x22, 7a68 <_fwalk_reent+0x30>
    7acc:	2a1803e0 	mov	w0, w24
    7ad0:	f94013b5 	ldr	x21, [x29, #32]
    7ad4:	a94153b3 	ldp	x19, x20, [x29, #16]
    7ad8:	f9401bb7 	ldr	x23, [x29, #48]
    7adc:	f94017f6 	ldr	x22, [sp, #40]
    7ae0:	f9401ff8 	ldr	x24, [sp, #56]
    7ae4:	a8c47bfd 	ldp	x29, x30, [sp], #64
    7ae8:	d65f03c0 	ret
    7aec:	52800018 	mov	w24, #0x0                   	// #0
    7af0:	f94017f6 	ldr	x22, [sp, #40]
    7af4:	2a1803e0 	mov	w0, w24
    7af8:	f9401ff8 	ldr	x24, [sp, #56]
    7afc:	a8c47bfd 	ldp	x29, x30, [sp], #64
    7b00:	d65f03c0 	ret
    7b04:	00000000 	.inst	0x00000000 ; undefined

0000000000007b08 <_setlocale_r>:
    7b08:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    7b0c:	910003fd 	mov	x29, sp
    7b10:	f9000bf3 	str	x19, [sp, #16]
    7b14:	d0000033 	adrp	x19, d000 <__trunctfdf2+0x290>
    7b18:	b4000142 	cbz	x2, 7b40 <_setlocale_r+0x38>
    7b1c:	f9000fb4 	str	x20, [x29, #24]
    7b20:	d0000021 	adrp	x1, d000 <__trunctfdf2+0x290>
    7b24:	d0000033 	adrp	x19, d000 <__trunctfdf2+0x290>
    7b28:	91168021 	add	x1, x1, #0x5a0
    7b2c:	aa0203f4 	mov	x20, x2
    7b30:	aa0203e0 	mov	x0, x2
    7b34:	94000763 	bl	98c0 <strcmp>
    7b38:	350000c0 	cbnz	w0, 7b50 <_setlocale_r+0x48>
    7b3c:	f9400fb4 	ldr	x20, [x29, #24]
    7b40:	91148260 	add	x0, x19, #0x520
    7b44:	f9400bf3 	ldr	x19, [sp, #16]
    7b48:	a8c27bfd 	ldp	x29, x30, [sp], #32
    7b4c:	d65f03c0 	ret
    7b50:	91148261 	add	x1, x19, #0x520
    7b54:	aa1403e0 	mov	x0, x20
    7b58:	9400075a 	bl	98c0 <strcmp>
    7b5c:	34ffff00 	cbz	w0, 7b3c <_setlocale_r+0x34>
    7b60:	d0000021 	adrp	x1, d000 <__trunctfdf2+0x290>
    7b64:	aa1403e0 	mov	x0, x20
    7b68:	9115c021 	add	x1, x1, #0x570
    7b6c:	94000755 	bl	98c0 <strcmp>
    7b70:	34fffe60 	cbz	w0, 7b3c <_setlocale_r+0x34>
    7b74:	d2800000 	mov	x0, #0x0                   	// #0
    7b78:	f9400fb4 	ldr	x20, [x29, #24]
    7b7c:	17fffff2 	b	7b44 <_setlocale_r+0x3c>

0000000000007b80 <__locale_charset>:
    7b80:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    7b84:	913a8000 	add	x0, x0, #0xea0
    7b88:	d65f03c0 	ret
    7b8c:	d503201f 	nop

0000000000007b90 <__locale_mb_cur_max>:
    7b90:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    7b94:	b94ec000 	ldr	w0, [x0, #3776]
    7b98:	d65f03c0 	ret
    7b9c:	d503201f 	nop

0000000000007ba0 <__locale_msgcharset>:
    7ba0:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    7ba4:	913a8000 	add	x0, x0, #0xea0
    7ba8:	9100a000 	add	x0, x0, #0x28
    7bac:	d65f03c0 	ret

0000000000007bb0 <__locale_cjk_lang>:
    7bb0:	52800000 	mov	w0, #0x0                   	// #0
    7bb4:	d65f03c0 	ret

0000000000007bb8 <_localeconv_r>:
    7bb8:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    7bbc:	913a8000 	add	x0, x0, #0xea0
    7bc0:	91012000 	add	x0, x0, #0x48
    7bc4:	d65f03c0 	ret

0000000000007bc8 <setlocale>:
    7bc8:	d0000023 	adrp	x3, d000 <__trunctfdf2+0x290>
    7bcc:	aa0103e2 	mov	x2, x1
    7bd0:	2a0003e1 	mov	w1, w0
    7bd4:	f943a860 	ldr	x0, [x3, #1872]
    7bd8:	17ffffcc 	b	7b08 <_setlocale_r>
    7bdc:	d503201f 	nop

0000000000007be0 <localeconv>:
    7be0:	d0000020 	adrp	x0, d000 <__trunctfdf2+0x290>
    7be4:	913a8000 	add	x0, x0, #0xea0
    7be8:	91012000 	add	x0, x0, #0x48
    7bec:	d65f03c0 	ret

0000000000007bf0 <__swhatbuf_r>:
    7bf0:	a9b67bfd 	stp	x29, x30, [sp, #-160]!
    7bf4:	910003fd 	mov	x29, sp
    7bf8:	a90153f3 	stp	x19, x20, [sp, #16]
    7bfc:	aa0103f3 	mov	x19, x1
    7c00:	79c02421 	ldrsh	w1, [x1, #18]
    7c04:	aa0203f4 	mov	x20, x2
    7c08:	f90013f5 	str	x21, [sp, #32]
    7c0c:	aa0303f5 	mov	x21, x3
    7c10:	36f80241 	tbz	w1, #31, 7c58 <__swhatbuf_r+0x68>
    7c14:	79402260 	ldrh	w0, [x19, #16]
    7c18:	b90002bf 	str	wzr, [x21]
    7c1c:	37380100 	tbnz	w0, #7, 7c3c <__swhatbuf_r+0x4c>
    7c20:	d2808001 	mov	x1, #0x400                 	// #1024
    7c24:	f9000281 	str	x1, [x20]
    7c28:	52800000 	mov	w0, #0x0                   	// #0
    7c2c:	f94013f5 	ldr	x21, [sp, #32]
    7c30:	a94153f3 	ldp	x19, x20, [sp, #16]
    7c34:	a8ca7bfd 	ldp	x29, x30, [sp], #160
    7c38:	d65f03c0 	ret
    7c3c:	d2800801 	mov	x1, #0x40                  	// #64
    7c40:	f9000281 	str	x1, [x20]
    7c44:	52800000 	mov	w0, #0x0                   	// #0
    7c48:	f94013f5 	ldr	x21, [sp, #32]
    7c4c:	a94153f3 	ldp	x19, x20, [sp, #16]
    7c50:	a8ca7bfd 	ldp	x29, x30, [sp], #160
    7c54:	d65f03c0 	ret
    7c58:	9100e3a2 	add	x2, x29, #0x38
    7c5c:	94000f5b 	bl	b9c8 <_fstat_r>
    7c60:	37fffda0 	tbnz	w0, #31, 7c14 <__swhatbuf_r+0x24>
    7c64:	b9403fa1 	ldr	w1, [x29, #60]
    7c68:	d2808002 	mov	x2, #0x400                 	// #1024
    7c6c:	52810000 	mov	w0, #0x800                 	// #2048
    7c70:	12140c21 	and	w1, w1, #0xf000
    7c74:	7140083f 	cmp	w1, #0x2, lsl #12
    7c78:	1a9f17e1 	cset	w1, eq  // eq = none
    7c7c:	b90002a1 	str	w1, [x21]
    7c80:	f9000282 	str	x2, [x20]
    7c84:	a94153f3 	ldp	x19, x20, [sp, #16]
    7c88:	f94013f5 	ldr	x21, [sp, #32]
    7c8c:	a8ca7bfd 	ldp	x29, x30, [sp], #160
    7c90:	d65f03c0 	ret
    7c94:	d503201f 	nop

0000000000007c98 <__smakebuf_r>:
    7c98:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    7c9c:	910003fd 	mov	x29, sp
    7ca0:	79402023 	ldrh	w3, [x1, #16]
    7ca4:	f9000bf3 	str	x19, [sp, #16]
    7ca8:	aa0103f3 	mov	x19, x1
    7cac:	36080123 	tbz	w3, #1, 7cd0 <__smakebuf_r+0x38>
    7cb0:	9101dc20 	add	x0, x1, #0x77
    7cb4:	52800021 	mov	w1, #0x1                   	// #1
    7cb8:	f9000260 	str	x0, [x19]
    7cbc:	f9000e60 	str	x0, [x19, #24]
    7cc0:	b9002261 	str	w1, [x19, #32]
    7cc4:	f9400bf3 	ldr	x19, [sp, #16]
    7cc8:	a8c47bfd 	ldp	x29, x30, [sp], #64
    7ccc:	d65f03c0 	ret
    7cd0:	a901d7b4 	stp	x20, x21, [x29, #24]
    7cd4:	9100d3a3 	add	x3, x29, #0x34
    7cd8:	aa0003f4 	mov	x20, x0
    7cdc:	9100e3a2 	add	x2, x29, #0x38
    7ce0:	97ffffc4 	bl	7bf0 <__swhatbuf_r>
    7ce4:	2a0003f5 	mov	w21, w0
    7ce8:	f9401fa1 	ldr	x1, [x29, #56]
    7cec:	aa1403e0 	mov	x0, x20
    7cf0:	94000028 	bl	7d90 <_malloc_r>
    7cf4:	b4000340 	cbz	x0, 7d5c <__smakebuf_r+0xc4>
    7cf8:	79c02261 	ldrsh	w1, [x19, #16]
    7cfc:	90000002 	adrp	x2, 7000 <__sflush_r+0xb0>
    7d00:	b94037a3 	ldr	w3, [x29, #52]
    7d04:	91090042 	add	x2, x2, #0x240
    7d08:	f9401fa4 	ldr	x4, [x29, #56]
    7d0c:	32190021 	orr	w1, w1, #0x80
    7d10:	f9002e82 	str	x2, [x20, #88]
    7d14:	f9000260 	str	x0, [x19]
    7d18:	79002261 	strh	w1, [x19, #16]
    7d1c:	f9000e60 	str	x0, [x19, #24]
    7d20:	b9002264 	str	w4, [x19, #32]
    7d24:	350000e3 	cbnz	w3, 7d40 <__smakebuf_r+0xa8>
    7d28:	2a150021 	orr	w1, w1, w21
    7d2c:	79002261 	strh	w1, [x19, #16]
    7d30:	a941d7b4 	ldp	x20, x21, [x29, #24]
    7d34:	f9400bf3 	ldr	x19, [sp, #16]
    7d38:	a8c47bfd 	ldp	x29, x30, [sp], #64
    7d3c:	d65f03c0 	ret
    7d40:	79c02661 	ldrsh	w1, [x19, #18]
    7d44:	aa1403e0 	mov	x0, x20
    7d48:	94001074 	bl	bf18 <_isatty_r>
    7d4c:	79c02261 	ldrsh	w1, [x19, #16]
    7d50:	34fffec0 	cbz	w0, 7d28 <__smakebuf_r+0x90>
    7d54:	32000021 	orr	w1, w1, #0x1
    7d58:	17fffff4 	b	7d28 <__smakebuf_r+0x90>
    7d5c:	79c02260 	ldrsh	w0, [x19, #16]
    7d60:	37480140 	tbnz	w0, #9, 7d88 <__smakebuf_r+0xf0>
    7d64:	a941d7b4 	ldp	x20, x21, [x29, #24]
    7d68:	9101de61 	add	x1, x19, #0x77
    7d6c:	321f0000 	orr	w0, w0, #0x2
    7d70:	52800022 	mov	w2, #0x1                   	// #1
    7d74:	f9000261 	str	x1, [x19]
    7d78:	79002260 	strh	w0, [x19, #16]
    7d7c:	f9000e61 	str	x1, [x19, #24]
    7d80:	b9002262 	str	w2, [x19, #32]
    7d84:	17ffffd0 	b	7cc4 <__smakebuf_r+0x2c>
    7d88:	a941d7b4 	ldp	x20, x21, [x29, #24]
    7d8c:	17ffffce 	b	7cc4 <__smakebuf_r+0x2c>

0000000000007d90 <_malloc_r>:
    7d90:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
    7d94:	910003fd 	mov	x29, sp
    7d98:	a90153f3 	stp	x19, x20, [sp, #16]
    7d9c:	91005c34 	add	x20, x1, #0x17
    7da0:	a9025bf5 	stp	x21, x22, [sp, #32]
    7da4:	f100ba9f 	cmp	x20, #0x2e
    7da8:	aa0003f6 	mov	x22, x0
    7dac:	54000408 	b.hi	7e2c <_malloc_r+0x9c>  // b.pmore
    7db0:	f100803f 	cmp	x1, #0x20
    7db4:	540014c8 	b.hi	804c <_malloc_r+0x2bc>  // b.pmore
    7db8:	9400029e 	bl	8830 <__malloc_lock>
    7dbc:	d2800414 	mov	x20, #0x20                  	// #32
    7dc0:	d2800a01 	mov	x1, #0x50                  	// #80
    7dc4:	52800084 	mov	w4, #0x4                   	// #4
    7dc8:	d0000035 	adrp	x21, d000 <__trunctfdf2+0x290>
    7dcc:	913d22a0 	add	x0, x21, #0xf48
    7dd0:	8b010000 	add	x0, x0, x1
    7dd4:	11000884 	add	w4, w4, #0x2
    7dd8:	d1004000 	sub	x0, x0, #0x10
    7ddc:	f9400c01 	ldr	x1, [x0, #24]
    7de0:	eb00003f 	cmp	x1, x0
    7de4:	54000740 	b.eq	7ecc <_malloc_r+0x13c>  // b.none
    7de8:	a9409022 	ldp	x2, x4, [x1, #8]
    7dec:	91004033 	add	x19, x1, #0x10
    7df0:	f9400c23 	ldr	x3, [x1, #24]
    7df4:	aa1603e0 	mov	x0, x22
    7df8:	927ef442 	and	x2, x2, #0xfffffffffffffffc
    7dfc:	8b020021 	add	x1, x1, x2
    7e00:	f9400422 	ldr	x2, [x1, #8]
    7e04:	f9000c83 	str	x3, [x4, #24]
    7e08:	b2400042 	orr	x2, x2, #0x1
    7e0c:	f9000864 	str	x4, [x3, #16]
    7e10:	f9000422 	str	x2, [x1, #8]
    7e14:	94000289 	bl	8838 <__malloc_unlock>
    7e18:	aa1303e0 	mov	x0, x19
    7e1c:	a94153f3 	ldp	x19, x20, [sp, #16]
    7e20:	a9425bf5 	ldp	x21, x22, [sp, #32]
    7e24:	a8c67bfd 	ldp	x29, x30, [sp], #96
    7e28:	d65f03c0 	ret
    7e2c:	927cee94 	and	x20, x20, #0xfffffffffffffff0
    7e30:	b2407be2 	mov	x2, #0x7fffffff            	// #2147483647
    7e34:	eb02029f 	cmp	x20, x2
    7e38:	fa549022 	ccmp	x1, x20, #0x2, ls  // ls = plast
    7e3c:	54001088 	b.hi	804c <_malloc_r+0x2bc>  // b.pmore
    7e40:	9400027c 	bl	8830 <__malloc_lock>
    7e44:	f107de9f 	cmp	x20, #0x1f7
    7e48:	54002549 	b.ls	82f0 <_malloc_r+0x560>  // b.plast
    7e4c:	d349fe80 	lsr	x0, x20, #9
    7e50:	b4000140 	cbz	x0, 7e78 <_malloc_r+0xe8>
    7e54:	f100101f 	cmp	x0, #0x4
    7e58:	54000ee9 	b.ls	8034 <_malloc_r+0x2a4>  // b.plast
    7e5c:	f100501f 	cmp	x0, #0x14
    7e60:	54002dc8 	b.hi	8418 <_malloc_r+0x688>  // b.pmore
    7e64:	11017004 	add	w4, w0, #0x5c
    7e68:	11016c05 	add	w5, w0, #0x5b
    7e6c:	531f7880 	lsl	w0, w4, #1
    7e70:	937d7c00 	sbfiz	x0, x0, #3, #32
    7e74:	14000004 	b	7e84 <_malloc_r+0xf4>
    7e78:	d2808000 	mov	x0, #0x400                 	// #1024
    7e7c:	52800804 	mov	w4, #0x40                  	// #64
    7e80:	528007e5 	mov	w5, #0x3f                  	// #63
    7e84:	d0000035 	adrp	x21, d000 <__trunctfdf2+0x290>
    7e88:	913d22a3 	add	x3, x21, #0xf48
    7e8c:	8b000063 	add	x3, x3, x0
    7e90:	d1004063 	sub	x3, x3, #0x10
    7e94:	f9400c61 	ldr	x1, [x3, #24]
    7e98:	eb01007f 	cmp	x3, x1
    7e9c:	540000c1 	b.ne	7eb4 <_malloc_r+0x124>  // b.any
    7ea0:	1400000b 	b	7ecc <_malloc_r+0x13c>
    7ea4:	b6f81e82 	tbz	x2, #63, 8274 <_malloc_r+0x4e4>
    7ea8:	f9400c21 	ldr	x1, [x1, #24]
    7eac:	eb01007f 	cmp	x3, x1
    7eb0:	540000e0 	b.eq	7ecc <_malloc_r+0x13c>  // b.none
    7eb4:	f9400420 	ldr	x0, [x1, #8]
    7eb8:	927ef400 	and	x0, x0, #0xfffffffffffffffc
    7ebc:	cb140002 	sub	x2, x0, x20
    7ec0:	f1007c5f 	cmp	x2, #0x1f
    7ec4:	54ffff0d 	b.le	7ea4 <_malloc_r+0x114>
    7ec8:	2a0503e4 	mov	w4, w5
    7ecc:	913d22a0 	add	x0, x21, #0xf48
    7ed0:	91004003 	add	x3, x0, #0x10
    7ed4:	f9401001 	ldr	x1, [x0, #32]
    7ed8:	eb03003f 	cmp	x1, x3
    7edc:	54000c80 	b.eq	806c <_malloc_r+0x2dc>  // b.none
    7ee0:	f9400422 	ldr	x2, [x1, #8]
    7ee4:	927ef442 	and	x2, x2, #0xfffffffffffffffc
    7ee8:	cb140045 	sub	x5, x2, x20
    7eec:	f1007cbf 	cmp	x5, #0x1f
    7ef0:	54001e0c 	b.gt	82b0 <_malloc_r+0x520>
    7ef4:	a9020c03 	stp	x3, x3, [x0, #32]
    7ef8:	b6f80865 	tbz	x5, #63, 8004 <_malloc_r+0x274>
    7efc:	f107fc5f 	cmp	x2, #0x1ff
    7f00:	54002548 	b.hi	83a8 <_malloc_r+0x618>  // b.pmore
    7f04:	d343fc45 	lsr	x5, x2, #3
    7f08:	f9400406 	ldr	x6, [x0, #8]
    7f0c:	110004a3 	add	w3, w5, #0x1
    7f10:	d2800022 	mov	x2, #0x1                   	// #1
    7f14:	13027ca5 	asr	w5, w5, #2
    7f18:	531f7863 	lsl	w3, w3, #1
    7f1c:	9ac52042 	lsl	x2, x2, x5
    7f20:	aa060042 	orr	x2, x2, x6
    7f24:	8b23cc03 	add	x3, x0, w3, sxtw #3
    7f28:	f9000402 	str	x2, [x0, #8]
    7f2c:	f85f0460 	ldr	x0, [x3], #-16
    7f30:	a9010c20 	stp	x0, x3, [x1, #16]
    7f34:	f9000861 	str	x1, [x3, #16]
    7f38:	f9000c01 	str	x1, [x0, #24]
    7f3c:	13027c81 	asr	w1, w4, #2
    7f40:	d2800020 	mov	x0, #0x1                   	// #1
    7f44:	9ac12000 	lsl	x0, x0, x1
    7f48:	eb02001f 	cmp	x0, x2
    7f4c:	540009c8 	b.hi	8084 <_malloc_r+0x2f4>  // b.pmore
    7f50:	ea02001f 	tst	x0, x2
    7f54:	540000e1 	b.ne	7f70 <_malloc_r+0x1e0>  // b.any
    7f58:	121e7484 	and	w4, w4, #0xfffffffc
    7f5c:	d503201f 	nop
    7f60:	d37ff800 	lsl	x0, x0, #1
    7f64:	11001084 	add	w4, w4, #0x4
    7f68:	ea02001f 	tst	x0, x2
    7f6c:	54ffffa0 	b.eq	7f60 <_malloc_r+0x1d0>  // b.none
    7f70:	913d22a8 	add	x8, x21, #0xf48
    7f74:	11000486 	add	w6, w4, #0x1
    7f78:	2a0403e7 	mov	w7, w4
    7f7c:	531f78c6 	lsl	w6, w6, #1
    7f80:	8b26cd06 	add	x6, x8, w6, sxtw #3
    7f84:	d10040c6 	sub	x6, x6, #0x10
    7f88:	aa0603e5 	mov	x5, x6
    7f8c:	f9400ca1 	ldr	x1, [x5, #24]
    7f90:	eb0100bf 	cmp	x5, x1
    7f94:	540000c1 	b.ne	7fac <_malloc_r+0x21c>  // b.any
    7f98:	140000db 	b	8304 <_malloc_r+0x574>
    7f9c:	b6f81ee3 	tbz	x3, #63, 8378 <_malloc_r+0x5e8>
    7fa0:	f9400c21 	ldr	x1, [x1, #24]
    7fa4:	eb0100bf 	cmp	x5, x1
    7fa8:	54001ae0 	b.eq	8304 <_malloc_r+0x574>  // b.none
    7fac:	f9400422 	ldr	x2, [x1, #8]
    7fb0:	927ef442 	and	x2, x2, #0xfffffffffffffffc
    7fb4:	cb140043 	sub	x3, x2, x20
    7fb8:	f1007c7f 	cmp	x3, #0x1f
    7fbc:	54ffff0d 	b.le	7f9c <_malloc_r+0x20c>
    7fc0:	a9411025 	ldp	x5, x4, [x1, #16]
    7fc4:	913d22b5 	add	x21, x21, #0xf48
    7fc8:	b2400280 	orr	x0, x20, #0x1
    7fcc:	f9000420 	str	x0, [x1, #8]
    7fd0:	f9000ca4 	str	x4, [x5, #24]
    7fd4:	8b140034 	add	x20, x1, x20
    7fd8:	f9000885 	str	x5, [x4, #16]
    7fdc:	910042a0 	add	x0, x21, #0x10
    7fe0:	a90252b4 	stp	x20, x20, [x21, #32]
    7fe4:	b2400064 	orr	x4, x3, #0x1
    7fe8:	a9008284 	stp	x4, x0, [x20, #8]
    7fec:	91004033 	add	x19, x1, #0x10
    7ff0:	f9000e80 	str	x0, [x20, #24]
    7ff4:	aa1603e0 	mov	x0, x22
    7ff8:	f8226823 	str	x3, [x1, x2]
    7ffc:	9400020f 	bl	8838 <__malloc_unlock>
    8000:	17ffff86 	b	7e18 <_malloc_r+0x88>
    8004:	8b020022 	add	x2, x1, x2
    8008:	91004033 	add	x19, x1, #0x10
    800c:	aa1603e0 	mov	x0, x22
    8010:	f9400441 	ldr	x1, [x2, #8]
    8014:	b2400021 	orr	x1, x1, #0x1
    8018:	f9000441 	str	x1, [x2, #8]
    801c:	94000207 	bl	8838 <__malloc_unlock>
    8020:	aa1303e0 	mov	x0, x19
    8024:	a94153f3 	ldp	x19, x20, [sp, #16]
    8028:	a9425bf5 	ldp	x21, x22, [sp, #32]
    802c:	a8c67bfd 	ldp	x29, x30, [sp], #96
    8030:	d65f03c0 	ret
    8034:	d346fe80 	lsr	x0, x20, #6
    8038:	1100e404 	add	w4, w0, #0x39
    803c:	1100e005 	add	w5, w0, #0x38
    8040:	531f7883 	lsl	w3, w4, #1
    8044:	937d7c60 	sbfiz	x0, x3, #3, #32
    8048:	17ffff8f 	b	7e84 <_malloc_r+0xf4>
    804c:	52800180 	mov	w0, #0xc                   	// #12
    8050:	b90002c0 	str	w0, [x22]
    8054:	d2800013 	mov	x19, #0x0                   	// #0
    8058:	aa1303e0 	mov	x0, x19
    805c:	a94153f3 	ldp	x19, x20, [sp, #16]
    8060:	a9425bf5 	ldp	x21, x22, [sp, #32]
    8064:	a8c67bfd 	ldp	x29, x30, [sp], #96
    8068:	d65f03c0 	ret
    806c:	f9400402 	ldr	x2, [x0, #8]
    8070:	13027c81 	asr	w1, w4, #2
    8074:	d2800020 	mov	x0, #0x1                   	// #1
    8078:	9ac12000 	lsl	x0, x0, x1
    807c:	eb02001f 	cmp	x0, x2
    8080:	54fff689 	b.ls	7f50 <_malloc_r+0x1c0>  // b.plast
    8084:	f90023b9 	str	x25, [x29, #64]
    8088:	913d22b9 	add	x25, x21, #0xf48
    808c:	f9001bb7 	str	x23, [x29, #48]
    8090:	f9400b33 	ldr	x19, [x25, #16]
    8094:	f9400677 	ldr	x23, [x19, #8]
    8098:	927ef6f7 	and	x23, x23, #0xfffffffffffffffc
    809c:	eb1402e0 	subs	x0, x23, x20
    80a0:	fa5f2804 	ccmp	x0, #0x1f, #0x4, cs  // cs = hs, nlast
    80a4:	54000c6c 	b.gt	8230 <_malloc_r+0x4a0>
    80a8:	a904efba 	stp	x26, x27, [x29, #72]
    80ac:	d00000fa 	adrp	x26, 26000 <blue.21472+0x3d40>
    80b0:	f9440b22 	ldr	x2, [x25, #2064]
    80b4:	aa1603e0 	mov	x0, x22
    80b8:	f9416b41 	ldr	x1, [x26, #720]
    80bc:	b100045f 	cmn	x2, #0x1
    80c0:	f9001fb8 	str	x24, [x29, #56]
    80c4:	8b010281 	add	x1, x20, x1
    80c8:	d28203e2 	mov	x2, #0x101f                	// #4127
    80cc:	8b020038 	add	x24, x1, x2
    80d0:	91008021 	add	x1, x1, #0x20
    80d4:	9274cf18 	and	x24, x24, #0xfffffffffffff000
    80d8:	9a811318 	csel	x24, x24, x1, ne  // ne = any
    80dc:	aa1803e1 	mov	x1, x24
    80e0:	94000576 	bl	96b8 <_sbrk_r>
    80e4:	aa0003fb 	mov	x27, x0
    80e8:	b100041f 	cmn	x0, #0x1
    80ec:	54001b40 	b.eq	8454 <_malloc_r+0x6c4>  // b.none
    80f0:	8b170261 	add	x1, x19, x23
    80f4:	eb00003f 	cmp	x1, x0
    80f8:	54001aa8 	b.hi	844c <_malloc_r+0x6bc>  // b.pmore
    80fc:	910b4342 	add	x2, x26, #0x2d0
    8100:	b9400840 	ldr	w0, [x2, #8]
    8104:	0b180000 	add	w0, w0, w24
    8108:	b9000840 	str	w0, [x2, #8]
    810c:	2a0003e2 	mov	w2, w0
    8110:	54001e00 	b.eq	84d0 <_malloc_r+0x740>  // b.none
    8114:	913d22a0 	add	x0, x21, #0xf48
    8118:	f9440803 	ldr	x3, [x0, #2064]
    811c:	b100047f 	cmn	x3, #0x1
    8120:	54002080 	b.eq	8530 <_malloc_r+0x7a0>  // b.none
    8124:	910b4340 	add	x0, x26, #0x2d0
    8128:	cb010361 	sub	x1, x27, x1
    812c:	0b010041 	add	w1, w2, w1
    8130:	b9000801 	str	w1, [x0, #8]
    8134:	d2820001 	mov	x1, #0x1000                	// #4096
    8138:	f2400f60 	ands	x0, x27, #0xf
    813c:	540000a0 	b.eq	8150 <_malloc_r+0x3c0>  // b.none
    8140:	cb00037b 	sub	x27, x27, x0
    8144:	d2820201 	mov	x1, #0x1010                	// #4112
    8148:	9100437b 	add	x27, x27, #0x10
    814c:	cb000021 	sub	x1, x1, x0
    8150:	8b180378 	add	x24, x27, x24
    8154:	aa1603e0 	mov	x0, x22
    8158:	92402f18 	and	x24, x24, #0xfff
    815c:	cb180038 	sub	x24, x1, x24
    8160:	aa1803e1 	mov	x1, x24
    8164:	94000555 	bl	96b8 <_sbrk_r>
    8168:	b100041f 	cmn	x0, #0x1
    816c:	54001e60 	b.eq	8538 <_malloc_r+0x7a8>  // b.none
    8170:	cb1b0001 	sub	x1, x0, x27
    8174:	2a1803e0 	mov	w0, w24
    8178:	8b180021 	add	x1, x1, x24
    817c:	b2400021 	orr	x1, x1, #0x1
    8180:	910b4358 	add	x24, x26, #0x2d0
    8184:	913d22a2 	add	x2, x21, #0xf48
    8188:	eb02027f 	cmp	x19, x2
    818c:	b9400b03 	ldr	w3, [x24, #8]
    8190:	f900085b 	str	x27, [x2, #16]
    8194:	0b030000 	add	w0, w0, w3
    8198:	f9000761 	str	x1, [x27, #8]
    819c:	b9000b00 	str	w0, [x24, #8]
    81a0:	540001e0 	b.eq	81dc <_malloc_r+0x44c>  // b.none
    81a4:	f1007eff 	cmp	x23, #0x1f
    81a8:	54001b29 	b.ls	850c <_malloc_r+0x77c>  // b.plast
    81ac:	d10062e1 	sub	x1, x23, #0x18
    81b0:	f9400662 	ldr	x2, [x19, #8]
    81b4:	927cec21 	and	x1, x1, #0xfffffffffffffff0
    81b8:	d2800124 	mov	x4, #0x9                   	// #9
    81bc:	8b010263 	add	x3, x19, x1
    81c0:	92400042 	and	x2, x2, #0x1
    81c4:	aa010042 	orr	x2, x2, x1
    81c8:	f9000662 	str	x2, [x19, #8]
    81cc:	f1007c3f 	cmp	x1, #0x1f
    81d0:	f8008c64 	str	x4, [x3, #8]!
    81d4:	f9000464 	str	x4, [x3, #8]
    81d8:	54001d88 	b.hi	8588 <_malloc_r+0x7f8>  // b.pmore
    81dc:	910b4341 	add	x1, x26, #0x2d0
    81e0:	93407c00 	sxtw	x0, w0
    81e4:	f9401822 	ldr	x2, [x1, #48]
    81e8:	eb02001f 	cmp	x0, x2
    81ec:	54000049 	b.ls	81f4 <_malloc_r+0x464>  // b.plast
    81f0:	f9001820 	str	x0, [x1, #48]
    81f4:	913d22a1 	add	x1, x21, #0xf48
    81f8:	910b435a 	add	x26, x26, #0x2d0
    81fc:	f9400833 	ldr	x19, [x1, #16]
    8200:	f9401f41 	ldr	x1, [x26, #56]
    8204:	eb01001f 	cmp	x0, x1
    8208:	f9400661 	ldr	x1, [x19, #8]
    820c:	927ef421 	and	x1, x1, #0xfffffffffffffffc
    8210:	54000049 	b.ls	8218 <_malloc_r+0x488>  // b.plast
    8214:	f9001f40 	str	x0, [x26, #56]
    8218:	cb140020 	sub	x0, x1, x20
    821c:	eb01029f 	cmp	x20, x1
    8220:	fa5f9804 	ccmp	x0, #0x1f, #0x4, ls  // ls = plast
    8224:	5400178d 	b.le	8514 <_malloc_r+0x784>
    8228:	f9401fb8 	ldr	x24, [x29, #56]
    822c:	a944efba 	ldp	x26, x27, [x29, #72]
    8230:	913d22b5 	add	x21, x21, #0xf48
    8234:	8b140262 	add	x2, x19, x20
    8238:	b2400294 	orr	x20, x20, #0x1
    823c:	f9000674 	str	x20, [x19, #8]
    8240:	b2400001 	orr	x1, x0, #0x1
    8244:	f9000aa2 	str	x2, [x21, #16]
    8248:	aa1603e0 	mov	x0, x22
    824c:	f9000441 	str	x1, [x2, #8]
    8250:	91004273 	add	x19, x19, #0x10
    8254:	94000179 	bl	8838 <__malloc_unlock>
    8258:	f9401bb7 	ldr	x23, [x29, #48]
    825c:	aa1303e0 	mov	x0, x19
    8260:	f94023b9 	ldr	x25, [x29, #64]
    8264:	a94153f3 	ldp	x19, x20, [sp, #16]
    8268:	a9425bf5 	ldp	x21, x22, [sp, #32]
    826c:	a8c67bfd 	ldp	x29, x30, [sp], #96
    8270:	d65f03c0 	ret
    8274:	8b000022 	add	x2, x1, x0
    8278:	91004033 	add	x19, x1, #0x10
    827c:	a9410c24 	ldp	x4, x3, [x1, #16]
    8280:	aa1603e0 	mov	x0, x22
    8284:	f9400441 	ldr	x1, [x2, #8]
    8288:	f9000c83 	str	x3, [x4, #24]
    828c:	b2400021 	orr	x1, x1, #0x1
    8290:	f9000864 	str	x4, [x3, #16]
    8294:	f9000441 	str	x1, [x2, #8]
    8298:	94000168 	bl	8838 <__malloc_unlock>
    829c:	aa1303e0 	mov	x0, x19
    82a0:	a94153f3 	ldp	x19, x20, [sp, #16]
    82a4:	a9425bf5 	ldp	x21, x22, [sp, #32]
    82a8:	a8c67bfd 	ldp	x29, x30, [sp], #96
    82ac:	d65f03c0 	ret
    82b0:	8b140024 	add	x4, x1, x20
    82b4:	b2400294 	orr	x20, x20, #0x1
    82b8:	f9000434 	str	x20, [x1, #8]
    82bc:	b24000a6 	orr	x6, x5, #0x1
    82c0:	a9021004 	stp	x4, x4, [x0, #32]
    82c4:	91004033 	add	x19, x1, #0x10
    82c8:	a9008c86 	stp	x6, x3, [x4, #8]
    82cc:	aa1603e0 	mov	x0, x22
    82d0:	f9000c83 	str	x3, [x4, #24]
    82d4:	f8226825 	str	x5, [x1, x2]
    82d8:	94000158 	bl	8838 <__malloc_unlock>
    82dc:	aa1303e0 	mov	x0, x19
    82e0:	a94153f3 	ldp	x19, x20, [sp, #16]
    82e4:	a9425bf5 	ldp	x21, x22, [sp, #32]
    82e8:	a8c67bfd 	ldp	x29, x30, [sp], #96
    82ec:	d65f03c0 	ret
    82f0:	d343fe84 	lsr	x4, x20, #3
    82f4:	11000480 	add	w0, w4, #0x1
    82f8:	531f7800 	lsl	w0, w0, #1
    82fc:	937d7c01 	sbfiz	x1, x0, #3, #32
    8300:	17fffeb2 	b	7dc8 <_malloc_r+0x38>
    8304:	110004e1 	add	w1, w7, #0x1
    8308:	7100f8ff 	cmp	w7, #0x3e
    830c:	540009ad 	b.le	8440 <_malloc_r+0x6b0>
    8310:	910040a5 	add	x5, x5, #0x10
    8314:	2a0103e7 	mov	w7, w1
    8318:	f24004ff 	tst	x7, #0x3
    831c:	54ffe381 	b.ne	7f8c <_malloc_r+0x1fc>  // b.any
    8320:	14000005 	b	8334 <_malloc_r+0x5a4>
    8324:	f85f0426 	ldr	x6, [x1], #-16
    8328:	51000484 	sub	w4, w4, #0x1
    832c:	eb0100df 	cmp	x6, x1
    8330:	540014c1 	b.ne	85c8 <_malloc_r+0x838>  // b.any
    8334:	aa0603e1 	mov	x1, x6
    8338:	f240049f 	tst	x4, #0x3
    833c:	54ffff41 	b.ne	8324 <_malloc_r+0x594>  // b.any
    8340:	f9400501 	ldr	x1, [x8, #8]
    8344:	8a200021 	bic	x1, x1, x0
    8348:	f9000501 	str	x1, [x8, #8]
    834c:	d37ff800 	lsl	x0, x0, #1
    8350:	f100001f 	cmp	x0, #0x0
    8354:	fa411002 	ccmp	x0, x1, #0x2, ne  // ne = any
    8358:	54000089 	b.ls	8368 <_malloc_r+0x5d8>  // b.plast
    835c:	17ffff4a 	b	8084 <_malloc_r+0x2f4>
    8360:	d37ff800 	lsl	x0, x0, #1
    8364:	110010e7 	add	w7, w7, #0x4
    8368:	ea01001f 	tst	x0, x1
    836c:	54ffffa0 	b.eq	8360 <_malloc_r+0x5d0>  // b.none
    8370:	2a0703e4 	mov	w4, w7
    8374:	17ffff00 	b	7f74 <_malloc_r+0x1e4>
    8378:	8b020022 	add	x2, x1, x2
    837c:	aa0103f3 	mov	x19, x1
    8380:	f9400c23 	ldr	x3, [x1, #24]
    8384:	aa1603e0 	mov	x0, x22
    8388:	f9400441 	ldr	x1, [x2, #8]
    838c:	f8410e64 	ldr	x4, [x19, #16]!
    8390:	b2400021 	orr	x1, x1, #0x1
    8394:	f9000441 	str	x1, [x2, #8]
    8398:	f9000c83 	str	x3, [x4, #24]
    839c:	f9000864 	str	x4, [x3, #16]
    83a0:	94000126 	bl	8838 <__malloc_unlock>
    83a4:	17fffe9d 	b	7e18 <_malloc_r+0x88>
    83a8:	d349fc40 	lsr	x0, x2, #9
    83ac:	f100101f 	cmp	x0, #0x4
    83b0:	540005a9 	b.ls	8464 <_malloc_r+0x6d4>  // b.plast
    83b4:	f100501f 	cmp	x0, #0x14
    83b8:	540007c8 	b.hi	84b0 <_malloc_r+0x720>  // b.pmore
    83bc:	11017005 	add	w5, w0, #0x5c
    83c0:	11016c03 	add	w3, w0, #0x5b
    83c4:	531f78a5 	lsl	w5, w5, #1
    83c8:	937d7ca5 	sbfiz	x5, x5, #3, #32
    83cc:	913d22a6 	add	x6, x21, #0xf48
    83d0:	8b0500c5 	add	x5, x6, x5
    83d4:	f85f04a0 	ldr	x0, [x5], #-16
    83d8:	eb0000bf 	cmp	x5, x0
    83dc:	540005c0 	b.eq	8494 <_malloc_r+0x704>  // b.none
    83e0:	f9400403 	ldr	x3, [x0, #8]
    83e4:	927ef463 	and	x3, x3, #0xfffffffffffffffc
    83e8:	eb02007f 	cmp	x3, x2
    83ec:	54000089 	b.ls	83fc <_malloc_r+0x66c>  // b.plast
    83f0:	f9400800 	ldr	x0, [x0, #16]
    83f4:	eb0000bf 	cmp	x5, x0
    83f8:	54ffff41 	b.ne	83e0 <_malloc_r+0x650>  // b.any
    83fc:	913d22a2 	add	x2, x21, #0xf48
    8400:	f9400c05 	ldr	x5, [x0, #24]
    8404:	f9400442 	ldr	x2, [x2, #8]
    8408:	a9011420 	stp	x0, x5, [x1, #16]
    840c:	f90008a1 	str	x1, [x5, #16]
    8410:	f9000c01 	str	x1, [x0, #24]
    8414:	17fffeca 	b	7f3c <_malloc_r+0x1ac>
    8418:	f101501f 	cmp	x0, #0x54
    841c:	54000309 	b.ls	847c <_malloc_r+0x6ec>  // b.plast
    8420:	f105501f 	cmp	x0, #0x154
    8424:	54000648 	b.hi	84ec <_malloc_r+0x75c>  // b.pmore
    8428:	d34ffe80 	lsr	x0, x20, #15
    842c:	1101e004 	add	w4, w0, #0x78
    8430:	1101dc05 	add	w5, w0, #0x77
    8434:	531f7880 	lsl	w0, w4, #1
    8438:	937d7c00 	sbfiz	x0, x0, #3, #32
    843c:	17fffe92 	b	7e84 <_malloc_r+0xf4>
    8440:	910080a5 	add	x5, x5, #0x20
    8444:	110008e7 	add	w7, w7, #0x2
    8448:	17ffffb4 	b	8318 <_malloc_r+0x588>
    844c:	eb19027f 	cmp	x19, x25
    8450:	540007a0 	b.eq	8544 <_malloc_r+0x7b4>  // b.none
    8454:	f9400b33 	ldr	x19, [x25, #16]
    8458:	f9400661 	ldr	x1, [x19, #8]
    845c:	927ef421 	and	x1, x1, #0xfffffffffffffffc
    8460:	17ffff6e 	b	8218 <_malloc_r+0x488>
    8464:	d346fc40 	lsr	x0, x2, #6
    8468:	1100e405 	add	w5, w0, #0x39
    846c:	1100e003 	add	w3, w0, #0x38
    8470:	531f78a5 	lsl	w5, w5, #1
    8474:	937d7ca5 	sbfiz	x5, x5, #3, #32
    8478:	17ffffd5 	b	83cc <_malloc_r+0x63c>
    847c:	d34cfe80 	lsr	x0, x20, #12
    8480:	1101bc04 	add	w4, w0, #0x6f
    8484:	1101b805 	add	w5, w0, #0x6e
    8488:	531f7880 	lsl	w0, w4, #1
    848c:	937d7c00 	sbfiz	x0, x0, #3, #32
    8490:	17fffe7d 	b	7e84 <_malloc_r+0xf4>
    8494:	f94004c7 	ldr	x7, [x6, #8]
    8498:	13027c63 	asr	w3, w3, #2
    849c:	d2800022 	mov	x2, #0x1                   	// #1
    84a0:	9ac32042 	lsl	x2, x2, x3
    84a4:	aa070042 	orr	x2, x2, x7
    84a8:	f90004c2 	str	x2, [x6, #8]
    84ac:	17ffffd7 	b	8408 <_malloc_r+0x678>
    84b0:	f101501f 	cmp	x0, #0x54
    84b4:	54000528 	b.hi	8558 <_malloc_r+0x7c8>  // b.pmore
    84b8:	d34cfc40 	lsr	x0, x2, #12
    84bc:	1101bc05 	add	w5, w0, #0x6f
    84c0:	1101b803 	add	w3, w0, #0x6e
    84c4:	531f78a5 	lsl	w5, w5, #1
    84c8:	937d7ca5 	sbfiz	x5, x5, #3, #32
    84cc:	17ffffc0 	b	83cc <_malloc_r+0x63c>
    84d0:	f2402c3f 	tst	x1, #0xfff
    84d4:	54ffe201 	b.ne	8114 <_malloc_r+0x384>  // b.any
    84d8:	f9400b22 	ldr	x2, [x25, #16]
    84dc:	8b1802e1 	add	x1, x23, x24
    84e0:	b2400021 	orr	x1, x1, #0x1
    84e4:	f9000441 	str	x1, [x2, #8]
    84e8:	17ffff3d 	b	81dc <_malloc_r+0x44c>
    84ec:	f115501f 	cmp	x0, #0x554
    84f0:	54000448 	b.hi	8578 <_malloc_r+0x7e8>  // b.pmore
    84f4:	d352fe80 	lsr	x0, x20, #18
    84f8:	1101f404 	add	w4, w0, #0x7d
    84fc:	1101f005 	add	w5, w0, #0x7c
    8500:	531f7880 	lsl	w0, w4, #1
    8504:	937d7c00 	sbfiz	x0, x0, #3, #32
    8508:	17fffe5f 	b	7e84 <_malloc_r+0xf4>
    850c:	d2800020 	mov	x0, #0x1                   	// #1
    8510:	f9000760 	str	x0, [x27, #8]
    8514:	aa1603e0 	mov	x0, x22
    8518:	d2800013 	mov	x19, #0x0                   	// #0
    851c:	940000c7 	bl	8838 <__malloc_unlock>
    8520:	f9402bbb 	ldr	x27, [x29, #80]
    8524:	a94363b7 	ldp	x23, x24, [x29, #48]
    8528:	a9446bb9 	ldp	x25, x26, [x29, #64]
    852c:	17fffe3b 	b	7e18 <_malloc_r+0x88>
    8530:	f904081b 	str	x27, [x0, #2064]
    8534:	17ffff00 	b	8134 <_malloc_r+0x3a4>
    8538:	d2800021 	mov	x1, #0x1                   	// #1
    853c:	52800000 	mov	w0, #0x0                   	// #0
    8540:	17ffff10 	b	8180 <_malloc_r+0x3f0>
    8544:	910b4340 	add	x0, x26, #0x2d0
    8548:	b9400802 	ldr	w2, [x0, #8]
    854c:	0b180042 	add	w2, w2, w24
    8550:	b9000802 	str	w2, [x0, #8]
    8554:	17fffef0 	b	8114 <_malloc_r+0x384>
    8558:	f105501f 	cmp	x0, #0x154
    855c:	54000208 	b.hi	859c <_malloc_r+0x80c>  // b.pmore
    8560:	d34ffc40 	lsr	x0, x2, #15
    8564:	1101e005 	add	w5, w0, #0x78
    8568:	1101dc03 	add	w3, w0, #0x77
    856c:	531f78a5 	lsl	w5, w5, #1
    8570:	937d7ca5 	sbfiz	x5, x5, #3, #32
    8574:	17ffff96 	b	83cc <_malloc_r+0x63c>
    8578:	d280fe00 	mov	x0, #0x7f0                 	// #2032
    857c:	52800fe4 	mov	w4, #0x7f                  	// #127
    8580:	52800fc5 	mov	w5, #0x7e                  	// #126
    8584:	17fffe40 	b	7e84 <_malloc_r+0xf4>
    8588:	aa1603e0 	mov	x0, x22
    858c:	91004261 	add	x1, x19, #0x10
    8590:	97fffc3a 	bl	7678 <_free_r>
    8594:	b9400b00 	ldr	w0, [x24, #8]
    8598:	17ffff11 	b	81dc <_malloc_r+0x44c>
    859c:	f115501f 	cmp	x0, #0x554
    85a0:	540000e8 	b.hi	85bc <_malloc_r+0x82c>  // b.pmore
    85a4:	d352fc40 	lsr	x0, x2, #18
    85a8:	1101f405 	add	w5, w0, #0x7d
    85ac:	1101f003 	add	w3, w0, #0x7c
    85b0:	531f78a5 	lsl	w5, w5, #1
    85b4:	937d7ca5 	sbfiz	x5, x5, #3, #32
    85b8:	17ffff85 	b	83cc <_malloc_r+0x63c>
    85bc:	d280fe05 	mov	x5, #0x7f0                 	// #2032
    85c0:	52800fc3 	mov	w3, #0x7e                  	// #126
    85c4:	17ffff82 	b	83cc <_malloc_r+0x63c>
    85c8:	f9400501 	ldr	x1, [x8, #8]
    85cc:	17ffff60 	b	834c <_malloc_r+0x5bc>

00000000000085d0 <memchr>:
    85d0:	b4000682 	cbz	x2, 86a0 <memchr+0xd0>
    85d4:	52808025 	mov	w5, #0x401                 	// #1025
    85d8:	72a80205 	movk	w5, #0x4010, lsl #16
    85dc:	4e010c20 	dup	v0.16b, w1
    85e0:	927be803 	and	x3, x0, #0xffffffffffffffe0
    85e4:	4e040ca5 	dup	v5.4s, w5
    85e8:	f2401009 	ands	x9, x0, #0x1f
    85ec:	9240104a 	and	x10, x2, #0x1f
    85f0:	54000200 	b.eq	8630 <memchr+0x60>  // b.none
    85f4:	4cdfa061 	ld1	{v1.16b, v2.16b}, [x3], #32
    85f8:	d1008124 	sub	x4, x9, #0x20
    85fc:	ab040042 	adds	x2, x2, x4
    8600:	6e208c23 	cmeq	v3.16b, v1.16b, v0.16b
    8604:	6e208c44 	cmeq	v4.16b, v2.16b, v0.16b
    8608:	4e251c63 	and	v3.16b, v3.16b, v5.16b
    860c:	4e251c84 	and	v4.16b, v4.16b, v5.16b
    8610:	4e24bc66 	addp	v6.16b, v3.16b, v4.16b
    8614:	4e26bcc6 	addp	v6.16b, v6.16b, v6.16b
    8618:	4e083cc6 	mov	x6, v6.d[0]
    861c:	d37ff924 	lsl	x4, x9, #1
    8620:	9ac424c6 	lsr	x6, x6, x4
    8624:	9ac420c6 	lsl	x6, x6, x4
    8628:	54000229 	b.ls	866c <memchr+0x9c>  // b.plast
    862c:	b50002c6 	cbnz	x6, 8684 <memchr+0xb4>
    8630:	4cdfa061 	ld1	{v1.16b, v2.16b}, [x3], #32
    8634:	f1008042 	subs	x2, x2, #0x20
    8638:	6e208c23 	cmeq	v3.16b, v1.16b, v0.16b
    863c:	6e208c44 	cmeq	v4.16b, v2.16b, v0.16b
    8640:	540000a9 	b.ls	8654 <memchr+0x84>  // b.plast
    8644:	4ea41c66 	orr	v6.16b, v3.16b, v4.16b
    8648:	4ee6bcc6 	addp	v6.2d, v6.2d, v6.2d
    864c:	4e083cc6 	mov	x6, v6.d[0]
    8650:	b4ffff06 	cbz	x6, 8630 <memchr+0x60>
    8654:	4e251c63 	and	v3.16b, v3.16b, v5.16b
    8658:	4e251c84 	and	v4.16b, v4.16b, v5.16b
    865c:	4e24bc66 	addp	v6.16b, v3.16b, v4.16b
    8660:	4e26bcc6 	addp	v6.16b, v6.16b, v6.16b
    8664:	4e083cc6 	mov	x6, v6.d[0]
    8668:	540000e8 	b.hi	8684 <memchr+0xb4>  // b.pmore
    866c:	8b090144 	add	x4, x10, x9
    8670:	92401084 	and	x4, x4, #0x1f
    8674:	d1008084 	sub	x4, x4, #0x20
    8678:	cb0407e4 	neg	x4, x4, lsl #1
    867c:	9ac420c6 	lsl	x6, x6, x4
    8680:	9ac424c6 	lsr	x6, x6, x4
    8684:	dac000c6 	rbit	x6, x6
    8688:	d1008063 	sub	x3, x3, #0x20
    868c:	f10000df 	cmp	x6, #0x0
    8690:	dac010c6 	clz	x6, x6
    8694:	8b460460 	add	x0, x3, x6, lsr #1
    8698:	9a8003e0 	csel	x0, xzr, x0, eq  // eq = none
    869c:	d65f03c0 	ret
    86a0:	d2800000 	mov	x0, #0x0                   	// #0
    86a4:	d65f03c0 	ret
	...

00000000000086c0 <memcpy>:
    86c0:	f9800020 	prfm	pldl1keep, [x1]
    86c4:	8b020024 	add	x4, x1, x2
    86c8:	8b020005 	add	x5, x0, x2
    86cc:	f100405f 	cmp	x2, #0x10
    86d0:	54000209 	b.ls	8710 <memcpy+0x50>  // b.plast
    86d4:	f101805f 	cmp	x2, #0x60
    86d8:	54000648 	b.hi	87a0 <memcpy+0xe0>  // b.pmore
    86dc:	d1000449 	sub	x9, x2, #0x1
    86e0:	a9401c26 	ldp	x6, x7, [x1]
    86e4:	37300469 	tbnz	w9, #6, 8770 <memcpy+0xb0>
    86e8:	a97f348c 	ldp	x12, x13, [x4, #-16]
    86ec:	362800a9 	tbz	w9, #5, 8700 <memcpy+0x40>
    86f0:	a9412428 	ldp	x8, x9, [x1, #16]
    86f4:	a97e2c8a 	ldp	x10, x11, [x4, #-32]
    86f8:	a9012408 	stp	x8, x9, [x0, #16]
    86fc:	a93e2caa 	stp	x10, x11, [x5, #-32]
    8700:	a9001c06 	stp	x6, x7, [x0]
    8704:	a93f34ac 	stp	x12, x13, [x5, #-16]
    8708:	d65f03c0 	ret
    870c:	d503201f 	nop
    8710:	f100205f 	cmp	x2, #0x8
    8714:	540000e3 	b.cc	8730 <memcpy+0x70>  // b.lo, b.ul, b.last
    8718:	f9400026 	ldr	x6, [x1]
    871c:	f85f8087 	ldur	x7, [x4, #-8]
    8720:	f9000006 	str	x6, [x0]
    8724:	f81f80a7 	stur	x7, [x5, #-8]
    8728:	d65f03c0 	ret
    872c:	d503201f 	nop
    8730:	361000c2 	tbz	w2, #2, 8748 <memcpy+0x88>
    8734:	b9400026 	ldr	w6, [x1]
    8738:	b85fc087 	ldur	w7, [x4, #-4]
    873c:	b9000006 	str	w6, [x0]
    8740:	b81fc0a7 	stur	w7, [x5, #-4]
    8744:	d65f03c0 	ret
    8748:	b4000102 	cbz	x2, 8768 <memcpy+0xa8>
    874c:	d341fc49 	lsr	x9, x2, #1
    8750:	39400026 	ldrb	w6, [x1]
    8754:	385ff087 	ldurb	w7, [x4, #-1]
    8758:	38696828 	ldrb	w8, [x1, x9]
    875c:	39000006 	strb	w6, [x0]
    8760:	38296808 	strb	w8, [x0, x9]
    8764:	381ff0a7 	sturb	w7, [x5, #-1]
    8768:	d65f03c0 	ret
    876c:	d503201f 	nop
    8770:	a9412428 	ldp	x8, x9, [x1, #16]
    8774:	a9422c2a 	ldp	x10, x11, [x1, #32]
    8778:	a943342c 	ldp	x12, x13, [x1, #48]
    877c:	a97e0881 	ldp	x1, x2, [x4, #-32]
    8780:	a97f0c84 	ldp	x4, x3, [x4, #-16]
    8784:	a9001c06 	stp	x6, x7, [x0]
    8788:	a9012408 	stp	x8, x9, [x0, #16]
    878c:	a9022c0a 	stp	x10, x11, [x0, #32]
    8790:	a903340c 	stp	x12, x13, [x0, #48]
    8794:	a93e08a1 	stp	x1, x2, [x5, #-32]
    8798:	a93f0ca4 	stp	x4, x3, [x5, #-16]
    879c:	d65f03c0 	ret
    87a0:	92400c09 	and	x9, x0, #0xf
    87a4:	927cec03 	and	x3, x0, #0xfffffffffffffff0
    87a8:	a940342c 	ldp	x12, x13, [x1]
    87ac:	cb090021 	sub	x1, x1, x9
    87b0:	8b090042 	add	x2, x2, x9
    87b4:	a9411c26 	ldp	x6, x7, [x1, #16]
    87b8:	a900340c 	stp	x12, x13, [x0]
    87bc:	a9422428 	ldp	x8, x9, [x1, #32]
    87c0:	a9432c2a 	ldp	x10, x11, [x1, #48]
    87c4:	a9c4342c 	ldp	x12, x13, [x1, #64]!
    87c8:	f1024042 	subs	x2, x2, #0x90
    87cc:	54000169 	b.ls	87f8 <memcpy+0x138>  // b.plast
    87d0:	a9011c66 	stp	x6, x7, [x3, #16]
    87d4:	a9411c26 	ldp	x6, x7, [x1, #16]
    87d8:	a9022468 	stp	x8, x9, [x3, #32]
    87dc:	a9422428 	ldp	x8, x9, [x1, #32]
    87e0:	a9032c6a 	stp	x10, x11, [x3, #48]
    87e4:	a9432c2a 	ldp	x10, x11, [x1, #48]
    87e8:	a984346c 	stp	x12, x13, [x3, #64]!
    87ec:	a9c4342c 	ldp	x12, x13, [x1, #64]!
    87f0:	f1010042 	subs	x2, x2, #0x40
    87f4:	54fffee8 	b.hi	87d0 <memcpy+0x110>  // b.pmore
    87f8:	a97c0881 	ldp	x1, x2, [x4, #-64]
    87fc:	a9011c66 	stp	x6, x7, [x3, #16]
    8800:	a97d1c86 	ldp	x6, x7, [x4, #-48]
    8804:	a9022468 	stp	x8, x9, [x3, #32]
    8808:	a97e2488 	ldp	x8, x9, [x4, #-32]
    880c:	a9032c6a 	stp	x10, x11, [x3, #48]
    8810:	a97f2c8a 	ldp	x10, x11, [x4, #-16]
    8814:	a904346c 	stp	x12, x13, [x3, #64]
    8818:	a93c08a1 	stp	x1, x2, [x5, #-64]
    881c:	a93d1ca6 	stp	x6, x7, [x5, #-48]
    8820:	a93e24a8 	stp	x8, x9, [x5, #-32]
    8824:	a93f2caa 	stp	x10, x11, [x5, #-16]
    8828:	d65f03c0 	ret
    882c:	00000000 	.inst	0x00000000 ; undefined

0000000000008830 <__malloc_lock>:
    8830:	d65f03c0 	ret
    8834:	d503201f 	nop

0000000000008838 <__malloc_unlock>:
    8838:	d65f03c0 	ret
    883c:	00000000 	.inst	0x00000000 ; undefined

0000000000008840 <_Balloc>:
    8840:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    8844:	910003fd 	mov	x29, sp
    8848:	a90153f3 	stp	x19, x20, [sp, #16]
    884c:	2a0103f4 	mov	w20, w1
    8850:	f9403c01 	ldr	x1, [x0, #120]
    8854:	aa0003f3 	mov	x19, x0
    8858:	b4000141 	cbz	x1, 8880 <_Balloc+0x40>
    885c:	93407e82 	sxtw	x2, w20
    8860:	f8627820 	ldr	x0, [x1, x2, lsl #3]
    8864:	b40001e0 	cbz	x0, 88a0 <_Balloc+0x60>
    8868:	f9400003 	ldr	x3, [x0]
    886c:	f8227823 	str	x3, [x1, x2, lsl #3]
    8870:	f900081f 	str	xzr, [x0, #16]
    8874:	a94153f3 	ldp	x19, x20, [sp, #16]
    8878:	a8c37bfd 	ldp	x29, x30, [sp], #48
    887c:	d65f03c0 	ret
    8880:	d2800101 	mov	x1, #0x8                   	// #8
    8884:	d2800822 	mov	x2, #0x41                  	// #65
    8888:	94000b64 	bl	b618 <_calloc_r>
    888c:	f9003e60 	str	x0, [x19, #120]
    8890:	aa0003e1 	mov	x1, x0
    8894:	b5fffe40 	cbnz	x0, 885c <_Balloc+0x1c>
    8898:	d2800000 	mov	x0, #0x0                   	// #0
    889c:	17fffff6 	b	8874 <_Balloc+0x34>
    88a0:	f90013b5 	str	x21, [x29, #32]
    88a4:	52800035 	mov	w21, #0x1                   	// #1
    88a8:	1ad422b5 	lsl	w21, w21, w20
    88ac:	510006a2 	sub	w2, w21, #0x1
    88b0:	d2800021 	mov	x1, #0x1                   	// #1
    88b4:	aa1303e0 	mov	x0, x19
    88b8:	93407c42 	sxtw	x2, w2
    88bc:	91002042 	add	x2, x2, #0x8
    88c0:	d37ef442 	lsl	x2, x2, #2
    88c4:	94000b55 	bl	b618 <_calloc_r>
    88c8:	b4000080 	cbz	x0, 88d8 <_Balloc+0x98>
    88cc:	29015414 	stp	w20, w21, [x0, #8]
    88d0:	f94013b5 	ldr	x21, [x29, #32]
    88d4:	17ffffe7 	b	8870 <_Balloc+0x30>
    88d8:	f94013b5 	ldr	x21, [x29, #32]
    88dc:	d2800000 	mov	x0, #0x0                   	// #0
    88e0:	17ffffe5 	b	8874 <_Balloc+0x34>
    88e4:	d503201f 	nop

00000000000088e8 <_Bfree>:
    88e8:	b40000c1 	cbz	x1, 8900 <_Bfree+0x18>
    88ec:	b9800822 	ldrsw	x2, [x1, #8]
    88f0:	f9403c00 	ldr	x0, [x0, #120]
    88f4:	f8627803 	ldr	x3, [x0, x2, lsl #3]
    88f8:	f9000023 	str	x3, [x1]
    88fc:	f8227801 	str	x1, [x0, x2, lsl #3]
    8900:	d65f03c0 	ret
    8904:	d503201f 	nop

0000000000008908 <__multadd>:
    8908:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    890c:	91006025 	add	x5, x1, #0x18
    8910:	d2800004 	mov	x4, #0x0                   	// #0
    8914:	910003fd 	mov	x29, sp
    8918:	a90153f3 	stp	x19, x20, [sp, #16]
    891c:	aa0103f4 	mov	x20, x1
    8920:	b9401433 	ldr	w19, [x1, #20]
    8924:	f90013f5 	str	x21, [sp, #32]
    8928:	aa0003f5 	mov	x21, x0
    892c:	d503201f 	nop
    8930:	b86478a0 	ldr	w0, [x5, x4, lsl #2]
    8934:	12003c01 	and	w1, w0, #0xffff
    8938:	53107c00 	lsr	w0, w0, #16
    893c:	1b020c23 	madd	w3, w1, w2, w3
    8940:	12003c61 	and	w1, w3, #0xffff
    8944:	53107c63 	lsr	w3, w3, #16
    8948:	1b020c03 	madd	w3, w0, w2, w3
    894c:	0b034020 	add	w0, w1, w3, lsl #16
    8950:	b82478a0 	str	w0, [x5, x4, lsl #2]
    8954:	91000484 	add	x4, x4, #0x1
    8958:	53107c63 	lsr	w3, w3, #16
    895c:	6b04027f 	cmp	w19, w4
    8960:	54fffe8c 	b.gt	8930 <__multadd+0x28>
    8964:	34000103 	cbz	w3, 8984 <__multadd+0x7c>
    8968:	b9400e80 	ldr	w0, [x20, #12]
    896c:	6b13001f 	cmp	w0, w19
    8970:	5400014d 	b.le	8998 <__multadd+0x90>
    8974:	8b33ca80 	add	x0, x20, w19, sxtw #2
    8978:	11000673 	add	w19, w19, #0x1
    897c:	b9001803 	str	w3, [x0, #24]
    8980:	b9001693 	str	w19, [x20, #20]
    8984:	aa1403e0 	mov	x0, x20
    8988:	f94013f5 	ldr	x21, [sp, #32]
    898c:	a94153f3 	ldp	x19, x20, [sp, #16]
    8990:	a8c47bfd 	ldp	x29, x30, [sp], #64
    8994:	d65f03c0 	ret
    8998:	b9400a81 	ldr	w1, [x20, #8]
    899c:	aa1503e0 	mov	x0, x21
    89a0:	f90017b6 	str	x22, [x29, #40]
    89a4:	b9003fa3 	str	w3, [x29, #60]
    89a8:	11000421 	add	w1, w1, #0x1
    89ac:	97ffffa5 	bl	8840 <_Balloc>
    89b0:	aa0003f6 	mov	x22, x0
    89b4:	b9801682 	ldrsw	x2, [x20, #20]
    89b8:	91004281 	add	x1, x20, #0x10
    89bc:	91004000 	add	x0, x0, #0x10
    89c0:	91000842 	add	x2, x2, #0x2
    89c4:	d37ef442 	lsl	x2, x2, #2
    89c8:	97ffff3e 	bl	86c0 <memcpy>
    89cc:	b9800a81 	ldrsw	x1, [x20, #8]
    89d0:	f9403ea0 	ldr	x0, [x21, #120]
    89d4:	b9403fa3 	ldr	w3, [x29, #60]
    89d8:	f8617802 	ldr	x2, [x0, x1, lsl #3]
    89dc:	f9000282 	str	x2, [x20]
    89e0:	f8217814 	str	x20, [x0, x1, lsl #3]
    89e4:	aa1603f4 	mov	x20, x22
    89e8:	f94017b6 	ldr	x22, [x29, #40]
    89ec:	17ffffe2 	b	8974 <__multadd+0x6c>

00000000000089f0 <__s2b>:
    89f0:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
    89f4:	5291c725 	mov	w5, #0x8e39                	// #36409
    89f8:	72a71c65 	movk	w5, #0x38e3, lsl #16
    89fc:	910003fd 	mov	x29, sp
    8a00:	a90153f3 	stp	x19, x20, [sp, #16]
    8a04:	2a0303f4 	mov	w20, w3
    8a08:	11002063 	add	w3, w3, #0x8
    8a0c:	a9025bf5 	stp	x21, x22, [sp, #32]
    8a10:	2a0203f6 	mov	w22, w2
    8a14:	f9001bf7 	str	x23, [sp, #48]
    8a18:	aa0003f5 	mov	x21, x0
    8a1c:	aa0103f3 	mov	x19, x1
    8a20:	9b257c62 	smull	x2, w3, w5
    8a24:	2a0403f7 	mov	w23, w4
    8a28:	9361fc42 	asr	x2, x2, #33
    8a2c:	4b837c42 	sub	w2, w2, w3, asr #31
    8a30:	7100045f 	cmp	w2, #0x1
    8a34:	540006ad 	b.le	8b08 <__s2b+0x118>
    8a38:	52800020 	mov	w0, #0x1                   	// #1
    8a3c:	52800001 	mov	w1, #0x0                   	// #0
    8a40:	531f7800 	lsl	w0, w0, #1
    8a44:	11000421 	add	w1, w1, #0x1
    8a48:	6b00005f 	cmp	w2, w0
    8a4c:	54ffffac 	b.gt	8a40 <__s2b+0x50>
    8a50:	aa1503e0 	mov	x0, x21
    8a54:	97ffff7b 	bl	8840 <_Balloc>
    8a58:	52800021 	mov	w1, #0x1                   	// #1
    8a5c:	2902dc01 	stp	w1, w23, [x0, #20]
    8a60:	710026df 	cmp	w22, #0x9
    8a64:	540004cd 	b.le	8afc <__s2b+0x10c>
    8a68:	a903e7b8 	stp	x24, x25, [x29, #56]
    8a6c:	51002ad9 	sub	w25, w22, #0xa
    8a70:	91002678 	add	x24, x19, #0x9
    8a74:	91002b21 	add	x1, x25, #0xa
    8a78:	aa1803f7 	mov	x23, x24
    8a7c:	8b010273 	add	x19, x19, x1
    8a80:	384016e3 	ldrb	w3, [x23], #1
    8a84:	aa0003e1 	mov	x1, x0
    8a88:	52800142 	mov	w2, #0xa                   	// #10
    8a8c:	aa1503e0 	mov	x0, x21
    8a90:	5100c063 	sub	w3, w3, #0x30
    8a94:	97ffff9d 	bl	8908 <__multadd>
    8a98:	eb1302ff 	cmp	x23, x19
    8a9c:	54ffff21 	b.ne	8a80 <__s2b+0x90>  // b.any
    8aa0:	8b190313 	add	x19, x24, x25
    8aa4:	a943e7b8 	ldp	x24, x25, [x29, #56]
    8aa8:	91000a73 	add	x19, x19, #0x2
    8aac:	6b16029f 	cmp	w20, w22
    8ab0:	540001cd 	b.le	8ae8 <__s2b+0xf8>
    8ab4:	51000694 	sub	w20, w20, #0x1
    8ab8:	4b160294 	sub	w20, w20, w22
    8abc:	91000694 	add	x20, x20, #0x1
    8ac0:	8b140274 	add	x20, x19, x20
    8ac4:	d503201f 	nop
    8ac8:	38401663 	ldrb	w3, [x19], #1
    8acc:	aa0003e1 	mov	x1, x0
    8ad0:	52800142 	mov	w2, #0xa                   	// #10
    8ad4:	aa1503e0 	mov	x0, x21
    8ad8:	5100c063 	sub	w3, w3, #0x30
    8adc:	97ffff8b 	bl	8908 <__multadd>
    8ae0:	eb14027f 	cmp	x19, x20
    8ae4:	54ffff21 	b.ne	8ac8 <__s2b+0xd8>  // b.any
    8ae8:	a94153f3 	ldp	x19, x20, [sp, #16]
    8aec:	a9425bf5 	ldp	x21, x22, [sp, #32]
    8af0:	f9401bf7 	ldr	x23, [sp, #48]
    8af4:	a8c57bfd 	ldp	x29, x30, [sp], #80
    8af8:	d65f03c0 	ret
    8afc:	91002a73 	add	x19, x19, #0xa
    8b00:	52800136 	mov	w22, #0x9                   	// #9
    8b04:	17ffffea 	b	8aac <__s2b+0xbc>
    8b08:	52800001 	mov	w1, #0x0                   	// #0
    8b0c:	17ffffd1 	b	8a50 <__s2b+0x60>

0000000000008b10 <__hi0bits>:
    8b10:	52800001 	mov	w1, #0x0                   	// #0
    8b14:	72103c1f 	tst	w0, #0xffff0000
    8b18:	54000061 	b.ne	8b24 <__hi0bits+0x14>  // b.any
    8b1c:	53103c00 	lsl	w0, w0, #16
    8b20:	52800201 	mov	w1, #0x10                  	// #16
    8b24:	72081c1f 	tst	w0, #0xff000000
    8b28:	54000061 	b.ne	8b34 <__hi0bits+0x24>  // b.any
    8b2c:	11002021 	add	w1, w1, #0x8
    8b30:	53185c00 	lsl	w0, w0, #8
    8b34:	72040c1f 	tst	w0, #0xf0000000
    8b38:	54000061 	b.ne	8b44 <__hi0bits+0x34>  // b.any
    8b3c:	11001021 	add	w1, w1, #0x4
    8b40:	531c6c00 	lsl	w0, w0, #4
    8b44:	7202041f 	tst	w0, #0xc0000000
    8b48:	54000061 	b.ne	8b54 <__hi0bits+0x44>  // b.any
    8b4c:	11000821 	add	w1, w1, #0x2
    8b50:	531e7400 	lsl	w0, w0, #2
    8b54:	37f80080 	tbnz	w0, #31, 8b64 <__hi0bits+0x54>
    8b58:	f262001f 	tst	x0, #0x40000000
    8b5c:	52800400 	mov	w0, #0x20                  	// #32
    8b60:	1a810401 	csinc	w1, w0, w1, eq  // eq = none
    8b64:	2a0103e0 	mov	w0, w1
    8b68:	d65f03c0 	ret
    8b6c:	d503201f 	nop

0000000000008b70 <__lo0bits>:
    8b70:	b9400001 	ldr	w1, [x0]
    8b74:	aa0003e2 	mov	x2, x0
    8b78:	f240083f 	tst	x1, #0x7
    8b7c:	54000100 	b.eq	8b9c <__lo0bits+0x2c>  // b.none
    8b80:	52800000 	mov	w0, #0x0                   	// #0
    8b84:	370000a1 	tbnz	w1, #0, 8b98 <__lo0bits+0x28>
    8b88:	36080381 	tbz	w1, #1, 8bf8 <__lo0bits+0x88>
    8b8c:	53017c21 	lsr	w1, w1, #1
    8b90:	52800020 	mov	w0, #0x1                   	// #1
    8b94:	b9000041 	str	w1, [x2]
    8b98:	d65f03c0 	ret
    8b9c:	12003c23 	and	w3, w1, #0xffff
    8ba0:	52800000 	mov	w0, #0x0                   	// #0
    8ba4:	35000063 	cbnz	w3, 8bb0 <__lo0bits+0x40>
    8ba8:	53107c21 	lsr	w1, w1, #16
    8bac:	52800200 	mov	w0, #0x10                  	// #16
    8bb0:	12001c23 	and	w3, w1, #0xff
    8bb4:	35000063 	cbnz	w3, 8bc0 <__lo0bits+0x50>
    8bb8:	11002000 	add	w0, w0, #0x8
    8bbc:	53087c21 	lsr	w1, w1, #8
    8bc0:	f2400c3f 	tst	x1, #0xf
    8bc4:	54000061 	b.ne	8bd0 <__lo0bits+0x60>  // b.any
    8bc8:	11001000 	add	w0, w0, #0x4
    8bcc:	53047c21 	lsr	w1, w1, #4
    8bd0:	f240043f 	tst	x1, #0x3
    8bd4:	54000061 	b.ne	8be0 <__lo0bits+0x70>  // b.any
    8bd8:	11000800 	add	w0, w0, #0x2
    8bdc:	53027c21 	lsr	w1, w1, #2
    8be0:	37000081 	tbnz	w1, #0, 8bf0 <__lo0bits+0x80>
    8be4:	53017c21 	lsr	w1, w1, #1
    8be8:	34000101 	cbz	w1, 8c08 <__lo0bits+0x98>
    8bec:	11000400 	add	w0, w0, #0x1
    8bf0:	b9000041 	str	w1, [x2]
    8bf4:	d65f03c0 	ret
    8bf8:	53027c21 	lsr	w1, w1, #2
    8bfc:	52800040 	mov	w0, #0x2                   	// #2
    8c00:	b9000041 	str	w1, [x2]
    8c04:	d65f03c0 	ret
    8c08:	52800400 	mov	w0, #0x20                  	// #32
    8c0c:	d65f03c0 	ret

0000000000008c10 <__i2b>:
    8c10:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    8c14:	910003fd 	mov	x29, sp
    8c18:	f9000bf3 	str	x19, [sp, #16]
    8c1c:	2a0103f3 	mov	w19, w1
    8c20:	52800021 	mov	w1, #0x1                   	// #1
    8c24:	97ffff07 	bl	8840 <_Balloc>
    8c28:	52800022 	mov	w2, #0x1                   	// #1
    8c2c:	2902cc02 	stp	w2, w19, [x0, #20]
    8c30:	f9400bf3 	ldr	x19, [sp, #16]
    8c34:	a8c27bfd 	ldp	x29, x30, [sp], #32
    8c38:	d65f03c0 	ret
    8c3c:	d503201f 	nop

0000000000008c40 <__multiply>:
    8c40:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    8c44:	910003fd 	mov	x29, sp
    8c48:	a90153f3 	stp	x19, x20, [sp, #16]
    8c4c:	aa0103f4 	mov	x20, x1
    8c50:	a9025bf5 	stp	x21, x22, [sp, #32]
    8c54:	b9401435 	ldr	w21, [x1, #20]
    8c58:	b9401456 	ldr	w22, [x2, #20]
    8c5c:	f9001bf7 	str	x23, [sp, #48]
    8c60:	aa0203f7 	mov	x23, x2
    8c64:	6b1602bf 	cmp	w21, w22
    8c68:	540000ca 	b.ge	8c80 <__multiply+0x40>  // b.tcont
    8c6c:	2a1503e2 	mov	w2, w21
    8c70:	aa1703f4 	mov	x20, x23
    8c74:	2a1603f5 	mov	w21, w22
    8c78:	aa0103f7 	mov	x23, x1
    8c7c:	2a0203f6 	mov	w22, w2
    8c80:	29410a81 	ldp	w1, w2, [x20, #8]
    8c84:	0b1602b3 	add	w19, w21, w22
    8c88:	6b13005f 	cmp	w2, w19
    8c8c:	1a81a421 	cinc	w1, w1, lt  // lt = tstop
    8c90:	97fffeec 	bl	8840 <_Balloc>
    8c94:	91006008 	add	x8, x0, #0x18
    8c98:	8b33c907 	add	x7, x8, w19, sxtw #2
    8c9c:	eb07011f 	cmp	x8, x7
    8ca0:	540000a2 	b.cs	8cb4 <__multiply+0x74>  // b.hs, b.nlast
    8ca4:	aa0803e1 	mov	x1, x8
    8ca8:	b800443f 	str	wzr, [x1], #4
    8cac:	eb0100ff 	cmp	x7, x1
    8cb0:	54ffffc8 	b.hi	8ca8 <__multiply+0x68>  // b.pmore
    8cb4:	910062e2 	add	x2, x23, #0x18
    8cb8:	9100628a 	add	x10, x20, #0x18
    8cbc:	8b36c849 	add	x9, x2, w22, sxtw #2
    8cc0:	8b35c946 	add	x6, x10, w21, sxtw #2
    8cc4:	eb09005f 	cmp	x2, x9
    8cc8:	54000103 	b.cc	8ce8 <__multiply+0xa8>  // b.lo, b.ul, b.last
    8ccc:	14000041 	b	8dd0 <__multiply+0x190>
    8cd0:	53107ca5 	lsr	w5, w5, #16
    8cd4:	35000445 	cbnz	w5, 8d5c <__multiply+0x11c>
    8cd8:	91001042 	add	x2, x2, #0x4
    8cdc:	91001108 	add	x8, x8, #0x4
    8ce0:	eb02013f 	cmp	x9, x2
    8ce4:	54000769 	b.ls	8dd0 <__multiply+0x190>  // b.plast
    8ce8:	b9400045 	ldr	w5, [x2]
    8cec:	72003cad 	ands	w13, w5, #0xffff
    8cf0:	54ffff00 	b.eq	8cd0 <__multiply+0x90>  // b.none
    8cf4:	aa0803eb 	mov	x11, x8
    8cf8:	aa0a03ec 	mov	x12, x10
    8cfc:	5280000e 	mov	w14, #0x0                   	// #0
    8d00:	14000002 	b	8d08 <__multiply+0xc8>
    8d04:	aa0503eb 	mov	x11, x5
    8d08:	b8404583 	ldr	w3, [x12], #4
    8d0c:	aa0b03e5 	mov	x5, x11
    8d10:	b9400164 	ldr	w4, [x11]
    8d14:	12003c61 	and	w1, w3, #0xffff
    8d18:	eb0c00df 	cmp	x6, x12
    8d1c:	12003c8f 	and	w15, w4, #0xffff
    8d20:	53107c63 	lsr	w3, w3, #16
    8d24:	53107c84 	lsr	w4, w4, #16
    8d28:	1b0d3c21 	madd	w1, w1, w13, w15
    8d2c:	1b0d1063 	madd	w3, w3, w13, w4
    8d30:	0b0e0021 	add	w1, w1, w14
    8d34:	12003c24 	and	w4, w1, #0xffff
    8d38:	0b414061 	add	w1, w3, w1, lsr #16
    8d3c:	2a014083 	orr	w3, w4, w1, lsl #16
    8d40:	b80044a3 	str	w3, [x5], #4
    8d44:	53107c2e 	lsr	w14, w1, #16
    8d48:	54fffde8 	b.hi	8d04 <__multiply+0xc4>  // b.pmore
    8d4c:	b900056e 	str	w14, [x11, #4]
    8d50:	b9400045 	ldr	w5, [x2]
    8d54:	53107ca5 	lsr	w5, w5, #16
    8d58:	34fffc05 	cbz	w5, 8cd8 <__multiply+0x98>
    8d5c:	b9400101 	ldr	w1, [x8]
    8d60:	aa0803ed 	mov	x13, x8
    8d64:	aa0a03eb 	mov	x11, x10
    8d68:	5280000e 	mov	w14, #0x0                   	// #0
    8d6c:	2a0103e4 	mov	w4, w1
    8d70:	14000002 	b	8d78 <__multiply+0x138>
    8d74:	aa0c03ed 	mov	x13, x12
    8d78:	79400163 	ldrh	w3, [x11]
    8d7c:	53107c84 	lsr	w4, w4, #16
    8d80:	aa0d03ec 	mov	x12, x13
    8d84:	12003c21 	and	w1, w1, #0xffff
    8d88:	1b051063 	madd	w3, w3, w5, w4
    8d8c:	0b0e0063 	add	w3, w3, w14
    8d90:	2a034021 	orr	w1, w1, w3, lsl #16
    8d94:	b8004581 	str	w1, [x12], #4
    8d98:	b8404561 	ldr	w1, [x11], #4
    8d9c:	b94005a4 	ldr	w4, [x13, #4]
    8da0:	eb0b00df 	cmp	x6, x11
    8da4:	12003c8e 	and	w14, w4, #0xffff
    8da8:	53107c21 	lsr	w1, w1, #16
    8dac:	1b053821 	madd	w1, w1, w5, w14
    8db0:	0b434021 	add	w1, w1, w3, lsr #16
    8db4:	53107c2e 	lsr	w14, w1, #16
    8db8:	54fffde8 	b.hi	8d74 <__multiply+0x134>  // b.pmore
    8dbc:	b90005a1 	str	w1, [x13, #4]
    8dc0:	91001042 	add	x2, x2, #0x4
    8dc4:	91001108 	add	x8, x8, #0x4
    8dc8:	eb02013f 	cmp	x9, x2
    8dcc:	54fff8e8 	b.hi	8ce8 <__multiply+0xa8>  // b.pmore
    8dd0:	7100027f 	cmp	w19, #0x0
    8dd4:	5400012d 	b.le	8df8 <__multiply+0x1b8>
    8dd8:	b85fc0e1 	ldur	w1, [x7, #-4]
    8ddc:	d10010e7 	sub	x7, x7, #0x4
    8de0:	34000081 	cbz	w1, 8df0 <__multiply+0x1b0>
    8de4:	14000005 	b	8df8 <__multiply+0x1b8>
    8de8:	b85fcce1 	ldr	w1, [x7, #-4]!
    8dec:	35000061 	cbnz	w1, 8df8 <__multiply+0x1b8>
    8df0:	71000673 	subs	w19, w19, #0x1
    8df4:	54ffffa1 	b.ne	8de8 <__multiply+0x1a8>  // b.any
    8df8:	a9425bf5 	ldp	x21, x22, [sp, #32]
    8dfc:	f9401bf7 	ldr	x23, [sp, #48]
    8e00:	b9001413 	str	w19, [x0, #20]
    8e04:	a94153f3 	ldp	x19, x20, [sp, #16]
    8e08:	a8c47bfd 	ldp	x29, x30, [sp], #64
    8e0c:	d65f03c0 	ret

0000000000008e10 <__pow5mult>:
    8e10:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    8e14:	910003fd 	mov	x29, sp
    8e18:	f9000bf3 	str	x19, [sp, #16]
    8e1c:	2a0203f3 	mov	w19, w2
    8e20:	a9025bf5 	stp	x21, x22, [sp, #32]
    8e24:	72000442 	ands	w2, w2, #0x3
    8e28:	f9001bf7 	str	x23, [sp, #48]
    8e2c:	aa0003f6 	mov	x22, x0
    8e30:	aa0103f7 	mov	x23, x1
    8e34:	540005a1 	b.ne	8ee8 <__pow5mult+0xd8>  // b.any
    8e38:	13027e73 	asr	w19, w19, #2
    8e3c:	aa1703f5 	mov	x21, x23
    8e40:	34000353 	cbz	w19, 8ea8 <__pow5mult+0x98>
    8e44:	f9000fb4 	str	x20, [x29, #24]
    8e48:	f9403ad4 	ldr	x20, [x22, #112]
    8e4c:	b40005f4 	cbz	x20, 8f08 <__pow5mult+0xf8>
    8e50:	aa1703f5 	mov	x21, x23
    8e54:	370000f3 	tbnz	w19, #0, 8e70 <__pow5mult+0x60>
    8e58:	13017e73 	asr	w19, w19, #1
    8e5c:	34000253 	cbz	w19, 8ea4 <__pow5mult+0x94>
    8e60:	f9400280 	ldr	x0, [x20]
    8e64:	b40002e0 	cbz	x0, 8ec0 <__pow5mult+0xb0>
    8e68:	aa0003f4 	mov	x20, x0
    8e6c:	3607ff73 	tbz	w19, #0, 8e58 <__pow5mult+0x48>
    8e70:	aa1403e2 	mov	x2, x20
    8e74:	aa1503e1 	mov	x1, x21
    8e78:	aa1603e0 	mov	x0, x22
    8e7c:	97ffff71 	bl	8c40 <__multiply>
    8e80:	b4000315 	cbz	x21, 8ee0 <__pow5mult+0xd0>
    8e84:	b9800aa2 	ldrsw	x2, [x21, #8]
    8e88:	13017e73 	asr	w19, w19, #1
    8e8c:	f9403ec1 	ldr	x1, [x22, #120]
    8e90:	f8627823 	ldr	x3, [x1, x2, lsl #3]
    8e94:	f90002a3 	str	x3, [x21]
    8e98:	f8227835 	str	x21, [x1, x2, lsl #3]
    8e9c:	aa0003f5 	mov	x21, x0
    8ea0:	35fffe13 	cbnz	w19, 8e60 <__pow5mult+0x50>
    8ea4:	f9400fb4 	ldr	x20, [x29, #24]
    8ea8:	aa1503e0 	mov	x0, x21
    8eac:	f9400bf3 	ldr	x19, [sp, #16]
    8eb0:	a9425bf5 	ldp	x21, x22, [sp, #32]
    8eb4:	f9401bf7 	ldr	x23, [sp, #48]
    8eb8:	a8c47bfd 	ldp	x29, x30, [sp], #64
    8ebc:	d65f03c0 	ret
    8ec0:	aa1403e2 	mov	x2, x20
    8ec4:	aa1403e1 	mov	x1, x20
    8ec8:	aa1603e0 	mov	x0, x22
    8ecc:	97ffff5d 	bl	8c40 <__multiply>
    8ed0:	f9000280 	str	x0, [x20]
    8ed4:	aa0003f4 	mov	x20, x0
    8ed8:	f900001f 	str	xzr, [x0]
    8edc:	17ffffe4 	b	8e6c <__pow5mult+0x5c>
    8ee0:	aa0003f5 	mov	x21, x0
    8ee4:	17ffffdd 	b	8e58 <__pow5mult+0x48>
    8ee8:	51000442 	sub	w2, w2, #0x1
    8eec:	b0000024 	adrp	x4, d000 <__trunctfdf2+0x290>
    8ef0:	910c8084 	add	x4, x4, #0x320
    8ef4:	52800003 	mov	w3, #0x0                   	// #0
    8ef8:	b862d882 	ldr	w2, [x4, w2, sxtw #2]
    8efc:	97fffe83 	bl	8908 <__multadd>
    8f00:	aa0003f7 	mov	x23, x0
    8f04:	17ffffcd 	b	8e38 <__pow5mult+0x28>
    8f08:	52800021 	mov	w1, #0x1                   	// #1
    8f0c:	aa1603e0 	mov	x0, x22
    8f10:	97fffe4c 	bl	8840 <_Balloc>
    8f14:	aa0003f4 	mov	x20, x0
    8f18:	d2800020 	mov	x0, #0x1                   	// #1
    8f1c:	aa1703f5 	mov	x21, x23
    8f20:	f2c04e20 	movk	x0, #0x271, lsl #32
    8f24:	f8014280 	stur	x0, [x20, #20]
    8f28:	f9003ad4 	str	x20, [x22, #112]
    8f2c:	f900029f 	str	xzr, [x20]
    8f30:	17ffffc9 	b	8e54 <__pow5mult+0x44>
    8f34:	d503201f 	nop

0000000000008f38 <__lshift>:
    8f38:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    8f3c:	910003fd 	mov	x29, sp
    8f40:	a9025bf5 	stp	x21, x22, [sp, #32]
    8f44:	aa0103f5 	mov	x21, x1
    8f48:	b9401436 	ldr	w22, [x1, #20]
    8f4c:	a90153f3 	stp	x19, x20, [sp, #16]
    8f50:	13057c54 	asr	w20, w2, #5
    8f54:	a90363f7 	stp	x23, x24, [sp, #48]
    8f58:	0b160296 	add	w22, w20, w22
    8f5c:	aa0003f7 	mov	x23, x0
    8f60:	b9400c20 	ldr	w0, [x1, #12]
    8f64:	110006d3 	add	w19, w22, #0x1
    8f68:	2a0203f8 	mov	w24, w2
    8f6c:	b9400821 	ldr	w1, [x1, #8]
    8f70:	6b00027f 	cmp	w19, w0
    8f74:	540000ad 	b.le	8f88 <__lshift+0x50>
    8f78:	531f7800 	lsl	w0, w0, #1
    8f7c:	11000421 	add	w1, w1, #0x1
    8f80:	6b00027f 	cmp	w19, w0
    8f84:	54ffffac 	b.gt	8f78 <__lshift+0x40>
    8f88:	aa1703e0 	mov	x0, x23
    8f8c:	97fffe2d 	bl	8840 <_Balloc>
    8f90:	7100029f 	cmp	w20, #0x0
    8f94:	91006004 	add	x4, x0, #0x18
    8f98:	5400016d 	b.le	8fc4 <__lshift+0x8c>
    8f9c:	51000694 	sub	w20, w20, #0x1
    8fa0:	d2800083 	mov	x3, #0x4                   	// #4
    8fa4:	aa0403e1 	mov	x1, x4
    8fa8:	8b344863 	add	x3, x3, w20, uxtw #2
    8fac:	8b040063 	add	x3, x3, x4
    8fb0:	b800443f 	str	wzr, [x1], #4
    8fb4:	eb01007f 	cmp	x3, x1
    8fb8:	54ffffc1 	b.ne	8fb0 <__lshift+0x78>  // b.any
    8fbc:	91000694 	add	x20, x20, #0x1
    8fc0:	8b140884 	add	x4, x4, x20, lsl #2
    8fc4:	b98016a7 	ldrsw	x7, [x21, #20]
    8fc8:	910062a1 	add	x1, x21, #0x18
    8fcc:	72001302 	ands	w2, w24, #0x1f
    8fd0:	8b070827 	add	x7, x1, x7, lsl #2
    8fd4:	540003e0 	b.eq	9050 <__lshift+0x118>  // b.none
    8fd8:	52800408 	mov	w8, #0x20                  	// #32
    8fdc:	52800005 	mov	w5, #0x0                   	// #0
    8fe0:	4b020108 	sub	w8, w8, w2
    8fe4:	14000002 	b	8fec <__lshift+0xb4>
    8fe8:	aa0603e4 	mov	x4, x6
    8fec:	b9400023 	ldr	w3, [x1]
    8ff0:	aa0403e6 	mov	x6, x4
    8ff4:	1ac22063 	lsl	w3, w3, w2
    8ff8:	2a050063 	orr	w3, w3, w5
    8ffc:	b80044c3 	str	w3, [x6], #4
    9000:	b8404423 	ldr	w3, [x1], #4
    9004:	eb0100ff 	cmp	x7, x1
    9008:	1ac82465 	lsr	w5, w3, w8
    900c:	54fffee8 	b.hi	8fe8 <__lshift+0xb0>  // b.pmore
    9010:	11000ad6 	add	w22, w22, #0x2
    9014:	710000bf 	cmp	w5, #0x0
    9018:	1a9312d3 	csel	w19, w22, w19, ne  // ne = any
    901c:	b9000485 	str	w5, [x4, #4]
    9020:	b9800aa2 	ldrsw	x2, [x21, #8]
    9024:	51000673 	sub	w19, w19, #0x1
    9028:	f9403ee1 	ldr	x1, [x23, #120]
    902c:	a94363f7 	ldp	x23, x24, [sp, #48]
    9030:	f8627823 	ldr	x3, [x1, x2, lsl #3]
    9034:	b9001413 	str	w19, [x0, #20]
    9038:	a94153f3 	ldp	x19, x20, [sp, #16]
    903c:	f90002a3 	str	x3, [x21]
    9040:	f8227835 	str	x21, [x1, x2, lsl #3]
    9044:	a9425bf5 	ldp	x21, x22, [sp, #32]
    9048:	a8c47bfd 	ldp	x29, x30, [sp], #64
    904c:	d65f03c0 	ret
    9050:	b8404422 	ldr	w2, [x1], #4
    9054:	b8004482 	str	w2, [x4], #4
    9058:	eb0100ff 	cmp	x7, x1
    905c:	54fffe29 	b.ls	9020 <__lshift+0xe8>  // b.plast
    9060:	b8404422 	ldr	w2, [x1], #4
    9064:	b8004482 	str	w2, [x4], #4
    9068:	eb0100ff 	cmp	x7, x1
    906c:	54ffff28 	b.hi	9050 <__lshift+0x118>  // b.pmore
    9070:	17ffffec 	b	9020 <__lshift+0xe8>
    9074:	d503201f 	nop

0000000000009078 <__mcmp>:
    9078:	aa0003e5 	mov	x5, x0
    907c:	b9401422 	ldr	w2, [x1, #20]
    9080:	b9401400 	ldr	w0, [x0, #20]
    9084:	6b020000 	subs	w0, w0, w2
    9088:	540001e1 	b.ne	90c4 <__mcmp+0x4c>  // b.any
    908c:	937e7c43 	sbfiz	x3, x2, #2, #32
    9090:	910060a5 	add	x5, x5, #0x18
    9094:	91006021 	add	x1, x1, #0x18
    9098:	8b0300a2 	add	x2, x5, x3
    909c:	8b030021 	add	x1, x1, x3
    90a0:	14000003 	b	90ac <__mcmp+0x34>
    90a4:	eb0200bf 	cmp	x5, x2
    90a8:	540000e2 	b.cs	90c4 <__mcmp+0x4c>  // b.hs, b.nlast
    90ac:	b85fcc44 	ldr	w4, [x2, #-4]!
    90b0:	b85fcc23 	ldr	w3, [x1, #-4]!
    90b4:	6b03009f 	cmp	w4, w3
    90b8:	54ffff60 	b.eq	90a4 <__mcmp+0x2c>  // b.none
    90bc:	52800020 	mov	w0, #0x1                   	// #1
    90c0:	5a802400 	cneg	w0, w0, cc  // cc = lo, ul, last
    90c4:	d65f03c0 	ret

00000000000090c8 <__mdiff>:
    90c8:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    90cc:	910003fd 	mov	x29, sp
    90d0:	a90153f3 	stp	x19, x20, [sp, #16]
    90d4:	91006034 	add	x20, x1, #0x18
    90d8:	a9025bf5 	stp	x21, x22, [sp, #32]
    90dc:	aa0103f6 	mov	x22, x1
    90e0:	b9401435 	ldr	w21, [x1, #20]
    90e4:	91006053 	add	x19, x2, #0x18
    90e8:	b9401441 	ldr	w1, [x2, #20]
    90ec:	f9001bf7 	str	x23, [sp, #48]
    90f0:	aa0203f7 	mov	x23, x2
    90f4:	4b0102b5 	sub	w21, w21, w1
    90f8:	710002bf 	cmp	w21, #0x0
    90fc:	54000881 	b.ne	920c <__mdiff+0x144>  // b.any
    9100:	937e7c21 	sbfiz	x1, x1, #2, #32
    9104:	8b010283 	add	x3, x20, x1
    9108:	8b010261 	add	x1, x19, x1
    910c:	14000003 	b	9118 <__mdiff+0x50>
    9110:	eb14007f 	cmp	x3, x20
    9114:	54000909 	b.ls	9234 <__mdiff+0x16c>  // b.plast
    9118:	b85fcc65 	ldr	w5, [x3, #-4]!
    911c:	b85fcc24 	ldr	w4, [x1, #-4]!
    9120:	6b0400bf 	cmp	w5, w4
    9124:	54ffff60 	b.eq	9110 <__mdiff+0x48>  // b.none
    9128:	54000763 	b.cc	9214 <__mdiff+0x14c>  // b.lo, b.ul, b.last
    912c:	d503201f 	nop
    9130:	b9400ac1 	ldr	w1, [x22, #8]
    9134:	97fffdc3 	bl	8840 <_Balloc>
    9138:	91006003 	add	x3, x0, #0x18
    913c:	b98016e7 	ldrsw	x7, [x23, #20]
    9140:	52800001 	mov	w1, #0x0                   	// #0
    9144:	b94016c8 	ldr	w8, [x22, #20]
    9148:	b9001015 	str	w21, [x0, #16]
    914c:	8b070a67 	add	x7, x19, x7, lsl #2
    9150:	8b28ca86 	add	x6, x20, w8, sxtw #2
    9154:	14000002 	b	915c <__mdiff+0x94>
    9158:	aa0503f4 	mov	x20, x5
    915c:	aa1403e5 	mov	x5, x20
    9160:	b8404662 	ldr	w2, [x19], #4
    9164:	eb1300ff 	cmp	x7, x19
    9168:	b84044a4 	ldr	w4, [x5], #4
    916c:	0b242021 	add	w1, w1, w4, uxth
    9170:	53107c84 	lsr	w4, w4, #16
    9174:	4b222021 	sub	w1, w1, w2, uxth
    9178:	4b424084 	sub	w4, w4, w2, lsr #16
    917c:	12003c22 	and	w2, w1, #0xffff
    9180:	0b814081 	add	w1, w4, w1, asr #16
    9184:	2a014042 	orr	w2, w2, w1, lsl #16
    9188:	b8004462 	str	w2, [x3], #4
    918c:	13107c21 	asr	w1, w1, #16
    9190:	54fffe48 	b.hi	9158 <__mdiff+0x90>  // b.pmore
    9194:	eb0500df 	cmp	x6, x5
    9198:	54000249 	b.ls	91e0 <__mdiff+0x118>  // b.plast
    919c:	cb1400c7 	sub	x7, x6, x20
    91a0:	d2800006 	mov	x6, #0x0                   	// #0
    91a4:	d10014e7 	sub	x7, x7, #0x5
    91a8:	927ef4e7 	and	x7, x7, #0xfffffffffffffffc
    91ac:	910010e7 	add	x7, x7, #0x4
    91b0:	b86668a4 	ldr	w4, [x5, x6]
    91b4:	0b242021 	add	w1, w1, w4, uxth
    91b8:	12003c22 	and	w2, w1, #0xffff
    91bc:	13107c21 	asr	w1, w1, #16
    91c0:	0b444021 	add	w1, w1, w4, lsr #16
    91c4:	2a014042 	orr	w2, w2, w1, lsl #16
    91c8:	b8266862 	str	w2, [x3, x6]
    91cc:	910010c6 	add	x6, x6, #0x4
    91d0:	13107c21 	asr	w1, w1, #16
    91d4:	eb0600ff 	cmp	x7, x6
    91d8:	54fffec1 	b.ne	91b0 <__mdiff+0xe8>  // b.any
    91dc:	8b070063 	add	x3, x3, x7
    91e0:	d1001063 	sub	x3, x3, #0x4
    91e4:	35000082 	cbnz	w2, 91f4 <__mdiff+0x12c>
    91e8:	b85fcc61 	ldr	w1, [x3, #-4]!
    91ec:	51000508 	sub	w8, w8, #0x1
    91f0:	34ffffc1 	cbz	w1, 91e8 <__mdiff+0x120>
    91f4:	b9001408 	str	w8, [x0, #20]
    91f8:	a94153f3 	ldp	x19, x20, [sp, #16]
    91fc:	a9425bf5 	ldp	x21, x22, [sp, #32]
    9200:	f9401bf7 	ldr	x23, [sp, #48]
    9204:	a8c47bfd 	ldp	x29, x30, [sp], #64
    9208:	d65f03c0 	ret
    920c:	52800015 	mov	w21, #0x0                   	// #0
    9210:	54fff90a 	b.ge	9130 <__mdiff+0x68>  // b.tcont
    9214:	aa1403e2 	mov	x2, x20
    9218:	aa1603e1 	mov	x1, x22
    921c:	aa1303f4 	mov	x20, x19
    9220:	aa1703f6 	mov	x22, x23
    9224:	aa0203f3 	mov	x19, x2
    9228:	aa0103f7 	mov	x23, x1
    922c:	52800035 	mov	w21, #0x1                   	// #1
    9230:	17ffffc0 	b	9130 <__mdiff+0x68>
    9234:	52800001 	mov	w1, #0x0                   	// #0
    9238:	97fffd82 	bl	8840 <_Balloc>
    923c:	d2800021 	mov	x1, #0x1                   	// #1
    9240:	f8014001 	stur	x1, [x0, #20]
    9244:	a94153f3 	ldp	x19, x20, [sp, #16]
    9248:	a9425bf5 	ldp	x21, x22, [sp, #32]
    924c:	f9401bf7 	ldr	x23, [sp, #48]
    9250:	a8c47bfd 	ldp	x29, x30, [sp], #64
    9254:	d65f03c0 	ret

0000000000009258 <__ulp>:
    9258:	7f600400 	ushr	d0, d0, #32
    925c:	52bf9801 	mov	w1, #0xfcc00000            	// #-54525952
    9260:	1e260000 	fmov	w0, s0
    9264:	120c2800 	and	w0, w0, #0x7ff00000
    9268:	0b010000 	add	w0, w0, w1
    926c:	7100001f 	cmp	w0, #0x0
    9270:	5400008d 	b.le	9280 <__ulp+0x28>
    9274:	d3607c00 	lsl	x0, x0, #32
    9278:	9e670000 	fmov	d0, x0
    927c:	d65f03c0 	ret
    9280:	4b0003e0 	neg	w0, w0
    9284:	13147c00 	asr	w0, w0, #20
    9288:	71004c1f 	cmp	w0, #0x13
    928c:	5400018d 	b.le	92bc <__ulp+0x64>
    9290:	51005000 	sub	w0, w0, #0x14
    9294:	528003e1 	mov	w1, #0x1f                  	// #31
    9298:	4b000021 	sub	w1, w1, w0
    929c:	52800022 	mov	w2, #0x1                   	// #1
    92a0:	71007c1f 	cmp	w0, #0x1f
    92a4:	d2800000 	mov	x0, #0x0                   	// #0
    92a8:	1ac12041 	lsl	w1, w2, w1
    92ac:	1a82b021 	csel	w1, w1, w2, lt  // lt = tstop
    92b0:	b3407c20 	bfxil	x0, x1, #0, #32
    92b4:	9e670000 	fmov	d0, x0
    92b8:	d65f03c0 	ret
    92bc:	52a00101 	mov	w1, #0x80000               	// #524288
    92c0:	1ac02820 	asr	w0, w1, w0
    92c4:	17ffffec 	b	9274 <__ulp+0x1c>

00000000000092c8 <__b2d>:
    92c8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    92cc:	91006005 	add	x5, x0, #0x18
    92d0:	aa0103e7 	mov	x7, x1
    92d4:	910003fd 	mov	x29, sp
    92d8:	b9801404 	ldrsw	x4, [x0, #20]
    92dc:	8b0408a4 	add	x4, x5, x4, lsl #2
    92e0:	d1001086 	sub	x6, x4, #0x4
    92e4:	b85fc082 	ldur	w2, [x4, #-4]
    92e8:	2a0203e0 	mov	w0, w2
    92ec:	97fffe09 	bl	8b10 <__hi0bits>
    92f0:	7100281f 	cmp	w0, #0xa
    92f4:	52800403 	mov	w3, #0x20                  	// #32
    92f8:	4b000061 	sub	w1, w3, w0
    92fc:	b90000e1 	str	w1, [x7]
    9300:	5400026c 	b.gt	934c <__b2d+0x84>
    9304:	52800161 	mov	w1, #0xb                   	// #11
    9308:	4b000021 	sub	w1, w1, w0
    930c:	d2800003 	mov	x3, #0x0                   	// #0
    9310:	52800008 	mov	w8, #0x0                   	// #0
    9314:	1ac12447 	lsr	w7, w2, w1
    9318:	320c24e7 	orr	w7, w7, #0x3ff00000
    931c:	eb0600bf 	cmp	x5, x6
    9320:	b3607ce3 	bfi	x3, x7, #32, #32
    9324:	54000062 	b.cs	9330 <__b2d+0x68>  // b.hs, b.nlast
    9328:	b85f8088 	ldur	w8, [x4, #-8]
    932c:	1ac12508 	lsr	w8, w8, w1
    9330:	11005400 	add	w0, w0, #0x15
    9334:	a8c17bfd 	ldp	x29, x30, [sp], #16
    9338:	1ac02042 	lsl	w2, w2, w0
    933c:	2a080042 	orr	w2, w2, w8
    9340:	b3407c43 	bfxil	x3, x2, #0, #32
    9344:	9e670060 	fmov	d0, x3
    9348:	d65f03c0 	ret
    934c:	51002c00 	sub	w0, w0, #0xb
    9350:	eb0600bf 	cmp	x5, x6
    9354:	540002a2 	b.cs	93a8 <__b2d+0xe0>  // b.hs, b.nlast
    9358:	b85f8087 	ldur	w7, [x4, #-8]
    935c:	340002a0 	cbz	w0, 93b0 <__b2d+0xe8>
    9360:	4b000066 	sub	w6, w3, w0
    9364:	1ac02041 	lsl	w1, w2, w0
    9368:	320c2421 	orr	w1, w1, #0x3ff00000
    936c:	d2800003 	mov	x3, #0x0                   	// #0
    9370:	1ac624e2 	lsr	w2, w7, w6
    9374:	2a020021 	orr	w1, w1, w2
    9378:	d1002082 	sub	x2, x4, #0x8
    937c:	1ac020e0 	lsl	w0, w7, w0
    9380:	b3607c23 	bfi	x3, x1, #32, #32
    9384:	eb0200bf 	cmp	x5, x2
    9388:	54000082 	b.cs	9398 <__b2d+0xd0>  // b.hs, b.nlast
    938c:	b85f4081 	ldur	w1, [x4, #-12]
    9390:	1ac62426 	lsr	w6, w1, w6
    9394:	2a060000 	orr	w0, w0, w6
    9398:	b3407c03 	bfxil	x3, x0, #0, #32
    939c:	9e670060 	fmov	d0, x3
    93a0:	a8c17bfd 	ldp	x29, x30, [sp], #16
    93a4:	d65f03c0 	ret
    93a8:	52800007 	mov	w7, #0x0                   	// #0
    93ac:	35000100 	cbnz	w0, 93cc <__b2d+0x104>
    93b0:	320c2442 	orr	w2, w2, #0x3ff00000
    93b4:	d2800003 	mov	x3, #0x0                   	// #0
    93b8:	a8c17bfd 	ldp	x29, x30, [sp], #16
    93bc:	b3607c43 	bfi	x3, x2, #32, #32
    93c0:	b3407ce3 	bfxil	x3, x7, #0, #32
    93c4:	9e670060 	fmov	d0, x3
    93c8:	d65f03c0 	ret
    93cc:	1ac02042 	lsl	w2, w2, w0
    93d0:	320c2442 	orr	w2, w2, #0x3ff00000
    93d4:	d2800003 	mov	x3, #0x0                   	// #0
    93d8:	52800000 	mov	w0, #0x0                   	// #0
    93dc:	b3607c43 	bfi	x3, x2, #32, #32
    93e0:	b3407c03 	bfxil	x3, x0, #0, #32
    93e4:	17ffffee 	b	939c <__b2d+0xd4>

00000000000093e8 <__d2b>:
    93e8:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    93ec:	910003fd 	mov	x29, sp
    93f0:	fd0013e8 	str	d8, [sp, #32]
    93f4:	1e604008 	fmov	d8, d0
    93f8:	a90153f3 	stp	x19, x20, [sp, #16]
    93fc:	aa0103f4 	mov	x20, x1
    9400:	52800021 	mov	w1, #0x1                   	// #1
    9404:	aa0203f3 	mov	x19, x2
    9408:	97fffd0e 	bl	8840 <_Balloc>
    940c:	9e660101 	fmov	x1, d8
    9410:	aa0003e5 	mov	x5, x0
    9414:	d360fc24 	lsr	x4, x1, #32
    9418:	12004c80 	and	w0, w4, #0xfffff
    941c:	53147884 	ubfx	w4, w4, #20, #11
    9420:	320c0002 	orr	w2, w0, #0x100000
    9424:	7100009f 	cmp	w4, #0x0
    9428:	1a820000 	csel	w0, w0, w2, eq  // eq = none
    942c:	b9003fa0 	str	w0, [x29, #60]
    9430:	34000341 	cbz	w1, 9498 <__d2b+0xb0>
    9434:	910103a0 	add	x0, x29, #0x40
    9438:	bc1f8c08 	str	s8, [x0, #-8]!
    943c:	97fffdcd 	bl	8b70 <__lo0bits>
    9440:	35000520 	cbnz	w0, 94e4 <__d2b+0xfc>
    9444:	294707a2 	ldp	w2, w1, [x29, #56]
    9448:	b90018a2 	str	w2, [x5, #24]
    944c:	7100003f 	cmp	w1, #0x0
    9450:	b9001ca1 	str	w1, [x5, #28]
    9454:	1a9f07e2 	cset	w2, ne  // ne = any
    9458:	11000442 	add	w2, w2, #0x1
    945c:	b90014a2 	str	w2, [x5, #20]
    9460:	350002c4 	cbnz	w4, 94b8 <__d2b+0xd0>
    9464:	8b22c8a1 	add	x1, x5, w2, sxtw #2
    9468:	5110c800 	sub	w0, w0, #0x432
    946c:	b9000280 	str	w0, [x20]
    9470:	b9401420 	ldr	w0, [x1, #20]
    9474:	97fffda7 	bl	8b10 <__hi0bits>
    9478:	531b6842 	lsl	w2, w2, #5
    947c:	4b000042 	sub	w2, w2, w0
    9480:	b9000262 	str	w2, [x19]
    9484:	aa0503e0 	mov	x0, x5
    9488:	fd4013e8 	ldr	d8, [sp, #32]
    948c:	a94153f3 	ldp	x19, x20, [sp, #16]
    9490:	a8c47bfd 	ldp	x29, x30, [sp], #64
    9494:	d65f03c0 	ret
    9498:	9100f3a0 	add	x0, x29, #0x3c
    949c:	97fffdb5 	bl	8b70 <__lo0bits>
    94a0:	b9403fa3 	ldr	w3, [x29, #60]
    94a4:	52800021 	mov	w1, #0x1                   	// #1
    94a8:	29028ca1 	stp	w1, w3, [x5, #20]
    94ac:	11008000 	add	w0, w0, #0x20
    94b0:	2a0103e2 	mov	w2, w1
    94b4:	34fffd84 	cbz	w4, 9464 <__d2b+0x7c>
    94b8:	5110cc84 	sub	w4, w4, #0x433
    94bc:	528006a1 	mov	w1, #0x35                  	// #53
    94c0:	0b000084 	add	w4, w4, w0
    94c4:	b9000284 	str	w4, [x20]
    94c8:	4b000020 	sub	w0, w1, w0
    94cc:	b9000260 	str	w0, [x19]
    94d0:	a94153f3 	ldp	x19, x20, [sp, #16]
    94d4:	aa0503e0 	mov	x0, x5
    94d8:	fd4013e8 	ldr	d8, [sp, #32]
    94dc:	a8c47bfd 	ldp	x29, x30, [sp], #64
    94e0:	d65f03c0 	ret
    94e4:	29470ba6 	ldp	w6, w2, [x29, #56]
    94e8:	52800403 	mov	w3, #0x20                  	// #32
    94ec:	4b000063 	sub	w3, w3, w0
    94f0:	1ac02441 	lsr	w1, w2, w0
    94f4:	b9003fa1 	str	w1, [x29, #60]
    94f8:	1ac32042 	lsl	w2, w2, w3
    94fc:	2a060042 	orr	w2, w2, w6
    9500:	b90018a2 	str	w2, [x5, #24]
    9504:	17ffffd2 	b	944c <__d2b+0x64>

0000000000009508 <__ratio>:
    9508:	aa0103e9 	mov	x9, x1
    950c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    9510:	aa0003ea 	mov	x10, x0
    9514:	910003fd 	mov	x29, sp
    9518:	910063a1 	add	x1, x29, #0x18
    951c:	97ffff6b 	bl	92c8 <__b2d>
    9520:	1e604001 	fmov	d1, d0
    9524:	910073a1 	add	x1, x29, #0x1c
    9528:	aa0903e0 	mov	x0, x9
    952c:	97ffff67 	bl	92c8 <__b2d>
    9530:	b9401522 	ldr	w2, [x9, #20]
    9534:	b9401540 	ldr	w0, [x10, #20]
    9538:	29430fa1 	ldp	w1, w3, [x29, #24]
    953c:	4b020000 	sub	w0, w0, w2
    9540:	4b030021 	sub	w1, w1, w3
    9544:	0b001420 	add	w0, w1, w0, lsl #5
    9548:	7100001f 	cmp	w0, #0x0
    954c:	5400012d 	b.le	9570 <__ratio+0x68>
    9550:	9e660022 	fmov	x2, d1
    9554:	a8c27bfd 	ldp	x29, x30, [sp], #32
    9558:	d360fc41 	lsr	x1, x2, #32
    955c:	0b005020 	add	w0, w1, w0, lsl #20
    9560:	b3607c02 	bfi	x2, x0, #32, #32
    9564:	9e670041 	fmov	d1, x2
    9568:	1e601820 	fdiv	d0, d1, d0
    956c:	d65f03c0 	ret
    9570:	9e660003 	fmov	x3, d0
    9574:	a8c27bfd 	ldp	x29, x30, [sp], #32
    9578:	d360fc61 	lsr	x1, x3, #32
    957c:	4b005020 	sub	w0, w1, w0, lsl #20
    9580:	b3607c03 	bfi	x3, x0, #32, #32
    9584:	9e670060 	fmov	d0, x3
    9588:	1e601820 	fdiv	d0, d1, d0
    958c:	d65f03c0 	ret

0000000000009590 <_mprec_log10>:
    9590:	1e6e1000 	fmov	d0, #1.000000000000000000e+000
    9594:	1e649001 	fmov	d1, #1.000000000000000000e+001
    9598:	71005c1f 	cmp	w0, #0x17
    959c:	540000ad 	b.le	95b0 <_mprec_log10+0x20>
    95a0:	1e610800 	fmul	d0, d0, d1
    95a4:	71000400 	subs	w0, w0, #0x1
    95a8:	54ffffc1 	b.ne	95a0 <_mprec_log10+0x10>  // b.any
    95ac:	d65f03c0 	ret
    95b0:	90000021 	adrp	x1, d000 <__trunctfdf2+0x290>
    95b4:	910c8021 	add	x1, x1, #0x320
    95b8:	91004021 	add	x1, x1, #0x10
    95bc:	fc60d820 	ldr	d0, [x1, w0, sxtw #3]
    95c0:	d65f03c0 	ret
    95c4:	d503201f 	nop

00000000000095c8 <__copybits>:
    95c8:	51000421 	sub	w1, w1, #0x1
    95cc:	91006045 	add	x5, x2, #0x18
    95d0:	13057c23 	asr	w3, w1, #5
    95d4:	b9801441 	ldrsw	x1, [x2, #20]
    95d8:	8b23c803 	add	x3, x0, w3, sxtw #2
    95dc:	8b0108a1 	add	x1, x5, x1, lsl #2
    95e0:	91001063 	add	x3, x3, #0x4
    95e4:	eb0100bf 	cmp	x5, x1
    95e8:	540001e2 	b.cs	9624 <__copybits+0x5c>  // b.hs, b.nlast
    95ec:	cb020022 	sub	x2, x1, x2
    95f0:	d2800001 	mov	x1, #0x0                   	// #0
    95f4:	d1006442 	sub	x2, x2, #0x19
    95f8:	927ef442 	and	x2, x2, #0xfffffffffffffffc
    95fc:	91001042 	add	x2, x2, #0x4
    9600:	b86168a4 	ldr	w4, [x5, x1]
    9604:	b8216804 	str	w4, [x0, x1]
    9608:	91001021 	add	x1, x1, #0x4
    960c:	eb02003f 	cmp	x1, x2
    9610:	54ffff81 	b.ne	9600 <__copybits+0x38>  // b.any
    9614:	8b010000 	add	x0, x0, x1
    9618:	eb00007f 	cmp	x3, x0
    961c:	54000089 	b.ls	962c <__copybits+0x64>  // b.plast
    9620:	b800441f 	str	wzr, [x0], #4
    9624:	eb00007f 	cmp	x3, x0
    9628:	54ffffc8 	b.hi	9620 <__copybits+0x58>  // b.pmore
    962c:	d65f03c0 	ret

0000000000009630 <__any_on>:
    9630:	b9401402 	ldr	w2, [x0, #20]
    9634:	13057c24 	asr	w4, w1, #5
    9638:	91006003 	add	x3, x0, #0x18
    963c:	6b04005f 	cmp	w2, w4
    9640:	540001aa 	b.ge	9674 <__any_on+0x44>  // b.tcont
    9644:	8b22c862 	add	x2, x3, w2, sxtw #2
    9648:	eb02007f 	cmp	x3, x2
    964c:	54000302 	b.cs	96ac <__any_on+0x7c>  // b.hs, b.nlast
    9650:	b85fc040 	ldur	w0, [x2, #-4]
    9654:	d1001041 	sub	x1, x2, #0x4
    9658:	34000080 	cbz	w0, 9668 <__any_on+0x38>
    965c:	14000012 	b	96a4 <__any_on+0x74>
    9660:	b85fcc22 	ldr	w2, [x1, #-4]!
    9664:	35000202 	cbnz	w2, 96a4 <__any_on+0x74>
    9668:	eb01007f 	cmp	x3, x1
    966c:	54ffffa3 	b.cc	9660 <__any_on+0x30>  // b.lo, b.ul, b.last
    9670:	d65f03c0 	ret
    9674:	93407c84 	sxtw	x4, w4
    9678:	8b040862 	add	x2, x3, x4, lsl #2
    967c:	54fffe6d 	b.le	9648 <__any_on+0x18>
    9680:	72001021 	ands	w1, w1, #0x1f
    9684:	54fffe20 	b.eq	9648 <__any_on+0x18>  // b.none
    9688:	b8647865 	ldr	w5, [x3, x4, lsl #2]
    968c:	52800020 	mov	w0, #0x1                   	// #1
    9690:	1ac124a4 	lsr	w4, w5, w1
    9694:	1ac12081 	lsl	w1, w4, w1
    9698:	6b0100bf 	cmp	w5, w1
    969c:	54fffd60 	b.eq	9648 <__any_on+0x18>  // b.none
    96a0:	d65f03c0 	ret
    96a4:	52800020 	mov	w0, #0x1                   	// #1
    96a8:	d65f03c0 	ret
    96ac:	52800000 	mov	w0, #0x0                   	// #0
    96b0:	d65f03c0 	ret
    96b4:	00000000 	.inst	0x00000000 ; undefined

00000000000096b8 <_sbrk_r>:
    96b8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    96bc:	910003fd 	mov	x29, sp
    96c0:	a90153f3 	stp	x19, x20, [sp, #16]
    96c4:	b00000f3 	adrp	x19, 26000 <blue.21472+0x3d40>
    96c8:	aa0003f4 	mov	x20, x0
    96cc:	aa0103e0 	mov	x0, x1
    96d0:	b9031a7f 	str	wzr, [x19, #792]
    96d4:	94000d19 	bl	cb38 <_sbrk>
    96d8:	b100041f 	cmn	x0, #0x1
    96dc:	54000080 	b.eq	96ec <_sbrk_r+0x34>  // b.none
    96e0:	a94153f3 	ldp	x19, x20, [sp, #16]
    96e4:	a8c27bfd 	ldp	x29, x30, [sp], #32
    96e8:	d65f03c0 	ret
    96ec:	b9431a61 	ldr	w1, [x19, #792]
    96f0:	34ffff81 	cbz	w1, 96e0 <_sbrk_r+0x28>
    96f4:	b9000281 	str	w1, [x20]
    96f8:	a94153f3 	ldp	x19, x20, [sp, #16]
    96fc:	a8c27bfd 	ldp	x29, x30, [sp], #32
    9700:	d65f03c0 	ret
    9704:	00000000 	.inst	0x00000000 ; undefined

0000000000009708 <frexp>:
    9708:	9e660003 	fmov	x3, d0
    970c:	b900001f 	str	wzr, [x0]
    9710:	12b00204 	mov	w4, #0x7fefffff            	// #2146435071
    9714:	d360fc62 	lsr	x2, x3, #32
    9718:	12007841 	and	w1, w2, #0x7fffffff
    971c:	6b04003f 	cmp	w1, w4
    9720:	5400030c 	b.gt	9780 <frexp+0x78>
    9724:	2a030023 	orr	w3, w1, w3
    9728:	340002c3 	cbz	w3, 9780 <frexp+0x78>
    972c:	12bffe03 	mov	w3, #0xfffff               	// #1048575
    9730:	52800004 	mov	w4, #0x0                   	// #0
    9734:	6b03003f 	cmp	w1, w3
    9738:	5400012c 	b.gt	975c <frexp+0x54>
    973c:	d2e86a01 	mov	x1, #0x4350000000000000    	// #4850376798678024192
    9740:	9e670021 	fmov	d1, x1
    9744:	128006a4 	mov	w4, #0xffffffca            	// #-54
    9748:	1e610800 	fmul	d0, d0, d1
    974c:	9e660001 	fmov	x1, d0
    9750:	d360fc21 	lsr	x1, x1, #32
    9754:	2a0103e2 	mov	w2, w1
    9758:	12007821 	and	w1, w1, #0x7fffffff
    975c:	9e660003 	fmov	x3, d0
    9760:	12015042 	and	w2, w2, #0x800fffff
    9764:	13147c21 	asr	w1, w1, #20
    9768:	320b2042 	orr	w2, w2, #0x3fe00000
    976c:	510ff821 	sub	w1, w1, #0x3fe
    9770:	0b040021 	add	w1, w1, w4
    9774:	b9000001 	str	w1, [x0]
    9778:	b3607c43 	bfi	x3, x2, #32, #32
    977c:	9e670060 	fmov	d0, x3
    9780:	d65f03c0 	ret
    9784:	00000000 	.inst	0x00000000 ; undefined

0000000000009788 <__sread>:
    9788:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    978c:	93407c63 	sxtw	x3, w3
    9790:	910003fd 	mov	x29, sp
    9794:	f9000bf3 	str	x19, [sp, #16]
    9798:	aa0103f3 	mov	x19, x1
    979c:	79c02421 	ldrsh	w1, [x1, #18]
    97a0:	94000a44 	bl	c0b0 <_read_r>
    97a4:	b7f800e0 	tbnz	x0, #63, 97c0 <__sread+0x38>
    97a8:	f9404a61 	ldr	x1, [x19, #144]
    97ac:	8b000021 	add	x1, x1, x0
    97b0:	f9004a61 	str	x1, [x19, #144]
    97b4:	f9400bf3 	ldr	x19, [sp, #16]
    97b8:	a8c27bfd 	ldp	x29, x30, [sp], #32
    97bc:	d65f03c0 	ret
    97c0:	79402261 	ldrh	w1, [x19, #16]
    97c4:	12137821 	and	w1, w1, #0xffffefff
    97c8:	79002261 	strh	w1, [x19, #16]
    97cc:	f9400bf3 	ldr	x19, [sp, #16]
    97d0:	a8c27bfd 	ldp	x29, x30, [sp], #32
    97d4:	d65f03c0 	ret

00000000000097d8 <__seofread>:
    97d8:	52800000 	mov	w0, #0x0                   	// #0
    97dc:	d65f03c0 	ret

00000000000097e0 <__swrite>:
    97e0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    97e4:	910003fd 	mov	x29, sp
    97e8:	a9025bf5 	stp	x21, x22, [sp, #32]
    97ec:	aa0203f5 	mov	x21, x2
    97f0:	79c02022 	ldrsh	w2, [x1, #16]
    97f4:	2a0303f6 	mov	w22, w3
    97f8:	a90153f3 	stp	x19, x20, [sp, #16]
    97fc:	aa0103f3 	mov	x19, x1
    9800:	aa0003f4 	mov	x20, x0
    9804:	79c02421 	ldrsh	w1, [x1, #18]
    9808:	364000c2 	tbz	w2, #8, 9820 <__swrite+0x40>
    980c:	d2800002 	mov	x2, #0x0                   	// #0
    9810:	52800043 	mov	w3, #0x2                   	// #2
    9814:	940009d5 	bl	bf68 <_lseek_r>
    9818:	79c02262 	ldrsh	w2, [x19, #16]
    981c:	79c02661 	ldrsh	w1, [x19, #18]
    9820:	12137842 	and	w2, w2, #0xffffefff
    9824:	79002262 	strh	w2, [x19, #16]
    9828:	93407ec3 	sxtw	x3, w22
    982c:	aa1503e2 	mov	x2, x21
    9830:	aa1403e0 	mov	x0, x20
    9834:	94000761 	bl	b5b8 <_write_r>
    9838:	a94153f3 	ldp	x19, x20, [sp, #16]
    983c:	a9425bf5 	ldp	x21, x22, [sp, #32]
    9840:	a8c37bfd 	ldp	x29, x30, [sp], #48
    9844:	d65f03c0 	ret

0000000000009848 <__sseek>:
    9848:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    984c:	910003fd 	mov	x29, sp
    9850:	f9000bf3 	str	x19, [sp, #16]
    9854:	aa0103f3 	mov	x19, x1
    9858:	79c02421 	ldrsh	w1, [x1, #18]
    985c:	940009c3 	bl	bf68 <_lseek_r>
    9860:	b100041f 	cmn	x0, #0x1
    9864:	79402261 	ldrh	w1, [x19, #16]
    9868:	540000e0 	b.eq	9884 <__sseek+0x3c>  // b.none
    986c:	f9004a60 	str	x0, [x19, #144]
    9870:	32140021 	orr	w1, w1, #0x1000
    9874:	79002261 	strh	w1, [x19, #16]
    9878:	f9400bf3 	ldr	x19, [sp, #16]
    987c:	a8c27bfd 	ldp	x29, x30, [sp], #32
    9880:	d65f03c0 	ret
    9884:	12137821 	and	w1, w1, #0xffffefff
    9888:	79002261 	strh	w1, [x19, #16]
    988c:	f9400bf3 	ldr	x19, [sp, #16]
    9890:	a8c27bfd 	ldp	x29, x30, [sp], #32
    9894:	d65f03c0 	ret

0000000000009898 <__sclose>:
    9898:	79c02421 	ldrsh	w1, [x1, #18]
    989c:	14000783 	b	b6a8 <_close_r>
	...

00000000000098c0 <strcmp>:
    98c0:	ca010007 	eor	x7, x0, x1
    98c4:	b200c3ea 	mov	x10, #0x101010101010101     	// #72340172838076673
    98c8:	f24008ff 	tst	x7, #0x7
    98cc:	540003e1 	b.ne	9948 <strcmp+0x88>  // b.any
    98d0:	f2400807 	ands	x7, x0, #0x7
    98d4:	54000241 	b.ne	991c <strcmp+0x5c>  // b.any
    98d8:	f8408402 	ldr	x2, [x0], #8
    98dc:	f8408423 	ldr	x3, [x1], #8
    98e0:	cb0a0047 	sub	x7, x2, x10
    98e4:	b200d848 	orr	x8, x2, #0x7f7f7f7f7f7f7f7f
    98e8:	ca030045 	eor	x5, x2, x3
    98ec:	8a2800e4 	bic	x4, x7, x8
    98f0:	aa0400a6 	orr	x6, x5, x4
    98f4:	b4ffff26 	cbz	x6, 98d8 <strcmp+0x18>
    98f8:	dac00cc6 	rev	x6, x6
    98fc:	dac00c42 	rev	x2, x2
    9900:	dac010cb 	clz	x11, x6
    9904:	dac00c63 	rev	x3, x3
    9908:	9acb2042 	lsl	x2, x2, x11
    990c:	9acb2063 	lsl	x3, x3, x11
    9910:	d378fc42 	lsr	x2, x2, #56
    9914:	cb43e040 	sub	x0, x2, x3, lsr #56
    9918:	d65f03c0 	ret
    991c:	927df000 	and	x0, x0, #0xfffffffffffffff8
    9920:	927df021 	and	x1, x1, #0xfffffffffffffff8
    9924:	d37df0e7 	lsl	x7, x7, #3
    9928:	f8408402 	ldr	x2, [x0], #8
    992c:	cb0703e7 	neg	x7, x7
    9930:	f8408423 	ldr	x3, [x1], #8
    9934:	92800008 	mov	x8, #0xffffffffffffffff    	// #-1
    9938:	9ac72508 	lsr	x8, x8, x7
    993c:	aa080042 	orr	x2, x2, x8
    9940:	aa080063 	orr	x3, x3, x8
    9944:	17ffffe7 	b	98e0 <strcmp+0x20>
    9948:	38401402 	ldrb	w2, [x0], #1
    994c:	38401423 	ldrb	w3, [x1], #1
    9950:	7100045f 	cmp	w2, #0x1
    9954:	7a432040 	ccmp	w2, w3, #0x0, cs  // cs = hs, nlast
    9958:	54ffff80 	b.eq	9948 <strcmp+0x88>  // b.none
    995c:	cb030040 	sub	x0, x2, x3
    9960:	d65f03c0 	ret
	...

0000000000009980 <strlen>:
    9980:	92402c04 	and	x4, x0, #0xfff
    9984:	b200c3e8 	mov	x8, #0x101010101010101     	// #72340172838076673
    9988:	f13fc09f 	cmp	x4, #0xff0
    998c:	5400082c 	b.gt	9a90 <strlen+0x110>
    9990:	a9400c02 	ldp	x2, x3, [x0]
    9994:	cb080044 	sub	x4, x2, x8
    9998:	b200d845 	orr	x5, x2, #0x7f7f7f7f7f7f7f7f
    999c:	cb080066 	sub	x6, x3, x8
    99a0:	b200d867 	orr	x7, x3, #0x7f7f7f7f7f7f7f7f
    99a4:	ea250084 	bics	x4, x4, x5
    99a8:	8a2700c5 	bic	x5, x6, x7
    99ac:	fa4008a0 	ccmp	x5, #0x0, #0x0, eq  // eq = none
    99b0:	54000100 	b.eq	99d0 <strlen+0x50>  // b.none
    99b4:	9a853084 	csel	x4, x4, x5, cc  // cc = lo, ul, last
    99b8:	d2800100 	mov	x0, #0x8                   	// #8
    99bc:	dac00c84 	rev	x4, x4
    99c0:	dac01084 	clz	x4, x4
    99c4:	9a8033e0 	csel	x0, xzr, x0, cc  // cc = lo, ul, last
    99c8:	8b440c00 	add	x0, x0, x4, lsr #3
    99cc:	d65f03c0 	ret
    99d0:	927cec01 	and	x1, x0, #0xfffffffffffffff0
    99d4:	d1004021 	sub	x1, x1, #0x10
    99d8:	a9c20c22 	ldp	x2, x3, [x1, #32]!
    99dc:	cb080044 	sub	x4, x2, x8
    99e0:	cb080066 	sub	x6, x3, x8
    99e4:	aa060085 	orr	x5, x4, x6
    99e8:	ea081cbf 	tst	x5, x8, lsl #7
    99ec:	54000101 	b.ne	9a0c <strlen+0x8c>  // b.any
    99f0:	a9410c22 	ldp	x2, x3, [x1, #16]
    99f4:	cb080044 	sub	x4, x2, x8
    99f8:	cb080066 	sub	x6, x3, x8
    99fc:	aa060085 	orr	x5, x4, x6
    9a00:	ea081cbf 	tst	x5, x8, lsl #7
    9a04:	54fffea0 	b.eq	99d8 <strlen+0x58>  // b.none
    9a08:	91004021 	add	x1, x1, #0x10
    9a0c:	b200d845 	orr	x5, x2, #0x7f7f7f7f7f7f7f7f
    9a10:	b200d867 	orr	x7, x3, #0x7f7f7f7f7f7f7f7f
    9a14:	ea250084 	bics	x4, x4, x5
    9a18:	8a2700c5 	bic	x5, x6, x7
    9a1c:	fa4008a0 	ccmp	x5, #0x0, #0x0, eq  // eq = none
    9a20:	54000120 	b.eq	9a44 <strlen+0xc4>  // b.none
    9a24:	9a853084 	csel	x4, x4, x5, cc  // cc = lo, ul, last
    9a28:	cb000020 	sub	x0, x1, x0
    9a2c:	dac00c84 	rev	x4, x4
    9a30:	91002005 	add	x5, x0, #0x8
    9a34:	dac01084 	clz	x4, x4
    9a38:	9a853000 	csel	x0, x0, x5, cc  // cc = lo, ul, last
    9a3c:	8b440c00 	add	x0, x0, x4, lsr #3
    9a40:	d65f03c0 	ret
    9a44:	a9c10c22 	ldp	x2, x3, [x1, #16]!
    9a48:	cb080044 	sub	x4, x2, x8
    9a4c:	b200d845 	orr	x5, x2, #0x7f7f7f7f7f7f7f7f
    9a50:	cb080066 	sub	x6, x3, x8
    9a54:	b200d867 	orr	x7, x3, #0x7f7f7f7f7f7f7f7f
    9a58:	ea250084 	bics	x4, x4, x5
    9a5c:	8a2700c5 	bic	x5, x6, x7
    9a60:	fa4008a0 	ccmp	x5, #0x0, #0x0, eq  // eq = none
    9a64:	54fffe01 	b.ne	9a24 <strlen+0xa4>  // b.any
    9a68:	a9c10c22 	ldp	x2, x3, [x1, #16]!
    9a6c:	cb080044 	sub	x4, x2, x8
    9a70:	b200d845 	orr	x5, x2, #0x7f7f7f7f7f7f7f7f
    9a74:	cb080066 	sub	x6, x3, x8
    9a78:	b200d867 	orr	x7, x3, #0x7f7f7f7f7f7f7f7f
    9a7c:	ea250084 	bics	x4, x4, x5
    9a80:	8a2700c5 	bic	x5, x6, x7
    9a84:	fa4008a0 	ccmp	x5, #0x0, #0x0, eq  // eq = none
    9a88:	54fffde0 	b.eq	9a44 <strlen+0xc4>  // b.none
    9a8c:	17ffffe6 	b	9a24 <strlen+0xa4>
    9a90:	927cec01 	and	x1, x0, #0xfffffffffffffff0
    9a94:	a9400c22 	ldp	x2, x3, [x1]
    9a98:	d37df004 	lsl	x4, x0, #3
    9a9c:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
    9aa0:	9ac420e4 	lsl	x4, x7, x4
    9aa4:	b201c084 	orr	x4, x4, #0x8080808080808080
    9aa8:	aa240042 	orn	x2, x2, x4
    9aac:	aa240065 	orn	x5, x3, x4
    9ab0:	f27d001f 	tst	x0, #0x8
    9ab4:	9a870042 	csel	x2, x2, x7, eq  // eq = none
    9ab8:	9a850063 	csel	x3, x3, x5, eq  // eq = none
    9abc:	17ffffc8 	b	99dc <strlen+0x5c>

0000000000009ac0 <strncpy>:
    9ac0:	aa000023 	orr	x3, x1, x0
    9ac4:	aa0003e6 	mov	x6, x0
    9ac8:	f240087f 	tst	x3, #0x7
    9acc:	fa470840 	ccmp	x2, #0x7, #0x0, eq  // eq = none
    9ad0:	54000268 	b.hi	9b1c <strncpy+0x5c>  // b.pmore
    9ad4:	b4000222 	cbz	x2, 9b18 <strncpy+0x58>
    9ad8:	39400023 	ldrb	w3, [x1]
    9adc:	910004c7 	add	x7, x6, #0x1
    9ae0:	390000c3 	strb	w3, [x6]
    9ae4:	d1000449 	sub	x9, x2, #0x1
    9ae8:	aa0703e4 	mov	x4, x7
    9aec:	34000343 	cbz	w3, 9b54 <strncpy+0x94>
    9af0:	d2800023 	mov	x3, #0x1                   	// #1
    9af4:	14000007 	b	9b10 <strncpy+0x50>
    9af8:	38636825 	ldrb	w5, [x1, x3]
    9afc:	cb030128 	sub	x8, x9, x3
    9b00:	382368c5 	strb	w5, [x6, x3]
    9b04:	8b0300e4 	add	x4, x7, x3
    9b08:	91000463 	add	x3, x3, #0x1
    9b0c:	34000265 	cbz	w5, 9b58 <strncpy+0x98>
    9b10:	eb02007f 	cmp	x3, x2
    9b14:	54ffff21 	b.ne	9af8 <strncpy+0x38>  // b.any
    9b18:	d65f03c0 	ret
    9b1c:	b207dbe5 	mov	x5, #0xfefefefefefefefe    	// #-72340172838076674
    9b20:	f29fdfe5 	movk	x5, #0xfeff
    9b24:	d503201f 	nop
    9b28:	f9400024 	ldr	x4, [x1]
    9b2c:	8b050083 	add	x3, x4, x5
    9b30:	8a240063 	bic	x3, x3, x4
    9b34:	f201c07f 	tst	x3, #0x8080808080808080
    9b38:	54fffd01 	b.ne	9ad8 <strncpy+0x18>  // b.any
    9b3c:	f80084c4 	str	x4, [x6], #8
    9b40:	d1002042 	sub	x2, x2, #0x8
    9b44:	91002021 	add	x1, x1, #0x8
    9b48:	f1001c5f 	cmp	x2, #0x7
    9b4c:	54fffee8 	b.hi	9b28 <strncpy+0x68>  // b.pmore
    9b50:	17ffffe1 	b	9ad4 <strncpy+0x14>
    9b54:	aa0903e8 	mov	x8, x9
    9b58:	8b080081 	add	x1, x4, x8
    9b5c:	b4fffde8 	cbz	x8, 9b18 <strncpy+0x58>
    9b60:	3800149f 	strb	wzr, [x4], #1
    9b64:	eb01009f 	cmp	x4, x1
    9b68:	54ffffc1 	b.ne	9b60 <strncpy+0xa0>  // b.any
    9b6c:	d65f03c0 	ret

0000000000009b70 <__sprint_r.part.0>:
    9b70:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
    9b74:	910003fd 	mov	x29, sp
    9b78:	b940ac23 	ldr	w3, [x1, #172]
    9b7c:	f9001ff8 	str	x24, [sp, #56]
    9b80:	aa0203f8 	mov	x24, x2
    9b84:	366805e3 	tbz	w3, #13, 9c40 <__sprint_r.part.0+0xd0>
    9b88:	a9025bb5 	stp	x21, x22, [x29, #32]
    9b8c:	aa0003f6 	mov	x22, x0
    9b90:	f9400840 	ldr	x0, [x2, #16]
    9b94:	aa0103f5 	mov	x21, x1
    9b98:	f90023b9 	str	x25, [x29, #64]
    9b9c:	f9400059 	ldr	x25, [x2]
    9ba0:	b4000480 	cbz	x0, 9c30 <__sprint_r.part.0+0xc0>
    9ba4:	a90153b3 	stp	x19, x20, [x29, #16]
    9ba8:	f9001bb7 	str	x23, [x29, #48]
    9bac:	a9405f33 	ldp	x19, x23, [x25]
    9bb0:	d342fef7 	lsr	x23, x23, #2
    9bb4:	710002ff 	cmp	w23, #0x0
    9bb8:	5400030d 	b.le	9c18 <__sprint_r.part.0+0xa8>
    9bbc:	510006f4 	sub	w20, w23, #0x1
    9bc0:	91001260 	add	x0, x19, #0x4
    9bc4:	8b344814 	add	x20, x0, w20, uxtw #2
    9bc8:	14000003 	b	9bd4 <__sprint_r.part.0+0x64>
    9bcc:	eb13029f 	cmp	x20, x19
    9bd0:	54000220 	b.eq	9c14 <__sprint_r.part.0+0xa4>  // b.none
    9bd4:	b9400261 	ldr	w1, [x19]
    9bd8:	aa1503e2 	mov	x2, x21
    9bdc:	aa1603e0 	mov	x0, x22
    9be0:	91001273 	add	x19, x19, #0x4
    9be4:	94000755 	bl	b938 <_fputwc_r>
    9be8:	3100041f 	cmn	w0, #0x1
    9bec:	54ffff01 	b.ne	9bcc <__sprint_r.part.0+0x5c>  // b.any
    9bf0:	a94153b3 	ldp	x19, x20, [x29, #16]
    9bf4:	a9425bb5 	ldp	x21, x22, [x29, #32]
    9bf8:	f9401bb7 	ldr	x23, [x29, #48]
    9bfc:	f94023b9 	ldr	x25, [x29, #64]
    9c00:	b9000b1f 	str	wzr, [x24, #8]
    9c04:	f9000b1f 	str	xzr, [x24, #16]
    9c08:	f9401ff8 	ldr	x24, [sp, #56]
    9c0c:	a8c57bfd 	ldp	x29, x30, [sp], #80
    9c10:	d65f03c0 	ret
    9c14:	f9400b00 	ldr	x0, [x24, #16]
    9c18:	cb37c800 	sub	x0, x0, w23, sxtw #2
    9c1c:	f9000b00 	str	x0, [x24, #16]
    9c20:	91004339 	add	x25, x25, #0x10
    9c24:	b5fffc40 	cbnz	x0, 9bac <__sprint_r.part.0+0x3c>
    9c28:	a94153b3 	ldp	x19, x20, [x29, #16]
    9c2c:	f9401bb7 	ldr	x23, [x29, #48]
    9c30:	52800000 	mov	w0, #0x0                   	// #0
    9c34:	f94023b9 	ldr	x25, [x29, #64]
    9c38:	a9425bb5 	ldp	x21, x22, [x29, #32]
    9c3c:	17fffff1 	b	9c00 <__sprint_r.part.0+0x90>
    9c40:	94000778 	bl	ba20 <__sfvwrite_r>
    9c44:	b9000b1f 	str	wzr, [x24, #8]
    9c48:	f9000b1f 	str	xzr, [x24, #16]
    9c4c:	f9401ff8 	ldr	x24, [sp, #56]
    9c50:	a8c57bfd 	ldp	x29, x30, [sp], #80
    9c54:	d65f03c0 	ret

0000000000009c58 <__sprint_r>:
    9c58:	f9400844 	ldr	x4, [x2, #16]
    9c5c:	b4000044 	cbz	x4, 9c64 <__sprint_r+0xc>
    9c60:	17ffffc4 	b	9b70 <__sprint_r.part.0>
    9c64:	52800000 	mov	w0, #0x0                   	// #0
    9c68:	b900085f 	str	wzr, [x2, #8]
    9c6c:	d65f03c0 	ret

0000000000009c70 <_vfiprintf_r>:
    9c70:	d10803ff 	sub	sp, sp, #0x200
    9c74:	a9007bfd 	stp	x29, x30, [sp]
    9c78:	910003fd 	mov	x29, sp
    9c7c:	a90153f3 	stp	x19, x20, [sp, #16]
    9c80:	aa0103f4 	mov	x20, x1
    9c84:	f9400061 	ldr	x1, [x3]
    9c88:	aa0303f3 	mov	x19, x3
    9c8c:	f9005ba1 	str	x1, [x29, #176]
    9c90:	f9400461 	ldr	x1, [x3, #8]
    9c94:	f9004ba1 	str	x1, [x29, #144]
    9c98:	b9401861 	ldr	w1, [x3, #24]
    9c9c:	b900cba1 	str	w1, [x29, #200]
    9ca0:	f90013f5 	str	x21, [sp, #32]
    9ca4:	aa0003f5 	mov	x21, x0
    9ca8:	f9002bfb 	str	x27, [sp, #80]
    9cac:	aa0203fb 	mov	x27, x2
    9cb0:	b4000060 	cbz	x0, 9cbc <_vfiprintf_r+0x4c>
    9cb4:	b9405001 	ldr	w1, [x0, #80]
    9cb8:	34003141 	cbz	w1, a2e0 <_vfiprintf_r+0x670>
    9cbc:	79c02281 	ldrsh	w1, [x20, #16]
    9cc0:	12003c20 	and	w0, w1, #0xffff
    9cc4:	376800e0 	tbnz	w0, #13, 9ce0 <_vfiprintf_r+0x70>
    9cc8:	b940ae82 	ldr	w2, [x20, #172]
    9ccc:	32130021 	orr	w1, w1, #0x2000
    9cd0:	12003c20 	and	w0, w1, #0xffff
    9cd4:	79002281 	strh	w1, [x20, #16]
    9cd8:	12127841 	and	w1, w2, #0xffffdfff
    9cdc:	b900ae81 	str	w1, [x20, #172]
    9ce0:	36182980 	tbz	w0, #3, a210 <_vfiprintf_r+0x5a0>
    9ce4:	f9400e81 	ldr	x1, [x20, #24]
    9ce8:	b4002941 	cbz	x1, a210 <_vfiprintf_r+0x5a0>
    9cec:	52800341 	mov	w1, #0x1a                  	// #26
    9cf0:	0a010000 	and	w0, w0, w1
    9cf4:	7100281f 	cmp	w0, #0xa
    9cf8:	540029e0 	b.eq	a234 <_vfiprintf_r+0x5c4>  // b.none
    9cfc:	f9002fbc 	str	x28, [x29, #88]
    9d00:	910603bc 	add	x28, x29, #0x180
    9d04:	f90027ba 	str	x26, [x29, #72]
    9d08:	aa1c03fa 	mov	x26, x28
    9d0c:	a902dfb6 	stp	x22, x23, [x29, #40]
    9d10:	90000037 	adrp	x23, d000 <__trunctfdf2+0x290>
    9d14:	a903e7b8 	stp	x24, x25, [x29, #56]
    9d18:	911122e0 	add	x0, x23, #0x448
    9d1c:	a906ffbf 	stp	xzr, xzr, [x29, #104]
    9d20:	f9003fbf 	str	xzr, [x29, #120]
    9d24:	f9004fbf 	str	xzr, [x29, #152]
    9d28:	a90bd3a0 	stp	x0, x20, [x29, #184]
    9d2c:	b900cfbf 	str	wzr, [x29, #204]
    9d30:	f90083bc 	str	x28, [x29, #256]
    9d34:	b9010bbf 	str	wzr, [x29, #264]
    9d38:	f9008bbf 	str	xzr, [x29, #272]
    9d3c:	d503201f 	nop
    9d40:	39400360 	ldrb	w0, [x27]
    9d44:	aa1b03f3 	mov	x19, x27
    9d48:	7100941f 	cmp	w0, #0x25
    9d4c:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
    9d50:	540002c0 	b.eq	9da8 <_vfiprintf_r+0x138>  // b.none
    9d54:	d503201f 	nop
    9d58:	38401e60 	ldrb	w0, [x19, #1]!
    9d5c:	7100941f 	cmp	w0, #0x25
    9d60:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
    9d64:	54ffffa1 	b.ne	9d58 <_vfiprintf_r+0xe8>  // b.any
    9d68:	cb1b0279 	sub	x25, x19, x27
    9d6c:	340001f9 	cbz	w25, 9da8 <_vfiprintf_r+0x138>
    9d70:	b9410ba0 	ldr	w0, [x29, #264]
    9d74:	93407f22 	sxtw	x2, w25
    9d78:	f9408ba1 	ldr	x1, [x29, #272]
    9d7c:	11000400 	add	w0, w0, #0x1
    9d80:	a9000b5b 	stp	x27, x2, [x26]
    9d84:	8b010041 	add	x1, x2, x1
    9d88:	b9010ba0 	str	w0, [x29, #264]
    9d8c:	f9008ba1 	str	x1, [x29, #272]
    9d90:	71001c1f 	cmp	w0, #0x7
    9d94:	5400276c 	b.gt	a280 <_vfiprintf_r+0x610>
    9d98:	9100435a 	add	x26, x26, #0x10
    9d9c:	b940cfa0 	ldr	w0, [x29, #204]
    9da0:	0b190000 	add	w0, w0, w25
    9da4:	b900cfa0 	str	w0, [x29, #204]
    9da8:	39400260 	ldrb	w0, [x19]
    9dac:	34006180 	cbz	w0, a9dc <_vfiprintf_r+0xd6c>
    9db0:	9100067b 	add	x27, x19, #0x1
    9db4:	39400660 	ldrb	w0, [x19, #1]
    9db8:	3903dfbf 	strb	wzr, [x29, #247]
    9dbc:	12800013 	mov	w19, #0xffffffff            	// #-1
    9dc0:	52800016 	mov	w22, #0x0                   	// #0
    9dc4:	52800017 	mov	w23, #0x0                   	// #0
    9dc8:	9100077b 	add	x27, x27, #0x1
    9dcc:	51008001 	sub	w1, w0, #0x20
    9dd0:	7101683f 	cmp	w1, #0x5a
    9dd4:	540018e9 	b.ls	a0f0 <_vfiprintf_r+0x480>  // b.plast
    9dd8:	34006020 	cbz	w0, a9dc <_vfiprintf_r+0xd6c>
    9ddc:	52800034 	mov	w20, #0x1                   	// #1
    9de0:	910463b8 	add	x24, x29, #0x118
    9de4:	2a1403e8 	mov	w8, w20
    9de8:	3903dfbf 	strb	wzr, [x29, #247]
    9dec:	390463a0 	strb	w0, [x29, #280]
    9df0:	52800013 	mov	w19, #0x0                   	// #0
    9df4:	d503201f 	nop
    9df8:	b9410ba1 	ldr	w1, [x29, #264]
    9dfc:	721f02eb 	ands	w11, w23, #0x2
    9e00:	11000a80 	add	w0, w20, #0x2
    9e04:	5280108a 	mov	w10, #0x84                  	// #132
    9e08:	11000422 	add	w2, w1, #0x1
    9e0c:	1a941014 	csel	w20, w0, w20, ne  // ne = any
    9e10:	2a0203e3 	mov	w3, w2
    9e14:	6a0a02ea 	ands	w10, w23, w10
    9e18:	f9408ba0 	ldr	x0, [x29, #272]
    9e1c:	54000721 	b.ne	9f00 <_vfiprintf_r+0x290>  // b.any
    9e20:	4b1402c9 	sub	w9, w22, w20
    9e24:	7100013f 	cmp	w9, #0x0
    9e28:	540006cd 	b.le	9f00 <_vfiprintf_r+0x290>
    9e2c:	7100413f 	cmp	w9, #0x10
    9e30:	540064cd 	b.le	aac8 <_vfiprintf_r+0xe58>
    9e34:	90000039 	adrp	x25, d000 <__trunctfdf2+0x290>
    9e38:	9114032d 	add	x13, x25, #0x500
    9e3c:	2910cfb4 	stp	w20, w19, [x29, #132]
    9e40:	aa1a03e4 	mov	x4, x26
    9e44:	d2800203 	mov	x3, #0x10                  	// #16
    9e48:	aa1903fa 	mov	x26, x25
    9e4c:	b900a3aa 	str	w10, [x29, #160]
    9e50:	2a0803f9 	mov	w25, w8
    9e54:	b900abab 	str	w11, [x29, #168]
    9e58:	2a0903f3 	mov	w19, w9
    9e5c:	aa0d03f4 	mov	x20, x13
    9e60:	14000008 	b	9e80 <_vfiprintf_r+0x210>
    9e64:	1100082c 	add	w12, w1, #0x2
    9e68:	91004084 	add	x4, x4, #0x10
    9e6c:	2a0203e1 	mov	w1, w2
    9e70:	51004273 	sub	w19, w19, #0x10
    9e74:	7100427f 	cmp	w19, #0x10
    9e78:	540001ed 	b.le	9eb4 <_vfiprintf_r+0x244>
    9e7c:	11000422 	add	w2, w1, #0x1
    9e80:	91004000 	add	x0, x0, #0x10
    9e84:	a9000c94 	stp	x20, x3, [x4]
    9e88:	b9010ba2 	str	w2, [x29, #264]
    9e8c:	71001c5f 	cmp	w2, #0x7
    9e90:	f9008ba0 	str	x0, [x29, #272]
    9e94:	54fffe8d 	b.le	9e64 <_vfiprintf_r+0x1f4>
    9e98:	b5004620 	cbnz	x0, a75c <_vfiprintf_r+0xaec>
    9e9c:	51004273 	sub	w19, w19, #0x10
    9ea0:	52800001 	mov	w1, #0x0                   	// #0
    9ea4:	5280002c 	mov	w12, #0x1                   	// #1
    9ea8:	aa1c03e4 	mov	x4, x28
    9eac:	7100427f 	cmp	w19, #0x10
    9eb0:	54fffe6c 	b.gt	9e7c <_vfiprintf_r+0x20c>
    9eb4:	2a1303e9 	mov	w9, w19
    9eb8:	b940a3aa 	ldr	w10, [x29, #160]
    9ebc:	2950cfb4 	ldp	w20, w19, [x29, #132]
    9ec0:	2a1903e8 	mov	w8, w25
    9ec4:	b940abab 	ldr	w11, [x29, #168]
    9ec8:	aa1a03f9 	mov	x25, x26
    9ecc:	aa0403fa 	mov	x26, x4
    9ed0:	93407d21 	sxtw	x1, w9
    9ed4:	91140339 	add	x25, x25, #0x500
    9ed8:	8b010000 	add	x0, x0, x1
    9edc:	a9000759 	stp	x25, x1, [x26]
    9ee0:	b9010bac 	str	w12, [x29, #264]
    9ee4:	71001d9f 	cmp	w12, #0x7
    9ee8:	f9008ba0 	str	x0, [x29, #272]
    9eec:	5400478c 	b.gt	a7dc <_vfiprintf_r+0xb6c>
    9ef0:	9100435a 	add	x26, x26, #0x10
    9ef4:	11000583 	add	w3, w12, #0x1
    9ef8:	2a0c03e1 	mov	w1, w12
    9efc:	d503201f 	nop
    9f00:	3943dfa9 	ldrb	w9, [x29, #247]
    9f04:	91004342 	add	x2, x26, #0x10
    9f08:	34003609 	cbz	w9, a5c8 <_vfiprintf_r+0x958>
    9f0c:	9103dfa1 	add	x1, x29, #0xf7
    9f10:	91000400 	add	x0, x0, #0x1
    9f14:	f9000341 	str	x1, [x26]
    9f18:	d2800021 	mov	x1, #0x1                   	// #1
    9f1c:	b9010ba3 	str	w3, [x29, #264]
    9f20:	71001c7f 	cmp	w3, #0x7
    9f24:	f9000741 	str	x1, [x26, #8]
    9f28:	f9008ba0 	str	x0, [x29, #272]
    9f2c:	540046ad 	b.le	a800 <_vfiprintf_r+0xb90>
    9f30:	b50032a0 	cbnz	x0, a584 <_vfiprintf_r+0x914>
    9f34:	2a0103e3 	mov	w3, w1
    9f38:	350046eb 	cbnz	w11, a814 <_vfiprintf_r+0xba4>
    9f3c:	91004382 	add	x2, x28, #0x10
    9f40:	aa1c03fa 	mov	x26, x28
    9f44:	52800001 	mov	w1, #0x0                   	// #0
    9f48:	7102015f 	cmp	w10, #0x80
    9f4c:	54003620 	b.eq	a610 <_vfiprintf_r+0x9a0>  // b.none
    9f50:	4b080273 	sub	w19, w19, w8
    9f54:	7100027f 	cmp	w19, #0x0
    9f58:	540005cd 	b.le	a010 <_vfiprintf_r+0x3a0>
    9f5c:	7100427f 	cmp	w19, #0x10
    9f60:	5400528d 	b.le	a9b0 <_vfiprintf_r+0xd40>
    9f64:	90000039 	adrp	x25, d000 <__trunctfdf2+0x290>
    9f68:	91140329 	add	x9, x25, #0x500
    9f6c:	91004129 	add	x9, x9, #0x10
    9f70:	b900abb4 	str	w20, [x29, #168]
    9f74:	d280020a 	mov	x10, #0x10                  	// #16
    9f78:	b900a3a8 	str	w8, [x29, #160]
    9f7c:	aa0903f4 	mov	x20, x9
    9f80:	14000007 	b	9f9c <_vfiprintf_r+0x32c>
    9f84:	11000823 	add	w3, w1, #0x2
    9f88:	9100435a 	add	x26, x26, #0x10
    9f8c:	2a0203e1 	mov	w1, w2
    9f90:	51004273 	sub	w19, w19, #0x10
    9f94:	7100427f 	cmp	w19, #0x10
    9f98:	540001ed 	b.le	9fd4 <_vfiprintf_r+0x364>
    9f9c:	11000422 	add	w2, w1, #0x1
    9fa0:	91004000 	add	x0, x0, #0x10
    9fa4:	a9002b54 	stp	x20, x10, [x26]
    9fa8:	71001c5f 	cmp	w2, #0x7
    9fac:	b9010ba2 	str	w2, [x29, #264]
    9fb0:	f9008ba0 	str	x0, [x29, #272]
    9fb4:	54fffe8d 	b.le	9f84 <_vfiprintf_r+0x314>
    9fb8:	b5002d00 	cbnz	x0, a558 <_vfiprintf_r+0x8e8>
    9fbc:	51004273 	sub	w19, w19, #0x10
    9fc0:	52800023 	mov	w3, #0x1                   	// #1
    9fc4:	52800001 	mov	w1, #0x0                   	// #0
    9fc8:	aa1c03fa 	mov	x26, x28
    9fcc:	7100427f 	cmp	w19, #0x10
    9fd0:	54fffe6c 	b.gt	9f9c <_vfiprintf_r+0x32c>
    9fd4:	b940a3a8 	ldr	w8, [x29, #160]
    9fd8:	91004341 	add	x1, x26, #0x10
    9fdc:	b940abb4 	ldr	w20, [x29, #168]
    9fe0:	93407e73 	sxtw	x19, w19
    9fe4:	91140339 	add	x25, x25, #0x500
    9fe8:	91004339 	add	x25, x25, #0x10
    9fec:	8b130000 	add	x0, x0, x19
    9ff0:	a9004f59 	stp	x25, x19, [x26]
    9ff4:	71001c7f 	cmp	w3, #0x7
    9ff8:	b9010ba3 	str	w3, [x29, #264]
    9ffc:	f9008ba0 	str	x0, [x29, #272]
    a000:	540041cc 	b.gt	a838 <_vfiprintf_r+0xbc8>
    a004:	11000463 	add	w3, w3, #0x1
    a008:	91004022 	add	x2, x1, #0x10
    a00c:	aa0103fa 	mov	x26, x1
    a010:	93407d08 	sxtw	x8, w8
    a014:	b9010ba3 	str	w3, [x29, #264]
    a018:	8b000100 	add	x0, x8, x0
    a01c:	a9002358 	stp	x24, x8, [x26]
    a020:	f9008ba0 	str	x0, [x29, #272]
    a024:	71001c7f 	cmp	w3, #0x7
    a028:	5400376d 	b.le	a714 <_vfiprintf_r+0xaa4>
    a02c:	b5003660 	cbnz	x0, a6f8 <_vfiprintf_r+0xa88>
    a030:	b9010bbf 	str	wzr, [x29, #264]
    a034:	36100537 	tbz	w23, #2, a0d8 <_vfiprintf_r+0x468>
    a038:	4b1402d3 	sub	w19, w22, w20
    a03c:	7100027f 	cmp	w19, #0x0
    a040:	540004cd 	b.le	a0d8 <_vfiprintf_r+0x468>
    a044:	aa1c03e2 	mov	x2, x28
    a048:	7100427f 	cmp	w19, #0x10
    a04c:	b9410ba3 	ldr	w3, [x29, #264]
    a050:	540054ed 	b.le	aaec <_vfiprintf_r+0xe7c>
    a054:	f0000019 	adrp	x25, d000 <__trunctfdf2+0x290>
    a058:	d280021a 	mov	x26, #0x10                  	// #16
    a05c:	91140337 	add	x23, x25, #0x500
    a060:	14000007 	b	a07c <_vfiprintf_r+0x40c>
    a064:	11000864 	add	w4, w3, #0x2
    a068:	91004042 	add	x2, x2, #0x10
    a06c:	2a0103e3 	mov	w3, w1
    a070:	51004273 	sub	w19, w19, #0x10
    a074:	7100427f 	cmp	w19, #0x10
    a078:	540001ed 	b.le	a0b4 <_vfiprintf_r+0x444>
    a07c:	11000461 	add	w1, w3, #0x1
    a080:	91004000 	add	x0, x0, #0x10
    a084:	a9006857 	stp	x23, x26, [x2]
    a088:	71001c3f 	cmp	w1, #0x7
    a08c:	b9010ba1 	str	w1, [x29, #264]
    a090:	f9008ba0 	str	x0, [x29, #272]
    a094:	54fffe8d 	b.le	a064 <_vfiprintf_r+0x3f4>
    a098:	b5003780 	cbnz	x0, a788 <_vfiprintf_r+0xb18>
    a09c:	51004273 	sub	w19, w19, #0x10
    a0a0:	52800024 	mov	w4, #0x1                   	// #1
    a0a4:	52800003 	mov	w3, #0x0                   	// #0
    a0a8:	aa1c03e2 	mov	x2, x28
    a0ac:	7100427f 	cmp	w19, #0x10
    a0b0:	54fffe6c 	b.gt	a07c <_vfiprintf_r+0x40c>
    a0b4:	93407e73 	sxtw	x19, w19
    a0b8:	91140339 	add	x25, x25, #0x500
    a0bc:	8b130000 	add	x0, x0, x19
    a0c0:	a9004c59 	stp	x25, x19, [x2]
    a0c4:	b9010ba4 	str	w4, [x29, #264]
    a0c8:	71001c9f 	cmp	w4, #0x7
    a0cc:	f9008ba0 	str	x0, [x29, #272]
    a0d0:	540032ad 	b.le	a724 <_vfiprintf_r+0xab4>
    a0d4:	b5004400 	cbnz	x0, a954 <_vfiprintf_r+0xce4>
    a0d8:	b940cfa0 	ldr	w0, [x29, #204]
    a0dc:	6b1402df 	cmp	w22, w20
    a0e0:	1a94a2c5 	csel	w5, w22, w20, ge  // ge = tcont
    a0e4:	0b050000 	add	w0, w0, w5
    a0e8:	b900cfa0 	str	w0, [x29, #204]
    a0ec:	14000199 	b	a750 <_vfiprintf_r+0xae0>
    a0f0:	f9405fa2 	ldr	x2, [x29, #184]
    a0f4:	78615841 	ldrh	w1, [x2, w1, uxtw #1]
    a0f8:	10000062 	adr	x2, a104 <_vfiprintf_r+0x494>
    a0fc:	8b21a841 	add	x1, x2, w1, sxth #2
    a100:	d61f0020 	br	x1
    a104:	321c02f7 	orr	w23, w23, #0x10
    a108:	39400360 	ldrb	w0, [x27]
    a10c:	17ffff2f 	b	9dc8 <_vfiprintf_r+0x158>
    a110:	321c02f7 	orr	w23, w23, #0x10
    a114:	b940cba0 	ldr	w0, [x29, #200]
    a118:	36280cf7 	tbz	w23, #5, a2b4 <_vfiprintf_r+0x644>
    a11c:	37f88e80 	tbnz	w0, #31, b2ec <_vfiprintf_r+0x167c>
    a120:	f9405ba0 	ldr	x0, [x29, #176]
    a124:	91003c01 	add	x1, x0, #0xf
    a128:	927df021 	and	x1, x1, #0xfffffffffffffff8
    a12c:	f9005ba1 	str	x1, [x29, #176]
    a130:	2a1703f4 	mov	w20, w23
    a134:	f9400019 	ldr	x25, [x0]
    a138:	52800020 	mov	w0, #0x1                   	// #1
    a13c:	3903dfbf 	strb	wzr, [x29, #247]
    a140:	910463a7 	add	x7, x29, #0x118
    a144:	910190e8 	add	x8, x7, #0x64
    a148:	3100067f 	cmn	w19, #0x1
    a14c:	54000460 	b.eq	a1d8 <_vfiprintf_r+0x568>  // b.none
    a150:	f100033f 	cmp	x25, #0x0
    a154:	12187a97 	and	w23, w20, #0xffffff7f
    a158:	7a400a60 	ccmp	w19, #0x0, #0x0, eq  // eq = none
    a15c:	54005981 	b.ne	ac8c <_vfiprintf_r+0x101c>  // b.any
    a160:	35005660 	cbnz	w0, ac2c <_vfiprintf_r+0xfbc>
    a164:	12000288 	and	w8, w20, #0x1
    a168:	36005974 	tbz	w20, #0, ac94 <_vfiprintf_r+0x1024>
    a16c:	91018cf8 	add	x24, x7, #0x63
    a170:	52800600 	mov	w0, #0x30                  	// #48
    a174:	52800013 	mov	w19, #0x0                   	// #0
    a178:	3905efa0 	strb	w0, [x29, #379]
    a17c:	d503201f 	nop
    a180:	3943dfa0 	ldrb	w0, [x29, #247]
    a184:	6b08027f 	cmp	w19, w8
    a188:	1a88a274 	csel	w20, w19, w8, ge  // ge = tcont
    a18c:	7100001f 	cmp	w0, #0x0
    a190:	1a940694 	cinc	w20, w20, ne  // ne = any
    a194:	17ffff19 	b	9df8 <_vfiprintf_r+0x188>
    a198:	321c02f7 	orr	w23, w23, #0x10
    a19c:	b940cba0 	ldr	w0, [x29, #200]
    a1a0:	36280797 	tbz	w23, #5, a290 <_vfiprintf_r+0x620>
    a1a4:	37f88060 	tbnz	w0, #31, b1b0 <_vfiprintf_r+0x1540>
    a1a8:	f9405ba0 	ldr	x0, [x29, #176]
    a1ac:	91003c01 	add	x1, x0, #0xf
    a1b0:	927df021 	and	x1, x1, #0xfffffffffffffff8
    a1b4:	f9005ba1 	str	x1, [x29, #176]
    a1b8:	f9400019 	ldr	x25, [x0]
    a1bc:	3903dfbf 	strb	wzr, [x29, #247]
    a1c0:	910463a7 	add	x7, x29, #0x118
    a1c4:	12157af4 	and	w20, w23, #0xfffffbff
    a1c8:	52800000 	mov	w0, #0x0                   	// #0
    a1cc:	910190e8 	add	x8, x7, #0x64
    a1d0:	3100067f 	cmn	w19, #0x1
    a1d4:	54fffbe1 	b.ne	a150 <_vfiprintf_r+0x4e0>  // b.any
    a1d8:	7100041f 	cmp	w0, #0x1
    a1dc:	54000e00 	b.eq	a39c <_vfiprintf_r+0x72c>  // b.none
    a1e0:	7100081f 	cmp	w0, #0x2
    a1e4:	540052c1 	b.ne	ac3c <_vfiprintf_r+0xfcc>  // b.any
    a1e8:	f9404fa1 	ldr	x1, [x29, #152]
    a1ec:	910190f8 	add	x24, x7, #0x64
    a1f0:	92400f20 	and	x0, x25, #0xf
    a1f4:	d344ff39 	lsr	x25, x25, #4
    a1f8:	38606820 	ldrb	w0, [x1, x0]
    a1fc:	381fff00 	strb	w0, [x24, #-1]!
    a200:	b5ffff99 	cbnz	x25, a1f0 <_vfiprintf_r+0x580>
    a204:	4b180108 	sub	w8, w8, w24
    a208:	2a1403f7 	mov	w23, w20
    a20c:	17ffffdd 	b	a180 <_vfiprintf_r+0x510>
    a210:	aa1403e1 	mov	x1, x20
    a214:	aa1503e0 	mov	x0, x21
    a218:	97ffed8e 	bl	5850 <__swsetup_r>
    a21c:	35005ba0 	cbnz	w0, ad90 <_vfiprintf_r+0x1120>
    a220:	79402280 	ldrh	w0, [x20, #16]
    a224:	52800341 	mov	w1, #0x1a                  	// #26
    a228:	0a010000 	and	w0, w0, w1
    a22c:	7100281f 	cmp	w0, #0xa
    a230:	54ffd661 	b.ne	9cfc <_vfiprintf_r+0x8c>  // b.any
    a234:	79c02680 	ldrsh	w0, [x20, #18]
    a238:	37ffd620 	tbnz	w0, #31, 9cfc <_vfiprintf_r+0x8c>
    a23c:	a9400e62 	ldp	x2, x3, [x19]
    a240:	a9410660 	ldp	x0, x1, [x19, #16]
    a244:	a90d0fa2 	stp	x2, x3, [x29, #208]
    a248:	a90e07a0 	stp	x0, x1, [x29, #224]
    a24c:	910343a3 	add	x3, x29, #0xd0
    a250:	aa1b03e2 	mov	x2, x27
    a254:	aa1403e1 	mov	x1, x20
    a258:	aa1503e0 	mov	x0, x21
    a25c:	940004a5 	bl	b4f0 <__sbprintf>
    a260:	b900cfa0 	str	w0, [x29, #204]
    a264:	a94153f3 	ldp	x19, x20, [sp, #16]
    a268:	b940cfa0 	ldr	w0, [x29, #204]
    a26c:	a9407bfd 	ldp	x29, x30, [sp]
    a270:	f94013f5 	ldr	x21, [sp, #32]
    a274:	f9402bfb 	ldr	x27, [sp, #80]
    a278:	910803ff 	add	sp, sp, #0x200
    a27c:	d65f03c0 	ret
    a280:	b5003081 	cbnz	x1, a890 <_vfiprintf_r+0xc20>
    a284:	aa1c03fa 	mov	x26, x28
    a288:	b9010bbf 	str	wzr, [x29, #264]
    a28c:	17fffec4 	b	9d9c <_vfiprintf_r+0x12c>
    a290:	3727f8b7 	tbnz	w23, #4, a1a4 <_vfiprintf_r+0x534>
    a294:	36303cf7 	tbz	w23, #6, aa30 <_vfiprintf_r+0xdc0>
    a298:	37f87ee0 	tbnz	w0, #31, b274 <_vfiprintf_r+0x1604>
    a29c:	f9405ba0 	ldr	x0, [x29, #176]
    a2a0:	91002c01 	add	x1, x0, #0xb
    a2a4:	927df021 	and	x1, x1, #0xfffffffffffffff8
    a2a8:	79400019 	ldrh	w25, [x0]
    a2ac:	f9005ba1 	str	x1, [x29, #176]
    a2b0:	17ffffc3 	b	a1bc <_vfiprintf_r+0x54c>
    a2b4:	3727f357 	tbnz	w23, #4, a11c <_vfiprintf_r+0x4ac>
    a2b8:	36303ed7 	tbz	w23, #6, aa90 <_vfiprintf_r+0xe20>
    a2bc:	37f88d20 	tbnz	w0, #31, b460 <_vfiprintf_r+0x17f0>
    a2c0:	f9405ba0 	ldr	x0, [x29, #176]
    a2c4:	91002c01 	add	x1, x0, #0xb
    a2c8:	927df021 	and	x1, x1, #0xfffffffffffffff8
    a2cc:	f9005ba1 	str	x1, [x29, #176]
    a2d0:	79400019 	ldrh	w25, [x0]
    a2d4:	2a1703f4 	mov	w20, w23
    a2d8:	52800020 	mov	w0, #0x1                   	// #1
    a2dc:	17ffff98 	b	a13c <_vfiprintf_r+0x4cc>
    a2e0:	97fff48a 	bl	7508 <__sinit>
    a2e4:	17fffe76 	b	9cbc <_vfiprintf_r+0x4c>
    a2e8:	5100c001 	sub	w1, w0, #0x30
    a2ec:	52800016 	mov	w22, #0x0                   	// #0
    a2f0:	0b160ad6 	add	w22, w22, w22, lsl #2
    a2f4:	38401760 	ldrb	w0, [x27], #1
    a2f8:	0b160436 	add	w22, w1, w22, lsl #1
    a2fc:	5100c001 	sub	w1, w0, #0x30
    a300:	7100243f 	cmp	w1, #0x9
    a304:	54ffff69 	b.ls	a2f0 <_vfiprintf_r+0x680>  // b.plast
    a308:	17fffeb1 	b	9dcc <_vfiprintf_r+0x15c>
    a30c:	f0000001 	adrp	x1, d000 <__trunctfdf2+0x290>
    a310:	91152021 	add	x1, x1, #0x548
    a314:	f9004fa1 	str	x1, [x29, #152]
    a318:	b940cba1 	ldr	w1, [x29, #200]
    a31c:	362810d7 	tbz	w23, #5, a534 <_vfiprintf_r+0x8c4>
    a320:	37f87fa1 	tbnz	w1, #31, b314 <_vfiprintf_r+0x16a4>
    a324:	f9405ba1 	ldr	x1, [x29, #176]
    a328:	91003c22 	add	x2, x1, #0xf
    a32c:	927df042 	and	x2, x2, #0xfffffffffffffff8
    a330:	f9005ba2 	str	x2, [x29, #176]
    a334:	f9400039 	ldr	x25, [x1]
    a338:	f100033f 	cmp	x25, #0x0
    a33c:	120002e1 	and	w1, w23, #0x1
    a340:	1a9f1021 	csel	w1, w1, wzr, ne  // ne = any
    a344:	35005601 	cbnz	w1, ae04 <_vfiprintf_r+0x1194>
    a348:	12157af4 	and	w20, w23, #0xfffffbff
    a34c:	52800040 	mov	w0, #0x2                   	// #2
    a350:	17ffff7b 	b	a13c <_vfiprintf_r+0x4cc>
    a354:	2a1703f4 	mov	w20, w23
    a358:	b940cba0 	ldr	w0, [x29, #200]
    a35c:	36280d14 	tbz	w20, #5, a4fc <_vfiprintf_r+0x88c>
    a360:	37f851e0 	tbnz	w0, #31, ad9c <_vfiprintf_r+0x112c>
    a364:	f9405ba0 	ldr	x0, [x29, #176]
    a368:	91003c01 	add	x1, x0, #0xf
    a36c:	927df021 	and	x1, x1, #0xfffffffffffffff8
    a370:	f9005ba1 	str	x1, [x29, #176]
    a374:	f9400019 	ldr	x25, [x0]
    a378:	b6f80099 	tbz	x25, #63, a388 <_vfiprintf_r+0x718>
    a37c:	cb1903f9 	neg	x25, x25
    a380:	528005a0 	mov	w0, #0x2d                  	// #45
    a384:	3903dfa0 	strb	w0, [x29, #247]
    a388:	910463a7 	add	x7, x29, #0x118
    a38c:	3100067f 	cmn	w19, #0x1
    a390:	910190e8 	add	x8, x7, #0x64
    a394:	52800020 	mov	w0, #0x1                   	// #1
    a398:	54ffedc1 	b.ne	a150 <_vfiprintf_r+0x4e0>  // b.any
    a39c:	f100273f 	cmp	x25, #0x9
    a3a0:	54004808 	b.hi	aca0 <_vfiprintf_r+0x1030>  // b.pmore
    a3a4:	1100c339 	add	w25, w25, #0x30
    a3a8:	2a1403f7 	mov	w23, w20
    a3ac:	3905efb9 	strb	w25, [x29, #379]
    a3b0:	52800028 	mov	w8, #0x1                   	// #1
    a3b4:	91018cf8 	add	x24, x7, #0x63
    a3b8:	17ffff72 	b	a180 <_vfiprintf_r+0x510>
    a3bc:	39400360 	ldrb	w0, [x27]
    a3c0:	7101b01f 	cmp	w0, #0x6c
    a3c4:	54003040 	b.eq	a9cc <_vfiprintf_r+0xd5c>  // b.none
    a3c8:	321c02f7 	orr	w23, w23, #0x10
    a3cc:	17fffe7f 	b	9dc8 <_vfiprintf_r+0x158>
    a3d0:	39400360 	ldrb	w0, [x27]
    a3d4:	7101a01f 	cmp	w0, #0x68
    a3d8:	54002f20 	b.eq	a9bc <_vfiprintf_r+0xd4c>  // b.none
    a3dc:	321a02f7 	orr	w23, w23, #0x40
    a3e0:	17fffe7a 	b	9dc8 <_vfiprintf_r+0x158>
    a3e4:	39400360 	ldrb	w0, [x27]
    a3e8:	91000762 	add	x2, x27, #0x1
    a3ec:	7100a81f 	cmp	w0, #0x2a
    a3f0:	54005b00 	b.eq	af50 <_vfiprintf_r+0x12e0>  // b.none
    a3f4:	5100c001 	sub	w1, w0, #0x30
    a3f8:	aa0203fb 	mov	x27, x2
    a3fc:	52800013 	mov	w19, #0x0                   	// #0
    a400:	7100243f 	cmp	w1, #0x9
    a404:	54ffce48 	b.hi	9dcc <_vfiprintf_r+0x15c>  // b.pmore
    a408:	0b130a73 	add	w19, w19, w19, lsl #2
    a40c:	38401760 	ldrb	w0, [x27], #1
    a410:	0b130433 	add	w19, w1, w19, lsl #1
    a414:	5100c001 	sub	w1, w0, #0x30
    a418:	7100243f 	cmp	w1, #0x9
    a41c:	54ffff69 	b.ls	a408 <_vfiprintf_r+0x798>  // b.plast
    a420:	17fffe6b 	b	9dcc <_vfiprintf_r+0x15c>
    a424:	39400360 	ldrb	w0, [x27]
    a428:	321e02f7 	orr	w23, w23, #0x4
    a42c:	17fffe67 	b	9dc8 <_vfiprintf_r+0x158>
    a430:	52800561 	mov	w1, #0x2b                  	// #43
    a434:	39400360 	ldrb	w0, [x27]
    a438:	3903dfa1 	strb	w1, [x29, #247]
    a43c:	17fffe63 	b	9dc8 <_vfiprintf_r+0x158>
    a440:	aa1503e0 	mov	x0, x21
    a444:	97fff5dd 	bl	7bb8 <_localeconv_r>
    a448:	f9400400 	ldr	x0, [x0, #8]
    a44c:	f9003ba0 	str	x0, [x29, #112]
    a450:	97fffd4c 	bl	9980 <strlen>
    a454:	aa0003f4 	mov	x20, x0
    a458:	aa1503e0 	mov	x0, x21
    a45c:	f90037b4 	str	x20, [x29, #104]
    a460:	97fff5d6 	bl	7bb8 <_localeconv_r>
    a464:	f9400800 	ldr	x0, [x0, #16]
    a468:	f9003fa0 	str	x0, [x29, #120]
    a46c:	f100029f 	cmp	x20, #0x0
    a470:	fa401804 	ccmp	x0, #0x0, #0x4, ne  // ne = any
    a474:	54002600 	b.eq	a934 <_vfiprintf_r+0xcc4>  // b.none
    a478:	39400002 	ldrb	w2, [x0]
    a47c:	321602e1 	orr	w1, w23, #0x400
    a480:	39400360 	ldrb	w0, [x27]
    a484:	7100005f 	cmp	w2, #0x0
    a488:	1a971037 	csel	w23, w1, w23, ne  // ne = any
    a48c:	17fffe4f 	b	9dc8 <_vfiprintf_r+0x158>
    a490:	320002f7 	orr	w23, w23, #0x1
    a494:	39400360 	ldrb	w0, [x27]
    a498:	17fffe4c 	b	9dc8 <_vfiprintf_r+0x158>
    a49c:	3943dfa1 	ldrb	w1, [x29, #247]
    a4a0:	39400360 	ldrb	w0, [x27]
    a4a4:	35ffc921 	cbnz	w1, 9dc8 <_vfiprintf_r+0x158>
    a4a8:	52800401 	mov	w1, #0x20                  	// #32
    a4ac:	3903dfa1 	strb	w1, [x29, #247]
    a4b0:	17fffe46 	b	9dc8 <_vfiprintf_r+0x158>
    a4b4:	b940cba0 	ldr	w0, [x29, #200]
    a4b8:	37280057 	tbnz	w23, #5, a4c0 <_vfiprintf_r+0x850>
    a4bc:	36202f97 	tbz	w23, #4, aaac <_vfiprintf_r+0xe3c>
    a4c0:	37f86fc0 	tbnz	w0, #31, b2b8 <_vfiprintf_r+0x1648>
    a4c4:	f9405ba0 	ldr	x0, [x29, #176]
    a4c8:	91003c01 	add	x1, x0, #0xf
    a4cc:	927df021 	and	x1, x1, #0xfffffffffffffff8
    a4d0:	f9005ba1 	str	x1, [x29, #176]
    a4d4:	14000382 	b	b2dc <_vfiprintf_r+0x166c>
    a4d8:	321b02f7 	orr	w23, w23, #0x20
    a4dc:	39400360 	ldrb	w0, [x27]
    a4e0:	17fffe3a 	b	9dc8 <_vfiprintf_r+0x158>
    a4e4:	321902f7 	orr	w23, w23, #0x80
    a4e8:	39400360 	ldrb	w0, [x27]
    a4ec:	17fffe37 	b	9dc8 <_vfiprintf_r+0x158>
    a4f0:	321c02f4 	orr	w20, w23, #0x10
    a4f4:	b940cba0 	ldr	w0, [x29, #200]
    a4f8:	372ff354 	tbnz	w20, #5, a360 <_vfiprintf_r+0x6f0>
    a4fc:	3727f334 	tbnz	w20, #4, a360 <_vfiprintf_r+0x6f0>
    a500:	36302b94 	tbz	w20, #6, aa70 <_vfiprintf_r+0xe00>
    a504:	37f85780 	tbnz	w0, #31, aff4 <_vfiprintf_r+0x1384>
    a508:	f9405ba0 	ldr	x0, [x29, #176]
    a50c:	91002c01 	add	x1, x0, #0xb
    a510:	927df021 	and	x1, x1, #0xfffffffffffffff8
    a514:	79800019 	ldrsh	x25, [x0]
    a518:	f9005ba1 	str	x1, [x29, #176]
    a51c:	17ffff97 	b	a378 <_vfiprintf_r+0x708>
    a520:	f0000001 	adrp	x1, d000 <__trunctfdf2+0x290>
    a524:	91158021 	add	x1, x1, #0x560
    a528:	f9004fa1 	str	x1, [x29, #152]
    a52c:	b940cba1 	ldr	w1, [x29, #200]
    a530:	372fef97 	tbnz	w23, #5, a320 <_vfiprintf_r+0x6b0>
    a534:	3727ef77 	tbnz	w23, #4, a320 <_vfiprintf_r+0x6b0>
    a538:	363028d7 	tbz	w23, #6, aa50 <_vfiprintf_r+0xde0>
    a53c:	37f867a1 	tbnz	w1, #31, b230 <_vfiprintf_r+0x15c0>
    a540:	f9405ba1 	ldr	x1, [x29, #176]
    a544:	91002c22 	add	x2, x1, #0xb
    a548:	927df042 	and	x2, x2, #0xfffffffffffffff8
    a54c:	79400039 	ldrh	w25, [x1]
    a550:	f9005ba2 	str	x2, [x29, #176]
    a554:	17ffff79 	b	a338 <_vfiprintf_r+0x6c8>
    a558:	f94063a1 	ldr	x1, [x29, #192]
    a55c:	910403a2 	add	x2, x29, #0x100
    a560:	aa1503e0 	mov	x0, x21
    a564:	97fffd83 	bl	9b70 <__sprint_r.part.0>
    a568:	35001780 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a56c:	b9410ba1 	ldr	w1, [x29, #264]
    a570:	aa1c03fa 	mov	x26, x28
    a574:	d280020a 	mov	x10, #0x10                  	// #16
    a578:	f9408ba0 	ldr	x0, [x29, #272]
    a57c:	11000423 	add	w3, w1, #0x1
    a580:	17fffe84 	b	9f90 <_vfiprintf_r+0x320>
    a584:	f94063a1 	ldr	x1, [x29, #192]
    a588:	910403a2 	add	x2, x29, #0x100
    a58c:	aa1503e0 	mov	x0, x21
    a590:	b9008ba8 	str	w8, [x29, #136]
    a594:	b900a3aa 	str	w10, [x29, #160]
    a598:	b900abab 	str	w11, [x29, #168]
    a59c:	97fffd75 	bl	9b70 <__sprint_r.part.0>
    a5a0:	350015c0 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a5a4:	b9410ba1 	ldr	w1, [x29, #264]
    a5a8:	91004382 	add	x2, x28, #0x10
    a5ac:	b9408ba8 	ldr	w8, [x29, #136]
    a5b0:	aa1c03fa 	mov	x26, x28
    a5b4:	b940a3aa 	ldr	w10, [x29, #160]
    a5b8:	11000423 	add	w3, w1, #0x1
    a5bc:	b940abab 	ldr	w11, [x29, #168]
    a5c0:	f9408ba0 	ldr	x0, [x29, #272]
    a5c4:	d503201f 	nop
    a5c8:	34ffcc0b 	cbz	w11, 9f48 <_vfiprintf_r+0x2d8>
    a5cc:	9103e3a1 	add	x1, x29, #0xf8
    a5d0:	91000800 	add	x0, x0, #0x2
    a5d4:	f9000341 	str	x1, [x26]
    a5d8:	d2800041 	mov	x1, #0x2                   	// #2
    a5dc:	b9010ba3 	str	w3, [x29, #264]
    a5e0:	71001c7f 	cmp	w3, #0x7
    a5e4:	f9000741 	str	x1, [x26, #8]
    a5e8:	f9008ba0 	str	x0, [x29, #272]
    a5ec:	540011cd 	b.le	a824 <_vfiprintf_r+0xbb4>
    a5f0:	b50015e0 	cbnz	x0, a8ac <_vfiprintf_r+0xc3c>
    a5f4:	91004382 	add	x2, x28, #0x10
    a5f8:	52800023 	mov	w3, #0x1                   	// #1
    a5fc:	52800001 	mov	w1, #0x0                   	// #0
    a600:	aa1c03fa 	mov	x26, x28
    a604:	7102015f 	cmp	w10, #0x80
    a608:	54ffca41 	b.ne	9f50 <_vfiprintf_r+0x2e0>  // b.any
    a60c:	d503201f 	nop
    a610:	4b1402c9 	sub	w9, w22, w20
    a614:	7100013f 	cmp	w9, #0x0
    a618:	54ffc9cd 	b.le	9f50 <_vfiprintf_r+0x2e0>
    a61c:	7100413f 	cmp	w9, #0x10
    a620:	540026cd 	b.le	aaf8 <_vfiprintf_r+0xe88>
    a624:	f0000019 	adrp	x25, d000 <__trunctfdf2+0x290>
    a628:	91140323 	add	x3, x25, #0x500
    a62c:	91004063 	add	x3, x3, #0x10
    a630:	aa1a03e4 	mov	x4, x26
    a634:	b900a3b4 	str	w20, [x29, #160]
    a638:	aa1903fa 	mov	x26, x25
    a63c:	b900abb3 	str	w19, [x29, #168]
    a640:	d280020b 	mov	x11, #0x10                  	// #16
    a644:	2a0803f9 	mov	w25, w8
    a648:	2a0903f3 	mov	w19, w9
    a64c:	aa0303f4 	mov	x20, x3
    a650:	14000007 	b	a66c <_vfiprintf_r+0x9fc>
    a654:	1100082a 	add	w10, w1, #0x2
    a658:	91004084 	add	x4, x4, #0x10
    a65c:	2a0203e1 	mov	w1, w2
    a660:	51004273 	sub	w19, w19, #0x10
    a664:	7100427f 	cmp	w19, #0x10
    a668:	540001ed 	b.le	a6a4 <_vfiprintf_r+0xa34>
    a66c:	11000422 	add	w2, w1, #0x1
    a670:	91004000 	add	x0, x0, #0x10
    a674:	a9002c94 	stp	x20, x11, [x4]
    a678:	71001c5f 	cmp	w2, #0x7
    a67c:	b9010ba2 	str	w2, [x29, #264]
    a680:	f9008ba0 	str	x0, [x29, #272]
    a684:	54fffe8d 	b.le	a654 <_vfiprintf_r+0x9e4>
    a688:	b5000940 	cbnz	x0, a7b0 <_vfiprintf_r+0xb40>
    a68c:	51004273 	sub	w19, w19, #0x10
    a690:	5280002a 	mov	w10, #0x1                   	// #1
    a694:	52800001 	mov	w1, #0x0                   	// #0
    a698:	aa1c03e4 	mov	x4, x28
    a69c:	7100427f 	cmp	w19, #0x10
    a6a0:	54fffe6c 	b.gt	a66c <_vfiprintf_r+0x9fc>
    a6a4:	2a1303e9 	mov	w9, w19
    a6a8:	b940a3b4 	ldr	w20, [x29, #160]
    a6ac:	b940abb3 	ldr	w19, [x29, #168]
    a6b0:	2a1903e8 	mov	w8, w25
    a6b4:	9100408b 	add	x11, x4, #0x10
    a6b8:	aa1a03f9 	mov	x25, x26
    a6bc:	aa0403fa 	mov	x26, x4
    a6c0:	93407d21 	sxtw	x1, w9
    a6c4:	91140322 	add	x2, x25, #0x500
    a6c8:	91004042 	add	x2, x2, #0x10
    a6cc:	8b010000 	add	x0, x0, x1
    a6d0:	a9000742 	stp	x2, x1, [x26]
    a6d4:	71001d5f 	cmp	w10, #0x7
    a6d8:	b9010baa 	str	w10, [x29, #264]
    a6dc:	f9008ba0 	str	x0, [x29, #272]
    a6e0:	5400104c 	b.gt	a8e8 <_vfiprintf_r+0xc78>
    a6e4:	11000543 	add	w3, w10, #0x1
    a6e8:	2a0a03e1 	mov	w1, w10
    a6ec:	91004162 	add	x2, x11, #0x10
    a6f0:	aa0b03fa 	mov	x26, x11
    a6f4:	17fffe17 	b	9f50 <_vfiprintf_r+0x2e0>
    a6f8:	f94063a1 	ldr	x1, [x29, #192]
    a6fc:	910403a2 	add	x2, x29, #0x100
    a700:	aa1503e0 	mov	x0, x21
    a704:	97fffd1b 	bl	9b70 <__sprint_r.part.0>
    a708:	35000a80 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a70c:	f9408ba0 	ldr	x0, [x29, #272]
    a710:	aa1c03e2 	mov	x2, x28
    a714:	36100097 	tbz	w23, #2, a724 <_vfiprintf_r+0xab4>
    a718:	4b1402d3 	sub	w19, w22, w20
    a71c:	7100027f 	cmp	w19, #0x0
    a720:	54ffc94c 	b.gt	a048 <_vfiprintf_r+0x3d8>
    a724:	b940cfa1 	ldr	w1, [x29, #204]
    a728:	6b1402df 	cmp	w22, w20
    a72c:	1a94a2c5 	csel	w5, w22, w20, ge  // ge = tcont
    a730:	0b050021 	add	w1, w1, w5
    a734:	b900cfa1 	str	w1, [x29, #204]
    a738:	b40000c0 	cbz	x0, a750 <_vfiprintf_r+0xae0>
    a73c:	f94063a1 	ldr	x1, [x29, #192]
    a740:	910403a2 	add	x2, x29, #0x100
    a744:	aa1503e0 	mov	x0, x21
    a748:	97fffd0a 	bl	9b70 <__sprint_r.part.0>
    a74c:	35000860 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a750:	aa1c03fa 	mov	x26, x28
    a754:	b9010bbf 	str	wzr, [x29, #264]
    a758:	17fffd7a 	b	9d40 <_vfiprintf_r+0xd0>
    a75c:	f94063a1 	ldr	x1, [x29, #192]
    a760:	910403a2 	add	x2, x29, #0x100
    a764:	aa1503e0 	mov	x0, x21
    a768:	97fffd02 	bl	9b70 <__sprint_r.part.0>
    a76c:	35000760 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a770:	b9410ba1 	ldr	w1, [x29, #264]
    a774:	aa1c03e4 	mov	x4, x28
    a778:	d2800203 	mov	x3, #0x10                  	// #16
    a77c:	f9408ba0 	ldr	x0, [x29, #272]
    a780:	1100042c 	add	w12, w1, #0x1
    a784:	17fffdbb 	b	9e70 <_vfiprintf_r+0x200>
    a788:	f94063a1 	ldr	x1, [x29, #192]
    a78c:	910403a2 	add	x2, x29, #0x100
    a790:	aa1503e0 	mov	x0, x21
    a794:	97fffcf7 	bl	9b70 <__sprint_r.part.0>
    a798:	35000600 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a79c:	b9410ba3 	ldr	w3, [x29, #264]
    a7a0:	aa1c03e2 	mov	x2, x28
    a7a4:	f9408ba0 	ldr	x0, [x29, #272]
    a7a8:	11000464 	add	w4, w3, #0x1
    a7ac:	17fffe31 	b	a070 <_vfiprintf_r+0x400>
    a7b0:	f94063a1 	ldr	x1, [x29, #192]
    a7b4:	910403a2 	add	x2, x29, #0x100
    a7b8:	aa1503e0 	mov	x0, x21
    a7bc:	97fffced 	bl	9b70 <__sprint_r.part.0>
    a7c0:	350004c0 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a7c4:	b9410ba1 	ldr	w1, [x29, #264]
    a7c8:	aa1c03e4 	mov	x4, x28
    a7cc:	d280020b 	mov	x11, #0x10                  	// #16
    a7d0:	f9408ba0 	ldr	x0, [x29, #272]
    a7d4:	1100042a 	add	w10, w1, #0x1
    a7d8:	17ffffa2 	b	a660 <_vfiprintf_r+0x9f0>
    a7dc:	b5000ca0 	cbnz	x0, a970 <_vfiprintf_r+0xd00>
    a7e0:	3943dfa1 	ldrb	w1, [x29, #247]
    a7e4:	34000ac1 	cbz	w1, a93c <_vfiprintf_r+0xccc>
    a7e8:	d2800020 	mov	x0, #0x1                   	// #1
    a7ec:	91004382 	add	x2, x28, #0x10
    a7f0:	2a0003e3 	mov	w3, w0
    a7f4:	9103dfa1 	add	x1, x29, #0xf7
    a7f8:	a91803a1 	stp	x1, x0, [x29, #384]
    a7fc:	d503201f 	nop
    a800:	2a0303e1 	mov	w1, w3
    a804:	aa0203fa 	mov	x26, x2
    a808:	11000463 	add	w3, w3, #0x1
    a80c:	91004042 	add	x2, x2, #0x10
    a810:	17ffff6e 	b	a5c8 <_vfiprintf_r+0x958>
    a814:	91004382 	add	x2, x28, #0x10
    a818:	d2800040 	mov	x0, #0x2                   	// #2
    a81c:	9103e3a1 	add	x1, x29, #0xf8
    a820:	a91803a1 	stp	x1, x0, [x29, #384]
    a824:	2a0303e1 	mov	w1, w3
    a828:	aa0203fa 	mov	x26, x2
    a82c:	11000463 	add	w3, w3, #0x1
    a830:	91004042 	add	x2, x2, #0x10
    a834:	17fffdc5 	b	9f48 <_vfiprintf_r+0x2d8>
    a838:	b5000640 	cbnz	x0, a900 <_vfiprintf_r+0xc90>
    a83c:	93407d00 	sxtw	x0, w8
    a840:	52800021 	mov	w1, #0x1                   	// #1
    a844:	91004382 	add	x2, x28, #0x10
    a848:	b9010ba1 	str	w1, [x29, #264]
    a84c:	f9008ba0 	str	x0, [x29, #272]
    a850:	a91803b8 	stp	x24, x0, [x29, #384]
    a854:	17ffffb0 	b	a714 <_vfiprintf_r+0xaa4>
    a858:	f94063b4 	ldr	x20, [x29, #192]
    a85c:	79402280 	ldrh	w0, [x20, #16]
    a860:	a942dfb6 	ldp	x22, x23, [x29, #40]
    a864:	a943e7b8 	ldp	x24, x25, [x29, #56]
    a868:	f94027ba 	ldr	x26, [x29, #72]
    a86c:	f9402fbc 	ldr	x28, [x29, #88]
    a870:	37302900 	tbnz	w0, #6, ad90 <_vfiprintf_r+0x1120>
    a874:	b940cfa0 	ldr	w0, [x29, #204]
    a878:	a9407bfd 	ldp	x29, x30, [sp]
    a87c:	a94153f3 	ldp	x19, x20, [sp, #16]
    a880:	f94013f5 	ldr	x21, [sp, #32]
    a884:	f9402bfb 	ldr	x27, [sp, #80]
    a888:	910803ff 	add	sp, sp, #0x200
    a88c:	d65f03c0 	ret
    a890:	f94063a1 	ldr	x1, [x29, #192]
    a894:	910403a2 	add	x2, x29, #0x100
    a898:	aa1503e0 	mov	x0, x21
    a89c:	97fffcb5 	bl	9b70 <__sprint_r.part.0>
    a8a0:	35fffdc0 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a8a4:	aa1c03fa 	mov	x26, x28
    a8a8:	17fffd3d 	b	9d9c <_vfiprintf_r+0x12c>
    a8ac:	f94063a1 	ldr	x1, [x29, #192]
    a8b0:	910403a2 	add	x2, x29, #0x100
    a8b4:	aa1503e0 	mov	x0, x21
    a8b8:	b900a3a8 	str	w8, [x29, #160]
    a8bc:	b900abaa 	str	w10, [x29, #168]
    a8c0:	97fffcac 	bl	9b70 <__sprint_r.part.0>
    a8c4:	35fffca0 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a8c8:	b9410ba1 	ldr	w1, [x29, #264]
    a8cc:	91004382 	add	x2, x28, #0x10
    a8d0:	aa1c03fa 	mov	x26, x28
    a8d4:	b940a3a8 	ldr	w8, [x29, #160]
    a8d8:	b940abaa 	ldr	w10, [x29, #168]
    a8dc:	11000423 	add	w3, w1, #0x1
    a8e0:	f9408ba0 	ldr	x0, [x29, #272]
    a8e4:	17fffd99 	b	9f48 <_vfiprintf_r+0x2d8>
    a8e8:	b50008a0 	cbnz	x0, a9fc <_vfiprintf_r+0xd8c>
    a8ec:	91004382 	add	x2, x28, #0x10
    a8f0:	52800023 	mov	w3, #0x1                   	// #1
    a8f4:	52800001 	mov	w1, #0x0                   	// #0
    a8f8:	aa1c03fa 	mov	x26, x28
    a8fc:	17fffd95 	b	9f50 <_vfiprintf_r+0x2e0>
    a900:	f94063a1 	ldr	x1, [x29, #192]
    a904:	910403a2 	add	x2, x29, #0x100
    a908:	aa1503e0 	mov	x0, x21
    a90c:	b900aba8 	str	w8, [x29, #168]
    a910:	97fffc98 	bl	9b70 <__sprint_r.part.0>
    a914:	35fffa20 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a918:	b9410ba3 	ldr	w3, [x29, #264]
    a91c:	91004382 	add	x2, x28, #0x10
    a920:	aa1c03fa 	mov	x26, x28
    a924:	b940aba8 	ldr	w8, [x29, #168]
    a928:	11000463 	add	w3, w3, #0x1
    a92c:	f9408ba0 	ldr	x0, [x29, #272]
    a930:	17fffdb8 	b	a010 <_vfiprintf_r+0x3a0>
    a934:	39400360 	ldrb	w0, [x27]
    a938:	17fffd24 	b	9dc8 <_vfiprintf_r+0x158>
    a93c:	35000ccb 	cbnz	w11, aad4 <_vfiprintf_r+0xe64>
    a940:	52800001 	mov	w1, #0x0                   	// #0
    a944:	91004382 	add	x2, x28, #0x10
    a948:	52800023 	mov	w3, #0x1                   	// #1
    a94c:	aa1c03fa 	mov	x26, x28
    a950:	17fffd80 	b	9f50 <_vfiprintf_r+0x2e0>
    a954:	f94063a1 	ldr	x1, [x29, #192]
    a958:	910403a2 	add	x2, x29, #0x100
    a95c:	aa1503e0 	mov	x0, x21
    a960:	97fffc84 	bl	9b70 <__sprint_r.part.0>
    a964:	35fff7a0 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a968:	f9408ba0 	ldr	x0, [x29, #272]
    a96c:	17ffff6e 	b	a724 <_vfiprintf_r+0xab4>
    a970:	f94063a1 	ldr	x1, [x29, #192]
    a974:	910403a2 	add	x2, x29, #0x100
    a978:	aa1503e0 	mov	x0, x21
    a97c:	b9008ba8 	str	w8, [x29, #136]
    a980:	b900a3aa 	str	w10, [x29, #160]
    a984:	b900abab 	str	w11, [x29, #168]
    a988:	97fffc7a 	bl	9b70 <__sprint_r.part.0>
    a98c:	35fff660 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    a990:	b9410ba1 	ldr	w1, [x29, #264]
    a994:	aa1c03fa 	mov	x26, x28
    a998:	b9408ba8 	ldr	w8, [x29, #136]
    a99c:	b940a3aa 	ldr	w10, [x29, #160]
    a9a0:	11000423 	add	w3, w1, #0x1
    a9a4:	b940abab 	ldr	w11, [x29, #168]
    a9a8:	f9408ba0 	ldr	x0, [x29, #272]
    a9ac:	17fffd55 	b	9f00 <_vfiprintf_r+0x290>
    a9b0:	aa0203e1 	mov	x1, x2
    a9b4:	f0000019 	adrp	x25, d000 <__trunctfdf2+0x290>
    a9b8:	17fffd8a 	b	9fe0 <_vfiprintf_r+0x370>
    a9bc:	39400760 	ldrb	w0, [x27, #1]
    a9c0:	321702f7 	orr	w23, w23, #0x200
    a9c4:	9100077b 	add	x27, x27, #0x1
    a9c8:	17fffd00 	b	9dc8 <_vfiprintf_r+0x158>
    a9cc:	39400760 	ldrb	w0, [x27, #1]
    a9d0:	321b02f7 	orr	w23, w23, #0x20
    a9d4:	9100077b 	add	x27, x27, #0x1
    a9d8:	17fffcfc 	b	9dc8 <_vfiprintf_r+0x158>
    a9dc:	f9408ba0 	ldr	x0, [x29, #272]
    a9e0:	f94063b4 	ldr	x20, [x29, #192]
    a9e4:	b4fff3c0 	cbz	x0, a85c <_vfiprintf_r+0xbec>
    a9e8:	910403a2 	add	x2, x29, #0x100
    a9ec:	aa1403e1 	mov	x1, x20
    a9f0:	aa1503e0 	mov	x0, x21
    a9f4:	97fffc5f 	bl	9b70 <__sprint_r.part.0>
    a9f8:	17ffff99 	b	a85c <_vfiprintf_r+0xbec>
    a9fc:	f94063a1 	ldr	x1, [x29, #192]
    aa00:	910403a2 	add	x2, x29, #0x100
    aa04:	aa1503e0 	mov	x0, x21
    aa08:	b900aba8 	str	w8, [x29, #168]
    aa0c:	97fffc59 	bl	9b70 <__sprint_r.part.0>
    aa10:	35fff240 	cbnz	w0, a858 <_vfiprintf_r+0xbe8>
    aa14:	b9410ba1 	ldr	w1, [x29, #264]
    aa18:	91004382 	add	x2, x28, #0x10
    aa1c:	aa1c03fa 	mov	x26, x28
    aa20:	b940aba8 	ldr	w8, [x29, #168]
    aa24:	11000423 	add	w3, w1, #0x1
    aa28:	f9408ba0 	ldr	x0, [x29, #272]
    aa2c:	17fffd49 	b	9f50 <_vfiprintf_r+0x2e0>
    aa30:	36484877 	tbz	w23, #9, b33c <_vfiprintf_r+0x16cc>
    aa34:	37f839c0 	tbnz	w0, #31, b16c <_vfiprintf_r+0x14fc>
    aa38:	f9405ba0 	ldr	x0, [x29, #176]
    aa3c:	91002c01 	add	x1, x0, #0xb
    aa40:	927df021 	and	x1, x1, #0xfffffffffffffff8
    aa44:	39400019 	ldrb	w25, [x0]
    aa48:	f9005ba1 	str	x1, [x29, #176]
    aa4c:	17fffddc 	b	a1bc <_vfiprintf_r+0x54c>
    aa50:	364849b7 	tbz	w23, #9, b384 <_vfiprintf_r+0x1714>
    aa54:	37f836a1 	tbnz	w1, #31, b128 <_vfiprintf_r+0x14b8>
    aa58:	f9405ba1 	ldr	x1, [x29, #176]
    aa5c:	91002c22 	add	x2, x1, #0xb
    aa60:	927df042 	and	x2, x2, #0xfffffffffffffff8
    aa64:	39400039 	ldrb	w25, [x1]
    aa68:	f9005ba2 	str	x2, [x29, #176]
    aa6c:	17fffe33 	b	a338 <_vfiprintf_r+0x6c8>
    aa70:	364824d4 	tbz	w20, #9, af08 <_vfiprintf_r+0x1298>
    aa74:	37f83380 	tbnz	w0, #31, b0e4 <_vfiprintf_r+0x1474>
    aa78:	f9405ba0 	ldr	x0, [x29, #176]
    aa7c:	91002c01 	add	x1, x0, #0xb
    aa80:	927df021 	and	x1, x1, #0xfffffffffffffff8
    aa84:	39800019 	ldrsb	x25, [x0]
    aa88:	f9005ba1 	str	x1, [x29, #176]
    aa8c:	17fffe3b 	b	a378 <_vfiprintf_r+0x708>
    aa90:	36481a97 	tbz	w23, #9, ade0 <_vfiprintf_r+0x1170>
    aa94:	37f83040 	tbnz	w0, #31, b09c <_vfiprintf_r+0x142c>
    aa98:	f9405ba0 	ldr	x0, [x29, #176]
    aa9c:	91002c01 	add	x1, x0, #0xb
    aaa0:	927df021 	and	x1, x1, #0xfffffffffffffff8
    aaa4:	f9005ba1 	str	x1, [x29, #176]
    aaa8:	14000186 	b	b0c0 <_vfiprintf_r+0x1450>
    aaac:	363002f7 	tbz	w23, #6, ab08 <_vfiprintf_r+0xe98>
    aab0:	37f82880 	tbnz	w0, #31, afc0 <_vfiprintf_r+0x1350>
    aab4:	f9405ba0 	ldr	x0, [x29, #176]
    aab8:	91003c01 	add	x1, x0, #0xf
    aabc:	927df021 	and	x1, x1, #0xfffffffffffffff8
    aac0:	f9005ba1 	str	x1, [x29, #176]
    aac4:	14000148 	b	afe4 <_vfiprintf_r+0x1374>
    aac8:	2a0203ec 	mov	w12, w2
    aacc:	f0000019 	adrp	x25, d000 <__trunctfdf2+0x290>
    aad0:	17fffd00 	b	9ed0 <_vfiprintf_r+0x260>
    aad4:	d2800040 	mov	x0, #0x2                   	// #2
    aad8:	9103e3a1 	add	x1, x29, #0xf8
    aadc:	91004382 	add	x2, x28, #0x10
    aae0:	52800023 	mov	w3, #0x1                   	// #1
    aae4:	a91803a1 	stp	x1, x0, [x29, #384]
    aae8:	17ffff4f 	b	a824 <_vfiprintf_r+0xbb4>
    aaec:	11000464 	add	w4, w3, #0x1
    aaf0:	f0000019 	adrp	x25, d000 <__trunctfdf2+0x290>
    aaf4:	17fffd70 	b	a0b4 <_vfiprintf_r+0x444>
    aaf8:	aa0203eb 	mov	x11, x2
    aafc:	2a0303ea 	mov	w10, w3
    ab00:	f0000019 	adrp	x25, d000 <__trunctfdf2+0x290>
    ab04:	17fffeef 	b	a6c0 <_vfiprintf_r+0xa50>
    ab08:	36480817 	tbz	w23, #9, ac08 <_vfiprintf_r+0xf98>
    ab0c:	37f84820 	tbnz	w0, #31, b410 <_vfiprintf_r+0x17a0>
    ab10:	f9405ba0 	ldr	x0, [x29, #176]
    ab14:	91003c01 	add	x1, x0, #0xf
    ab18:	927df021 	and	x1, x1, #0xfffffffffffffff8
    ab1c:	f9005ba1 	str	x1, [x29, #176]
    ab20:	f9400000 	ldr	x0, [x0]
    ab24:	394333a1 	ldrb	w1, [x29, #204]
    ab28:	39000001 	strb	w1, [x0]
    ab2c:	17fffc85 	b	9d40 <_vfiprintf_r+0xd0>
    ab30:	b940cba0 	ldr	w0, [x29, #200]
    ab34:	37f81860 	tbnz	w0, #31, ae40 <_vfiprintf_r+0x11d0>
    ab38:	f9405ba0 	ldr	x0, [x29, #176]
    ab3c:	91002c01 	add	x1, x0, #0xb
    ab40:	927df021 	and	x1, x1, #0xfffffffffffffff8
    ab44:	f9005ba1 	str	x1, [x29, #176]
    ab48:	b9400016 	ldr	w22, [x0]
    ab4c:	39400360 	ldrb	w0, [x27]
    ab50:	36ff93d6 	tbz	w22, #31, 9dc8 <_vfiprintf_r+0x158>
    ab54:	4b1603f6 	neg	w22, w22
    ab58:	321e02f7 	orr	w23, w23, #0x4
    ab5c:	17fffc9b 	b	9dc8 <_vfiprintf_r+0x158>
    ab60:	b940cba0 	ldr	w0, [x29, #200]
    ab64:	37f81b40 	tbnz	w0, #31, aecc <_vfiprintf_r+0x125c>
    ab68:	f9405ba0 	ldr	x0, [x29, #176]
    ab6c:	91003c01 	add	x1, x0, #0xf
    ab70:	927df021 	and	x1, x1, #0xfffffffffffffff8
    ab74:	f9005ba1 	str	x1, [x29, #176]
    ab78:	f9400018 	ldr	x24, [x0]
    ab7c:	3903dfbf 	strb	wzr, [x29, #247]
    ab80:	b4000cd8 	cbz	x24, ad18 <_vfiprintf_r+0x10a8>
    ab84:	3100067f 	cmn	w19, #0x1
    ab88:	54000d60 	b.eq	ad34 <_vfiprintf_r+0x10c4>  // b.none
    ab8c:	93407e62 	sxtw	x2, w19
    ab90:	52800001 	mov	w1, #0x0                   	// #0
    ab94:	aa1803e0 	mov	x0, x24
    ab98:	97fff68e 	bl	85d0 <memchr>
    ab9c:	b4000d60 	cbz	x0, ad48 <_vfiprintf_r+0x10d8>
    aba0:	4b180008 	sub	w8, w0, w24
    aba4:	52800013 	mov	w19, #0x0                   	// #0
    aba8:	17fffd76 	b	a180 <_vfiprintf_r+0x510>
    abac:	b940cba0 	ldr	w0, [x29, #200]
    abb0:	37f815c0 	tbnz	w0, #31, ae68 <_vfiprintf_r+0x11f8>
    abb4:	f9405ba2 	ldr	x2, [x29, #176]
    abb8:	91003c40 	add	x0, x2, #0xf
    abbc:	927df000 	and	x0, x0, #0xfffffffffffffff8
    abc0:	f9005ba0 	str	x0, [x29, #176]
    abc4:	f0000000 	adrp	x0, d000 <__trunctfdf2+0x290>
    abc8:	91152000 	add	x0, x0, #0x548
    abcc:	528f0601 	mov	w1, #0x7830                	// #30768
    abd0:	f9004fa0 	str	x0, [x29, #152]
    abd4:	321f02f4 	orr	w20, w23, #0x2
    abd8:	7901f3a1 	strh	w1, [x29, #248]
    abdc:	f9400059 	ldr	x25, [x2]
    abe0:	52800040 	mov	w0, #0x2                   	// #2
    abe4:	17fffd56 	b	a13c <_vfiprintf_r+0x4cc>
    abe8:	b940cba0 	ldr	w0, [x29, #200]
    abec:	37f82f60 	tbnz	w0, #31, b1d8 <_vfiprintf_r+0x1568>
    abf0:	f9405ba0 	ldr	x0, [x29, #176]
    abf4:	91002c01 	add	x1, x0, #0xb
    abf8:	927df021 	and	x1, x1, #0xfffffffffffffff8
    abfc:	b9400000 	ldr	w0, [x0]
    ac00:	f9005ba1 	str	x1, [x29, #176]
    ac04:	17fffc76 	b	9ddc <_vfiprintf_r+0x16c>
    ac08:	37f82220 	tbnz	w0, #31, b04c <_vfiprintf_r+0x13dc>
    ac0c:	f9405ba0 	ldr	x0, [x29, #176]
    ac10:	91003c01 	add	x1, x0, #0xf
    ac14:	927df021 	and	x1, x1, #0xfffffffffffffff8
    ac18:	f9005ba1 	str	x1, [x29, #176]
    ac1c:	f9400000 	ldr	x0, [x0]
    ac20:	b940cfa1 	ldr	w1, [x29, #204]
    ac24:	b9000001 	str	w1, [x0]
    ac28:	17fffc46 	b	9d40 <_vfiprintf_r+0xd0>
    ac2c:	52800013 	mov	w19, #0x0                   	// #0
    ac30:	52800008 	mov	w8, #0x0                   	// #0
    ac34:	910190f8 	add	x24, x7, #0x64
    ac38:	17fffd52 	b	a180 <_vfiprintf_r+0x510>
    ac3c:	910190e0 	add	x0, x7, #0x64
    ac40:	14000002 	b	ac48 <_vfiprintf_r+0xfd8>
    ac44:	aa1803e0 	mov	x0, x24
    ac48:	12000b21 	and	w1, w25, #0x7
    ac4c:	d1000418 	sub	x24, x0, #0x1
    ac50:	1100c021 	add	w1, w1, #0x30
    ac54:	381ff001 	sturb	w1, [x0, #-1]
    ac58:	d343ff39 	lsr	x25, x25, #3
    ac5c:	b5ffff59 	cbnz	x25, ac44 <_vfiprintf_r+0xfd4>
    ac60:	7100c03f 	cmp	w1, #0x30
    ac64:	12000281 	and	w1, w20, #0x1
    ac68:	1a9f1021 	csel	w1, w1, wzr, ne  // ne = any
    ac6c:	34ffacc1 	cbz	w1, a204 <_vfiprintf_r+0x594>
    ac70:	d1000800 	sub	x0, x0, #0x2
    ac74:	52800601 	mov	w1, #0x30                  	// #48
    ac78:	2a1403f7 	mov	w23, w20
    ac7c:	381ff301 	sturb	w1, [x24, #-1]
    ac80:	4b000108 	sub	w8, w8, w0
    ac84:	aa0003f8 	mov	x24, x0
    ac88:	17fffd3e 	b	a180 <_vfiprintf_r+0x510>
    ac8c:	2a1703f4 	mov	w20, w23
    ac90:	17fffd52 	b	a1d8 <_vfiprintf_r+0x568>
    ac94:	52800013 	mov	w19, #0x0                   	// #0
    ac98:	910190f8 	add	x24, x7, #0x64
    ac9c:	17fffd39 	b	a180 <_vfiprintf_r+0x510>
    aca0:	12160285 	and	w5, w20, #0x400
    aca4:	f9403fa3 	ldr	x3, [x29, #120]
    aca8:	b202e7f7 	mov	x23, #0xcccccccccccccccc    	// #-3689348814741910324
    acac:	910190e7 	add	x7, x7, #0x64
    acb0:	2a0503f8 	mov	w24, w5
    acb4:	52800001 	mov	w1, #0x0                   	// #0
    acb8:	f29999b7 	movk	x23, #0xcccd
    acbc:	d503201f 	nop
    acc0:	9bd77f20 	umulh	x0, x25, x23
    acc4:	11000421 	add	w1, w1, #0x1
    acc8:	d10004e7 	sub	x7, x7, #0x1
    accc:	d343fc00 	lsr	x0, x0, #3
    acd0:	8b000800 	add	x0, x0, x0, lsl #2
    acd4:	cb000720 	sub	x0, x25, x0, lsl #1
    acd8:	1100c000 	add	w0, w0, #0x30
    acdc:	390000e0 	strb	w0, [x7]
    ace0:	340000d8 	cbz	w24, acf8 <_vfiprintf_r+0x1088>
    ace4:	39400060 	ldrb	w0, [x3]
    ace8:	7103fc1f 	cmp	w0, #0xff
    acec:	fa491b20 	ccmp	x25, #0x9, #0x0, ne  // ne = any
    acf0:	7a418000 	ccmp	w0, w1, #0x0, hi  // hi = pmore
    acf4:	54000300 	b.eq	ad54 <_vfiprintf_r+0x10e4>  // b.none
    acf8:	9bd77f39 	umulh	x25, x25, x23
    acfc:	d343ff39 	lsr	x25, x25, #3
    ad00:	b5fffe19 	cbnz	x25, acc0 <_vfiprintf_r+0x1050>
    ad04:	aa0703f8 	mov	x24, x7
    ad08:	f9003fa3 	str	x3, [x29, #120]
    ad0c:	4b180108 	sub	w8, w8, w24
    ad10:	2a1403f7 	mov	w23, w20
    ad14:	17fffd1b 	b	a180 <_vfiprintf_r+0x510>
    ad18:	71001a7f 	cmp	w19, #0x6
    ad1c:	528000c0 	mov	w0, #0x6                   	// #6
    ad20:	1a809268 	csel	w8, w19, w0, ls  // ls = plast
    ad24:	f0000007 	adrp	x7, d000 <__trunctfdf2+0x290>
    ad28:	2a0803f4 	mov	w20, w8
    ad2c:	9115e0f8 	add	x24, x7, #0x578
    ad30:	17fffc30 	b	9df0 <_vfiprintf_r+0x180>
    ad34:	aa1803e0 	mov	x0, x24
    ad38:	52800013 	mov	w19, #0x0                   	// #0
    ad3c:	97fffb11 	bl	9980 <strlen>
    ad40:	2a0003e8 	mov	w8, w0
    ad44:	17fffd0f 	b	a180 <_vfiprintf_r+0x510>
    ad48:	2a1303e8 	mov	w8, w19
    ad4c:	52800013 	mov	w19, #0x0                   	// #0
    ad50:	17fffd0c 	b	a180 <_vfiprintf_r+0x510>
    ad54:	a94687a0 	ldp	x0, x1, [x29, #104]
    ad58:	f90047a8 	str	x8, [x29, #136]
    ad5c:	cb0000e7 	sub	x7, x7, x0
    ad60:	aa0003e2 	mov	x2, x0
    ad64:	a90a1fa3 	stp	x3, x7, [x29, #160]
    ad68:	aa0703e0 	mov	x0, x7
    ad6c:	97fffb55 	bl	9ac0 <strncpy>
    ad70:	a94a1fa3 	ldp	x3, x7, [x29, #160]
    ad74:	52800001 	mov	w1, #0x0                   	// #0
    ad78:	f94047a8 	ldr	x8, [x29, #136]
    ad7c:	39400460 	ldrb	w0, [x3, #1]
    ad80:	7100001f 	cmp	w0, #0x0
    ad84:	1a9f07e0 	cset	w0, ne  // ne = any
    ad88:	8b000063 	add	x3, x3, x0
    ad8c:	17ffffdb 	b	acf8 <_vfiprintf_r+0x1088>
    ad90:	12800000 	mov	w0, #0xffffffff            	// #-1
    ad94:	b900cfa0 	str	w0, [x29, #204]
    ad98:	17fffeb7 	b	a874 <_vfiprintf_r+0xc04>
    ad9c:	b940cba0 	ldr	w0, [x29, #200]
    ada0:	11002001 	add	w1, w0, #0x8
    ada4:	7100003f 	cmp	w1, #0x0
    ada8:	5400010d 	b.le	adc8 <_vfiprintf_r+0x1158>
    adac:	f9405ba0 	ldr	x0, [x29, #176]
    adb0:	b900cba1 	str	w1, [x29, #200]
    adb4:	91003c02 	add	x2, x0, #0xf
    adb8:	927df041 	and	x1, x2, #0xfffffffffffffff8
    adbc:	f9005ba1 	str	x1, [x29, #176]
    adc0:	f9400019 	ldr	x25, [x0]
    adc4:	17fffd6d 	b	a378 <_vfiprintf_r+0x708>
    adc8:	b940cba0 	ldr	w0, [x29, #200]
    adcc:	f9404ba2 	ldr	x2, [x29, #144]
    add0:	b900cba1 	str	w1, [x29, #200]
    add4:	8b20c040 	add	x0, x2, w0, sxtw
    add8:	f9400019 	ldr	x25, [x0]
    addc:	17fffd67 	b	a378 <_vfiprintf_r+0x708>
    ade0:	37f801c0 	tbnz	w0, #31, ae18 <_vfiprintf_r+0x11a8>
    ade4:	f9405ba0 	ldr	x0, [x29, #176]
    ade8:	91002c01 	add	x1, x0, #0xb
    adec:	927df021 	and	x1, x1, #0xfffffffffffffff8
    adf0:	f9005ba1 	str	x1, [x29, #176]
    adf4:	b9400019 	ldr	w25, [x0]
    adf8:	2a1703f4 	mov	w20, w23
    adfc:	52800020 	mov	w0, #0x1                   	// #1
    ae00:	17fffccf 	b	a13c <_vfiprintf_r+0x4cc>
    ae04:	3903e7a0 	strb	w0, [x29, #249]
    ae08:	321f02f7 	orr	w23, w23, #0x2
    ae0c:	52800600 	mov	w0, #0x30                  	// #48
    ae10:	3903e3a0 	strb	w0, [x29, #248]
    ae14:	17fffd4d 	b	a348 <_vfiprintf_r+0x6d8>
    ae18:	b940cba0 	ldr	w0, [x29, #200]
    ae1c:	11002001 	add	w1, w0, #0x8
    ae20:	7100003f 	cmp	w1, #0x0
    ae24:	5400036d 	b.le	ae90 <_vfiprintf_r+0x1220>
    ae28:	f9405ba0 	ldr	x0, [x29, #176]
    ae2c:	b900cba1 	str	w1, [x29, #200]
    ae30:	91002c02 	add	x2, x0, #0xb
    ae34:	927df041 	and	x1, x2, #0xfffffffffffffff8
    ae38:	f9005ba1 	str	x1, [x29, #176]
    ae3c:	17ffffee 	b	adf4 <_vfiprintf_r+0x1184>
    ae40:	b940cba0 	ldr	w0, [x29, #200]
    ae44:	11002001 	add	w1, w0, #0x8
    ae48:	7100003f 	cmp	w1, #0x0
    ae4c:	540002cd 	b.le	aea4 <_vfiprintf_r+0x1234>
    ae50:	f9405ba0 	ldr	x0, [x29, #176]
    ae54:	b900cba1 	str	w1, [x29, #200]
    ae58:	91002c02 	add	x2, x0, #0xb
    ae5c:	927df041 	and	x1, x2, #0xfffffffffffffff8
    ae60:	f9005ba1 	str	x1, [x29, #176]
    ae64:	17ffff39 	b	ab48 <_vfiprintf_r+0xed8>
    ae68:	b940cba0 	ldr	w0, [x29, #200]
    ae6c:	11002000 	add	w0, w0, #0x8
    ae70:	7100001f 	cmp	w0, #0x0
    ae74:	5400022d 	b.le	aeb8 <_vfiprintf_r+0x1248>
    ae78:	f9405ba2 	ldr	x2, [x29, #176]
    ae7c:	b900cba0 	str	w0, [x29, #200]
    ae80:	91003c41 	add	x1, x2, #0xf
    ae84:	927df020 	and	x0, x1, #0xfffffffffffffff8
    ae88:	f9005ba0 	str	x0, [x29, #176]
    ae8c:	17ffff4e 	b	abc4 <_vfiprintf_r+0xf54>
    ae90:	b940cba0 	ldr	w0, [x29, #200]
    ae94:	f9404ba2 	ldr	x2, [x29, #144]
    ae98:	b900cba1 	str	w1, [x29, #200]
    ae9c:	8b20c040 	add	x0, x2, w0, sxtw
    aea0:	17ffffd5 	b	adf4 <_vfiprintf_r+0x1184>
    aea4:	b940cba0 	ldr	w0, [x29, #200]
    aea8:	f9404ba2 	ldr	x2, [x29, #144]
    aeac:	b900cba1 	str	w1, [x29, #200]
    aeb0:	8b20c040 	add	x0, x2, w0, sxtw
    aeb4:	17ffff25 	b	ab48 <_vfiprintf_r+0xed8>
    aeb8:	b940cba1 	ldr	w1, [x29, #200]
    aebc:	f9404ba2 	ldr	x2, [x29, #144]
    aec0:	b900cba0 	str	w0, [x29, #200]
    aec4:	8b21c042 	add	x2, x2, w1, sxtw
    aec8:	17ffff3f 	b	abc4 <_vfiprintf_r+0xf54>
    aecc:	b940cba0 	ldr	w0, [x29, #200]
    aed0:	11002001 	add	w1, w0, #0x8
    aed4:	7100003f 	cmp	w1, #0x0
    aed8:	540000ed 	b.le	aef4 <_vfiprintf_r+0x1284>
    aedc:	f9405ba0 	ldr	x0, [x29, #176]
    aee0:	b900cba1 	str	w1, [x29, #200]
    aee4:	91003c02 	add	x2, x0, #0xf
    aee8:	927df041 	and	x1, x2, #0xfffffffffffffff8
    aeec:	f9005ba1 	str	x1, [x29, #176]
    aef0:	17ffff22 	b	ab78 <_vfiprintf_r+0xf08>
    aef4:	b940cba0 	ldr	w0, [x29, #200]
    aef8:	f9404ba2 	ldr	x2, [x29, #144]
    aefc:	b900cba1 	str	w1, [x29, #200]
    af00:	8b20c040 	add	x0, x2, w0, sxtw
    af04:	17ffff1d 	b	ab78 <_vfiprintf_r+0xf08>
    af08:	37f800e0 	tbnz	w0, #31, af24 <_vfiprintf_r+0x12b4>
    af0c:	f9405ba0 	ldr	x0, [x29, #176]
    af10:	91002c01 	add	x1, x0, #0xb
    af14:	927df021 	and	x1, x1, #0xfffffffffffffff8
    af18:	b9800019 	ldrsw	x25, [x0]
    af1c:	f9005ba1 	str	x1, [x29, #176]
    af20:	17fffd16 	b	a378 <_vfiprintf_r+0x708>
    af24:	b940cba0 	ldr	w0, [x29, #200]
    af28:	11002001 	add	w1, w0, #0x8
    af2c:	7100003f 	cmp	w1, #0x0
    af30:	5400028d 	b.le	af80 <_vfiprintf_r+0x1310>
    af34:	f9405ba0 	ldr	x0, [x29, #176]
    af38:	b900cba1 	str	w1, [x29, #200]
    af3c:	91002c02 	add	x2, x0, #0xb
    af40:	927df041 	and	x1, x2, #0xfffffffffffffff8
    af44:	b9800019 	ldrsw	x25, [x0]
    af48:	f9005ba1 	str	x1, [x29, #176]
    af4c:	17fffd0b 	b	a378 <_vfiprintf_r+0x708>
    af50:	b940cba0 	ldr	w0, [x29, #200]
    af54:	37f80220 	tbnz	w0, #31, af98 <_vfiprintf_r+0x1328>
    af58:	f9405ba0 	ldr	x0, [x29, #176]
    af5c:	91002c01 	add	x1, x0, #0xb
    af60:	927df021 	and	x1, x1, #0xfffffffffffffff8
    af64:	f9005ba1 	str	x1, [x29, #176]
    af68:	b9400013 	ldr	w19, [x0]
    af6c:	39400760 	ldrb	w0, [x27, #1]
    af70:	aa0203fb 	mov	x27, x2
    af74:	7100027f 	cmp	w19, #0x0
    af78:	5a9fa273 	csinv	w19, w19, wzr, ge  // ge = tcont
    af7c:	17fffb93 	b	9dc8 <_vfiprintf_r+0x158>
    af80:	b940cba0 	ldr	w0, [x29, #200]
    af84:	f9404ba2 	ldr	x2, [x29, #144]
    af88:	b900cba1 	str	w1, [x29, #200]
    af8c:	8b20c040 	add	x0, x2, w0, sxtw
    af90:	b9800019 	ldrsw	x25, [x0]
    af94:	17fffcf9 	b	a378 <_vfiprintf_r+0x708>
    af98:	b940cba0 	ldr	w0, [x29, #200]
    af9c:	11002001 	add	w1, w0, #0x8
    afa0:	7100003f 	cmp	w1, #0x0
    afa4:	540004ad 	b.le	b038 <_vfiprintf_r+0x13c8>
    afa8:	f9405ba0 	ldr	x0, [x29, #176]
    afac:	b900cba1 	str	w1, [x29, #200]
    afb0:	91002c03 	add	x3, x0, #0xb
    afb4:	927df061 	and	x1, x3, #0xfffffffffffffff8
    afb8:	f9005ba1 	str	x1, [x29, #176]
    afbc:	17ffffeb 	b	af68 <_vfiprintf_r+0x12f8>
    afc0:	b940cba0 	ldr	w0, [x29, #200]
    afc4:	11002001 	add	w1, w0, #0x8
    afc8:	7100003f 	cmp	w1, #0x0
    afcc:	5400054d 	b.le	b074 <_vfiprintf_r+0x1404>
    afd0:	f9405ba0 	ldr	x0, [x29, #176]
    afd4:	b900cba1 	str	w1, [x29, #200]
    afd8:	91003c02 	add	x2, x0, #0xf
    afdc:	927df041 	and	x1, x2, #0xfffffffffffffff8
    afe0:	f9005ba1 	str	x1, [x29, #176]
    afe4:	f9400000 	ldr	x0, [x0]
    afe8:	79419ba1 	ldrh	w1, [x29, #204]
    afec:	79000001 	strh	w1, [x0]
    aff0:	17fffb54 	b	9d40 <_vfiprintf_r+0xd0>
    aff4:	b940cba0 	ldr	w0, [x29, #200]
    aff8:	11002001 	add	w1, w0, #0x8
    affc:	7100003f 	cmp	w1, #0x0
    b000:	5400010d 	b.le	b020 <_vfiprintf_r+0x13b0>
    b004:	f9405ba0 	ldr	x0, [x29, #176]
    b008:	b900cba1 	str	w1, [x29, #200]
    b00c:	91002c02 	add	x2, x0, #0xb
    b010:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b014:	79800019 	ldrsh	x25, [x0]
    b018:	f9005ba1 	str	x1, [x29, #176]
    b01c:	17fffcd7 	b	a378 <_vfiprintf_r+0x708>
    b020:	b940cba0 	ldr	w0, [x29, #200]
    b024:	f9404ba2 	ldr	x2, [x29, #144]
    b028:	b900cba1 	str	w1, [x29, #200]
    b02c:	8b20c040 	add	x0, x2, w0, sxtw
    b030:	79800019 	ldrsh	x25, [x0]
    b034:	17fffcd1 	b	a378 <_vfiprintf_r+0x708>
    b038:	b940cba0 	ldr	w0, [x29, #200]
    b03c:	f9404ba3 	ldr	x3, [x29, #144]
    b040:	b900cba1 	str	w1, [x29, #200]
    b044:	8b20c060 	add	x0, x3, w0, sxtw
    b048:	17ffffc8 	b	af68 <_vfiprintf_r+0x12f8>
    b04c:	b940cba0 	ldr	w0, [x29, #200]
    b050:	11002001 	add	w1, w0, #0x8
    b054:	7100003f 	cmp	w1, #0x0
    b058:	5400018d 	b.le	b088 <_vfiprintf_r+0x1418>
    b05c:	f9405ba0 	ldr	x0, [x29, #176]
    b060:	b900cba1 	str	w1, [x29, #200]
    b064:	91003c02 	add	x2, x0, #0xf
    b068:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b06c:	f9005ba1 	str	x1, [x29, #176]
    b070:	17fffeeb 	b	ac1c <_vfiprintf_r+0xfac>
    b074:	b940cba0 	ldr	w0, [x29, #200]
    b078:	f9404ba2 	ldr	x2, [x29, #144]
    b07c:	b900cba1 	str	w1, [x29, #200]
    b080:	8b20c040 	add	x0, x2, w0, sxtw
    b084:	17ffffd8 	b	afe4 <_vfiprintf_r+0x1374>
    b088:	b940cba0 	ldr	w0, [x29, #200]
    b08c:	f9404ba2 	ldr	x2, [x29, #144]
    b090:	b900cba1 	str	w1, [x29, #200]
    b094:	8b20c040 	add	x0, x2, w0, sxtw
    b098:	17fffee1 	b	ac1c <_vfiprintf_r+0xfac>
    b09c:	b940cba0 	ldr	w0, [x29, #200]
    b0a0:	11002001 	add	w1, w0, #0x8
    b0a4:	7100003f 	cmp	w1, #0x0
    b0a8:	5400014d 	b.le	b0d0 <_vfiprintf_r+0x1460>
    b0ac:	f9405ba0 	ldr	x0, [x29, #176]
    b0b0:	b900cba1 	str	w1, [x29, #200]
    b0b4:	91002c02 	add	x2, x0, #0xb
    b0b8:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b0bc:	f9005ba1 	str	x1, [x29, #176]
    b0c0:	39400019 	ldrb	w25, [x0]
    b0c4:	2a1703f4 	mov	w20, w23
    b0c8:	52800020 	mov	w0, #0x1                   	// #1
    b0cc:	17fffc1c 	b	a13c <_vfiprintf_r+0x4cc>
    b0d0:	b940cba0 	ldr	w0, [x29, #200]
    b0d4:	f9404ba2 	ldr	x2, [x29, #144]
    b0d8:	b900cba1 	str	w1, [x29, #200]
    b0dc:	8b20c040 	add	x0, x2, w0, sxtw
    b0e0:	17fffff8 	b	b0c0 <_vfiprintf_r+0x1450>
    b0e4:	b940cba0 	ldr	w0, [x29, #200]
    b0e8:	11002001 	add	w1, w0, #0x8
    b0ec:	7100003f 	cmp	w1, #0x0
    b0f0:	5400010d 	b.le	b110 <_vfiprintf_r+0x14a0>
    b0f4:	f9405ba0 	ldr	x0, [x29, #176]
    b0f8:	b900cba1 	str	w1, [x29, #200]
    b0fc:	91002c02 	add	x2, x0, #0xb
    b100:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b104:	39800019 	ldrsb	x25, [x0]
    b108:	f9005ba1 	str	x1, [x29, #176]
    b10c:	17fffc9b 	b	a378 <_vfiprintf_r+0x708>
    b110:	b940cba0 	ldr	w0, [x29, #200]
    b114:	f9404ba2 	ldr	x2, [x29, #144]
    b118:	b900cba1 	str	w1, [x29, #200]
    b11c:	8b20c040 	add	x0, x2, w0, sxtw
    b120:	39800019 	ldrsb	x25, [x0]
    b124:	17fffc95 	b	a378 <_vfiprintf_r+0x708>
    b128:	b940cba1 	ldr	w1, [x29, #200]
    b12c:	11002022 	add	w2, w1, #0x8
    b130:	7100005f 	cmp	w2, #0x0
    b134:	5400010d 	b.le	b154 <_vfiprintf_r+0x14e4>
    b138:	f9405ba1 	ldr	x1, [x29, #176]
    b13c:	b900cba2 	str	w2, [x29, #200]
    b140:	91002c23 	add	x3, x1, #0xb
    b144:	927df062 	and	x2, x3, #0xfffffffffffffff8
    b148:	39400039 	ldrb	w25, [x1]
    b14c:	f9005ba2 	str	x2, [x29, #176]
    b150:	17fffc7a 	b	a338 <_vfiprintf_r+0x6c8>
    b154:	b940cba1 	ldr	w1, [x29, #200]
    b158:	f9404ba3 	ldr	x3, [x29, #144]
    b15c:	b900cba2 	str	w2, [x29, #200]
    b160:	8b21c061 	add	x1, x3, w1, sxtw
    b164:	39400039 	ldrb	w25, [x1]
    b168:	17fffc74 	b	a338 <_vfiprintf_r+0x6c8>
    b16c:	b940cba0 	ldr	w0, [x29, #200]
    b170:	11002001 	add	w1, w0, #0x8
    b174:	7100003f 	cmp	w1, #0x0
    b178:	5400010d 	b.le	b198 <_vfiprintf_r+0x1528>
    b17c:	f9405ba0 	ldr	x0, [x29, #176]
    b180:	b900cba1 	str	w1, [x29, #200]
    b184:	91002c02 	add	x2, x0, #0xb
    b188:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b18c:	39400019 	ldrb	w25, [x0]
    b190:	f9005ba1 	str	x1, [x29, #176]
    b194:	17fffc0a 	b	a1bc <_vfiprintf_r+0x54c>
    b198:	b940cba0 	ldr	w0, [x29, #200]
    b19c:	f9404ba2 	ldr	x2, [x29, #144]
    b1a0:	b900cba1 	str	w1, [x29, #200]
    b1a4:	8b20c040 	add	x0, x2, w0, sxtw
    b1a8:	39400019 	ldrb	w25, [x0]
    b1ac:	17fffc04 	b	a1bc <_vfiprintf_r+0x54c>
    b1b0:	b940cba0 	ldr	w0, [x29, #200]
    b1b4:	11002001 	add	w1, w0, #0x8
    b1b8:	7100003f 	cmp	w1, #0x0
    b1bc:	5400024d 	b.le	b204 <_vfiprintf_r+0x1594>
    b1c0:	f9405ba0 	ldr	x0, [x29, #176]
    b1c4:	b900cba1 	str	w1, [x29, #200]
    b1c8:	91003c02 	add	x2, x0, #0xf
    b1cc:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b1d0:	f9005ba1 	str	x1, [x29, #176]
    b1d4:	17fffbf9 	b	a1b8 <_vfiprintf_r+0x548>
    b1d8:	b940cba0 	ldr	w0, [x29, #200]
    b1dc:	11002001 	add	w1, w0, #0x8
    b1e0:	7100003f 	cmp	w1, #0x0
    b1e4:	540001ad 	b.le	b218 <_vfiprintf_r+0x15a8>
    b1e8:	f9405ba0 	ldr	x0, [x29, #176]
    b1ec:	b900cba1 	str	w1, [x29, #200]
    b1f0:	91002c02 	add	x2, x0, #0xb
    b1f4:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b1f8:	b9400000 	ldr	w0, [x0]
    b1fc:	f9005ba1 	str	x1, [x29, #176]
    b200:	17fffaf7 	b	9ddc <_vfiprintf_r+0x16c>
    b204:	b940cba0 	ldr	w0, [x29, #200]
    b208:	f9404ba2 	ldr	x2, [x29, #144]
    b20c:	b900cba1 	str	w1, [x29, #200]
    b210:	8b20c040 	add	x0, x2, w0, sxtw
    b214:	17fffbe9 	b	a1b8 <_vfiprintf_r+0x548>
    b218:	b940cba0 	ldr	w0, [x29, #200]
    b21c:	f9404ba2 	ldr	x2, [x29, #144]
    b220:	b900cba1 	str	w1, [x29, #200]
    b224:	8b20c040 	add	x0, x2, w0, sxtw
    b228:	b9400000 	ldr	w0, [x0]
    b22c:	17fffaec 	b	9ddc <_vfiprintf_r+0x16c>
    b230:	b940cba1 	ldr	w1, [x29, #200]
    b234:	11002022 	add	w2, w1, #0x8
    b238:	7100005f 	cmp	w2, #0x0
    b23c:	5400010d 	b.le	b25c <_vfiprintf_r+0x15ec>
    b240:	f9405ba1 	ldr	x1, [x29, #176]
    b244:	b900cba2 	str	w2, [x29, #200]
    b248:	91002c23 	add	x3, x1, #0xb
    b24c:	927df062 	and	x2, x3, #0xfffffffffffffff8
    b250:	79400039 	ldrh	w25, [x1]
    b254:	f9005ba2 	str	x2, [x29, #176]
    b258:	17fffc38 	b	a338 <_vfiprintf_r+0x6c8>
    b25c:	b940cba1 	ldr	w1, [x29, #200]
    b260:	f9404ba3 	ldr	x3, [x29, #144]
    b264:	b900cba2 	str	w2, [x29, #200]
    b268:	8b21c061 	add	x1, x3, w1, sxtw
    b26c:	79400039 	ldrh	w25, [x1]
    b270:	17fffc32 	b	a338 <_vfiprintf_r+0x6c8>
    b274:	b940cba0 	ldr	w0, [x29, #200]
    b278:	11002001 	add	w1, w0, #0x8
    b27c:	7100003f 	cmp	w1, #0x0
    b280:	5400010d 	b.le	b2a0 <_vfiprintf_r+0x1630>
    b284:	f9405ba0 	ldr	x0, [x29, #176]
    b288:	b900cba1 	str	w1, [x29, #200]
    b28c:	91002c02 	add	x2, x0, #0xb
    b290:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b294:	79400019 	ldrh	w25, [x0]
    b298:	f9005ba1 	str	x1, [x29, #176]
    b29c:	17fffbc8 	b	a1bc <_vfiprintf_r+0x54c>
    b2a0:	b940cba0 	ldr	w0, [x29, #200]
    b2a4:	f9404ba2 	ldr	x2, [x29, #144]
    b2a8:	b900cba1 	str	w1, [x29, #200]
    b2ac:	8b20c040 	add	x0, x2, w0, sxtw
    b2b0:	79400019 	ldrh	w25, [x0]
    b2b4:	17fffbc2 	b	a1bc <_vfiprintf_r+0x54c>
    b2b8:	b940cba0 	ldr	w0, [x29, #200]
    b2bc:	11002001 	add	w1, w0, #0x8
    b2c0:	7100003f 	cmp	w1, #0x0
    b2c4:	54000bad 	b.le	b438 <_vfiprintf_r+0x17c8>
    b2c8:	f9405ba0 	ldr	x0, [x29, #176]
    b2cc:	b900cba1 	str	w1, [x29, #200]
    b2d0:	91003c02 	add	x2, x0, #0xf
    b2d4:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b2d8:	f9005ba1 	str	x1, [x29, #176]
    b2dc:	f9400000 	ldr	x0, [x0]
    b2e0:	b980cfa1 	ldrsw	x1, [x29, #204]
    b2e4:	f9000001 	str	x1, [x0]
    b2e8:	17fffa96 	b	9d40 <_vfiprintf_r+0xd0>
    b2ec:	b940cba0 	ldr	w0, [x29, #200]
    b2f0:	11002001 	add	w1, w0, #0x8
    b2f4:	7100003f 	cmp	w1, #0x0
    b2f8:	5400082d 	b.le	b3fc <_vfiprintf_r+0x178c>
    b2fc:	f9405ba0 	ldr	x0, [x29, #176]
    b300:	b900cba1 	str	w1, [x29, #200]
    b304:	91003c02 	add	x2, x0, #0xf
    b308:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b30c:	f9005ba1 	str	x1, [x29, #176]
    b310:	17fffb88 	b	a130 <_vfiprintf_r+0x4c0>
    b314:	b940cba1 	ldr	w1, [x29, #200]
    b318:	11002022 	add	w2, w1, #0x8
    b31c:	7100005f 	cmp	w2, #0x0
    b320:	54000b4d 	b.le	b488 <_vfiprintf_r+0x1818>
    b324:	f9405ba1 	ldr	x1, [x29, #176]
    b328:	b900cba2 	str	w2, [x29, #200]
    b32c:	91003c23 	add	x3, x1, #0xf
    b330:	927df062 	and	x2, x3, #0xfffffffffffffff8
    b334:	f9005ba2 	str	x2, [x29, #176]
    b338:	17fffbff 	b	a334 <_vfiprintf_r+0x6c4>
    b33c:	37f800e0 	tbnz	w0, #31, b358 <_vfiprintf_r+0x16e8>
    b340:	f9405ba0 	ldr	x0, [x29, #176]
    b344:	91002c01 	add	x1, x0, #0xb
    b348:	927df021 	and	x1, x1, #0xfffffffffffffff8
    b34c:	b9400019 	ldr	w25, [x0]
    b350:	f9005ba1 	str	x1, [x29, #176]
    b354:	17fffb9a 	b	a1bc <_vfiprintf_r+0x54c>
    b358:	b940cba0 	ldr	w0, [x29, #200]
    b35c:	11002001 	add	w1, w0, #0x8
    b360:	7100003f 	cmp	w1, #0x0
    b364:	5400034d 	b.le	b3cc <_vfiprintf_r+0x175c>
    b368:	f9405ba0 	ldr	x0, [x29, #176]
    b36c:	b900cba1 	str	w1, [x29, #200]
    b370:	91002c02 	add	x2, x0, #0xb
    b374:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b378:	b9400019 	ldr	w25, [x0]
    b37c:	f9005ba1 	str	x1, [x29, #176]
    b380:	17fffb8f 	b	a1bc <_vfiprintf_r+0x54c>
    b384:	37f800e1 	tbnz	w1, #31, b3a0 <_vfiprintf_r+0x1730>
    b388:	f9405ba1 	ldr	x1, [x29, #176]
    b38c:	91002c22 	add	x2, x1, #0xb
    b390:	927df042 	and	x2, x2, #0xfffffffffffffff8
    b394:	b9400039 	ldr	w25, [x1]
    b398:	f9005ba2 	str	x2, [x29, #176]
    b39c:	17fffbe7 	b	a338 <_vfiprintf_r+0x6c8>
    b3a0:	b940cba1 	ldr	w1, [x29, #200]
    b3a4:	11002022 	add	w2, w1, #0x8
    b3a8:	7100005f 	cmp	w2, #0x0
    b3ac:	540001cd 	b.le	b3e4 <_vfiprintf_r+0x1774>
    b3b0:	f9405ba1 	ldr	x1, [x29, #176]
    b3b4:	b900cba2 	str	w2, [x29, #200]
    b3b8:	91002c23 	add	x3, x1, #0xb
    b3bc:	927df062 	and	x2, x3, #0xfffffffffffffff8
    b3c0:	b9400039 	ldr	w25, [x1]
    b3c4:	f9005ba2 	str	x2, [x29, #176]
    b3c8:	17fffbdc 	b	a338 <_vfiprintf_r+0x6c8>
    b3cc:	b940cba0 	ldr	w0, [x29, #200]
    b3d0:	f9404ba2 	ldr	x2, [x29, #144]
    b3d4:	b900cba1 	str	w1, [x29, #200]
    b3d8:	8b20c040 	add	x0, x2, w0, sxtw
    b3dc:	b9400019 	ldr	w25, [x0]
    b3e0:	17fffb77 	b	a1bc <_vfiprintf_r+0x54c>
    b3e4:	b940cba1 	ldr	w1, [x29, #200]
    b3e8:	f9404ba3 	ldr	x3, [x29, #144]
    b3ec:	b900cba2 	str	w2, [x29, #200]
    b3f0:	8b21c061 	add	x1, x3, w1, sxtw
    b3f4:	b9400039 	ldr	w25, [x1]
    b3f8:	17fffbd0 	b	a338 <_vfiprintf_r+0x6c8>
    b3fc:	b940cba0 	ldr	w0, [x29, #200]
    b400:	f9404ba2 	ldr	x2, [x29, #144]
    b404:	b900cba1 	str	w1, [x29, #200]
    b408:	8b20c040 	add	x0, x2, w0, sxtw
    b40c:	17fffb49 	b	a130 <_vfiprintf_r+0x4c0>
    b410:	b940cba0 	ldr	w0, [x29, #200]
    b414:	11002001 	add	w1, w0, #0x8
    b418:	7100003f 	cmp	w1, #0x0
    b41c:	5400018d 	b.le	b44c <_vfiprintf_r+0x17dc>
    b420:	f9405ba0 	ldr	x0, [x29, #176]
    b424:	b900cba1 	str	w1, [x29, #200]
    b428:	91003c02 	add	x2, x0, #0xf
    b42c:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b430:	f9005ba1 	str	x1, [x29, #176]
    b434:	17fffdbb 	b	ab20 <_vfiprintf_r+0xeb0>
    b438:	b940cba0 	ldr	w0, [x29, #200]
    b43c:	f9404ba2 	ldr	x2, [x29, #144]
    b440:	b900cba1 	str	w1, [x29, #200]
    b444:	8b20c040 	add	x0, x2, w0, sxtw
    b448:	17ffffa5 	b	b2dc <_vfiprintf_r+0x166c>
    b44c:	b940cba0 	ldr	w0, [x29, #200]
    b450:	f9404ba2 	ldr	x2, [x29, #144]
    b454:	b900cba1 	str	w1, [x29, #200]
    b458:	8b20c040 	add	x0, x2, w0, sxtw
    b45c:	17fffdb1 	b	ab20 <_vfiprintf_r+0xeb0>
    b460:	b940cba0 	ldr	w0, [x29, #200]
    b464:	11002001 	add	w1, w0, #0x8
    b468:	7100003f 	cmp	w1, #0x0
    b46c:	5400018d 	b.le	b49c <_vfiprintf_r+0x182c>
    b470:	f9405ba0 	ldr	x0, [x29, #176]
    b474:	b900cba1 	str	w1, [x29, #200]
    b478:	91002c02 	add	x2, x0, #0xb
    b47c:	927df041 	and	x1, x2, #0xfffffffffffffff8
    b480:	f9005ba1 	str	x1, [x29, #176]
    b484:	17fffb93 	b	a2d0 <_vfiprintf_r+0x660>
    b488:	b940cba1 	ldr	w1, [x29, #200]
    b48c:	f9404ba3 	ldr	x3, [x29, #144]
    b490:	b900cba2 	str	w2, [x29, #200]
    b494:	8b21c061 	add	x1, x3, w1, sxtw
    b498:	17fffba7 	b	a334 <_vfiprintf_r+0x6c4>
    b49c:	b940cba0 	ldr	w0, [x29, #200]
    b4a0:	f9404ba2 	ldr	x2, [x29, #144]
    b4a4:	b900cba1 	str	w1, [x29, #200]
    b4a8:	8b20c040 	add	x0, x2, w0, sxtw
    b4ac:	17fffb89 	b	a2d0 <_vfiprintf_r+0x660>

000000000000b4b0 <vfiprintf>:
    b4b0:	aa0203e4 	mov	x4, x2
    b4b4:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    b4b8:	d0000003 	adrp	x3, d000 <__trunctfdf2+0x290>
    b4bc:	aa0103e2 	mov	x2, x1
    b4c0:	910003fd 	mov	x29, sp
    b4c4:	aa0003e1 	mov	x1, x0
    b4c8:	a9401c86 	ldp	x6, x7, [x4]
    b4cc:	f943a860 	ldr	x0, [x3, #1872]
    b4d0:	910043a3 	add	x3, x29, #0x10
    b4d4:	a9411484 	ldp	x4, x5, [x4, #16]
    b4d8:	a9011fa6 	stp	x6, x7, [x29, #16]
    b4dc:	a90217a4 	stp	x4, x5, [x29, #32]
    b4e0:	97fff9e4 	bl	9c70 <_vfiprintf_r>
    b4e4:	a8c37bfd 	ldp	x29, x30, [sp], #48
    b4e8:	d65f03c0 	ret
    b4ec:	d503201f 	nop

000000000000b4f0 <__sbprintf>:
    b4f0:	d11403ff 	sub	sp, sp, #0x500
    b4f4:	52808004 	mov	w4, #0x400                 	// #1024
    b4f8:	a9007bfd 	stp	x29, x30, [sp]
    b4fc:	910003fd 	mov	x29, sp
    b500:	910403a5 	add	x5, x29, #0x100
    b504:	a940346c 	ldp	x12, x13, [x3]
    b508:	a90153f3 	stp	x19, x20, [sp, #16]
    b50c:	aa0103f3 	mov	x19, x1
    b510:	79402021 	ldrh	w1, [x1, #16]
    b514:	a9411c66 	ldp	x6, x7, [x3, #16]
    b518:	121e7821 	and	w1, w1, #0xfffffffd
    b51c:	7940266b 	ldrh	w11, [x19, #18]
    b520:	9100c3a3 	add	x3, x29, #0x30
    b524:	b940ae68 	ldr	w8, [x19, #172]
    b528:	f9401a6a 	ldr	x10, [x19, #48]
    b52c:	f9402269 	ldr	x9, [x19, #64]
    b530:	b900ffa8 	str	w8, [x29, #252]
    b534:	f90013f5 	str	x21, [sp, #32]
    b538:	aa0003f5 	mov	x21, x0
    b53c:	a90337ac 	stp	x12, x13, [x29, #48]
    b540:	a9041fa6 	stp	x6, x7, [x29, #64]
    b544:	f9002ba5 	str	x5, [x29, #80]
    b548:	b9005fa4 	str	w4, [x29, #92]
    b54c:	7900c3a1 	strh	w1, [x29, #96]
    b550:	910143a1 	add	x1, x29, #0x50
    b554:	7900c7ab 	strh	w11, [x29, #98]
    b558:	f90037a5 	str	x5, [x29, #104]
    b55c:	b90073a4 	str	w4, [x29, #112]
    b560:	b9007bbf 	str	wzr, [x29, #120]
    b564:	f90043aa 	str	x10, [x29, #128]
    b568:	f9004ba9 	str	x9, [x29, #144]
    b56c:	97fff9c1 	bl	9c70 <_vfiprintf_r>
    b570:	2a0003f4 	mov	w20, w0
    b574:	37f800c0 	tbnz	w0, #31, b58c <__sbprintf+0x9c>
    b578:	910143a1 	add	x1, x29, #0x50
    b57c:	aa1503e0 	mov	x0, x21
    b580:	97ffef0e 	bl	71b8 <_fflush_r>
    b584:	7100001f 	cmp	w0, #0x0
    b588:	5a9f0294 	csinv	w20, w20, wzr, eq  // eq = none
    b58c:	7940c3a0 	ldrh	w0, [x29, #96]
    b590:	36300080 	tbz	w0, #6, b5a0 <__sbprintf+0xb0>
    b594:	79402260 	ldrh	w0, [x19, #16]
    b598:	321a0000 	orr	w0, w0, #0x40
    b59c:	79002260 	strh	w0, [x19, #16]
    b5a0:	2a1403e0 	mov	w0, w20
    b5a4:	f94013f5 	ldr	x21, [sp, #32]
    b5a8:	a9407bfd 	ldp	x29, x30, [sp]
    b5ac:	a94153f3 	ldp	x19, x20, [sp, #16]
    b5b0:	911403ff 	add	sp, sp, #0x500
    b5b4:	d65f03c0 	ret

000000000000b5b8 <_write_r>:
    b5b8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    b5bc:	2a0103e4 	mov	w4, w1
    b5c0:	aa0203e1 	mov	x1, x2
    b5c4:	aa0303e2 	mov	x2, x3
    b5c8:	910003fd 	mov	x29, sp
    b5cc:	a90153f3 	stp	x19, x20, [sp, #16]
    b5d0:	f00000d3 	adrp	x19, 26000 <blue.21472+0x3d40>
    b5d4:	aa0003f4 	mov	x20, x0
    b5d8:	2a0403e0 	mov	w0, w4
    b5dc:	b9031a7f 	str	wzr, [x19, #792]
    b5e0:	940005c6 	bl	ccf8 <_write>
    b5e4:	93407c00 	sxtw	x0, w0
    b5e8:	b100041f 	cmn	x0, #0x1
    b5ec:	54000080 	b.eq	b5fc <_write_r+0x44>  // b.none
    b5f0:	a94153f3 	ldp	x19, x20, [sp, #16]
    b5f4:	a8c27bfd 	ldp	x29, x30, [sp], #32
    b5f8:	d65f03c0 	ret
    b5fc:	b9431a61 	ldr	w1, [x19, #792]
    b600:	34ffff81 	cbz	w1, b5f0 <_write_r+0x38>
    b604:	b9000281 	str	w1, [x20]
    b608:	a94153f3 	ldp	x19, x20, [sp, #16]
    b60c:	a8c27bfd 	ldp	x29, x30, [sp], #32
    b610:	d65f03c0 	ret
    b614:	00000000 	.inst	0x00000000 ; undefined

000000000000b618 <_calloc_r>:
    b618:	9b027c21 	mul	x1, x1, x2
    b61c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    b620:	910003fd 	mov	x29, sp
    b624:	f9000bf3 	str	x19, [sp, #16]
    b628:	97fff1da 	bl	7d90 <_malloc_r>
    b62c:	aa0003f3 	mov	x19, x0
    b630:	b4000280 	cbz	x0, b680 <_calloc_r+0x68>
    b634:	f85f8002 	ldur	x2, [x0, #-8]
    b638:	927ef442 	and	x2, x2, #0xfffffffffffffffc
    b63c:	d1002042 	sub	x2, x2, #0x8
    b640:	f101205f 	cmp	x2, #0x48
    b644:	54000268 	b.hi	b690 <_calloc_r+0x78>  // b.pmore
    b648:	f1009c5f 	cmp	x2, #0x27
    b64c:	54000169 	b.ls	b678 <_calloc_r+0x60>  // b.plast
    b650:	a9007e7f 	stp	xzr, xzr, [x19]
    b654:	91004000 	add	x0, x0, #0x10
    b658:	f100dc5f 	cmp	x2, #0x37
    b65c:	540000e9 	b.ls	b678 <_calloc_r+0x60>  // b.plast
    b660:	a9017e7f 	stp	xzr, xzr, [x19, #16]
    b664:	91008260 	add	x0, x19, #0x20
    b668:	f101205f 	cmp	x2, #0x48
    b66c:	54000061 	b.ne	b678 <_calloc_r+0x60>  // b.any
    b670:	9100c260 	add	x0, x19, #0x30
    b674:	a9027e7f 	stp	xzr, xzr, [x19, #32]
    b678:	a9007c1f 	stp	xzr, xzr, [x0]
    b67c:	f900081f 	str	xzr, [x0, #16]
    b680:	aa1303e0 	mov	x0, x19
    b684:	f9400bf3 	ldr	x19, [sp, #16]
    b688:	a8c27bfd 	ldp	x29, x30, [sp], #32
    b68c:	d65f03c0 	ret
    b690:	52800001 	mov	w1, #0x0                   	// #0
    b694:	97ffdd4b 	bl	2bc0 <memset>
    b698:	aa1303e0 	mov	x0, x19
    b69c:	f9400bf3 	ldr	x19, [sp, #16]
    b6a0:	a8c27bfd 	ldp	x29, x30, [sp], #32
    b6a4:	d65f03c0 	ret

000000000000b6a8 <_close_r>:
    b6a8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    b6ac:	910003fd 	mov	x29, sp
    b6b0:	a90153f3 	stp	x19, x20, [sp, #16]
    b6b4:	f00000d3 	adrp	x19, 26000 <blue.21472+0x3d40>
    b6b8:	aa0003f4 	mov	x20, x0
    b6bc:	2a0103e0 	mov	w0, w1
    b6c0:	b9031a7f 	str	wzr, [x19, #792]
    b6c4:	94000531 	bl	cb88 <_close>
    b6c8:	3100041f 	cmn	w0, #0x1
    b6cc:	54000080 	b.eq	b6dc <_close_r+0x34>  // b.none
    b6d0:	a94153f3 	ldp	x19, x20, [sp, #16]
    b6d4:	a8c27bfd 	ldp	x29, x30, [sp], #32
    b6d8:	d65f03c0 	ret
    b6dc:	b9431a61 	ldr	w1, [x19, #792]
    b6e0:	34ffff81 	cbz	w1, b6d0 <_close_r+0x28>
    b6e4:	b9000281 	str	w1, [x20]
    b6e8:	a94153f3 	ldp	x19, x20, [sp, #16]
    b6ec:	a8c27bfd 	ldp	x29, x30, [sp], #32
    b6f0:	d65f03c0 	ret
    b6f4:	00000000 	.inst	0x00000000 ; undefined

000000000000b6f8 <_fclose_r>:
    b6f8:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    b6fc:	910003fd 	mov	x29, sp
    b700:	f90013f5 	str	x21, [sp, #32]
    b704:	b4000141 	cbz	x1, b72c <_fclose_r+0x34>
    b708:	a90153b3 	stp	x19, x20, [x29, #16]
    b70c:	aa0003f4 	mov	x20, x0
    b710:	aa0103f3 	mov	x19, x1
    b714:	b4000060 	cbz	x0, b720 <_fclose_r+0x28>
    b718:	b9405001 	ldr	w1, [x0, #80]
    b71c:	34000561 	cbz	w1, b7c8 <_fclose_r+0xd0>
    b720:	79c02260 	ldrsh	w0, [x19, #16]
    b724:	350000e0 	cbnz	w0, b740 <_fclose_r+0x48>
    b728:	a94153b3 	ldp	x19, x20, [x29, #16]
    b72c:	52800015 	mov	w21, #0x0                   	// #0
    b730:	2a1503e0 	mov	w0, w21
    b734:	f94013f5 	ldr	x21, [sp, #32]
    b738:	a8c37bfd 	ldp	x29, x30, [sp], #48
    b73c:	d65f03c0 	ret
    b740:	aa1303e1 	mov	x1, x19
    b744:	aa1403e0 	mov	x0, x20
    b748:	97ffee02 	bl	6f50 <__sflush_r>
    b74c:	2a0003f5 	mov	w21, w0
    b750:	f9402a62 	ldr	x2, [x19, #80]
    b754:	b40000c2 	cbz	x2, b76c <_fclose_r+0x74>
    b758:	f9401a61 	ldr	x1, [x19, #48]
    b75c:	aa1403e0 	mov	x0, x20
    b760:	d63f0040 	blr	x2
    b764:	7100001f 	cmp	w0, #0x0
    b768:	5a9fa2b5 	csinv	w21, w21, wzr, ge  // ge = tcont
    b76c:	79402260 	ldrh	w0, [x19, #16]
    b770:	37380340 	tbnz	w0, #7, b7d8 <_fclose_r+0xe0>
    b774:	f9402e61 	ldr	x1, [x19, #88]
    b778:	b40000e1 	cbz	x1, b794 <_fclose_r+0x9c>
    b77c:	9101d260 	add	x0, x19, #0x74
    b780:	eb00003f 	cmp	x1, x0
    b784:	54000060 	b.eq	b790 <_fclose_r+0x98>  // b.none
    b788:	aa1403e0 	mov	x0, x20
    b78c:	97ffefbb 	bl	7678 <_free_r>
    b790:	f9002e7f 	str	xzr, [x19, #88]
    b794:	f9403e61 	ldr	x1, [x19, #120]
    b798:	b4000081 	cbz	x1, b7a8 <_fclose_r+0xb0>
    b79c:	aa1403e0 	mov	x0, x20
    b7a0:	97ffefb6 	bl	7678 <_free_r>
    b7a4:	f9003e7f 	str	xzr, [x19, #120]
    b7a8:	97ffef5c 	bl	7518 <__sfp_lock_acquire>
    b7ac:	7900227f 	strh	wzr, [x19, #16]
    b7b0:	97ffef5c 	bl	7520 <__sfp_lock_release>
    b7b4:	2a1503e0 	mov	w0, w21
    b7b8:	f94013f5 	ldr	x21, [sp, #32]
    b7bc:	a94153b3 	ldp	x19, x20, [x29, #16]
    b7c0:	a8c37bfd 	ldp	x29, x30, [sp], #48
    b7c4:	d65f03c0 	ret
    b7c8:	97ffef50 	bl	7508 <__sinit>
    b7cc:	79c02260 	ldrsh	w0, [x19, #16]
    b7d0:	34fffac0 	cbz	w0, b728 <_fclose_r+0x30>
    b7d4:	17ffffdb 	b	b740 <_fclose_r+0x48>
    b7d8:	f9400e61 	ldr	x1, [x19, #24]
    b7dc:	aa1403e0 	mov	x0, x20
    b7e0:	97ffefa6 	bl	7678 <_free_r>
    b7e4:	17ffffe4 	b	b774 <_fclose_r+0x7c>

000000000000b7e8 <fclose>:
    b7e8:	d0000002 	adrp	x2, d000 <__trunctfdf2+0x290>
    b7ec:	aa0003e1 	mov	x1, x0
    b7f0:	f943a840 	ldr	x0, [x2, #1872]
    b7f4:	17ffffc1 	b	b6f8 <_fclose_r>

000000000000b7f8 <__fputwc>:
    b7f8:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
    b7fc:	910003fd 	mov	x29, sp
    b800:	f9000bf3 	str	x19, [sp, #16]
    b804:	aa0203f3 	mov	x19, x2
    b808:	a9025bf5 	stp	x21, x22, [sp, #32]
    b80c:	2a0103f6 	mov	w22, w1
    b810:	f9001bf7 	str	x23, [sp, #48]
    b814:	aa0003f7 	mov	x23, x0
    b818:	97fff0de 	bl	7b90 <__locale_mb_cur_max>
    b81c:	7100041f 	cmp	w0, #0x1
    b820:	54000081 	b.ne	b830 <__fputwc+0x38>  // b.any
    b824:	510006c0 	sub	w0, w22, #0x1
    b828:	7103f81f 	cmp	w0, #0xfe
    b82c:	540005a9 	b.ls	b8e0 <__fputwc+0xe8>  // b.plast
    b830:	91029263 	add	x3, x19, #0xa4
    b834:	2a1603e2 	mov	w2, w22
    b838:	910123a1 	add	x1, x29, #0x48
    b83c:	aa1703e0 	mov	x0, x23
    b840:	94000434 	bl	c910 <_wcrtomb_r>
    b844:	aa0003f5 	mov	x21, x0
    b848:	b100041f 	cmn	x0, #0x1
    b84c:	54000660 	b.eq	b918 <__fputwc+0x120>  // b.none
    b850:	b4000580 	cbz	x0, b900 <__fputwc+0x108>
    b854:	394123a4 	ldrb	w4, [x29, #72]
    b858:	f9000fb4 	str	x20, [x29, #24]
    b85c:	f9001fb8 	str	x24, [x29, #56]
    b860:	910123b8 	add	x24, x29, #0x48
    b864:	d2800014 	mov	x20, #0x0                   	// #0
    b868:	14000009 	b	b88c <__fputwc+0x94>
    b86c:	f9400261 	ldr	x1, [x19]
    b870:	91000422 	add	x2, x1, #0x1
    b874:	f9000262 	str	x2, [x19]
    b878:	39000024 	strb	w4, [x1]
    b87c:	91000694 	add	x20, x20, #0x1
    b880:	eb15029f 	cmp	x20, x21
    b884:	540003a2 	b.cs	b8f8 <__fputwc+0x100>  // b.hs, b.nlast
    b888:	38786a84 	ldrb	w4, [x20, x24]
    b88c:	b9400e63 	ldr	w3, [x19, #12]
    b890:	51000463 	sub	w3, w3, #0x1
    b894:	b9000e63 	str	w3, [x19, #12]
    b898:	36fffea3 	tbz	w3, #31, b86c <__fputwc+0x74>
    b89c:	b9402a65 	ldr	w5, [x19, #40]
    b8a0:	2a0403e1 	mov	w1, w4
    b8a4:	aa1303e2 	mov	x2, x19
    b8a8:	aa1703e0 	mov	x0, x23
    b8ac:	6b05007f 	cmp	w3, w5
    b8b0:	7a4aa884 	ccmp	w4, #0xa, #0x4, ge  // ge = tcont
    b8b4:	54fffdc1 	b.ne	b86c <__fputwc+0x74>  // b.any
    b8b8:	940003bc 	bl	c7a8 <__swbuf_r>
    b8bc:	3100041f 	cmn	w0, #0x1
    b8c0:	54fffde1 	b.ne	b87c <__fputwc+0x84>  // b.any
    b8c4:	f9400fb4 	ldr	x20, [x29, #24]
    b8c8:	f9401fb8 	ldr	x24, [x29, #56]
    b8cc:	f9400bf3 	ldr	x19, [sp, #16]
    b8d0:	a9425bf5 	ldp	x21, x22, [sp, #32]
    b8d4:	f9401bf7 	ldr	x23, [sp, #48]
    b8d8:	a8c57bfd 	ldp	x29, x30, [sp], #80
    b8dc:	d65f03c0 	ret
    b8e0:	12001ec4 	and	w4, w22, #0xff
    b8e4:	d2800035 	mov	x21, #0x1                   	// #1
    b8e8:	f9000fb4 	str	x20, [x29, #24]
    b8ec:	f9001fb8 	str	x24, [x29, #56]
    b8f0:	390123a4 	strb	w4, [x29, #72]
    b8f4:	17ffffdb 	b	b860 <__fputwc+0x68>
    b8f8:	f9400fb4 	ldr	x20, [x29, #24]
    b8fc:	f9401fb8 	ldr	x24, [x29, #56]
    b900:	2a1603e0 	mov	w0, w22
    b904:	f9400bf3 	ldr	x19, [sp, #16]
    b908:	a9425bf5 	ldp	x21, x22, [sp, #32]
    b90c:	f9401bf7 	ldr	x23, [sp, #48]
    b910:	a8c57bfd 	ldp	x29, x30, [sp], #80
    b914:	d65f03c0 	ret
    b918:	79402261 	ldrh	w1, [x19, #16]
    b91c:	a9425bf5 	ldp	x21, x22, [sp, #32]
    b920:	321a0021 	orr	w1, w1, #0x40
    b924:	79002261 	strh	w1, [x19, #16]
    b928:	f9400bf3 	ldr	x19, [sp, #16]
    b92c:	f9401bf7 	ldr	x23, [sp, #48]
    b930:	a8c57bfd 	ldp	x29, x30, [sp], #80
    b934:	d65f03c0 	ret

000000000000b938 <_fputwc_r>:
    b938:	79c02043 	ldrsh	w3, [x2, #16]
    b93c:	376800c3 	tbnz	w3, #13, b954 <_fputwc_r+0x1c>
    b940:	b940ac44 	ldr	w4, [x2, #172]
    b944:	32130063 	orr	w3, w3, #0x2000
    b948:	79002043 	strh	w3, [x2, #16]
    b94c:	32130083 	orr	w3, w4, #0x2000
    b950:	b900ac43 	str	w3, [x2, #172]
    b954:	17ffffa9 	b	b7f8 <__fputwc>

000000000000b958 <fputwc>:
    b958:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    b95c:	d0000002 	adrp	x2, d000 <__trunctfdf2+0x290>
    b960:	910003fd 	mov	x29, sp
    b964:	a90153f3 	stp	x19, x20, [sp, #16]
    b968:	2a0003f4 	mov	w20, w0
    b96c:	f943a853 	ldr	x19, [x2, #1872]
    b970:	b4000073 	cbz	x19, b97c <fputwc+0x24>
    b974:	b9405260 	ldr	w0, [x19, #80]
    b978:	340001c0 	cbz	w0, b9b0 <fputwc+0x58>
    b97c:	79c02020 	ldrsh	w0, [x1, #16]
    b980:	376800c0 	tbnz	w0, #13, b998 <fputwc+0x40>
    b984:	b940ac22 	ldr	w2, [x1, #172]
    b988:	32130000 	orr	w0, w0, #0x2000
    b98c:	79002020 	strh	w0, [x1, #16]
    b990:	32130040 	orr	w0, w2, #0x2000
    b994:	b900ac20 	str	w0, [x1, #172]
    b998:	aa0103e2 	mov	x2, x1
    b99c:	aa1303e0 	mov	x0, x19
    b9a0:	2a1403e1 	mov	w1, w20
    b9a4:	a94153f3 	ldp	x19, x20, [sp, #16]
    b9a8:	a8c37bfd 	ldp	x29, x30, [sp], #48
    b9ac:	17ffff93 	b	b7f8 <__fputwc>
    b9b0:	f90017a1 	str	x1, [x29, #40]
    b9b4:	aa1303e0 	mov	x0, x19
    b9b8:	97ffeed4 	bl	7508 <__sinit>
    b9bc:	f94017a1 	ldr	x1, [x29, #40]
    b9c0:	17ffffef 	b	b97c <fputwc+0x24>
    b9c4:	00000000 	.inst	0x00000000 ; undefined

000000000000b9c8 <_fstat_r>:
    b9c8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    b9cc:	2a0103e3 	mov	w3, w1
    b9d0:	aa0203e1 	mov	x1, x2
    b9d4:	910003fd 	mov	x29, sp
    b9d8:	a90153f3 	stp	x19, x20, [sp, #16]
    b9dc:	f00000d3 	adrp	x19, 26000 <blue.21472+0x3d40>
    b9e0:	aa0003f4 	mov	x20, x0
    b9e4:	2a0303e0 	mov	w0, w3
    b9e8:	b9031a7f 	str	wzr, [x19, #792]
    b9ec:	94000469 	bl	cb90 <_fstat>
    b9f0:	3100041f 	cmn	w0, #0x1
    b9f4:	54000080 	b.eq	ba04 <_fstat_r+0x3c>  // b.none
    b9f8:	a94153f3 	ldp	x19, x20, [sp, #16]
    b9fc:	a8c27bfd 	ldp	x29, x30, [sp], #32
    ba00:	d65f03c0 	ret
    ba04:	b9431a61 	ldr	w1, [x19, #792]
    ba08:	34ffff81 	cbz	w1, b9f8 <_fstat_r+0x30>
    ba0c:	b9000281 	str	w1, [x20]
    ba10:	a94153f3 	ldp	x19, x20, [sp, #16]
    ba14:	a8c27bfd 	ldp	x29, x30, [sp], #32
    ba18:	d65f03c0 	ret
    ba1c:	00000000 	.inst	0x00000000 ; undefined

000000000000ba20 <__sfvwrite_r>:
    ba20:	f9400843 	ldr	x3, [x2, #16]
    ba24:	b4001763 	cbz	x3, bd10 <__sfvwrite_r+0x2f0>
    ba28:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
    ba2c:	910003fd 	mov	x29, sp
    ba30:	79402023 	ldrh	w3, [x1, #16]
    ba34:	f9000bf3 	str	x19, [sp, #16]
    ba38:	aa0103f3 	mov	x19, x1
    ba3c:	a90363f7 	stp	x23, x24, [sp, #48]
    ba40:	aa0003f8 	mov	x24, x0
    ba44:	aa0203f7 	mov	x23, x2
    ba48:	36180523 	tbz	w3, #3, baec <__sfvwrite_r+0xcc>
    ba4c:	f9400c20 	ldr	x0, [x1, #24]
    ba50:	b40004e0 	cbz	x0, baec <__sfvwrite_r+0xcc>
    ba54:	a901d7b4 	stp	x20, x21, [x29, #24]
    ba58:	f90017b6 	str	x22, [x29, #40]
    ba5c:	f90023b9 	str	x25, [x29, #64]
    ba60:	f94002f4 	ldr	x20, [x23]
    ba64:	36080583 	tbz	w3, #1, bb14 <__sfvwrite_r+0xf4>
    ba68:	f9401a64 	ldr	x4, [x19, #48]
    ba6c:	d2800016 	mov	x22, #0x0                   	// #0
    ba70:	f9402265 	ldr	x5, [x19, #64]
    ba74:	d2800015 	mov	x21, #0x0                   	// #0
    ba78:	b27653f9 	mov	x25, #0x7ffffc00            	// #2147482624
    ba7c:	d503201f 	nop
    ba80:	eb1902bf 	cmp	x21, x25
    ba84:	aa1603e2 	mov	x2, x22
    ba88:	9a9992a3 	csel	x3, x21, x25, ls  // ls = plast
    ba8c:	aa0403e1 	mov	x1, x4
    ba90:	aa1803e0 	mov	x0, x24
    ba94:	b4000275 	cbz	x21, bae0 <__sfvwrite_r+0xc0>
    ba98:	d63f00a0 	blr	x5
    ba9c:	7100001f 	cmp	w0, #0x0
    baa0:	5400206d 	b.le	beac <__sfvwrite_r+0x48c>
    baa4:	f9400ae1 	ldr	x1, [x23, #16]
    baa8:	93407c00 	sxtw	x0, w0
    baac:	8b0002d6 	add	x22, x22, x0
    bab0:	cb0002b5 	sub	x21, x21, x0
    bab4:	cb000020 	sub	x0, x1, x0
    bab8:	f9000ae0 	str	x0, [x23, #16]
    babc:	b40011a0 	cbz	x0, bcf0 <__sfvwrite_r+0x2d0>
    bac0:	f9401a64 	ldr	x4, [x19, #48]
    bac4:	eb1902bf 	cmp	x21, x25
    bac8:	f9402265 	ldr	x5, [x19, #64]
    bacc:	aa1603e2 	mov	x2, x22
    bad0:	9a9992a3 	csel	x3, x21, x25, ls  // ls = plast
    bad4:	aa0403e1 	mov	x1, x4
    bad8:	aa1803e0 	mov	x0, x24
    badc:	b5fffdf5 	cbnz	x21, ba98 <__sfvwrite_r+0x78>
    bae0:	a9405696 	ldp	x22, x21, [x20]
    bae4:	91004294 	add	x20, x20, #0x10
    bae8:	17ffffe6 	b	ba80 <__sfvwrite_r+0x60>
    baec:	aa1303e1 	mov	x1, x19
    baf0:	aa1803e0 	mov	x0, x24
    baf4:	97ffe757 	bl	5850 <__swsetup_r>
    baf8:	350020c0 	cbnz	w0, bf10 <__sfvwrite_r+0x4f0>
    bafc:	79402263 	ldrh	w3, [x19, #16]
    bb00:	a901d7b4 	stp	x20, x21, [x29, #24]
    bb04:	f90017b6 	str	x22, [x29, #40]
    bb08:	f90023b9 	str	x25, [x29, #64]
    bb0c:	f94002f4 	ldr	x20, [x23]
    bb10:	370ffac3 	tbnz	w3, #1, ba68 <__sfvwrite_r+0x48>
    bb14:	a904efba 	stp	x26, x27, [x29, #72]
    bb18:	370009e3 	tbnz	w3, #0, bc54 <__sfvwrite_r+0x234>
    bb1c:	b9400e7a 	ldr	w26, [x19, #12]
    bb20:	d2800015 	mov	x21, #0x0                   	// #0
    bb24:	f9400260 	ldr	x0, [x19]
    bb28:	f9002fbc 	str	x28, [x29, #88]
    bb2c:	d280001c 	mov	x28, #0x0                   	// #0
    bb30:	b40008d5 	cbz	x21, bc48 <__sfvwrite_r+0x228>
    bb34:	364810a3 	tbz	w3, #9, bd48 <__sfvwrite_r+0x328>
    bb38:	93407f5b 	sxtw	x27, w26
    bb3c:	93407ea1 	sxtw	x1, w21
    bb40:	eb15037f 	cmp	x27, x21
    bb44:	54001588 	b.hi	bdf4 <__sfvwrite_r+0x3d4>  // b.pmore
    bb48:	52809001 	mov	w1, #0x480                 	// #1152
    bb4c:	93407eb6 	sxtw	x22, w21
    bb50:	6a01007f 	tst	w3, w1
    bb54:	54000540 	b.eq	bbfc <__sfvwrite_r+0x1dc>  // b.none
    bb58:	b9402264 	ldr	w4, [x19, #32]
    bb5c:	910006a2 	add	x2, x21, #0x1
    bb60:	f9400e61 	ldr	x1, [x19, #24]
    bb64:	0b040484 	add	w4, w4, w4, lsl #1
    bb68:	cb010019 	sub	x25, x0, x1
    bb6c:	0b447c84 	add	w4, w4, w4, lsr #31
    bb70:	93407f36 	sxtw	x22, w25
    bb74:	8b160040 	add	x0, x2, x22
    bb78:	13017c9a 	asr	w26, w4, #1
    bb7c:	93407f42 	sxtw	x2, w26
    bb80:	eb00005f 	cmp	x2, x0
    bb84:	54000082 	b.cs	bb94 <__sfvwrite_r+0x174>  // b.hs, b.nlast
    bb88:	110006a4 	add	w4, w21, #0x1
    bb8c:	0b19009a 	add	w26, w4, w25
    bb90:	93407f42 	sxtw	x2, w26
    bb94:	36501703 	tbz	w3, #10, be74 <__sfvwrite_r+0x454>
    bb98:	aa0203e1 	mov	x1, x2
    bb9c:	aa1803e0 	mov	x0, x24
    bba0:	97fff07c 	bl	7d90 <_malloc_r>
    bba4:	aa0003fb 	mov	x27, x0
    bba8:	b4001a80 	cbz	x0, bef8 <__sfvwrite_r+0x4d8>
    bbac:	f9400e61 	ldr	x1, [x19, #24]
    bbb0:	aa1603e2 	mov	x2, x22
    bbb4:	97fff2c3 	bl	86c0 <memcpy>
    bbb8:	79402260 	ldrh	w0, [x19, #16]
    bbbc:	12809001 	mov	w1, #0xfffffb7f            	// #-1153
    bbc0:	0a010000 	and	w0, w0, w1
    bbc4:	32190000 	orr	w0, w0, #0x80
    bbc8:	79002260 	strh	w0, [x19, #16]
    bbcc:	8b160360 	add	x0, x27, x22
    bbd0:	4b190341 	sub	w1, w26, w25
    bbd4:	f9000260 	str	x0, [x19]
    bbd8:	b9000e61 	str	w1, [x19, #12]
    bbdc:	93407ea1 	sxtw	x1, w21
    bbe0:	f9000e7b 	str	x27, [x19, #24]
    bbe4:	aa0103f6 	mov	x22, x1
    bbe8:	b900227a 	str	w26, [x19, #32]
    bbec:	aa0103fb 	mov	x27, x1
    bbf0:	2a1503fa 	mov	w26, w21
    bbf4:	eb15003f 	cmp	x1, x21
    bbf8:	54000fe8 	b.hi	bdf4 <__sfvwrite_r+0x3d4>  // b.pmore
    bbfc:	aa1c03e1 	mov	x1, x28
    bc00:	aa1b03e2 	mov	x2, x27
    bc04:	940000ff 	bl	c000 <memmove>
    bc08:	b9400e60 	ldr	w0, [x19, #12]
    bc0c:	f9400261 	ldr	x1, [x19]
    bc10:	4b1a0004 	sub	w4, w0, w26
    bc14:	b9000e64 	str	w4, [x19, #12]
    bc18:	8b1b0026 	add	x6, x1, x27
    bc1c:	f9000266 	str	x6, [x19]
    bc20:	f9400ae0 	ldr	x0, [x23, #16]
    bc24:	8b16039c 	add	x28, x28, x22
    bc28:	cb1602b5 	sub	x21, x21, x22
    bc2c:	cb160016 	sub	x22, x0, x22
    bc30:	f9000af6 	str	x22, [x23, #16]
    bc34:	b40015d6 	cbz	x22, beec <__sfvwrite_r+0x4cc>
    bc38:	79402263 	ldrh	w3, [x19, #16]
    bc3c:	b9400e7a 	ldr	w26, [x19, #12]
    bc40:	f9400260 	ldr	x0, [x19]
    bc44:	b5fff795 	cbnz	x21, bb34 <__sfvwrite_r+0x114>
    bc48:	a940569c 	ldp	x28, x21, [x20]
    bc4c:	91004294 	add	x20, x20, #0x10
    bc50:	17ffffb8 	b	bb30 <__sfvwrite_r+0x110>
    bc54:	5280001a 	mov	w26, #0x0                   	// #0
    bc58:	52800000 	mov	w0, #0x0                   	// #0
    bc5c:	d280001b 	mov	x27, #0x0                   	// #0
    bc60:	d2800019 	mov	x25, #0x0                   	// #0
    bc64:	d503201f 	nop
    bc68:	b4000599 	cbz	x25, bd18 <__sfvwrite_r+0x2f8>
    bc6c:	340005c0 	cbz	w0, bd24 <__sfvwrite_r+0x304>
    bc70:	93407f56 	sxtw	x22, w26
    bc74:	b9400e75 	ldr	w21, [x19, #12]
    bc78:	b9402263 	ldr	w3, [x19, #32]
    bc7c:	eb1902df 	cmp	x22, x25
    bc80:	f9400260 	ldr	x0, [x19]
    bc84:	9a9992d6 	csel	x22, x22, x25, ls  // ls = plast
    bc88:	f9400e61 	ldr	x1, [x19, #24]
    bc8c:	0b150075 	add	w21, w3, w21
    bc90:	eb01001f 	cmp	x0, x1
    bc94:	7a5582c4 	ccmp	w22, w21, #0x4, hi  // hi = pmore
    bc98:	54000d6c 	b.gt	be44 <__sfvwrite_r+0x424>
    bc9c:	6b16007f 	cmp	w3, w22
    bca0:	540010ac 	b.gt	beb4 <__sfvwrite_r+0x494>
    bca4:	f9401a61 	ldr	x1, [x19, #48]
    bca8:	aa1b03e2 	mov	x2, x27
    bcac:	f9402264 	ldr	x4, [x19, #64]
    bcb0:	aa1803e0 	mov	x0, x24
    bcb4:	d63f0080 	blr	x4
    bcb8:	2a0003f5 	mov	w21, w0
    bcbc:	7100001f 	cmp	w0, #0x0
    bcc0:	54000aad 	b.le	be14 <__sfvwrite_r+0x3f4>
    bcc4:	52800020 	mov	w0, #0x1                   	// #1
    bcc8:	6b15035a 	subs	w26, w26, w21
    bccc:	540009c0 	b.eq	be04 <__sfvwrite_r+0x3e4>  // b.none
    bcd0:	f9400ae1 	ldr	x1, [x23, #16]
    bcd4:	93407eb5 	sxtw	x21, w21
    bcd8:	8b15037b 	add	x27, x27, x21
    bcdc:	cb150339 	sub	x25, x25, x21
    bce0:	cb150035 	sub	x21, x1, x21
    bce4:	f9000af5 	str	x21, [x23, #16]
    bce8:	b5fffc15 	cbnz	x21, bc68 <__sfvwrite_r+0x248>
    bcec:	a944efba 	ldp	x26, x27, [x29, #72]
    bcf0:	52800000 	mov	w0, #0x0                   	// #0
    bcf4:	a941d7b4 	ldp	x20, x21, [x29, #24]
    bcf8:	f94017b6 	ldr	x22, [x29, #40]
    bcfc:	f94023b9 	ldr	x25, [x29, #64]
    bd00:	f9400bf3 	ldr	x19, [sp, #16]
    bd04:	a94363f7 	ldp	x23, x24, [sp, #48]
    bd08:	a8c67bfd 	ldp	x29, x30, [sp], #96
    bd0c:	d65f03c0 	ret
    bd10:	52800000 	mov	w0, #0x0                   	// #0
    bd14:	d65f03c0 	ret
    bd18:	a940669b 	ldp	x27, x25, [x20]
    bd1c:	91004294 	add	x20, x20, #0x10
    bd20:	b4ffffd9 	cbz	x25, bd18 <__sfvwrite_r+0x2f8>
    bd24:	aa1903e2 	mov	x2, x25
    bd28:	52800141 	mov	w1, #0xa                   	// #10
    bd2c:	aa1b03e0 	mov	x0, x27
    bd30:	97fff228 	bl	85d0 <memchr>
    bd34:	9100041a 	add	x26, x0, #0x1
    bd38:	f100001f 	cmp	x0, #0x0
    bd3c:	cb1b035a 	sub	x26, x26, x27
    bd40:	1a99175a 	csinc	w26, w26, w25, ne  // ne = any
    bd44:	17ffffcb 	b	bc70 <__sfvwrite_r+0x250>
    bd48:	f9400e61 	ldr	x1, [x19, #24]
    bd4c:	eb00003f 	cmp	x1, x0
    bd50:	54000263 	b.cc	bd9c <__sfvwrite_r+0x37c>  // b.lo, b.ul, b.last
    bd54:	b9402263 	ldr	w3, [x19, #32]
    bd58:	eb23c2bf 	cmp	x21, w3, sxtw
    bd5c:	54000203 	b.cc	bd9c <__sfvwrite_r+0x37c>  // b.lo, b.ul, b.last
    bd60:	b27f77e0 	mov	x0, #0x7ffffffe            	// #2147483646
    bd64:	eb0002bf 	cmp	x21, x0
    bd68:	b2407be0 	mov	x0, #0x7fffffff            	// #2147483647
    bd6c:	9a8092a4 	csel	x4, x21, x0, ls  // ls = plast
    bd70:	f9401a61 	ldr	x1, [x19, #48]
    bd74:	aa1c03e2 	mov	x2, x28
    bd78:	f9402266 	ldr	x6, [x19, #64]
    bd7c:	aa1803e0 	mov	x0, x24
    bd80:	1ac30c84 	sdiv	w4, w4, w3
    bd84:	1b037c83 	mul	w3, w4, w3
    bd88:	d63f00c0 	blr	x6
    bd8c:	7100001f 	cmp	w0, #0x0
    bd90:	540002ad 	b.le	bde4 <__sfvwrite_r+0x3c4>
    bd94:	93407c16 	sxtw	x22, w0
    bd98:	17ffffa2 	b	bc20 <__sfvwrite_r+0x200>
    bd9c:	93407f44 	sxtw	x4, w26
    bda0:	aa1c03e1 	mov	x1, x28
    bda4:	eb15009f 	cmp	x4, x21
    bda8:	9a95909a 	csel	x26, x4, x21, ls  // ls = plast
    bdac:	93407f56 	sxtw	x22, w26
    bdb0:	aa1603e2 	mov	x2, x22
    bdb4:	94000093 	bl	c000 <memmove>
    bdb8:	b9400e60 	ldr	w0, [x19, #12]
    bdbc:	f9400261 	ldr	x1, [x19]
    bdc0:	4b1a0004 	sub	w4, w0, w26
    bdc4:	b9000e64 	str	w4, [x19, #12]
    bdc8:	8b160021 	add	x1, x1, x22
    bdcc:	f9000261 	str	x1, [x19]
    bdd0:	35fff284 	cbnz	w4, bc20 <__sfvwrite_r+0x200>
    bdd4:	aa1303e1 	mov	x1, x19
    bdd8:	aa1803e0 	mov	x0, x24
    bddc:	97ffecf7 	bl	71b8 <_fflush_r>
    bde0:	34fff200 	cbz	w0, bc20 <__sfvwrite_r+0x200>
    bde4:	79c02261 	ldrsh	w1, [x19, #16]
    bde8:	a944efba 	ldp	x26, x27, [x29, #72]
    bdec:	f9402fbc 	ldr	x28, [x29, #88]
    bdf0:	1400000b 	b	be1c <__sfvwrite_r+0x3fc>
    bdf4:	aa0103f6 	mov	x22, x1
    bdf8:	2a1503fa 	mov	w26, w21
    bdfc:	aa0103fb 	mov	x27, x1
    be00:	17ffff7f 	b	bbfc <__sfvwrite_r+0x1dc>
    be04:	aa1303e1 	mov	x1, x19
    be08:	aa1803e0 	mov	x0, x24
    be0c:	97ffeceb 	bl	71b8 <_fflush_r>
    be10:	34fff600 	cbz	w0, bcd0 <__sfvwrite_r+0x2b0>
    be14:	79c02261 	ldrsh	w1, [x19, #16]
    be18:	a944efba 	ldp	x26, x27, [x29, #72]
    be1c:	321a0021 	orr	w1, w1, #0x40
    be20:	79002261 	strh	w1, [x19, #16]
    be24:	12800000 	mov	w0, #0xffffffff            	// #-1
    be28:	a941d7b4 	ldp	x20, x21, [x29, #24]
    be2c:	f94017b6 	ldr	x22, [x29, #40]
    be30:	f94023b9 	ldr	x25, [x29, #64]
    be34:	f9400bf3 	ldr	x19, [sp, #16]
    be38:	a94363f7 	ldp	x23, x24, [sp, #48]
    be3c:	a8c67bfd 	ldp	x29, x30, [sp], #96
    be40:	d65f03c0 	ret
    be44:	93407eb6 	sxtw	x22, w21
    be48:	aa1b03e1 	mov	x1, x27
    be4c:	aa1603e2 	mov	x2, x22
    be50:	9400006c 	bl	c000 <memmove>
    be54:	f9400262 	ldr	x2, [x19]
    be58:	aa1303e1 	mov	x1, x19
    be5c:	aa1803e0 	mov	x0, x24
    be60:	8b160056 	add	x22, x2, x22
    be64:	f9000276 	str	x22, [x19]
    be68:	97ffecd4 	bl	71b8 <_fflush_r>
    be6c:	34fff2c0 	cbz	w0, bcc4 <__sfvwrite_r+0x2a4>
    be70:	17ffffe9 	b	be14 <__sfvwrite_r+0x3f4>
    be74:	aa1803e0 	mov	x0, x24
    be78:	940000a6 	bl	c110 <_realloc_r>
    be7c:	aa0003fb 	mov	x27, x0
    be80:	b5ffea60 	cbnz	x0, bbcc <__sfvwrite_r+0x1ac>
    be84:	f9400e61 	ldr	x1, [x19, #24]
    be88:	aa1803e0 	mov	x0, x24
    be8c:	97ffedfb 	bl	7678 <_free_r>
    be90:	f9402fbc 	ldr	x28, [x29, #88]
    be94:	79c02261 	ldrsh	w1, [x19, #16]
    be98:	52800180 	mov	w0, #0xc                   	// #12
    be9c:	a944efba 	ldp	x26, x27, [x29, #72]
    bea0:	12187821 	and	w1, w1, #0xffffff7f
    bea4:	b9000300 	str	w0, [x24]
    bea8:	17ffffdd 	b	be1c <__sfvwrite_r+0x3fc>
    beac:	79c02261 	ldrsh	w1, [x19, #16]
    beb0:	17ffffdb 	b	be1c <__sfvwrite_r+0x3fc>
    beb4:	f9002fbc 	str	x28, [x29, #88]
    beb8:	93407edc 	sxtw	x28, w22
    bebc:	aa1b03e1 	mov	x1, x27
    bec0:	aa1c03e2 	mov	x2, x28
    bec4:	9400004f 	bl	c000 <memmove>
    bec8:	2a1603f5 	mov	w21, w22
    becc:	b9400e60 	ldr	w0, [x19, #12]
    bed0:	f9400261 	ldr	x1, [x19]
    bed4:	4b160016 	sub	w22, w0, w22
    bed8:	8b1c0021 	add	x1, x1, x28
    bedc:	f9402fbc 	ldr	x28, [x29, #88]
    bee0:	f9000261 	str	x1, [x19]
    bee4:	b9000e76 	str	w22, [x19, #12]
    bee8:	17ffff77 	b	bcc4 <__sfvwrite_r+0x2a4>
    beec:	a944efba 	ldp	x26, x27, [x29, #72]
    bef0:	f9402fbc 	ldr	x28, [x29, #88]
    bef4:	17ffff7f 	b	bcf0 <__sfvwrite_r+0x2d0>
    bef8:	52800180 	mov	w0, #0xc                   	// #12
    befc:	79c02261 	ldrsh	w1, [x19, #16]
    bf00:	a944efba 	ldp	x26, x27, [x29, #72]
    bf04:	f9402fbc 	ldr	x28, [x29, #88]
    bf08:	b9000300 	str	w0, [x24]
    bf0c:	17ffffc4 	b	be1c <__sfvwrite_r+0x3fc>
    bf10:	12800000 	mov	w0, #0xffffffff            	// #-1
    bf14:	17ffff7b 	b	bd00 <__sfvwrite_r+0x2e0>

000000000000bf18 <_isatty_r>:
    bf18:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    bf1c:	910003fd 	mov	x29, sp
    bf20:	a90153f3 	stp	x19, x20, [sp, #16]
    bf24:	f00000d3 	adrp	x19, 26000 <blue.21472+0x3d40>
    bf28:	aa0003f4 	mov	x20, x0
    bf2c:	2a0103e0 	mov	w0, w1
    bf30:	b9031a7f 	str	wzr, [x19, #792]
    bf34:	9400031d 	bl	cba8 <_isatty>
    bf38:	3100041f 	cmn	w0, #0x1
    bf3c:	54000080 	b.eq	bf4c <_isatty_r+0x34>  // b.none
    bf40:	a94153f3 	ldp	x19, x20, [sp, #16]
    bf44:	a8c27bfd 	ldp	x29, x30, [sp], #32
    bf48:	d65f03c0 	ret
    bf4c:	b9431a61 	ldr	w1, [x19, #792]
    bf50:	34ffff81 	cbz	w1, bf40 <_isatty_r+0x28>
    bf54:	b9000281 	str	w1, [x20]
    bf58:	a94153f3 	ldp	x19, x20, [sp, #16]
    bf5c:	a8c27bfd 	ldp	x29, x30, [sp], #32
    bf60:	d65f03c0 	ret
    bf64:	00000000 	.inst	0x00000000 ; undefined

000000000000bf68 <_lseek_r>:
    bf68:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    bf6c:	2a0103e4 	mov	w4, w1
    bf70:	aa0203e1 	mov	x1, x2
    bf74:	2a0303e2 	mov	w2, w3
    bf78:	910003fd 	mov	x29, sp
    bf7c:	a90153f3 	stp	x19, x20, [sp, #16]
    bf80:	f00000d3 	adrp	x19, 26000 <blue.21472+0x3d40>
    bf84:	aa0003f4 	mov	x20, x0
    bf88:	2a0403e0 	mov	w0, w4
    bf8c:	b9031a7f 	str	wzr, [x19, #792]
    bf90:	94000310 	bl	cbd0 <_lseek>
    bf94:	93407c00 	sxtw	x0, w0
    bf98:	b100041f 	cmn	x0, #0x1
    bf9c:	54000080 	b.eq	bfac <_lseek_r+0x44>  // b.none
    bfa0:	a94153f3 	ldp	x19, x20, [sp, #16]
    bfa4:	a8c27bfd 	ldp	x29, x30, [sp], #32
    bfa8:	d65f03c0 	ret
    bfac:	b9431a61 	ldr	w1, [x19, #792]
    bfb0:	34ffff81 	cbz	w1, bfa0 <_lseek_r+0x38>
    bfb4:	b9000281 	str	w1, [x20]
    bfb8:	a94153f3 	ldp	x19, x20, [sp, #16]
    bfbc:	a8c27bfd 	ldp	x29, x30, [sp], #32
    bfc0:	d65f03c0 	ret
	...

000000000000c000 <memmove>:
    c000:	cb010005 	sub	x5, x0, x1
    c004:	f101805f 	cmp	x2, #0x60
    c008:	fa4280a2 	ccmp	x5, x2, #0x2, hi  // hi = pmore
    c00c:	54fe35a2 	b.cs	86c0 <memcpy>  // b.hs, b.nlast
    c010:	b40004c5 	cbz	x5, c0a8 <memmove+0xa8>
    c014:	8b020004 	add	x4, x0, x2
    c018:	8b020023 	add	x3, x1, x2
    c01c:	92400c85 	and	x5, x4, #0xf
    c020:	a97f346c 	ldp	x12, x13, [x3, #-16]
    c024:	cb050063 	sub	x3, x3, x5
    c028:	cb050042 	sub	x2, x2, x5
    c02c:	a97f1c66 	ldp	x6, x7, [x3, #-16]
    c030:	a93f348c 	stp	x12, x13, [x4, #-16]
    c034:	a97e2468 	ldp	x8, x9, [x3, #-32]
    c038:	a97d2c6a 	ldp	x10, x11, [x3, #-48]
    c03c:	a9fc346c 	ldp	x12, x13, [x3, #-64]!
    c040:	cb050084 	sub	x4, x4, x5
    c044:	f1020042 	subs	x2, x2, #0x80
    c048:	54000189 	b.ls	c078 <memmove+0x78>  // b.plast
    c04c:	d503201f 	nop
    c050:	a93f1c86 	stp	x6, x7, [x4, #-16]
    c054:	a97f1c66 	ldp	x6, x7, [x3, #-16]
    c058:	a93e2488 	stp	x8, x9, [x4, #-32]
    c05c:	a97e2468 	ldp	x8, x9, [x3, #-32]
    c060:	a93d2c8a 	stp	x10, x11, [x4, #-48]
    c064:	a97d2c6a 	ldp	x10, x11, [x3, #-48]
    c068:	a9bc348c 	stp	x12, x13, [x4, #-64]!
    c06c:	a9fc346c 	ldp	x12, x13, [x3, #-64]!
    c070:	f1010042 	subs	x2, x2, #0x40
    c074:	54fffee8 	b.hi	c050 <memmove+0x50>  // b.pmore
    c078:	a9431422 	ldp	x2, x5, [x1, #48]
    c07c:	a93f1c86 	stp	x6, x7, [x4, #-16]
    c080:	a9421c26 	ldp	x6, x7, [x1, #32]
    c084:	a93e2488 	stp	x8, x9, [x4, #-32]
    c088:	a9412428 	ldp	x8, x9, [x1, #16]
    c08c:	a93d2c8a 	stp	x10, x11, [x4, #-48]
    c090:	a9402c2a 	ldp	x10, x11, [x1]
    c094:	a93c348c 	stp	x12, x13, [x4, #-64]
    c098:	a9031402 	stp	x2, x5, [x0, #48]
    c09c:	a9021c06 	stp	x6, x7, [x0, #32]
    c0a0:	a9012408 	stp	x8, x9, [x0, #16]
    c0a4:	a9002c0a 	stp	x10, x11, [x0]
    c0a8:	d65f03c0 	ret
    c0ac:	00000000 	.inst	0x00000000 ; undefined

000000000000c0b0 <_read_r>:
    c0b0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    c0b4:	2a0103e4 	mov	w4, w1
    c0b8:	aa0203e1 	mov	x1, x2
    c0bc:	aa0303e2 	mov	x2, x3
    c0c0:	910003fd 	mov	x29, sp
    c0c4:	a90153f3 	stp	x19, x20, [sp, #16]
    c0c8:	d00000d3 	adrp	x19, 26000 <blue.21472+0x3d40>
    c0cc:	aa0003f4 	mov	x20, x0
    c0d0:	2a0403e0 	mov	w0, w4
    c0d4:	b9031a7f 	str	wzr, [x19, #792]
    c0d8:	940002e2 	bl	cc60 <_read>
    c0dc:	93407c00 	sxtw	x0, w0
    c0e0:	b100041f 	cmn	x0, #0x1
    c0e4:	54000080 	b.eq	c0f4 <_read_r+0x44>  // b.none
    c0e8:	a94153f3 	ldp	x19, x20, [sp, #16]
    c0ec:	a8c27bfd 	ldp	x29, x30, [sp], #32
    c0f0:	d65f03c0 	ret
    c0f4:	b9431a61 	ldr	w1, [x19, #792]
    c0f8:	34ffff81 	cbz	w1, c0e8 <_read_r+0x38>
    c0fc:	b9000281 	str	w1, [x20]
    c100:	a94153f3 	ldp	x19, x20, [sp, #16]
    c104:	a8c27bfd 	ldp	x29, x30, [sp], #32
    c108:	d65f03c0 	ret
    c10c:	00000000 	.inst	0x00000000 ; undefined

000000000000c110 <_realloc_r>:
    c110:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
    c114:	910003fd 	mov	x29, sp
    c118:	f90013f5 	str	x21, [sp, #32]
    c11c:	aa0203f5 	mov	x21, x2
    c120:	b4000ca1 	cbz	x1, c2b4 <_realloc_r+0x1a4>
    c124:	a902dfb6 	stp	x22, x23, [x29, #40]
    c128:	aa0103f7 	mov	x23, x1
    c12c:	a90153b3 	stp	x19, x20, [x29, #16]
    c130:	aa0003f6 	mov	x22, x0
    c134:	91005c53 	add	x19, x2, #0x17
    c138:	f9001fb8 	str	x24, [x29, #56]
    c13c:	97fff1bd 	bl	8830 <__malloc_lock>
    c140:	d10042f8 	sub	x24, x23, #0x10
    c144:	f85f82e0 	ldur	x0, [x23, #-8]
    c148:	f100ba7f 	cmp	x19, #0x2e
    c14c:	927ef414 	and	x20, x0, #0xfffffffffffffffc
    c150:	54000688 	b.hi	c220 <_realloc_r+0x110>  // b.pmore
    c154:	52800001 	mov	w1, #0x0                   	// #0
    c158:	d2800413 	mov	x19, #0x20                  	// #32
    c15c:	7100003f 	cmp	w1, #0x0
    c160:	fa550260 	ccmp	x19, x21, #0x0, eq  // eq = none
    c164:	54001be3 	b.cc	c4e0 <_realloc_r+0x3d0>  // b.lo, b.ul, b.last
    c168:	f90023b9 	str	x25, [x29, #64]
    c16c:	eb13029f 	cmp	x20, x19
    c170:	8b140319 	add	x25, x24, x20
    c174:	5400076a 	b.ge	c260 <_realloc_r+0x150>  // b.tcont
    c178:	f90027ba 	str	x26, [x29, #72]
    c17c:	b000001a 	adrp	x26, d000 <__trunctfdf2+0x290>
    c180:	913d2342 	add	x2, x26, #0xf48
    c184:	f9400841 	ldr	x1, [x2, #16]
    c188:	eb19003f 	cmp	x1, x25
    c18c:	54000b40 	b.eq	c2f4 <_realloc_r+0x1e4>  // b.none
    c190:	f9400721 	ldr	x1, [x25, #8]
    c194:	927ff822 	and	x2, x1, #0xfffffffffffffffe
    c198:	8b020322 	add	x2, x25, x2
    c19c:	f9400442 	ldr	x2, [x2, #8]
    c1a0:	360004a2 	tbz	w2, #0, c234 <_realloc_r+0x124>
    c1a4:	36001500 	tbz	w0, #0, c444 <_realloc_r+0x334>
    c1a8:	aa1503e1 	mov	x1, x21
    c1ac:	aa1603e0 	mov	x0, x22
    c1b0:	97ffeef8 	bl	7d90 <_malloc_r>
    c1b4:	aa0003f5 	mov	x21, x0
    c1b8:	b40002c0 	cbz	x0, c210 <_realloc_r+0x100>
    c1bc:	f85f82e1 	ldur	x1, [x23, #-8]
    c1c0:	d1004002 	sub	x2, x0, #0x10
    c1c4:	927ff821 	and	x1, x1, #0xfffffffffffffffe
    c1c8:	8b010301 	add	x1, x24, x1
    c1cc:	eb02003f 	cmp	x1, x2
    c1d0:	54001a60 	b.eq	c51c <_realloc_r+0x40c>  // b.none
    c1d4:	d1002282 	sub	x2, x20, #0x8
    c1d8:	f101205f 	cmp	x2, #0x48
    c1dc:	54001ac8 	b.hi	c534 <_realloc_r+0x424>  // b.pmore
    c1e0:	f1009c5f 	cmp	x2, #0x27
    c1e4:	f94002e3 	ldr	x3, [x23]
    c1e8:	54001888 	b.hi	c4f8 <_realloc_r+0x3e8>  // b.pmore
    c1ec:	aa1703e1 	mov	x1, x23
    c1f0:	f9000003 	str	x3, [x0]
    c1f4:	f9400422 	ldr	x2, [x1, #8]
    c1f8:	f9000402 	str	x2, [x0, #8]
    c1fc:	f9400821 	ldr	x1, [x1, #16]
    c200:	f9000801 	str	x1, [x0, #16]
    c204:	aa1703e1 	mov	x1, x23
    c208:	aa1603e0 	mov	x0, x22
    c20c:	97ffed1b 	bl	7678 <_free_r>
    c210:	aa1603e0 	mov	x0, x22
    c214:	97fff189 	bl	8838 <__malloc_unlock>
    c218:	a9446bb9 	ldp	x25, x26, [x29, #64]
    c21c:	1400001f 	b	c298 <_realloc_r+0x188>
    c220:	927cee73 	and	x19, x19, #0xfffffffffffffff0
    c224:	b2407be1 	mov	x1, #0x7fffffff            	// #2147483647
    c228:	eb01027f 	cmp	x19, x1
    c22c:	1a9f97e1 	cset	w1, hi  // hi = pmore
    c230:	17ffffcb 	b	c15c <_realloc_r+0x4c>
    c234:	927ef421 	and	x1, x1, #0xfffffffffffffffc
    c238:	8b010282 	add	x2, x20, x1
    c23c:	eb02027f 	cmp	x19, x2
    c240:	54000c8c 	b.gt	c3d0 <_realloc_r+0x2c0>
    c244:	a9410321 	ldp	x1, x0, [x25, #16]
    c248:	aa0203f4 	mov	x20, x2
    c24c:	f94027ba 	ldr	x26, [x29, #72]
    c250:	8b020319 	add	x25, x24, x2
    c254:	f9000c20 	str	x0, [x1, #24]
    c258:	f9000801 	str	x1, [x0, #16]
    c25c:	d503201f 	nop
    c260:	f9400702 	ldr	x2, [x24, #8]
    c264:	cb130280 	sub	x0, x20, x19
    c268:	f1007c1f 	cmp	x0, #0x1f
    c26c:	92400042 	and	x2, x2, #0x1
    c270:	540002a8 	b.hi	c2c4 <_realloc_r+0x1b4>  // b.pmore
    c274:	aa020282 	orr	x2, x20, x2
    c278:	f9000702 	str	x2, [x24, #8]
    c27c:	f9400720 	ldr	x0, [x25, #8]
    c280:	b2400000 	orr	x0, x0, #0x1
    c284:	f9000720 	str	x0, [x25, #8]
    c288:	aa1603e0 	mov	x0, x22
    c28c:	97fff16b 	bl	8838 <__malloc_unlock>
    c290:	f94023b9 	ldr	x25, [x29, #64]
    c294:	aa1703f5 	mov	x21, x23
    c298:	aa1503e0 	mov	x0, x21
    c29c:	f9401fb8 	ldr	x24, [x29, #56]
    c2a0:	a94153b3 	ldp	x19, x20, [x29, #16]
    c2a4:	a942dfb6 	ldp	x22, x23, [x29, #40]
    c2a8:	f94013f5 	ldr	x21, [sp, #32]
    c2ac:	a8c67bfd 	ldp	x29, x30, [sp], #96
    c2b0:	d65f03c0 	ret
    c2b4:	f94013f5 	ldr	x21, [sp, #32]
    c2b8:	aa0203e1 	mov	x1, x2
    c2bc:	a8c67bfd 	ldp	x29, x30, [sp], #96
    c2c0:	17ffeeb4 	b	7d90 <_malloc_r>
    c2c4:	8b130303 	add	x3, x24, x19
    c2c8:	aa020262 	orr	x2, x19, x2
    c2cc:	f9000702 	str	x2, [x24, #8]
    c2d0:	b2400002 	orr	x2, x0, #0x1
    c2d4:	91004061 	add	x1, x3, #0x10
    c2d8:	aa1603e0 	mov	x0, x22
    c2dc:	f9000462 	str	x2, [x3, #8]
    c2e0:	f9400722 	ldr	x2, [x25, #8]
    c2e4:	b2400042 	orr	x2, x2, #0x1
    c2e8:	f9000722 	str	x2, [x25, #8]
    c2ec:	97ffece3 	bl	7678 <_free_r>
    c2f0:	17ffffe6 	b	c288 <_realloc_r+0x178>
    c2f4:	f9400421 	ldr	x1, [x1, #8]
    c2f8:	91008263 	add	x3, x19, #0x20
    c2fc:	927ef421 	and	x1, x1, #0xfffffffffffffffc
    c300:	8b140021 	add	x1, x1, x20
    c304:	eb03003f 	cmp	x1, x3
    c308:	540011ca 	b.ge	c540 <_realloc_r+0x430>  // b.tcont
    c30c:	3707f4e0 	tbnz	w0, #0, c1a8 <_realloc_r+0x98>
    c310:	f9002bbb 	str	x27, [x29, #80]
    c314:	f85f02fb 	ldur	x27, [x23, #-16]
    c318:	cb1b031b 	sub	x27, x24, x27
    c31c:	f9400760 	ldr	x0, [x27, #8]
    c320:	927ef400 	and	x0, x0, #0xfffffffffffffffc
    c324:	8b000039 	add	x25, x1, x0
    c328:	eb19007f 	cmp	x3, x25
    c32c:	5400096c 	b.gt	c458 <_realloc_r+0x348>
    c330:	aa1b03f5 	mov	x21, x27
    c334:	f9400f60 	ldr	x0, [x27, #24]
    c338:	d1002282 	sub	x2, x20, #0x8
    c33c:	f101205f 	cmp	x2, #0x48
    c340:	f8410ea1 	ldr	x1, [x21, #16]!
    c344:	f9000c20 	str	x0, [x1, #24]
    c348:	f9000801 	str	x1, [x0, #16]
    c34c:	540015e8 	b.hi	c608 <_realloc_r+0x4f8>  // b.pmore
    c350:	aa1503e0 	mov	x0, x21
    c354:	f1009c5f 	cmp	x2, #0x27
    c358:	f94002e1 	ldr	x1, [x23]
    c35c:	54000129 	b.ls	c380 <_realloc_r+0x270>  // b.plast
    c360:	f9000b61 	str	x1, [x27, #16]
    c364:	f100dc5f 	cmp	x2, #0x37
    c368:	f94006e0 	ldr	x0, [x23, #8]
    c36c:	f9000f60 	str	x0, [x27, #24]
    c370:	54001548 	b.hi	c618 <_realloc_r+0x508>  // b.pmore
    c374:	f9400ae1 	ldr	x1, [x23, #16]
    c378:	91008360 	add	x0, x27, #0x20
    c37c:	910042f7 	add	x23, x23, #0x10
    c380:	f9000001 	str	x1, [x0]
    c384:	f94006e1 	ldr	x1, [x23, #8]
    c388:	f9000401 	str	x1, [x0, #8]
    c38c:	f9400ae1 	ldr	x1, [x23, #16]
    c390:	f9000801 	str	x1, [x0, #16]
    c394:	913d235a 	add	x26, x26, #0xf48
    c398:	8b130362 	add	x2, x27, x19
    c39c:	cb130321 	sub	x1, x25, x19
    c3a0:	aa1603e0 	mov	x0, x22
    c3a4:	b2400021 	orr	x1, x1, #0x1
    c3a8:	f9000b42 	str	x2, [x26, #16]
    c3ac:	f9000441 	str	x1, [x2, #8]
    c3b0:	f9400761 	ldr	x1, [x27, #8]
    c3b4:	92400021 	and	x1, x1, #0x1
    c3b8:	aa130033 	orr	x19, x1, x19
    c3bc:	f9000773 	str	x19, [x27, #8]
    c3c0:	97fff11e 	bl	8838 <__malloc_unlock>
    c3c4:	f9402bbb 	ldr	x27, [x29, #80]
    c3c8:	a9446bb9 	ldp	x25, x26, [x29, #64]
    c3cc:	17ffffb3 	b	c298 <_realloc_r+0x188>
    c3d0:	f9002bbb 	str	x27, [x29, #80]
    c3d4:	370008e0 	tbnz	w0, #0, c4f0 <_realloc_r+0x3e0>
    c3d8:	f85f02fb 	ldur	x27, [x23, #-16]
    c3dc:	cb1b031b 	sub	x27, x24, x27
    c3e0:	f9400760 	ldr	x0, [x27, #8]
    c3e4:	927ef400 	and	x0, x0, #0xfffffffffffffffc
    c3e8:	8b010001 	add	x1, x0, x1
    c3ec:	8b14003a 	add	x26, x1, x20
    c3f0:	eb1a027f 	cmp	x19, x26
    c3f4:	5400032c 	b.gt	c458 <_realloc_r+0x348>
    c3f8:	a9410723 	ldp	x3, x1, [x25, #16]
    c3fc:	f9000c61 	str	x1, [x3, #24]
    c400:	aa1b03e0 	mov	x0, x27
    c404:	d1002282 	sub	x2, x20, #0x8
    c408:	f101205f 	cmp	x2, #0x48
    c40c:	8b1a0379 	add	x25, x27, x26
    c410:	f9000823 	str	x3, [x1, #16]
    c414:	f9400f61 	ldr	x1, [x27, #24]
    c418:	f8410c03 	ldr	x3, [x0, #16]!
    c41c:	f9000c61 	str	x1, [x3, #24]
    c420:	f9000823 	str	x3, [x1, #16]
    c424:	54000329 	b.ls	c488 <_realloc_r+0x378>  // b.plast
    c428:	aa1703e1 	mov	x1, x23
    c42c:	aa1a03f4 	mov	x20, x26
    c430:	aa0003f7 	mov	x23, x0
    c434:	aa1b03f8 	mov	x24, x27
    c438:	97fffef2 	bl	c000 <memmove>
    c43c:	a944efba 	ldp	x26, x27, [x29, #72]
    c440:	17ffff88 	b	c260 <_realloc_r+0x150>
    c444:	f9002bbb 	str	x27, [x29, #80]
    c448:	f85f02fb 	ldur	x27, [x23, #-16]
    c44c:	cb1b031b 	sub	x27, x24, x27
    c450:	f9400760 	ldr	x0, [x27, #8]
    c454:	927ef400 	and	x0, x0, #0xfffffffffffffffc
    c458:	8b00029a 	add	x26, x20, x0
    c45c:	eb1a027f 	cmp	x19, x26
    c460:	5400048c 	b.gt	c4f0 <_realloc_r+0x3e0>
    c464:	aa1b03e0 	mov	x0, x27
    c468:	f9400f61 	ldr	x1, [x27, #24]
    c46c:	d1002282 	sub	x2, x20, #0x8
    c470:	8b1a0379 	add	x25, x27, x26
    c474:	f101205f 	cmp	x2, #0x48
    c478:	f8410c03 	ldr	x3, [x0, #16]!
    c47c:	f9000c61 	str	x1, [x3, #24]
    c480:	f9000823 	str	x3, [x1, #16]
    c484:	54fffd28 	b.hi	c428 <_realloc_r+0x318>  // b.pmore
    c488:	aa0003e1 	mov	x1, x0
    c48c:	f1009c5f 	cmp	x2, #0x27
    c490:	f94002e3 	ldr	x3, [x23]
    c494:	54000129 	b.ls	c4b8 <_realloc_r+0x3a8>  // b.plast
    c498:	f9000b63 	str	x3, [x27, #16]
    c49c:	f100dc5f 	cmp	x2, #0x37
    c4a0:	f94006e1 	ldr	x1, [x23, #8]
    c4a4:	f9000f61 	str	x1, [x27, #24]
    c4a8:	54000688 	b.hi	c578 <_realloc_r+0x468>  // b.pmore
    c4ac:	f9400ae3 	ldr	x3, [x23, #16]
    c4b0:	91008361 	add	x1, x27, #0x20
    c4b4:	910042f7 	add	x23, x23, #0x10
    c4b8:	aa1a03f4 	mov	x20, x26
    c4bc:	aa1b03f8 	mov	x24, x27
    c4c0:	a944efba 	ldp	x26, x27, [x29, #72]
    c4c4:	f9000023 	str	x3, [x1]
    c4c8:	f94006e2 	ldr	x2, [x23, #8]
    c4cc:	f9000422 	str	x2, [x1, #8]
    c4d0:	f9400ae2 	ldr	x2, [x23, #16]
    c4d4:	aa0003f7 	mov	x23, x0
    c4d8:	f9000822 	str	x2, [x1, #16]
    c4dc:	17ffff61 	b	c260 <_realloc_r+0x150>
    c4e0:	52800180 	mov	w0, #0xc                   	// #12
    c4e4:	d2800015 	mov	x21, #0x0                   	// #0
    c4e8:	b90002c0 	str	w0, [x22]
    c4ec:	17ffff6b 	b	c298 <_realloc_r+0x188>
    c4f0:	f9402bbb 	ldr	x27, [x29, #80]
    c4f4:	17ffff2d 	b	c1a8 <_realloc_r+0x98>
    c4f8:	f9000003 	str	x3, [x0]
    c4fc:	f100dc5f 	cmp	x2, #0x37
    c500:	f94006e0 	ldr	x0, [x23, #8]
    c504:	f90006a0 	str	x0, [x21, #8]
    c508:	540004c8 	b.hi	c5a0 <_realloc_r+0x490>  // b.pmore
    c50c:	910042e1 	add	x1, x23, #0x10
    c510:	910042a0 	add	x0, x21, #0x10
    c514:	f9400ae3 	ldr	x3, [x23, #16]
    c518:	17ffff36 	b	c1f0 <_realloc_r+0xe0>
    c51c:	f9400420 	ldr	x0, [x1, #8]
    c520:	f94027ba 	ldr	x26, [x29, #72]
    c524:	927ef400 	and	x0, x0, #0xfffffffffffffffc
    c528:	8b000294 	add	x20, x20, x0
    c52c:	8b140319 	add	x25, x24, x20
    c530:	17ffff4c 	b	c260 <_realloc_r+0x150>
    c534:	aa1703e1 	mov	x1, x23
    c538:	97fffeb2 	bl	c000 <memmove>
    c53c:	17ffff32 	b	c204 <_realloc_r+0xf4>
    c540:	8b130318 	add	x24, x24, x19
    c544:	cb130021 	sub	x1, x1, x19
    c548:	f9000858 	str	x24, [x2, #16]
    c54c:	b2400021 	orr	x1, x1, #0x1
    c550:	aa1603e0 	mov	x0, x22
    c554:	aa1703f5 	mov	x21, x23
    c558:	f9000701 	str	x1, [x24, #8]
    c55c:	f85f82e1 	ldur	x1, [x23, #-8]
    c560:	92400021 	and	x1, x1, #0x1
    c564:	aa130033 	orr	x19, x1, x19
    c568:	f81f82f3 	stur	x19, [x23, #-8]
    c56c:	97fff0b3 	bl	8838 <__malloc_unlock>
    c570:	a9446bb9 	ldp	x25, x26, [x29, #64]
    c574:	17ffff49 	b	c298 <_realloc_r+0x188>
    c578:	f9400ae1 	ldr	x1, [x23, #16]
    c57c:	f101205f 	cmp	x2, #0x48
    c580:	f9001361 	str	x1, [x27, #32]
    c584:	f9400ee1 	ldr	x1, [x23, #24]
    c588:	f9001761 	str	x1, [x27, #40]
    c58c:	540001e0 	b.eq	c5c8 <_realloc_r+0x4b8>  // b.none
    c590:	f94012e3 	ldr	x3, [x23, #32]
    c594:	9100c361 	add	x1, x27, #0x30
    c598:	910082f7 	add	x23, x23, #0x20
    c59c:	17ffffc7 	b	c4b8 <_realloc_r+0x3a8>
    c5a0:	f9400ae0 	ldr	x0, [x23, #16]
    c5a4:	f101205f 	cmp	x2, #0x48
    c5a8:	f9000aa0 	str	x0, [x21, #16]
    c5ac:	f9400ee0 	ldr	x0, [x23, #24]
    c5b0:	f9000ea0 	str	x0, [x21, #24]
    c5b4:	540001a0 	b.eq	c5e8 <_realloc_r+0x4d8>  // b.none
    c5b8:	910082e1 	add	x1, x23, #0x20
    c5bc:	910082a0 	add	x0, x21, #0x20
    c5c0:	f94012e3 	ldr	x3, [x23, #32]
    c5c4:	17ffff0b 	b	c1f0 <_realloc_r+0xe0>
    c5c8:	f94012e2 	ldr	x2, [x23, #32]
    c5cc:	91010361 	add	x1, x27, #0x40
    c5d0:	f9001b62 	str	x2, [x27, #48]
    c5d4:	9100c2f7 	add	x23, x23, #0x30
    c5d8:	f85f82e2 	ldur	x2, [x23, #-8]
    c5dc:	f9001f62 	str	x2, [x27, #56]
    c5e0:	f94002e3 	ldr	x3, [x23]
    c5e4:	17ffffb5 	b	c4b8 <_realloc_r+0x3a8>
    c5e8:	f94012e0 	ldr	x0, [x23, #32]
    c5ec:	9100c2e1 	add	x1, x23, #0x30
    c5f0:	f90012a0 	str	x0, [x21, #32]
    c5f4:	9100c2a0 	add	x0, x21, #0x30
    c5f8:	f94016e2 	ldr	x2, [x23, #40]
    c5fc:	f90016a2 	str	x2, [x21, #40]
    c600:	f9401ae3 	ldr	x3, [x23, #48]
    c604:	17fffefb 	b	c1f0 <_realloc_r+0xe0>
    c608:	aa1703e1 	mov	x1, x23
    c60c:	aa1503e0 	mov	x0, x21
    c610:	97fffe7c 	bl	c000 <memmove>
    c614:	17ffff60 	b	c394 <_realloc_r+0x284>
    c618:	f9400ae0 	ldr	x0, [x23, #16]
    c61c:	f101205f 	cmp	x2, #0x48
    c620:	f9001360 	str	x0, [x27, #32]
    c624:	f9400ee0 	ldr	x0, [x23, #24]
    c628:	f9001760 	str	x0, [x27, #40]
    c62c:	f94012e1 	ldr	x1, [x23, #32]
    c630:	54000080 	b.eq	c640 <_realloc_r+0x530>  // b.none
    c634:	9100c360 	add	x0, x27, #0x30
    c638:	910082f7 	add	x23, x23, #0x20
    c63c:	17ffff51 	b	c380 <_realloc_r+0x270>
    c640:	f9001b61 	str	x1, [x27, #48]
    c644:	91010360 	add	x0, x27, #0x40
    c648:	9100c2f7 	add	x23, x23, #0x30
    c64c:	f85f82e1 	ldur	x1, [x23, #-8]
    c650:	f9001f61 	str	x1, [x27, #56]
    c654:	f94002e1 	ldr	x1, [x23]
    c658:	17ffff4a 	b	c380 <_realloc_r+0x270>
    c65c:	00000000 	.inst	0x00000000 ; undefined

000000000000c660 <cleanup_glue>:
    c660:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    c664:	910003fd 	mov	x29, sp
    c668:	a90153f3 	stp	x19, x20, [sp, #16]
    c66c:	aa0103f3 	mov	x19, x1
    c670:	f9400021 	ldr	x1, [x1]
    c674:	aa0003f4 	mov	x20, x0
    c678:	b50000c1 	cbnz	x1, c690 <cleanup_glue+0x30>
    c67c:	aa1303e1 	mov	x1, x19
    c680:	aa1403e0 	mov	x0, x20
    c684:	a94153f3 	ldp	x19, x20, [sp, #16]
    c688:	a8c27bfd 	ldp	x29, x30, [sp], #32
    c68c:	17ffebfb 	b	7678 <_free_r>
    c690:	97fffff4 	bl	c660 <cleanup_glue>
    c694:	aa1303e1 	mov	x1, x19
    c698:	aa1403e0 	mov	x0, x20
    c69c:	a94153f3 	ldp	x19, x20, [sp, #16]
    c6a0:	a8c27bfd 	ldp	x29, x30, [sp], #32
    c6a4:	17ffebf5 	b	7678 <_free_r>

000000000000c6a8 <_reclaim_reent>:
    c6a8:	b0000001 	adrp	x1, d000 <__trunctfdf2+0x290>
    c6ac:	f943a821 	ldr	x1, [x1, #1872]
    c6b0:	eb00003f 	cmp	x1, x0
    c6b4:	54000760 	b.eq	c7a0 <_reclaim_reent+0xf8>  // b.none
    c6b8:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    c6bc:	910003fd 	mov	x29, sp
    c6c0:	a90153f3 	stp	x19, x20, [sp, #16]
    c6c4:	aa0003f4 	mov	x20, x0
    c6c8:	f9403c00 	ldr	x0, [x0, #120]
    c6cc:	f90013f5 	str	x21, [sp, #32]
    c6d0:	b4000200 	cbz	x0, c710 <_reclaim_reent+0x68>
    c6d4:	d2800015 	mov	x21, #0x0                   	// #0
    c6d8:	f8756801 	ldr	x1, [x0, x21]
    c6dc:	b40000e1 	cbz	x1, c6f8 <_reclaim_reent+0x50>
    c6e0:	f9400033 	ldr	x19, [x1]
    c6e4:	aa1403e0 	mov	x0, x20
    c6e8:	97ffebe4 	bl	7678 <_free_r>
    c6ec:	aa1303e1 	mov	x1, x19
    c6f0:	b5ffff93 	cbnz	x19, c6e0 <_reclaim_reent+0x38>
    c6f4:	f9403e80 	ldr	x0, [x20, #120]
    c6f8:	910022b5 	add	x21, x21, #0x8
    c6fc:	f10802bf 	cmp	x21, #0x200
    c700:	54fffec1 	b.ne	c6d8 <_reclaim_reent+0x30>  // b.any
    c704:	aa0003e1 	mov	x1, x0
    c708:	aa1403e0 	mov	x0, x20
    c70c:	97ffebdb 	bl	7678 <_free_r>
    c710:	f9403281 	ldr	x1, [x20, #96]
    c714:	b4000061 	cbz	x1, c720 <_reclaim_reent+0x78>
    c718:	aa1403e0 	mov	x0, x20
    c71c:	97ffebd7 	bl	7678 <_free_r>
    c720:	f940fe81 	ldr	x1, [x20, #504]
    c724:	b4000161 	cbz	x1, c750 <_reclaim_reent+0xa8>
    c728:	91080295 	add	x21, x20, #0x200
    c72c:	eb15003f 	cmp	x1, x21
    c730:	54000100 	b.eq	c750 <_reclaim_reent+0xa8>  // b.none
    c734:	d503201f 	nop
    c738:	f9400033 	ldr	x19, [x1]
    c73c:	aa1403e0 	mov	x0, x20
    c740:	97ffebce 	bl	7678 <_free_r>
    c744:	aa1303e1 	mov	x1, x19
    c748:	eb1302bf 	cmp	x21, x19
    c74c:	54ffff61 	b.ne	c738 <_reclaim_reent+0x90>  // b.any
    c750:	f9404681 	ldr	x1, [x20, #136]
    c754:	b4000061 	cbz	x1, c760 <_reclaim_reent+0xb8>
    c758:	aa1403e0 	mov	x0, x20
    c75c:	97ffebc7 	bl	7678 <_free_r>
    c760:	b9405280 	ldr	w0, [x20, #80]
    c764:	34000160 	cbz	w0, c790 <_reclaim_reent+0xe8>
    c768:	f9402e81 	ldr	x1, [x20, #88]
    c76c:	aa1403e0 	mov	x0, x20
    c770:	d63f0020 	blr	x1
    c774:	f9429281 	ldr	x1, [x20, #1312]
    c778:	b40000c1 	cbz	x1, c790 <_reclaim_reent+0xe8>
    c77c:	aa1403e0 	mov	x0, x20
    c780:	f94013f5 	ldr	x21, [sp, #32]
    c784:	a94153f3 	ldp	x19, x20, [sp, #16]
    c788:	a8c37bfd 	ldp	x29, x30, [sp], #48
    c78c:	17ffffb5 	b	c660 <cleanup_glue>
    c790:	a94153f3 	ldp	x19, x20, [sp, #16]
    c794:	f94013f5 	ldr	x21, [sp, #32]
    c798:	a8c37bfd 	ldp	x29, x30, [sp], #48
    c79c:	d65f03c0 	ret
    c7a0:	d65f03c0 	ret
    c7a4:	00000000 	.inst	0x00000000 ; undefined

000000000000c7a8 <__swbuf_r>:
    c7a8:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    c7ac:	910003fd 	mov	x29, sp
    c7b0:	a90153f3 	stp	x19, x20, [sp, #16]
    c7b4:	2a0103f4 	mov	w20, w1
    c7b8:	f90013f5 	str	x21, [sp, #32]
    c7bc:	aa0203f3 	mov	x19, x2
    c7c0:	aa0003f5 	mov	x21, x0
    c7c4:	b4000060 	cbz	x0, c7d0 <__swbuf_r+0x28>
    c7c8:	b9405001 	ldr	w1, [x0, #80]
    c7cc:	34000841 	cbz	w1, c8d4 <__swbuf_r+0x12c>
    c7d0:	b9402a61 	ldr	w1, [x19, #40]
    c7d4:	79c02260 	ldrsh	w0, [x19, #16]
    c7d8:	b9000e61 	str	w1, [x19, #12]
    c7dc:	12003c01 	and	w1, w0, #0xffff
    c7e0:	36180421 	tbz	w1, #3, c864 <__swbuf_r+0xbc>
    c7e4:	f9400e62 	ldr	x2, [x19, #24]
    c7e8:	b40003e2 	cbz	x2, c864 <__swbuf_r+0xbc>
    c7ec:	f90017b6 	str	x22, [x29, #40]
    c7f0:	12001e96 	and	w22, w20, #0xff
    c7f4:	12001e94 	and	w20, w20, #0xff
    c7f8:	366804c1 	tbz	w1, #13, c890 <__swbuf_r+0xe8>
    c7fc:	f9400260 	ldr	x0, [x19]
    c800:	b9402261 	ldr	w1, [x19, #32]
    c804:	cb020002 	sub	x2, x0, x2
    c808:	6b02003f 	cmp	w1, w2
    c80c:	5400056d 	b.le	c8b8 <__swbuf_r+0x110>
    c810:	11000442 	add	w2, w2, #0x1
    c814:	b9400e61 	ldr	w1, [x19, #12]
    c818:	91000403 	add	x3, x0, #0x1
    c81c:	f9000263 	str	x3, [x19]
    c820:	51000421 	sub	w1, w1, #0x1
    c824:	b9000e61 	str	w1, [x19, #12]
    c828:	39000016 	strb	w22, [x0]
    c82c:	b9402260 	ldr	w0, [x19, #32]
    c830:	6b02001f 	cmp	w0, w2
    c834:	54000540 	b.eq	c8dc <__swbuf_r+0x134>  // b.none
    c838:	39404260 	ldrb	w0, [x19, #16]
    c83c:	71002a9f 	cmp	w20, #0xa
    c840:	12000000 	and	w0, w0, #0x1
    c844:	1a9f0000 	csel	w0, w0, wzr, eq  // eq = none
    c848:	350004a0 	cbnz	w0, c8dc <__swbuf_r+0x134>
    c84c:	f94017b6 	ldr	x22, [x29, #40]
    c850:	2a1403e0 	mov	w0, w20
    c854:	f94013f5 	ldr	x21, [sp, #32]
    c858:	a94153f3 	ldp	x19, x20, [sp, #16]
    c85c:	a8c37bfd 	ldp	x29, x30, [sp], #48
    c860:	d65f03c0 	ret
    c864:	aa1303e1 	mov	x1, x19
    c868:	aa1503e0 	mov	x0, x21
    c86c:	97ffe3f9 	bl	5850 <__swsetup_r>
    c870:	35000400 	cbnz	w0, c8f0 <__swbuf_r+0x148>
    c874:	79c02260 	ldrsh	w0, [x19, #16]
    c878:	f9400e62 	ldr	x2, [x19, #24]
    c87c:	f90017b6 	str	x22, [x29, #40]
    c880:	12003c01 	and	w1, w0, #0xffff
    c884:	12001e96 	and	w22, w20, #0xff
    c888:	12001e94 	and	w20, w20, #0xff
    c88c:	376ffb81 	tbnz	w1, #13, c7fc <__swbuf_r+0x54>
    c890:	b940ae61 	ldr	w1, [x19, #172]
    c894:	32130000 	orr	w0, w0, #0x2000
    c898:	79002260 	strh	w0, [x19, #16]
    c89c:	12127820 	and	w0, w1, #0xffffdfff
    c8a0:	b900ae60 	str	w0, [x19, #172]
    c8a4:	f9400260 	ldr	x0, [x19]
    c8a8:	b9402261 	ldr	w1, [x19, #32]
    c8ac:	cb020002 	sub	x2, x0, x2
    c8b0:	6b02003f 	cmp	w1, w2
    c8b4:	54fffaec 	b.gt	c810 <__swbuf_r+0x68>
    c8b8:	aa1303e1 	mov	x1, x19
    c8bc:	aa1503e0 	mov	x0, x21
    c8c0:	97ffea3e 	bl	71b8 <_fflush_r>
    c8c4:	35000140 	cbnz	w0, c8ec <__swbuf_r+0x144>
    c8c8:	52800022 	mov	w2, #0x1                   	// #1
    c8cc:	f9400260 	ldr	x0, [x19]
    c8d0:	17ffffd1 	b	c814 <__swbuf_r+0x6c>
    c8d4:	97ffeb0d 	bl	7508 <__sinit>
    c8d8:	17ffffbe 	b	c7d0 <__swbuf_r+0x28>
    c8dc:	aa1303e1 	mov	x1, x19
    c8e0:	aa1503e0 	mov	x0, x21
    c8e4:	97ffea35 	bl	71b8 <_fflush_r>
    c8e8:	34fffb20 	cbz	w0, c84c <__swbuf_r+0xa4>
    c8ec:	f94017b6 	ldr	x22, [x29, #40]
    c8f0:	12800014 	mov	w20, #0xffffffff            	// #-1
    c8f4:	17ffffd7 	b	c850 <__swbuf_r+0xa8>

000000000000c8f8 <__swbuf>:
    c8f8:	b0000003 	adrp	x3, d000 <__trunctfdf2+0x290>
    c8fc:	aa0103e2 	mov	x2, x1
    c900:	2a0003e1 	mov	w1, w0
    c904:	f943a860 	ldr	x0, [x3, #1872]
    c908:	17ffffa8 	b	c7a8 <__swbuf_r>
    c90c:	00000000 	.inst	0x00000000 ; undefined

000000000000c910 <_wcrtomb_r>:
    c910:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
    c914:	d0000004 	adrp	x4, e000 <__malloc_av_+0xb8>
    c918:	910003fd 	mov	x29, sp
    c91c:	a901d7f4 	stp	x20, x21, [sp, #24]
    c920:	aa0003f4 	mov	x20, x0
    c924:	f90017f6 	str	x22, [sp, #40]
    c928:	aa0303f5 	mov	x21, x3
    c92c:	f943b496 	ldr	x22, [x4, #1896]
    c930:	b40002c1 	cbz	x1, c988 <_wcrtomb_r+0x78>
    c934:	f9000bb3 	str	x19, [x29, #16]
    c938:	aa0103f3 	mov	x19, x1
    c93c:	f9001bb7 	str	x23, [x29, #48]
    c940:	2a0203f7 	mov	w23, w2
    c944:	97ffec8f 	bl	7b80 <__locale_charset>
    c948:	aa0003e3 	mov	x3, x0
    c94c:	aa1303e1 	mov	x1, x19
    c950:	2a1703e2 	mov	w2, w23
    c954:	aa1503e4 	mov	x4, x21
    c958:	aa1403e0 	mov	x0, x20
    c95c:	d63f02c0 	blr	x22
    c960:	f9400bb3 	ldr	x19, [x29, #16]
    c964:	f9401bb7 	ldr	x23, [x29, #48]
    c968:	93407c01 	sxtw	x1, w0
    c96c:	3100041f 	cmn	w0, #0x1
    c970:	54000200 	b.eq	c9b0 <_wcrtomb_r+0xa0>  // b.none
    c974:	a941d7f4 	ldp	x20, x21, [sp, #24]
    c978:	aa0103e0 	mov	x0, x1
    c97c:	f94017f6 	ldr	x22, [sp, #40]
    c980:	a8c57bfd 	ldp	x29, x30, [sp], #80
    c984:	d65f03c0 	ret
    c988:	97ffec7e 	bl	7b80 <__locale_charset>
    c98c:	aa0003e3 	mov	x3, x0
    c990:	910103a1 	add	x1, x29, #0x40
    c994:	aa1503e4 	mov	x4, x21
    c998:	aa1403e0 	mov	x0, x20
    c99c:	52800002 	mov	w2, #0x0                   	// #0
    c9a0:	d63f02c0 	blr	x22
    c9a4:	93407c01 	sxtw	x1, w0
    c9a8:	3100041f 	cmn	w0, #0x1
    c9ac:	54fffe41 	b.ne	c974 <_wcrtomb_r+0x64>  // b.any
    c9b0:	b90002bf 	str	wzr, [x21]
    c9b4:	52801140 	mov	w0, #0x8a                  	// #138
    c9b8:	b9000280 	str	w0, [x20]
    c9bc:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
    c9c0:	a941d7f4 	ldp	x20, x21, [sp, #24]
    c9c4:	aa0103e0 	mov	x0, x1
    c9c8:	f94017f6 	ldr	x22, [sp, #40]
    c9cc:	a8c57bfd 	ldp	x29, x30, [sp], #80
    c9d0:	d65f03c0 	ret
    c9d4:	d503201f 	nop

000000000000c9d8 <wcrtomb>:
    c9d8:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
    c9dc:	b0000004 	adrp	x4, d000 <__trunctfdf2+0x290>
    c9e0:	d0000003 	adrp	x3, e000 <__malloc_av_+0xb8>
    c9e4:	910003fd 	mov	x29, sp
    c9e8:	a901d7f4 	stp	x20, x21, [sp, #24]
    c9ec:	aa0203f5 	mov	x21, x2
    c9f0:	f90017f6 	str	x22, [sp, #40]
    c9f4:	f943a894 	ldr	x20, [x4, #1872]
    c9f8:	f943b476 	ldr	x22, [x3, #1896]
    c9fc:	b40002c0 	cbz	x0, ca54 <wcrtomb+0x7c>
    ca00:	f9000bb3 	str	x19, [x29, #16]
    ca04:	aa0003f3 	mov	x19, x0
    ca08:	f9001bb7 	str	x23, [x29, #48]
    ca0c:	2a0103f7 	mov	w23, w1
    ca10:	97ffec5c 	bl	7b80 <__locale_charset>
    ca14:	aa0003e3 	mov	x3, x0
    ca18:	aa1303e1 	mov	x1, x19
    ca1c:	2a1703e2 	mov	w2, w23
    ca20:	aa1503e4 	mov	x4, x21
    ca24:	aa1403e0 	mov	x0, x20
    ca28:	d63f02c0 	blr	x22
    ca2c:	f9400bb3 	ldr	x19, [x29, #16]
    ca30:	f9401bb7 	ldr	x23, [x29, #48]
    ca34:	93407c01 	sxtw	x1, w0
    ca38:	3100041f 	cmn	w0, #0x1
    ca3c:	54000200 	b.eq	ca7c <wcrtomb+0xa4>  // b.none
    ca40:	a941d7f4 	ldp	x20, x21, [sp, #24]
    ca44:	aa0103e0 	mov	x0, x1
    ca48:	f94017f6 	ldr	x22, [sp, #40]
    ca4c:	a8c57bfd 	ldp	x29, x30, [sp], #80
    ca50:	d65f03c0 	ret
    ca54:	97ffec4b 	bl	7b80 <__locale_charset>
    ca58:	aa0003e3 	mov	x3, x0
    ca5c:	910103a1 	add	x1, x29, #0x40
    ca60:	aa1503e4 	mov	x4, x21
    ca64:	aa1403e0 	mov	x0, x20
    ca68:	52800002 	mov	w2, #0x0                   	// #0
    ca6c:	d63f02c0 	blr	x22
    ca70:	93407c01 	sxtw	x1, w0
    ca74:	3100041f 	cmn	w0, #0x1
    ca78:	54fffe41 	b.ne	ca40 <wcrtomb+0x68>  // b.any
    ca7c:	b90002bf 	str	wzr, [x21]
    ca80:	52801140 	mov	w0, #0x8a                  	// #138
    ca84:	b9000280 	str	w0, [x20]
    ca88:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
    ca8c:	a941d7f4 	ldp	x20, x21, [sp, #24]
    ca90:	aa0103e0 	mov	x0, x1
    ca94:	f94017f6 	ldr	x22, [sp, #40]
    ca98:	a8c57bfd 	ldp	x29, x30, [sp], #80
    ca9c:	d65f03c0 	ret

000000000000caa0 <__ascii_wctomb>:
    caa0:	aa0003e3 	mov	x3, x0
    caa4:	52800000 	mov	w0, #0x0                   	// #0
    caa8:	b40000a1 	cbz	x1, cabc <__ascii_wctomb+0x1c>
    caac:	7103fc5f 	cmp	w2, #0xff
    cab0:	54000088 	b.hi	cac0 <__ascii_wctomb+0x20>  // b.pmore
    cab4:	39000022 	strb	w2, [x1]
    cab8:	52800020 	mov	w0, #0x1                   	// #1
    cabc:	d65f03c0 	ret
    cac0:	52801141 	mov	w1, #0x8a                  	// #138
    cac4:	12800000 	mov	w0, #0xffffffff            	// #-1
    cac8:	b9000061 	str	w1, [x3]
    cacc:	d65f03c0 	ret

000000000000cad0 <_wctomb_r>:
    cad0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    cad4:	d0000004 	adrp	x4, e000 <__malloc_av_+0xb8>
    cad8:	910003fd 	mov	x29, sp
    cadc:	a90153f3 	stp	x19, x20, [sp, #16]
    cae0:	aa0003f4 	mov	x20, x0
    cae4:	f943b493 	ldr	x19, [x4, #1896]
    cae8:	a9025bf5 	stp	x21, x22, [sp, #32]
    caec:	aa0103f5 	mov	x21, x1
    caf0:	f9001bf7 	str	x23, [sp, #48]
    caf4:	2a0203f6 	mov	w22, w2
    caf8:	aa0303f7 	mov	x23, x3
    cafc:	97ffec21 	bl	7b80 <__locale_charset>
    cb00:	aa1703e4 	mov	x4, x23
    cb04:	aa0003e3 	mov	x3, x0
    cb08:	2a1603e2 	mov	w2, w22
    cb0c:	aa1503e1 	mov	x1, x21
    cb10:	aa1403e0 	mov	x0, x20
    cb14:	aa1303e5 	mov	x5, x19
    cb18:	a94153f3 	ldp	x19, x20, [sp, #16]
    cb1c:	a9425bf5 	ldp	x21, x22, [sp, #32]
    cb20:	f9401bf7 	ldr	x23, [sp, #48]
    cb24:	a8c47bfd 	ldp	x29, x30, [sp], #64
    cb28:	d61f00a0 	br	x5
    cb2c:	00000000 	.inst	0x00000000 ; undefined

000000000000cb30 <_exit>:
    cb30:	14000000 	b	cb30 <_exit>
    cb34:	00000000 	.inst	0x00000000 ; undefined

000000000000cb38 <_sbrk>:
    cb38:	d00000c3 	adrp	x3, 26000 <blue.21472+0x3d40>
    cb3c:	f9418861 	ldr	x1, [x3, #784]
    cb40:	b4000181 	cbz	x1, cb70 <_sbrk+0x38>
    cb44:	8b20c020 	add	x0, x1, w0, sxtw
    cb48:	900000e2 	adrp	x2, 28000 <__bss_end__+0x1cc0>
    cb4c:	910d0042 	add	x2, x2, #0x340
    cb50:	eb02001f 	cmp	x0, x2
    cb54:	54000089 	b.ls	cb64 <_sbrk+0x2c>  // b.plast
    cb58:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
    cb5c:	aa0103e0 	mov	x0, x1
    cb60:	d65f03c0 	ret
    cb64:	f9018860 	str	x0, [x3, #784]
    cb68:	aa0103e0 	mov	x0, x1
    cb6c:	d65f03c0 	ret
    cb70:	d00000c2 	adrp	x2, 26000 <blue.21472+0x3d40>
    cb74:	910d0042 	add	x2, x2, #0x340
    cb78:	aa0203e1 	mov	x1, x2
    cb7c:	f9018862 	str	x2, [x3, #784]
    cb80:	17fffff1 	b	cb44 <_sbrk+0xc>
    cb84:	00000000 	.inst	0x00000000 ; undefined

000000000000cb88 <_close>:
    cb88:	52800000 	mov	w0, #0x0                   	// #0
    cb8c:	d65f03c0 	ret

000000000000cb90 <_fstat>:
    cb90:	52840002 	mov	w2, #0x2000                	// #8192
    cb94:	52800000 	mov	w0, #0x0                   	// #0
    cb98:	b9000422 	str	w2, [x1, #4]
    cb9c:	d65f03c0 	ret

000000000000cba0 <isatty>:
    cba0:	52800020 	mov	w0, #0x1                   	// #1
    cba4:	d65f03c0 	ret

000000000000cba8 <_isatty>:
    cba8:	52800020 	mov	w0, #0x1                   	// #1
    cbac:	d65f03c0 	ret

000000000000cbb0 <lseek>:
    cbb0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    cbb4:	910003fd 	mov	x29, sp
    cbb8:	94000052 	bl	cd00 <__errno>
    cbbc:	528003a1 	mov	w1, #0x1d                  	// #29
    cbc0:	b9000001 	str	w1, [x0]
    cbc4:	92800000 	mov	x0, #0xffffffffffffffff    	// #-1
    cbc8:	a8c17bfd 	ldp	x29, x30, [sp], #16
    cbcc:	d65f03c0 	ret

000000000000cbd0 <_lseek>:
    cbd0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    cbd4:	910003fd 	mov	x29, sp
    cbd8:	9400004a 	bl	cd00 <__errno>
    cbdc:	528003a1 	mov	w1, #0x1d                  	// #29
    cbe0:	b9000001 	str	w1, [x0]
    cbe4:	92800000 	mov	x0, #0xffffffffffffffff    	// #-1
    cbe8:	a8c17bfd 	ldp	x29, x30, [sp], #16
    cbec:	d65f03c0 	ret

000000000000cbf0 <read>:
    cbf0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    cbf4:	910003fd 	mov	x29, sp
    cbf8:	f9000ff4 	str	x20, [sp, #24]
    cbfc:	52800014 	mov	w20, #0x0                   	// #0
    cc00:	b4000281 	cbz	x1, cc50 <read+0x60>
    cc04:	7100005f 	cmp	w2, #0x0
    cc08:	5400024d 	b.le	cc50 <read+0x60>
    cc0c:	f9000bb3 	str	x19, [x29, #16]
    cc10:	aa0103f3 	mov	x19, x1
    cc14:	f90013b5 	str	x21, [x29, #32]
    cc18:	2a0203f5 	mov	w21, w2
    cc1c:	14000004 	b	cc2c <read+0x3c>
    cc20:	91000673 	add	x19, x19, #0x1
    cc24:	6b1402bf 	cmp	w21, w20
    cc28:	54000100 	b.eq	cc48 <read+0x58>  // b.none
    cc2c:	94000039 	bl	cd10 <inbyte>
    cc30:	12001c01 	and	w1, w0, #0xff
    cc34:	39000260 	strb	w0, [x19]
    cc38:	7100283f 	cmp	w1, #0xa
    cc3c:	11000694 	add	w20, w20, #0x1
    cc40:	7a4d1824 	ccmp	w1, #0xd, #0x4, ne  // ne = any
    cc44:	54fffee1 	b.ne	cc20 <read+0x30>  // b.any
    cc48:	f9400bb3 	ldr	x19, [x29, #16]
    cc4c:	f94013b5 	ldr	x21, [x29, #32]
    cc50:	2a1403e0 	mov	w0, w20
    cc54:	f9400ff4 	ldr	x20, [sp, #24]
    cc58:	a8c37bfd 	ldp	x29, x30, [sp], #48
    cc5c:	d65f03c0 	ret

000000000000cc60 <_read>:
    cc60:	17ffffe4 	b	cbf0 <read>
    cc64:	00000000 	.inst	0x00000000 ; undefined

000000000000cc68 <write>:
    cc68:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    cc6c:	7100005f 	cmp	w2, #0x0
    cc70:	910003fd 	mov	x29, sp
    cc74:	f90013f5 	str	x21, [sp, #32]
    cc78:	2a0203f5 	mov	w21, w2
    cc7c:	5400036d 	b.le	cce8 <write+0x80>
    cc80:	a90153b3 	stp	x19, x20, [x29, #16]
    cc84:	52800000 	mov	w0, #0x0                   	// #0
    cc88:	aa0103f3 	mov	x19, x1
    cc8c:	f90017b6 	str	x22, [x29, #40]
    cc90:	14000005 	b	cca4 <write+0x3c>
    cc94:	94000021 	bl	cd18 <outbyte>
    cc98:	2a1603e0 	mov	w0, w22
    cc9c:	6b1602bf 	cmp	w21, w22
    cca0:	5400020d 	b.le	cce0 <write+0x78>
    cca4:	93407c14 	sxtw	x20, w0
    cca8:	11000416 	add	w22, w0, #0x1
    ccac:	b40001b3 	cbz	x19, cce0 <write+0x78>
    ccb0:	ab14027f 	cmn	x19, x20
    ccb4:	54000160 	b.eq	cce0 <write+0x78>  // b.none
    ccb8:	3860ca60 	ldrb	w0, [x19, w0, sxtw]
    ccbc:	7100281f 	cmp	w0, #0xa
    ccc0:	54fffea1 	b.ne	cc94 <write+0x2c>  // b.any
    ccc4:	528001a0 	mov	w0, #0xd                   	// #13
    ccc8:	94000014 	bl	cd18 <outbyte>
    cccc:	38746a60 	ldrb	w0, [x19, x20]
    ccd0:	94000012 	bl	cd18 <outbyte>
    ccd4:	2a1603e0 	mov	w0, w22
    ccd8:	6b1602bf 	cmp	w21, w22
    ccdc:	54fffe4c 	b.gt	cca4 <write+0x3c>
    cce0:	a94153b3 	ldp	x19, x20, [x29, #16]
    cce4:	f94017b6 	ldr	x22, [x29, #40]
    cce8:	2a1503e0 	mov	w0, w21
    ccec:	f94013f5 	ldr	x21, [sp, #32]
    ccf0:	a8c37bfd 	ldp	x29, x30, [sp], #48
    ccf4:	d65f03c0 	ret

000000000000ccf8 <_write>:
    ccf8:	17ffffdc 	b	cc68 <write>
    ccfc:	00000000 	.inst	0x00000000 ; undefined

000000000000cd00 <__errno>:
    cd00:	b0000000 	adrp	x0, d000 <__trunctfdf2+0x290>
    cd04:	f943a800 	ldr	x0, [x0, #1872]
    cd08:	d65f03c0 	ret
    cd0c:	00000000 	.inst	0x00000000 ; undefined

000000000000cd10 <inbyte>:
    cd10:	52bfd000 	mov	w0, #0xfe800000            	// #-25165824
    cd14:	1400000f 	b	cd50 <XCoresightPs_DccRecvByte>

000000000000cd18 <outbyte>:
    cd18:	2a0003e1 	mov	w1, w0
    cd1c:	52bfd000 	mov	w0, #0xfe800000            	// #-25165824
    cd20:	14000002 	b	cd28 <XCoresightPs_DccSendByte>
    cd24:	00000000 	.inst	0x00000000 ; undefined

000000000000cd28 <XCoresightPs_DccSendByte>:
    cd28:	12001c21 	and	w1, w1, #0xff
    cd2c:	d5330100 	mrs	x0, mdccsr_el0
    cd30:	36e800a0 	tbz	w0, #29, cd44 <XCoresightPs_DccSendByte+0x1c>
    cd34:	d503201f 	nop
    cd38:	d5033f9f 	dsb	sy
    cd3c:	d5330100 	mrs	x0, mdccsr_el0
    cd40:	37efffc0 	tbnz	w0, #29, cd38 <XCoresightPs_DccSendByte+0x10>
    cd44:	d5130501 	msr	dbgdtrrx_el0, x1
    cd48:	d5033fdf 	isb
    cd4c:	d65f03c0 	ret

000000000000cd50 <XCoresightPs_DccRecvByte>:
    cd50:	14000002 	b	cd58 <XCoresightPs_DccRecvByte+0x8>
    cd54:	d5033f9f 	dsb	sy
    cd58:	d5330100 	mrs	x0, mdccsr_el0
    cd5c:	36f7ffc0 	tbz	w0, #30, cd54 <XCoresightPs_DccRecvByte+0x4>
    cd60:	d5330500 	mrs	x0, dbgdtrrx_el0
    cd64:	d5033fdf 	isb
    cd68:	d65f03c0 	ret
    cd6c:	00000000 	.inst	0x00000000 ; undefined

000000000000cd70 <__trunctfdf2>:
    cd70:	9e660000 	fmov	x0, d0
    cd74:	9eae0001 	fmov	x1, v0.d[1]
    cd78:	aa0003e3 	mov	x3, x0
    cd7c:	d53b4406 	mrs	x6, fpcr
    cd80:	d370f822 	ubfx	x2, x1, #48, #15
    cd84:	d37ffc25 	lsr	x5, x1, #63
    cd88:	91000444 	add	x4, x2, #0x1
    cd8c:	d37dbc20 	ubfiz	x0, x1, #3, #48
    cd90:	92403884 	and	x4, x4, #0x7fff
    cd94:	12001ca5 	and	w5, w5, #0xff
    cd98:	aa43f400 	orr	x0, x0, x3, lsr #61
    cd9c:	d37df061 	lsl	x1, x3, #3
    cda0:	f100049f 	cmp	x4, #0x1
    cda4:	5400070d 	b.le	ce84 <__trunctfdf2+0x114>
    cda8:	92877fe4 	mov	x4, #0xffffffffffffc400    	// #-15360
    cdac:	8b040042 	add	x2, x2, x4
    cdb0:	f11ff85f 	cmp	x2, #0x7fe
    cdb4:	5400046c 	b.gt	ce40 <__trunctfdf2+0xd0>
    cdb8:	f100005f 	cmp	x2, #0x0
    cdbc:	54000ecd 	b.le	cf94 <__trunctfdf2+0x224>
    cdc0:	eb031fff 	negs	xzr, x3, lsl #7
    cdc4:	52800004 	mov	w4, #0x0                   	// #0
    cdc8:	9a9f07e3 	cset	x3, ne  // ne = any
    cdcc:	aa41f061 	orr	x1, x3, x1, lsr #60
    cdd0:	aa001021 	orr	x1, x1, x0, lsl #4
    cdd4:	52800000 	mov	w0, #0x0                   	// #0
    cdd8:	f240083f 	tst	x1, #0x7
    cddc:	540006c0 	b.eq	ceb4 <__trunctfdf2+0x144>  // b.none
    cde0:	926a04c3 	and	x3, x6, #0xc00000
    cde4:	52800200 	mov	w0, #0x10                  	// #16
    cde8:	f150007f 	cmp	x3, #0x400, lsl #12
    cdec:	54000e40 	b.eq	cfb4 <__trunctfdf2+0x244>  // b.none
    cdf0:	f160007f 	cmp	x3, #0x800, lsl #12
    cdf4:	54000c40 	b.eq	cf7c <__trunctfdf2+0x20c>  // b.none
    cdf8:	b40007a3 	cbz	x3, ceec <__trunctfdf2+0x17c>
    cdfc:	92490023 	and	x3, x1, #0x80000000000000
    ce00:	34000044 	cbz	w4, ce08 <__trunctfdf2+0x98>
    ce04:	321d0000 	orr	w0, w0, #0x8
    ce08:	b4000563 	cbz	x3, ceb4 <__trunctfdf2+0x144>
    ce0c:	91000442 	add	x2, x2, #0x1
    ce10:	f11ffc5f 	cmp	x2, #0x7ff
    ce14:	54000800 	b.eq	cf14 <__trunctfdf2+0x1a4>  // b.none
    ce18:	92fc0203 	mov	x3, #0x1fefffffffffffff    	// #2301339409586323455
    ce1c:	12002842 	and	w2, w2, #0x7ff
    ce20:	8a410c61 	and	x1, x3, x1, lsr #3
    ce24:	d2800003 	mov	x3, #0x0                   	// #0
    ce28:	b340cc23 	bfxil	x3, x1, #0, #52
    ce2c:	b34c2843 	bfi	x3, x2, #52, #11
    ce30:	b34100a3 	bfi	x3, x5, #63, #1
    ce34:	9e670060 	fmov	d0, x3
    ce38:	35000940 	cbnz	w0, cf60 <__trunctfdf2+0x1f0>
    ce3c:	d65f03c0 	ret
    ce40:	f26a04c3 	ands	x3, x6, #0xc00000
    ce44:	54000160 	b.eq	ce70 <__trunctfdf2+0x100>  // b.none
    ce48:	f150007f 	cmp	x3, #0x400, lsl #12
    ce4c:	54000100 	b.eq	ce6c <__trunctfdf2+0xfc>  // b.none
    ce50:	f160007f 	cmp	x3, #0x800, lsl #12
    ce54:	1a9f00a4 	csel	w4, w5, wzr, eq  // eq = none
    ce58:	350000c4 	cbnz	w4, ce70 <__trunctfdf2+0x100>
    ce5c:	52800280 	mov	w0, #0x14                  	// #20
    ce60:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
    ce64:	d280ffc2 	mov	x2, #0x7fe                 	// #2046
    ce68:	17ffffe0 	b	cde8 <__trunctfdf2+0x78>
    ce6c:	35000f25 	cbnz	w5, d050 <__trunctfdf2+0x2e0>
    ce70:	d280ffe2 	mov	x2, #0x7ff                 	// #2047
    ce74:	52800280 	mov	w0, #0x14                  	// #20
    ce78:	12002842 	and	w2, w2, #0x7ff
    ce7c:	d2800001 	mov	x1, #0x0                   	// #0
    ce80:	17ffffe9 	b	ce24 <__trunctfdf2+0xb4>
    ce84:	aa010003 	orr	x3, x0, x1
    ce88:	b4000262 	cbz	x2, ced4 <__trunctfdf2+0x164>
    ce8c:	b40003e3 	cbz	x3, cf08 <__trunctfdf2+0x198>
    ce90:	d372fc03 	lsr	x3, x0, #50
    ce94:	93c1f001 	extr	x1, x0, x1, #60
    ce98:	d28fffe4 	mov	x4, #0x7fff                	// #32767
    ce9c:	52000060 	eor	w0, w3, #0x1
    cea0:	eb04005f 	cmp	x2, x4
    cea4:	927df021 	and	x1, x1, #0xfffffffffffffff8
    cea8:	1a9f0000 	csel	w0, w0, wzr, eq  // eq = none
    ceac:	b24a0021 	orr	x1, x1, #0x40000000000000
    ceb0:	d280ffe2 	mov	x2, #0x7ff                 	// #2047
    ceb4:	f11ffc5f 	cmp	x2, #0x7ff
    ceb8:	d343fc21 	lsr	x1, x1, #3
    cebc:	12002842 	and	w2, w2, #0x7ff
    cec0:	fa400824 	ccmp	x1, #0x0, #0x4, eq  // eq = none
    cec4:	54fffb00 	b.eq	ce24 <__trunctfdf2+0xb4>  // b.none
    cec8:	b24d0021 	orr	x1, x1, #0x8000000000000
    cecc:	5280ffe2 	mov	w2, #0x7ff                 	// #2047
    ced0:	17ffffd5 	b	ce24 <__trunctfdf2+0xb4>
    ced4:	b40001c3 	cbz	x3, cf0c <__trunctfdf2+0x19c>
    ced8:	926a04c3 	and	x3, x6, #0xc00000
    cedc:	52800200 	mov	w0, #0x10                  	// #16
    cee0:	52800024 	mov	w4, #0x1                   	// #1
    cee4:	d2800021 	mov	x1, #0x1                   	// #1
    cee8:	17ffffc0 	b	cde8 <__trunctfdf2+0x78>
    ceec:	92400c27 	and	x7, x1, #0xf
    cef0:	91001023 	add	x3, x1, #0x4
    cef4:	f10010ff 	cmp	x7, #0x4
    cef8:	9a811061 	csel	x1, x3, x1, ne  // ne = any
    cefc:	92490023 	and	x3, x1, #0x80000000000000
    cf00:	35fff824 	cbnz	w4, ce04 <__trunctfdf2+0x94>
    cf04:	17ffffc1 	b	ce08 <__trunctfdf2+0x98>
    cf08:	d280ffe2 	mov	x2, #0x7ff                 	// #2047
    cf0c:	52800000 	mov	w0, #0x0                   	// #0
    cf10:	17ffffda 	b	ce78 <__trunctfdf2+0x108>
    cf14:	f26a04c6 	ands	x6, x6, #0xc00000
    cf18:	d2800001 	mov	x1, #0x0                   	// #0
    cf1c:	54000140 	b.eq	cf44 <__trunctfdf2+0x1d4>  // b.none
    cf20:	f15000df 	cmp	x6, #0x400, lsl #12
    cf24:	54000a00 	b.eq	d064 <__trunctfdf2+0x2f4>  // b.none
    cf28:	f16000df 	cmp	x6, #0x800, lsl #12
    cf2c:	5280ffc4 	mov	w4, #0x7fe                 	// #2046
    cf30:	1a9f00a3 	csel	w3, w5, wzr, eq  // eq = none
    cf34:	92fc0001 	mov	x1, #0x1fffffffffffffff    	// #2305843009213693951
    cf38:	7100007f 	cmp	w3, #0x0
    cf3c:	1a841042 	csel	w2, w2, w4, ne  // ne = any
    cf40:	9a8113e1 	csel	x1, xzr, x1, ne  // ne = any
    cf44:	d2800003 	mov	x3, #0x0                   	// #0
    cf48:	52800284 	mov	w4, #0x14                  	// #20
    cf4c:	b340cc23 	bfxil	x3, x1, #0, #52
    cf50:	2a040000 	orr	w0, w0, w4
    cf54:	b34c2843 	bfi	x3, x2, #52, #11
    cf58:	b34100a3 	bfi	x3, x5, #63, #1
    cf5c:	9e670060 	fmov	d0, x3
    cf60:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    cf64:	910003fd 	mov	x29, sp
    cf68:	fd000fa0 	str	d0, [x29, #24]
    cf6c:	94000051 	bl	d0b0 <__sfp_handle_exceptions>
    cf70:	fd400fa0 	ldr	d0, [x29, #24]
    cf74:	a8c27bfd 	ldp	x29, x30, [sp], #32
    cf78:	d65f03c0 	ret
    cf7c:	91002023 	add	x3, x1, #0x8
    cf80:	710000bf 	cmp	w5, #0x0
    cf84:	9a811061 	csel	x1, x3, x1, ne  // ne = any
    cf88:	92490023 	and	x3, x1, #0x80000000000000
    cf8c:	35fff3c4 	cbnz	w4, ce04 <__trunctfdf2+0x94>
    cf90:	17ffff9e 	b	ce08 <__trunctfdf2+0x98>
    cf94:	b100d05f 	cmn	x2, #0x34
    cf98:	5400016a 	b.ge	cfc4 <__trunctfdf2+0x254>  // b.tcont
    cf9c:	926a04c3 	and	x3, x6, #0xc00000
    cfa0:	52800200 	mov	w0, #0x10                  	// #16
    cfa4:	52800024 	mov	w4, #0x1                   	// #1
    cfa8:	d2800021 	mov	x1, #0x1                   	// #1
    cfac:	d2800002 	mov	x2, #0x0                   	// #0
    cfb0:	17ffff8e 	b	cde8 <__trunctfdf2+0x78>
    cfb4:	91002023 	add	x3, x1, #0x8
    cfb8:	710000bf 	cmp	w5, #0x0
    cfbc:	9a810061 	csel	x1, x3, x1, eq  // eq = none
    cfc0:	17ffff8f 	b	cdfc <__trunctfdf2+0x8c>
    cfc4:	d28007a4 	mov	x4, #0x3d                  	// #61
    cfc8:	cb020087 	sub	x7, x4, x2
    cfcc:	b24d0000 	orr	x0, x0, #0x8000000000000
    cfd0:	f100fcff 	cmp	x7, #0x3f
    cfd4:	5400020c 	b.gt	d014 <__trunctfdf2+0x2a4>
    cfd8:	11000c43 	add	w3, w2, #0x3
    cfdc:	4b020082 	sub	w2, w4, w2
    cfe0:	9ac32024 	lsl	x4, x1, x3
    cfe4:	f100009f 	cmp	x4, #0x0
    cfe8:	9a9f07e4 	cset	x4, ne  // ne = any
    cfec:	9ac22421 	lsr	x1, x1, x2
    cff0:	aa040021 	orr	x1, x1, x4
    cff4:	9ac32000 	lsl	x0, x0, x3
    cff8:	aa010001 	orr	x1, x0, x1
    cffc:	f100003f 	cmp	x1, #0x0
    d000:	92400820 	and	x0, x1, #0x7
    d004:	1a9f07e4 	cset	w4, ne  // ne = any
    d008:	b40003a0 	cbz	x0, d07c <__trunctfdf2+0x30c>
    d00c:	d2800002 	mov	x2, #0x0                   	// #0
    d010:	17ffff74 	b	cde0 <__trunctfdf2+0x70>
    d014:	11010c43 	add	w3, w2, #0x43
    d018:	f10100ff 	cmp	x7, #0x40
    d01c:	12800044 	mov	w4, #0xfffffffd            	// #-3
    d020:	4b020084 	sub	w4, w4, w2
    d024:	9ac32002 	lsl	x2, x0, x3
    d028:	aa020022 	orr	x2, x1, x2
    d02c:	9a811041 	csel	x1, x2, x1, ne  // ne = any
    d030:	9ac42400 	lsr	x0, x0, x4
    d034:	f100003f 	cmp	x1, #0x0
    d038:	9a9f07e1 	cset	x1, ne  // ne = any
    d03c:	aa000021 	orr	x1, x1, x0
    d040:	f100003f 	cmp	x1, #0x0
    d044:	92400820 	and	x0, x1, #0x7
    d048:	1a9f07e4 	cset	w4, ne  // ne = any
    d04c:	17ffffef 	b	d008 <__trunctfdf2+0x298>
    d050:	52800004 	mov	w4, #0x0                   	// #0
    d054:	d280ffc2 	mov	x2, #0x7fe                 	// #2046
    d058:	52800280 	mov	w0, #0x14                  	// #20
    d05c:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
    d060:	17ffff67 	b	cdfc <__trunctfdf2+0x8c>
    d064:	710000bf 	cmp	w5, #0x0
    d068:	5280ffc1 	mov	w1, #0x7fe                 	// #2046
    d06c:	1a810042 	csel	w2, w2, w1, eq  // eq = none
    d070:	92fc0001 	mov	x1, #0x1fffffffffffffff    	// #2305843009213693951
    d074:	9a8103e1 	csel	x1, xzr, x1, eq  // eq = none
    d078:	17ffffb3 	b	cf44 <__trunctfdf2+0x1d4>
    d07c:	92490023 	and	x3, x1, #0x80000000000000
    d080:	340000c4 	cbz	w4, d098 <__trunctfdf2+0x328>
    d084:	365800a6 	tbz	w6, #11, d098 <__trunctfdf2+0x328>
    d088:	52800000 	mov	w0, #0x0                   	// #0
    d08c:	d2800002 	mov	x2, #0x0                   	// #0
    d090:	321d0000 	orr	w0, w0, #0x8
    d094:	17ffff5d 	b	ce08 <__trunctfdf2+0x98>
    d098:	d2800022 	mov	x2, #0x1                   	// #1
    d09c:	52800000 	mov	w0, #0x0                   	// #0
    d0a0:	b5ffebc3 	cbnz	x3, ce18 <__trunctfdf2+0xa8>
    d0a4:	d2800002 	mov	x2, #0x0                   	// #0
    d0a8:	17ffff83 	b	ceb4 <__trunctfdf2+0x144>
    d0ac:	00000000 	.inst	0x00000000 ; undefined

000000000000d0b0 <__sfp_handle_exceptions>:
    d0b0:	36000080 	tbz	w0, #0, d0c0 <__sfp_handle_exceptions+0x10>
    d0b4:	0f000401 	movi	v1.2s, #0x0
    d0b8:	1e211820 	fdiv	s0, s1, s1
    d0bc:	d53b4421 	mrs	x1, fpsr
    d0c0:	360800a0 	tbz	w0, #1, d0d4 <__sfp_handle_exceptions+0x24>
    d0c4:	1e2e1001 	fmov	s1, #1.000000000000000000e+000
    d0c8:	0f000402 	movi	v2.2s, #0x0
    d0cc:	1e221820 	fdiv	s0, s1, s2
    d0d0:	d53b4421 	mrs	x1, fpsr
    d0d4:	36100100 	tbz	w0, #2, d0f4 <__sfp_handle_exceptions+0x44>
    d0d8:	5298b5c2 	mov	w2, #0xc5ae                	// #50606
    d0dc:	12b01001 	mov	w1, #0x7f7fffff            	// #2139095039
    d0e0:	72ae93a2 	movk	w2, #0x749d, lsl #16
    d0e4:	1e270021 	fmov	s1, w1
    d0e8:	1e270042 	fmov	s2, w2
    d0ec:	1e222820 	fadd	s0, s1, s2
    d0f0:	d53b4421 	mrs	x1, fpsr
    d0f4:	36180080 	tbz	w0, #3, d104 <__sfp_handle_exceptions+0x54>
    d0f8:	0f044401 	movi	v1.2s, #0x80, lsl #16
    d0fc:	1e210820 	fmul	s0, s1, s1
    d100:	d53b4421 	mrs	x1, fpsr
    d104:	362000c0 	tbz	w0, #4, d11c <__sfp_handle_exceptions+0x6c>
    d108:	12b01000 	mov	w0, #0x7f7fffff            	// #2139095039
    d10c:	1e2e1002 	fmov	s2, #1.000000000000000000e+000
    d110:	1e270001 	fmov	s1, w0
    d114:	1e223820 	fsub	s0, s1, s2
    d118:	d53b4420 	mrs	x0, fpsr
    d11c:	d65f03c0 	ret

Disassembly of section .init:

000000000000d140 <_init>:
    d140:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    d144:	a9bf73fb 	stp	x27, x28, [sp, #-16]!
    d148:	a9bf6bf9 	stp	x25, x26, [sp, #-16]!
    d14c:	a9bf63f7 	stp	x23, x24, [sp, #-16]!
    d150:	a9bf5bf5 	stp	x21, x22, [sp, #-16]!
    d154:	a9bf53f3 	stp	x19, x20, [sp, #-16]!
    d158:	a8c153f3 	ldp	x19, x20, [sp], #16
    d15c:	a8c15bf5 	ldp	x21, x22, [sp], #16
    d160:	a8c163f7 	ldp	x23, x24, [sp], #16
    d164:	a8c16bf9 	ldp	x25, x26, [sp], #16
    d168:	a8c173fb 	ldp	x27, x28, [sp], #16
    d16c:	a8c17bfd 	ldp	x29, x30, [sp], #16
    d170:	d65f03c0 	ret

Disassembly of section .fini:

000000000000d180 <_fini>:
    d180:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    d184:	a9bf73fb 	stp	x27, x28, [sp, #-16]!
    d188:	a9bf6bf9 	stp	x25, x26, [sp, #-16]!
    d18c:	a9bf63f7 	stp	x23, x24, [sp, #-16]!
    d190:	a9bf5bf5 	stp	x21, x22, [sp, #-16]!
    d194:	a9bf53f3 	stp	x19, x20, [sp, #-16]!
    d198:	a8c153f3 	ldp	x19, x20, [sp], #16
    d19c:	a8c15bf5 	ldp	x21, x22, [sp], #16
    d1a0:	a8c163f7 	ldp	x23, x24, [sp], #16
    d1a4:	a8c16bf9 	ldp	x25, x26, [sp], #16
    d1a8:	a8c173fb 	ldp	x27, x28, [sp], #16
    d1ac:	a8c17bfd 	ldp	x29, x30, [sp], #16
    d1b0:	d65f03c0 	ret
