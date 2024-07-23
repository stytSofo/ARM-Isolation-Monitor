
pass_mte_loadStore:     file format elf64-littleaarch64


Disassembly of section .init:

00000000000006a0 <_init>:
 6a0:	d503201f 	nop
 6a4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 6a8:	910003fd 	mov	x29, sp
 6ac:	94000042 	bl	7b4 <call_weak_fn>
 6b0:	a8c17bfd 	ldp	x29, x30, [sp], #16
 6b4:	d65f03c0 	ret

Disassembly of section .plt:

00000000000006c0 <.plt>:
 6c0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 6c4:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0x1005c>
 6c8:	f947fe11 	ldr	x17, [x16, #4088]
 6cc:	913fe210 	add	x16, x16, #0xff8
 6d0:	d61f0220 	br	x17
 6d4:	d503201f 	nop
 6d8:	d503201f 	nop
 6dc:	d503201f 	nop

00000000000006e0 <__libc_start_main@plt>:
 6e0:	d0000090 	adrp	x16, 12000 <__libc_start_main@GLIBC_2.34>
 6e4:	f9400211 	ldr	x17, [x16]
 6e8:	91000210 	add	x16, x16, #0x0
 6ec:	d61f0220 	br	x17

00000000000006f0 <perror@plt>:
 6f0:	d0000090 	adrp	x16, 12000 <__libc_start_main@GLIBC_2.34>
 6f4:	f9400611 	ldr	x17, [x16, #8]
 6f8:	91002210 	add	x16, x16, #0x8
 6fc:	d61f0220 	br	x17

0000000000000700 <__cxa_finalize@plt>:
 700:	d0000090 	adrp	x16, 12000 <__libc_start_main@GLIBC_2.34>
 704:	f9400a11 	ldr	x17, [x16, #16]
 708:	91004210 	add	x16, x16, #0x10
 70c:	d61f0220 	br	x17

0000000000000710 <getauxval@plt>:
 710:	d0000090 	adrp	x16, 12000 <__libc_start_main@GLIBC_2.34>
 714:	f9400e11 	ldr	x17, [x16, #24]
 718:	91006210 	add	x16, x16, #0x18
 71c:	d61f0220 	br	x17

0000000000000720 <__gmon_start__@plt>:
 720:	d0000090 	adrp	x16, 12000 <__libc_start_main@GLIBC_2.34>
 724:	f9401211 	ldr	x17, [x16, #32]
 728:	91008210 	add	x16, x16, #0x20
 72c:	d61f0220 	br	x17

0000000000000730 <abort@plt>:
 730:	d0000090 	adrp	x16, 12000 <__libc_start_main@GLIBC_2.34>
 734:	f9401611 	ldr	x17, [x16, #40]
 738:	9100a210 	add	x16, x16, #0x28
 73c:	d61f0220 	br	x17

0000000000000740 <mmap@plt>:
 740:	d0000090 	adrp	x16, 12000 <__libc_start_main@GLIBC_2.34>
 744:	f9401a11 	ldr	x17, [x16, #48]
 748:	9100c210 	add	x16, x16, #0x30
 74c:	d61f0220 	br	x17

0000000000000750 <printf@plt>:
 750:	d0000090 	adrp	x16, 12000 <__libc_start_main@GLIBC_2.34>
 754:	f9401e11 	ldr	x17, [x16, #56]
 758:	9100e210 	add	x16, x16, #0x38
 75c:	d61f0220 	br	x17

0000000000000760 <prctl@plt>:
 760:	d0000090 	adrp	x16, 12000 <__libc_start_main@GLIBC_2.34>
 764:	f9402211 	ldr	x17, [x16, #64]
 768:	91010210 	add	x16, x16, #0x40
 76c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000780 <_start>:
 780:	d503201f 	nop
 784:	d280001d 	mov	x29, #0x0                   	// #0
 788:	d280001e 	mov	x30, #0x0                   	// #0
 78c:	aa0003e5 	mov	x5, x0
 790:	f94003e1 	ldr	x1, [sp]
 794:	910023e2 	add	x2, sp, #0x8
 798:	910003e6 	mov	x6, sp
 79c:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x1005c>
 7a0:	f947ec00 	ldr	x0, [x0, #4056]
 7a4:	d2800003 	mov	x3, #0x0                   	// #0
 7a8:	d2800004 	mov	x4, #0x0                   	// #0
 7ac:	97ffffcd 	bl	6e0 <__libc_start_main@plt>
 7b0:	97ffffe0 	bl	730 <abort@plt>

00000000000007b4 <call_weak_fn>:
 7b4:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x1005c>
 7b8:	f947e800 	ldr	x0, [x0, #4048]
 7bc:	b4000040 	cbz	x0, 7c4 <call_weak_fn+0x10>
 7c0:	17ffffd8 	b	720 <__gmon_start__@plt>
 7c4:	d65f03c0 	ret
 7c8:	d503201f 	nop
 7cc:	d503201f 	nop

00000000000007d0 <deregister_tm_clones>:
 7d0:	d0000080 	adrp	x0, 12000 <__libc_start_main@GLIBC_2.34>
 7d4:	91016000 	add	x0, x0, #0x58
 7d8:	d0000081 	adrp	x1, 12000 <__libc_start_main@GLIBC_2.34>
 7dc:	91016021 	add	x1, x1, #0x58
 7e0:	eb00003f 	cmp	x1, x0
 7e4:	540000c0 	b.eq	7fc <deregister_tm_clones+0x2c>  // b.none
 7e8:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0x1005c>
 7ec:	f947e021 	ldr	x1, [x1, #4032]
 7f0:	b4000061 	cbz	x1, 7fc <deregister_tm_clones+0x2c>
 7f4:	aa0103f0 	mov	x16, x1
 7f8:	d61f0200 	br	x16
 7fc:	d65f03c0 	ret

0000000000000800 <register_tm_clones>:
 800:	d0000080 	adrp	x0, 12000 <__libc_start_main@GLIBC_2.34>
 804:	91016000 	add	x0, x0, #0x58
 808:	d0000081 	adrp	x1, 12000 <__libc_start_main@GLIBC_2.34>
 80c:	91016021 	add	x1, x1, #0x58
 810:	cb000021 	sub	x1, x1, x0
 814:	d37ffc22 	lsr	x2, x1, #63
 818:	8b810c41 	add	x1, x2, x1, asr #3
 81c:	9341fc21 	asr	x1, x1, #1
 820:	b40000c1 	cbz	x1, 838 <register_tm_clones+0x38>
 824:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0x1005c>
 828:	f947f042 	ldr	x2, [x2, #4064]
 82c:	b4000062 	cbz	x2, 838 <register_tm_clones+0x38>
 830:	aa0203f0 	mov	x16, x2
 834:	d61f0200 	br	x16
 838:	d65f03c0 	ret
 83c:	d503201f 	nop

0000000000000840 <__do_global_dtors_aux>:
 840:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 844:	910003fd 	mov	x29, sp
 848:	f9000bf3 	str	x19, [sp, #16]
 84c:	d0000093 	adrp	x19, 12000 <__libc_start_main@GLIBC_2.34>
 850:	39416260 	ldrb	w0, [x19, #88]
 854:	35000140 	cbnz	w0, 87c <__do_global_dtors_aux+0x3c>
 858:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x1005c>
 85c:	f947e400 	ldr	x0, [x0, #4040]
 860:	b4000080 	cbz	x0, 870 <__do_global_dtors_aux+0x30>
 864:	d0000080 	adrp	x0, 12000 <__libc_start_main@GLIBC_2.34>
 868:	f9402800 	ldr	x0, [x0, #80]
 86c:	97ffffa5 	bl	700 <__cxa_finalize@plt>
 870:	97ffffd8 	bl	7d0 <deregister_tm_clones>
 874:	52800020 	mov	w0, #0x1                   	// #1
 878:	39016260 	strb	w0, [x19, #88]
 87c:	f9400bf3 	ldr	x19, [sp, #16]
 880:	a8c27bfd 	ldp	x29, x30, [sp], #32
 884:	d65f03c0 	ret
 888:	d503201f 	nop
 88c:	d503201f 	nop

0000000000000890 <frame_dummy>:
 890:	17ffffdc 	b	800 <register_tm_clones>

0000000000000894 <process_data>:
 894:	d100c3ff 	sub	sp, sp, #0x30
 898:	a9027bfd 	stp	x29, x30, [sp, #32]
 89c:	910083fd 	add	x29, sp, #0x20
 8a0:	d10023a8 	sub	x8, x29, #0x8
 8a4:	927dd108 	and	x8, x8, #0xfffffffffffff8
 8a8:	d2e12009 	mov	x9, #0x900000000000000     	// #648518346341351424
 8ac:	f90007e9 	str	x9, [sp, #8]
 8b0:	aa090108 	orr	x8, x8, x9
 8b4:	f90003e8 	str	x8, [sp]
 8b8:	f81f83a8 	stur	x8, [x29, #-8]
 8bc:	f9400101 	ldr	x1, [x8]
 8c0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8c4:	91328000 	add	x0, x0, #0xca0
 8c8:	97ffffa2 	bl	750 <printf@plt>
 8cc:	f94003e9 	ldr	x9, [sp]
 8d0:	f94007e8 	ldr	x8, [sp, #8]
 8d4:	f9400129 	ldr	x9, [x9]
 8d8:	b340dd28 	bfxil	x8, x9, #0, #56
 8dc:	39400101 	ldrb	w1, [x8]
 8e0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8e4:	9132b400 	add	x0, x0, #0xcad
 8e8:	97ffff9a 	bl	750 <printf@plt>
 8ec:	f94007e8 	ldr	x8, [sp, #8]
 8f0:	910043e9 	add	x9, sp, #0x10
 8f4:	927dd129 	and	x9, x9, #0xfffffffffffff8
 8f8:	aa080129 	orr	x9, x9, x8
 8fc:	f9000be9 	str	x9, [sp, #16]
 900:	f9400129 	ldr	x9, [x9]
 904:	b340dd28 	bfxil	x8, x9, #0, #56
 908:	f9000128 	str	x8, [x9]
 90c:	a9427bfd 	ldp	x29, x30, [sp, #32]
 910:	9100c3ff 	add	sp, sp, #0x30
 914:	d65f03c0 	ret

0000000000000918 <check_tag>:
 918:	d100c3ff 	sub	sp, sp, #0x30
 91c:	f90017e0 	str	x0, [sp, #40]
 920:	39009fe1 	strb	w1, [sp, #39]
 924:	f94017e8 	ldr	x8, [sp, #40]
 928:	9240bd08 	and	x8, x8, #0xffffffffffff
 92c:	f9000fe8 	str	x8, [sp, #24]
 930:	f9400fe8 	ldr	x8, [sp, #24]
 934:	39409fe9 	ldrb	w9, [sp, #39]
 938:	aa09e108 	orr	x8, x8, x9, lsl #56
 93c:	f9000be8 	str	x8, [sp, #16]
 940:	f9400be8 	ldr	x8, [sp, #16]
 944:	b9400108 	ldr	w8, [x8]
 948:	b9000fe8 	str	w8, [sp, #12]
 94c:	9100c3ff 	add	sp, sp, #0x30
 950:	d65f03c0 	ret

0000000000000954 <get_color>:
 954:	d10043ff 	sub	sp, sp, #0x10
 958:	f90007e0 	str	x0, [sp, #8]
 95c:	f94007e8 	ldr	x8, [sp, #8]
 960:	d378fd08 	lsr	x8, x8, #56
 964:	92400d08 	and	x8, x8, #0xf
 968:	2a0803e0 	mov	w0, w8
 96c:	910043ff 	add	sp, sp, #0x10
 970:	d65f03c0 	ret

0000000000000974 <set_specific_tag>:
 974:	d10043ff 	sub	sp, sp, #0x10
 978:	f90007e0 	str	x0, [sp, #8]
 97c:	39001fe1 	strb	w1, [sp, #7]
 980:	f94007e8 	ldr	x8, [sp, #8]
 984:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 988:	39401fe9 	ldrb	w9, [sp, #7]
 98c:	aa09e100 	orr	x0, x8, x9, lsl #56
 990:	910043ff 	add	sp, sp, #0x10
 994:	d65f03c0 	ret

0000000000000998 <mte_set_tag>:
 998:	d10143ff 	sub	sp, sp, #0x50
 99c:	a9047bfd 	stp	x29, x30, [sp, #64]
 9a0:	910103fd 	add	x29, sp, #0x40
 9a4:	f81f83a0 	stur	x0, [x29, #-8]
 9a8:	381f73a1 	sturb	w1, [x29, #-9]
 9ac:	f81e83a2 	stur	x2, [x29, #-24]
 9b0:	f85f83a0 	ldur	x0, [x29, #-8]
 9b4:	385f73a1 	ldurb	w1, [x29, #-9]
 9b8:	97ffffef 	bl	974 <set_specific_tag>
 9bc:	f90013e0 	str	x0, [sp, #32]
 9c0:	d2800208 	mov	x8, #0x10                  	// #16
 9c4:	f9000fe8 	str	x8, [sp, #24]
 9c8:	f9000bff 	str	xzr, [sp, #16]
 9cc:	14000001 	b	9d0 <mte_set_tag+0x38>
 9d0:	f9400be8 	ldr	x8, [sp, #16]
 9d4:	f85e83a9 	ldur	x9, [x29, #-24]
 9d8:	eb090108 	subs	x8, x8, x9
 9dc:	540001c2 	b.cs	a14 <mte_set_tag+0x7c>  // b.hs, b.nlast
 9e0:	14000001 	b	9e4 <mte_set_tag+0x4c>
 9e4:	f94013e8 	ldr	x8, [sp, #32]
 9e8:	f9400be9 	ldr	x9, [sp, #16]
 9ec:	8b090108 	add	x8, x8, x9
 9f0:	f90007e8 	str	x8, [sp, #8]
 9f4:	f94007e8 	ldr	x8, [sp, #8]
 9f8:	d9200908 	stg	x8, [x8]
 9fc:	14000001 	b	a00 <mte_set_tag+0x68>
 a00:	f9400fe9 	ldr	x9, [sp, #24]
 a04:	f9400be8 	ldr	x8, [sp, #16]
 a08:	8b090108 	add	x8, x8, x9
 a0c:	f9000be8 	str	x8, [sp, #16]
 a10:	17fffff0 	b	9d0 <mte_set_tag+0x38>
 a14:	f94013e0 	ldr	x0, [sp, #32]
 a18:	a9447bfd 	ldp	x29, x30, [sp, #64]
 a1c:	910143ff 	add	sp, sp, #0x50
 a20:	d65f03c0 	ret

0000000000000a24 <main>:
 a24:	d10183ff 	sub	sp, sp, #0x60
 a28:	a9057bfd 	stp	x29, x30, [sp, #80]
 a2c:	910143fd 	add	x29, sp, #0x50
 a30:	b81fc3bf 	stur	wzr, [x29, #-4]
 a34:	d2800340 	mov	x0, #0x1a                  	// #26
 a38:	97ffff36 	bl	710 <getauxval@plt>
 a3c:	2a0003e8 	mov	w8, w0
 a40:	37900108 	tbnz	w8, #18, a60 <main+0x3c>
 a44:	14000001 	b	a48 <main+0x24>
 a48:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a4c:	91330000 	add	x0, x0, #0xcc0
 a50:	97ffff40 	bl	750 <printf@plt>
 a54:	52800028 	mov	w8, #0x1                   	// #1
 a58:	b81fc3a8 	stur	w8, [x29, #-4]
 a5c:	14000087 	b	c78 <main+0x254>
 a60:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a64:	91335800 	add	x0, x0, #0xcd6
 a68:	97ffff3a 	bl	750 <printf@plt>
 a6c:	14000001 	b	a70 <main+0x4c>
 a70:	528006e0 	mov	w0, #0x37                  	// #55
 a74:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 a78:	f2a000e1 	movk	x1, #0x7, lsl #16
 a7c:	2a1f03e4 	mov	w4, wzr
 a80:	2a0403e2 	mov	w2, w4
 a84:	2a0403e3 	mov	w3, w4
 a88:	97ffff36 	bl	760 <prctl@plt>
 a8c:	34000100 	cbz	w0, aac <main+0x88>
 a90:	14000001 	b	a94 <main+0x70>
 a94:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a98:	9133a000 	add	x0, x0, #0xce8
 a9c:	97ffff15 	bl	6f0 <perror@plt>
 aa0:	52800028 	mov	w8, #0x1                   	// #1
 aa4:	b81fc3a8 	stur	w8, [x29, #-4]
 aa8:	14000074 	b	c78 <main+0x254>
 aac:	aa1f03e0 	mov	x0, xzr
 ab0:	f81e03a0 	stur	x0, [x29, #-32]
 ab4:	d2820001 	mov	x1, #0x1000                	// #4096
 ab8:	52800462 	mov	w2, #0x23                  	// #35
 abc:	b9001fe2 	str	w2, [sp, #28]
 ac0:	52800443 	mov	w3, #0x22                  	// #34
 ac4:	b90023e3 	str	w3, [sp, #32]
 ac8:	12800004 	mov	w4, #0xffffffff            	// #-1
 acc:	b90027e4 	str	w4, [sp, #36]
 ad0:	aa1f03e5 	mov	x5, xzr
 ad4:	f90017e5 	str	x5, [sp, #40]
 ad8:	97ffff1a 	bl	740 <mmap@plt>
 adc:	b9401fe2 	ldr	w2, [sp, #28]
 ae0:	b94023e3 	ldr	w3, [sp, #32]
 ae4:	b94027e4 	ldr	w4, [sp, #36]
 ae8:	f94017e5 	ldr	x5, [sp, #40]
 aec:	aa0003e8 	mov	x8, x0
 af0:	f85e03a0 	ldur	x0, [x29, #-32]
 af4:	f81f03a8 	stur	x8, [x29, #-16]
 af8:	d2840001 	mov	x1, #0x2000                	// #8192
 afc:	97ffff11 	bl	740 <mmap@plt>
 b00:	f81e83a0 	stur	x0, [x29, #-24]
 b04:	f85f03a8 	ldur	x8, [x29, #-16]
 b08:	b1000508 	adds	x8, x8, #0x1
 b0c:	54000101 	b.ne	b2c <main+0x108>  // b.any
 b10:	14000001 	b	b14 <main+0xf0>
 b14:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b18:	9133dc00 	add	x0, x0, #0xcf7
 b1c:	97fffef5 	bl	6f0 <perror@plt>
 b20:	52800028 	mov	w8, #0x1                   	// #1
 b24:	b81fc3a8 	stur	w8, [x29, #-4]
 b28:	14000054 	b	c78 <main+0x254>
 b2c:	f85f03a1 	ldur	x1, [x29, #-16]
 b30:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b34:	91341400 	add	x0, x0, #0xd05
 b38:	97ffff06 	bl	750 <printf@plt>
 b3c:	f85f03a9 	ldur	x9, [x29, #-16]
 b40:	52800828 	mov	w8, #0x41                  	// #65
 b44:	b9000fe8 	str	w8, [sp, #12]
 b48:	39000128 	strb	w8, [x9]
 b4c:	f85f03a9 	ldur	x9, [x29, #-16]
 b50:	52800848 	mov	w8, #0x42                  	// #66
 b54:	39000528 	strb	w8, [x9, #1]
 b58:	f85f03a8 	ldur	x8, [x29, #-16]
 b5c:	39400101 	ldrb	w1, [x8]
 b60:	f85f03a8 	ldur	x8, [x29, #-16]
 b64:	39400502 	ldrb	w2, [x8, #1]
 b68:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b6c:	91347000 	add	x0, x0, #0xd1c
 b70:	f9000be0 	str	x0, [sp, #16]
 b74:	97fffef7 	bl	750 <printf@plt>
 b78:	f85f03a0 	ldur	x0, [x29, #-16]
 b7c:	52800061 	mov	w1, #0x3                   	// #3
 b80:	d2802002 	mov	x2, #0x100                 	// #256
 b84:	97ffff85 	bl	998 <mte_set_tag>
 b88:	f81f03a0 	stur	x0, [x29, #-16]
 b8c:	f85e83a0 	ldur	x0, [x29, #-24]
 b90:	52800081 	mov	w1, #0x4                   	// #4
 b94:	d2840002 	mov	x2, #0x2000                	// #8192
 b98:	97ffff80 	bl	998 <mte_set_tag>
 b9c:	f81e83a0 	stur	x0, [x29, #-24]
 ba0:	f85f03a0 	ldur	x0, [x29, #-16]
 ba4:	97ffff6c 	bl	954 <get_color>
 ba8:	12001c01 	and	w1, w0, #0xff
 bac:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bb0:	9134f400 	add	x0, x0, #0xd3d
 bb4:	97fffee7 	bl	750 <printf@plt>
 bb8:	f85e83a0 	ldur	x0, [x29, #-24]
 bbc:	97ffff66 	bl	954 <get_color>
 bc0:	12001c01 	and	w1, w0, #0xff
 bc4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bc8:	91354000 	add	x0, x0, #0xd50
 bcc:	97fffee1 	bl	750 <printf@plt>
 bd0:	f85f03a1 	ldur	x1, [x29, #-16]
 bd4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bd8:	91359400 	add	x0, x0, #0xd65
 bdc:	97fffedd 	bl	750 <printf@plt>
 be0:	f85e83a1 	ldur	x1, [x29, #-24]
 be4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 be8:	91360000 	add	x0, x0, #0xd80
 bec:	97fffed9 	bl	750 <printf@plt>
 bf0:	b9400fe8 	ldr	w8, [sp, #12]
 bf4:	f9400be0 	ldr	x0, [sp, #16]
 bf8:	f85f03a9 	ldur	x9, [x29, #-16]
 bfc:	39000128 	strb	w8, [x9]
 c00:	f85f03a9 	ldur	x9, [x29, #-16]
 c04:	52800888 	mov	w8, #0x44                  	// #68
 c08:	39000528 	strb	w8, [x9, #1]
 c0c:	f85f03a8 	ldur	x8, [x29, #-16]
 c10:	39400101 	ldrb	w1, [x8]
 c14:	f85f03a8 	ldur	x8, [x29, #-16]
 c18:	39400502 	ldrb	w2, [x8, #1]
 c1c:	97fffecd 	bl	750 <printf@plt>
 c20:	f85f03a8 	ldur	x8, [x29, #-16]
 c24:	39400101 	ldrb	w1, [x8]
 c28:	f85f03a8 	ldur	x8, [x29, #-16]
 c2c:	39400502 	ldrb	w2, [x8, #1]
 c30:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c34:	91367400 	add	x0, x0, #0xd9d
 c38:	97fffec6 	bl	750 <printf@plt>
 c3c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c40:	91371800 	add	x0, x0, #0xdc6
 c44:	97fffec3 	bl	750 <printf@plt>
 c48:	f85f03a0 	ldur	x0, [x29, #-16]
 c4c:	97ffff12 	bl	894 <process_data>
 c50:	f85f03a8 	ldur	x8, [x29, #-16]
 c54:	39404101 	ldrb	w1, [x8, #16]
 c58:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c5c:	91377000 	add	x0, x0, #0xddc
 c60:	97fffebc 	bl	750 <printf@plt>
 c64:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c68:	9137c800 	add	x0, x0, #0xdf2
 c6c:	97fffeb9 	bl	750 <printf@plt>
 c70:	b81fc3bf 	stur	wzr, [x29, #-4]
 c74:	14000001 	b	c78 <main+0x254>
 c78:	b85fc3a0 	ldur	w0, [x29, #-4]
 c7c:	a9457bfd 	ldp	x29, x30, [sp, #80]
 c80:	910183ff 	add	sp, sp, #0x60
 c84:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000c88 <_fini>:
 c88:	d503201f 	nop
 c8c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 c90:	910003fd 	mov	x29, sp
 c94:	a8c17bfd 	ldp	x29, x30, [sp], #16
 c98:	d65f03c0 	ret
