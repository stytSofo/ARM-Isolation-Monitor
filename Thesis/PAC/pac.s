
pac:     file format elf64-littleaarch64


Disassembly of section .init:

00000000004004d8 <_init>:
  4004d8:	d503201f 	nop
  4004dc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4004e0:	910003fd 	mov	x29, sp
  4004e4:	94000038 	bl	4005c4 <call_weak_fn>
  4004e8:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4004ec:	d65f03c0 	ret

Disassembly of section .plt:

00000000004004f0 <.plt>:
  4004f0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  4004f4:	90000090 	adrp	x16, 410000 <__FRAME_END__+0xf4e8>
  4004f8:	f947fe11 	ldr	x17, [x16, #4088]
  4004fc:	913fe210 	add	x16, x16, #0xff8
  400500:	d61f0220 	br	x17
  400504:	d503201f 	nop
  400508:	d503201f 	nop
  40050c:	d503201f 	nop

0000000000400510 <__libc_start_main@plt>:
  400510:	b0000090 	adrp	x16, 411000 <__libc_start_main@GLIBC_2.34>
  400514:	f9400211 	ldr	x17, [x16]
  400518:	91000210 	add	x16, x16, #0x0
  40051c:	d61f0220 	br	x17

0000000000400520 <malloc@plt>:
  400520:	b0000090 	adrp	x16, 411000 <__libc_start_main@GLIBC_2.34>
  400524:	f9400611 	ldr	x17, [x16, #8]
  400528:	91002210 	add	x16, x16, #0x8
  40052c:	d61f0220 	br	x17

0000000000400530 <__gmon_start__@plt>:
  400530:	b0000090 	adrp	x16, 411000 <__libc_start_main@GLIBC_2.34>
  400534:	f9400a11 	ldr	x17, [x16, #16]
  400538:	91004210 	add	x16, x16, #0x10
  40053c:	d61f0220 	br	x17

0000000000400540 <abort@plt>:
  400540:	b0000090 	adrp	x16, 411000 <__libc_start_main@GLIBC_2.34>
  400544:	f9400e11 	ldr	x17, [x16, #24]
  400548:	91006210 	add	x16, x16, #0x18
  40054c:	d61f0220 	br	x17

0000000000400550 <free@plt>:
  400550:	b0000090 	adrp	x16, 411000 <__libc_start_main@GLIBC_2.34>
  400554:	f9401211 	ldr	x17, [x16, #32]
  400558:	91008210 	add	x16, x16, #0x20
  40055c:	d61f0220 	br	x17

0000000000400560 <printf@plt>:
  400560:	b0000090 	adrp	x16, 411000 <__libc_start_main@GLIBC_2.34>
  400564:	f9401611 	ldr	x17, [x16, #40]
  400568:	9100a210 	add	x16, x16, #0x28
  40056c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400580 <_start>:
  400580:	d503201f 	nop
  400584:	d280001d 	mov	x29, #0x0                   	// #0
  400588:	d280001e 	mov	x30, #0x0                   	// #0
  40058c:	aa0003e5 	mov	x5, x0
  400590:	f94003e1 	ldr	x1, [sp]
  400594:	910023e2 	add	x2, sp, #0x8
  400598:	910003e6 	mov	x6, sp
  40059c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  4005a0:	9116d000 	add	x0, x0, #0x5b4
  4005a4:	d2800003 	mov	x3, #0x0                   	// #0
  4005a8:	d2800004 	mov	x4, #0x0                   	// #0
  4005ac:	97ffffd9 	bl	400510 <__libc_start_main@plt>
  4005b0:	97ffffe4 	bl	400540 <abort@plt>

00000000004005b4 <__wrap_main>:
  4005b4:	d503201f 	nop
  4005b8:	140000ab 	b	400864 <main>
  4005bc:	d503201f 	nop

00000000004005c0 <_dl_relocate_static_pie>:
  4005c0:	d65f03c0 	ret

00000000004005c4 <call_weak_fn>:
  4005c4:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf4e8>
  4005c8:	f947f000 	ldr	x0, [x0, #4064]
  4005cc:	b4000040 	cbz	x0, 4005d4 <call_weak_fn+0x10>
  4005d0:	17ffffd8 	b	400530 <__gmon_start__@plt>
  4005d4:	d65f03c0 	ret
  4005d8:	d503201f 	nop
  4005dc:	d503201f 	nop

00000000004005e0 <deregister_tm_clones>:
  4005e0:	b0000080 	adrp	x0, 411000 <__libc_start_main@GLIBC_2.34>
  4005e4:	91010000 	add	x0, x0, #0x40
  4005e8:	b0000081 	adrp	x1, 411000 <__libc_start_main@GLIBC_2.34>
  4005ec:	91010021 	add	x1, x1, #0x40
  4005f0:	eb00003f 	cmp	x1, x0
  4005f4:	540000c0 	b.eq	40060c <deregister_tm_clones+0x2c>  // b.none
  4005f8:	90000001 	adrp	x1, 400000 <__abi_tag-0x278>
  4005fc:	f944d421 	ldr	x1, [x1, #2472]
  400600:	b4000061 	cbz	x1, 40060c <deregister_tm_clones+0x2c>
  400604:	aa0103f0 	mov	x16, x1
  400608:	d61f0200 	br	x16
  40060c:	d65f03c0 	ret

0000000000400610 <register_tm_clones>:
  400610:	b0000080 	adrp	x0, 411000 <__libc_start_main@GLIBC_2.34>
  400614:	91010000 	add	x0, x0, #0x40
  400618:	b0000081 	adrp	x1, 411000 <__libc_start_main@GLIBC_2.34>
  40061c:	91010021 	add	x1, x1, #0x40
  400620:	cb000021 	sub	x1, x1, x0
  400624:	d37ffc22 	lsr	x2, x1, #63
  400628:	8b810c41 	add	x1, x2, x1, asr #3
  40062c:	9341fc21 	asr	x1, x1, #1
  400630:	b40000c1 	cbz	x1, 400648 <register_tm_clones+0x38>
  400634:	90000002 	adrp	x2, 400000 <__abi_tag-0x278>
  400638:	f944d842 	ldr	x2, [x2, #2480]
  40063c:	b4000062 	cbz	x2, 400648 <register_tm_clones+0x38>
  400640:	aa0203f0 	mov	x16, x2
  400644:	d61f0200 	br	x16
  400648:	d65f03c0 	ret
  40064c:	d503201f 	nop

0000000000400650 <__do_global_dtors_aux>:
  400650:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400654:	910003fd 	mov	x29, sp
  400658:	f9000bf3 	str	x19, [sp, #16]
  40065c:	b0000093 	adrp	x19, 411000 <__libc_start_main@GLIBC_2.34>
  400660:	39410260 	ldrb	w0, [x19, #64]
  400664:	35000080 	cbnz	w0, 400674 <__do_global_dtors_aux+0x24>
  400668:	97ffffde 	bl	4005e0 <deregister_tm_clones>
  40066c:	52800020 	mov	w0, #0x1                   	// #1
  400670:	39010260 	strb	w0, [x19, #64]
  400674:	f9400bf3 	ldr	x19, [sp, #16]
  400678:	a8c27bfd 	ldp	x29, x30, [sp], #32
  40067c:	d65f03c0 	ret

0000000000400680 <frame_dummy>:
  400680:	17ffffe4 	b	400610 <register_tm_clones>

0000000000400684 <sign_pointer_with_modifier>:
  400684:	d503233f 	paciasp
  400688:	d10183ff 	sub	sp, sp, #0x60
  40068c:	a9057bfd 	stp	x29, x30, [sp, #80]
  400690:	910143fd 	add	x29, sp, #0x50
  400694:	aa1f03e8 	mov	x8, xzr
  400698:	9ac813e8 	irg	x8, sp, x8
  40069c:	91840109 	addg	x9, x8, #0x40, #0x0
  4006a0:	d9200929 	stg	x9, [x9]
  4006a4:	9183050a 	addg	x10, x8, #0x30, #0x1
  4006a8:	d920094a 	stg	x10, [x10]
  4006ac:	91820908 	addg	x8, x8, #0x20, #0x2
  4006b0:	d9200908 	stg	x8, [x8]
  4006b4:	f9000120 	str	x0, [x9]
  4006b8:	f9000141 	str	x1, [x10]
  4006bc:	f9400121 	ldr	x1, [x9]
  4006c0:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  4006c4:	9126e000 	add	x0, x0, #0x9b8
  4006c8:	f9000fe9 	str	x9, [sp, #24]
  4006cc:	f9000bea 	str	x10, [sp, #16]
  4006d0:	f90007e8 	str	x8, [sp, #8]
  4006d4:	97ffffa3 	bl	400560 <printf@plt>
  4006d8:	f9400fe8 	ldr	x8, [sp, #24]
  4006dc:	f9400109 	ldr	x9, [x8]
  4006e0:	f9400bea 	ldr	x10, [sp, #16]
  4006e4:	f940014b 	ldr	x11, [x10]
  4006e8:	dac10169 	pacia	x9, x11
  4006ec:	f94007eb 	ldr	x11, [sp, #8]
  4006f0:	f9000169 	str	x9, [x11]
  4006f4:	f9400161 	ldr	x1, [x11]
  4006f8:	90000009 	adrp	x9, 400000 <__abi_tag-0x278>
  4006fc:	91275129 	add	x9, x9, #0x9d4
  400700:	b90007e0 	str	w0, [sp, #4]
  400704:	aa0903e0 	mov	x0, x9
  400708:	97ffff96 	bl	400560 <printf@plt>
  40070c:	f94007e8 	ldr	x8, [sp, #8]
  400710:	f9400109 	ldr	x9, [x8]
  400714:	d9a02bff 	st2g	sp, [sp, #32]
  400718:	d9204bff 	stg	sp, [sp, #64]
  40071c:	b90003e0 	str	w0, [sp]
  400720:	aa0903e0 	mov	x0, x9
  400724:	a9457bfd 	ldp	x29, x30, [sp, #80]
  400728:	910183ff 	add	sp, sp, #0x60
  40072c:	d65f0bff 	retaa

0000000000400730 <authenticate_pointer_with_modifier>:
  400730:	d503233f 	paciasp
  400734:	d10183ff 	sub	sp, sp, #0x60
  400738:	a9057bfd 	stp	x29, x30, [sp, #80]
  40073c:	910143fd 	add	x29, sp, #0x50
  400740:	aa1f03e8 	mov	x8, xzr
  400744:	9ac813e8 	irg	x8, sp, x8
  400748:	91840109 	addg	x9, x8, #0x40, #0x0
  40074c:	d9200929 	stg	x9, [x9]
  400750:	9183050a 	addg	x10, x8, #0x30, #0x1
  400754:	d920094a 	stg	x10, [x10]
  400758:	9182090b 	addg	x11, x8, #0x20, #0x2
  40075c:	d920096b 	stg	x11, [x11]
  400760:	91810d08 	addg	x8, x8, #0x10, #0x3
  400764:	d9200908 	stg	x8, [x8]
  400768:	f9000120 	str	x0, [x9]
  40076c:	f9000141 	str	x1, [x10]
  400770:	f940012b 	ldr	x11, [x9]
  400774:	f940014a 	ldr	x10, [x10]
  400778:	dac1114b 	autia	x11, x10
  40077c:	f900010b 	str	x11, [x8]
  400780:	f9400121 	ldr	x1, [x9]
  400784:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400788:	9127bc00 	add	x0, x0, #0x9ef
  40078c:	f90007e8 	str	x8, [sp, #8]
  400790:	97ffff74 	bl	400560 <printf@plt>
  400794:	f94007e8 	ldr	x8, [sp, #8]
  400798:	f9400109 	ldr	x9, [x8]
  40079c:	d9a01bff 	st2g	sp, [sp, #16]
  4007a0:	d9a03bff 	st2g	sp, [sp, #48]
  4007a4:	b90007e0 	str	w0, [sp, #4]
  4007a8:	aa0903e0 	mov	x0, x9
  4007ac:	a9457bfd 	ldp	x29, x30, [sp, #80]
  4007b0:	910183ff 	add	sp, sp, #0x60
  4007b4:	d65f0bff 	retaa

00000000004007b8 <access_array>:
  4007b8:	d503233f 	paciasp
  4007bc:	d10183ff 	sub	sp, sp, #0x60
  4007c0:	a9057bfd 	stp	x29, x30, [sp, #80]
  4007c4:	910143fd 	add	x29, sp, #0x50
  4007c8:	aa1f03e8 	mov	x8, xzr
  4007cc:	9ac813e8 	irg	x8, sp, x8
  4007d0:	91840109 	addg	x9, x8, #0x40, #0x0
  4007d4:	d9200929 	stg	x9, [x9]
  4007d8:	9183050a 	addg	x10, x8, #0x30, #0x1
  4007dc:	d920094a 	stg	x10, [x10]
  4007e0:	91820908 	addg	x8, x8, #0x20, #0x2
  4007e4:	d9200908 	stg	x8, [x8]
  4007e8:	f9000120 	str	x0, [x9]
  4007ec:	f9400120 	ldr	x0, [x9]
  4007f0:	d28acf01 	mov	x1, #0x5678                	// #22136
  4007f4:	f2a24681 	movk	x1, #0x1234, lsl #16
  4007f8:	f2d7dde1 	movk	x1, #0xbeef, lsl #32
  4007fc:	f2fbd5a1 	movk	x1, #0xdead, lsl #48
  400800:	f9000fea 	str	x10, [sp, #24]
  400804:	f9000be8 	str	x8, [sp, #16]
  400808:	97ffffca 	bl	400730 <authenticate_pointer_with_modifier>
  40080c:	f9400fe8 	ldr	x8, [sp, #24]
  400810:	f9000100 	str	x0, [x8]
  400814:	f9400101 	ldr	x1, [x8]
  400818:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  40081c:	91280000 	add	x0, x0, #0xa00
  400820:	97ffff50 	bl	400560 <printf@plt>
  400824:	f9400fe8 	ldr	x8, [sp, #24]
  400828:	f9400109 	ldr	x9, [x8]
  40082c:	f9400bea 	ldr	x10, [sp, #16]
  400830:	f9000149 	str	x9, [x10]
  400834:	f9400149 	ldr	x9, [x10]
  400838:	b9400121 	ldr	w1, [x9]
  40083c:	90000009 	adrp	x9, 400000 <__abi_tag-0x278>
  400840:	91288929 	add	x9, x9, #0xa22
  400844:	b9000fe0 	str	w0, [sp, #12]
  400848:	aa0903e0 	mov	x0, x9
  40084c:	97ffff45 	bl	400560 <printf@plt>
  400850:	d9a02bff 	st2g	sp, [sp, #32]
  400854:	d9204bff 	stg	sp, [sp, #64]
  400858:	910143ff 	add	sp, sp, #0x50
  40085c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400860:	d65f0bff 	retaa

0000000000400864 <main>:
  400864:	d503233f 	paciasp
  400868:	d10203ff 	sub	sp, sp, #0x80
  40086c:	a9077bfd 	stp	x29, x30, [sp, #112]
  400870:	9101c3fd 	add	x29, sp, #0x70
  400874:	aa1f03e8 	mov	x8, xzr
  400878:	9ac813e8 	irg	x8, sp, x8
  40087c:	91860109 	addg	x9, x8, #0x60, #0x0
  400880:	d9200929 	stg	x9, [x9]
  400884:	9185050a 	addg	x10, x8, #0x50, #0x1
  400888:	d920094a 	stg	x10, [x10]
  40088c:	aa0a03eb 	mov	x11, x10
  400890:	9184090c 	addg	x12, x8, #0x40, #0x2
  400894:	d920098c 	stg	x12, [x12]
  400898:	aa0c03ed 	mov	x13, x12
  40089c:	91830d08 	addg	x8, x8, #0x30, #0x3
  4008a0:	d9200908 	stg	x8, [x8]
  4008a4:	2a1f03ee 	mov	w14, wzr
  4008a8:	b900012e 	str	w14, [x9]
  4008ac:	5280050f 	mov	w15, #0x28                  	// #40
  4008b0:	2a0f03e0 	mov	w0, w15
  4008b4:	f90017ea 	str	x10, [sp, #40]
  4008b8:	f90013eb 	str	x11, [sp, #32]
  4008bc:	f9000fec 	str	x12, [sp, #24]
  4008c0:	f9000bed 	str	x13, [sp, #16]
  4008c4:	f90007e8 	str	x8, [sp, #8]
  4008c8:	b90007ee 	str	w14, [sp, #4]
  4008cc:	97ffff15 	bl	400520 <malloc@plt>
  4008d0:	f94017e8 	ldr	x8, [sp, #40]
  4008d4:	f9000100 	str	x0, [x8]
  4008d8:	b94007ee 	ldr	w14, [sp, #4]
  4008dc:	f9400fe9 	ldr	x9, [sp, #24]
  4008e0:	b900012e 	str	w14, [x9]
  4008e4:	14000001 	b	4008e8 <main+0x84>
  4008e8:	f9400be8 	ldr	x8, [sp, #16]
  4008ec:	b9400109 	ldr	w9, [x8]
  4008f0:	71002529 	subs	w9, w9, #0x9
  4008f4:	5400020c 	b.gt	400934 <main+0xd0>
  4008f8:	14000001 	b	4008fc <main+0x98>
  4008fc:	f9400be8 	ldr	x8, [sp, #16]
  400900:	b9800109 	ldrsw	x9, [x8]
  400904:	2a0903ea 	mov	w10, w9
  400908:	0b0a094a 	add	w10, w10, w10, lsl #2
  40090c:	531f794a 	lsl	w10, w10, #1
  400910:	f94013eb 	ldr	x11, [sp, #32]
  400914:	f940016c 	ldr	x12, [x11]
  400918:	b829798a 	str	w10, [x12, x9, lsl #2]
  40091c:	14000001 	b	400920 <main+0xbc>
  400920:	f9400be8 	ldr	x8, [sp, #16]
  400924:	b9400109 	ldr	w9, [x8]
  400928:	11000529 	add	w9, w9, #0x1
  40092c:	b9000109 	str	w9, [x8]
  400930:	17ffffee 	b	4008e8 <main+0x84>
  400934:	f94013e8 	ldr	x8, [sp, #32]
  400938:	f9400100 	ldr	x0, [x8]
  40093c:	d28acf01 	mov	x1, #0x5678                	// #22136
  400940:	f2a24681 	movk	x1, #0x1234, lsl #16
  400944:	f2d7dde1 	movk	x1, #0xbeef, lsl #32
  400948:	f2fbd5a1 	movk	x1, #0xdead, lsl #48
  40094c:	97ffff4e 	bl	400684 <sign_pointer_with_modifier>
  400950:	f94007e8 	ldr	x8, [sp, #8]
  400954:	f9000100 	str	x0, [x8]
  400958:	f9400100 	ldr	x0, [x8]
  40095c:	97ffff97 	bl	4007b8 <access_array>
  400960:	f94013e8 	ldr	x8, [sp, #32]
  400964:	f9400100 	ldr	x0, [x8]
  400968:	97fffefa 	bl	400550 <free@plt>
  40096c:	d9a03bff 	st2g	sp, [sp, #48]
  400970:	d9a05bff 	st2g	sp, [sp, #80]
  400974:	2a1f03e2 	mov	w2, wzr
  400978:	2a0203e0 	mov	w0, w2
  40097c:	9101c3ff 	add	sp, sp, #0x70
  400980:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400984:	d65f0bff 	retaa

Disassembly of section .fini:

0000000000400988 <_fini>:
  400988:	d503201f 	nop
  40098c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400990:	910003fd 	mov	x29, sp
  400994:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400998:	d65f03c0 	ret
