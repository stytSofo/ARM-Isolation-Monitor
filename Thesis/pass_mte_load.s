
pass_mte_load:     file format elf64-littleaarch64


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
 6c4:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0x10054>
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
 79c:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x10054>
 7a0:	f947ec00 	ldr	x0, [x0, #4056]
 7a4:	d2800003 	mov	x3, #0x0                   	// #0
 7a8:	d2800004 	mov	x4, #0x0                   	// #0
 7ac:	97ffffcd 	bl	6e0 <__libc_start_main@plt>
 7b0:	97ffffe0 	bl	730 <abort@plt>

00000000000007b4 <call_weak_fn>:
 7b4:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x10054>
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
 7e8:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0x10054>
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
 824:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0x10054>
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
 858:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x10054>
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
 8a0:	f81f83a0 	stur	x0, [x29, #-8]
 8a4:	d10023a8 	sub	x8, x29, #0x8
 8a8:	927dd108 	and	x8, x8, #0xfffffffffffff8
 8ac:	d2e12009 	mov	x9, #0x900000000000000     	// #648518346341351424
 8b0:	f90007e9 	str	x9, [sp, #8]
 8b4:	aa090108 	orr	x8, x8, x9
 8b8:	f90003e8 	str	x8, [sp]
 8bc:	f9400101 	ldr	x1, [x8]
 8c0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8c4:	9132a000 	add	x0, x0, #0xca8
 8c8:	97ffffa2 	bl	750 <printf@plt>
 8cc:	f94003e9 	ldr	x9, [sp]
 8d0:	f94007e8 	ldr	x8, [sp, #8]
 8d4:	f9400129 	ldr	x9, [x9]
 8d8:	b340dd28 	bfxil	x8, x9, #0, #56
 8dc:	39400101 	ldrb	w1, [x8]
 8e0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8e4:	9132d400 	add	x0, x0, #0xcb5
 8e8:	97ffff9a 	bl	750 <printf@plt>
 8ec:	f94003e8 	ldr	x8, [sp]
 8f0:	f94007e9 	ldr	x9, [sp, #8]
 8f4:	f9400108 	ldr	x8, [x8]
 8f8:	f9000be8 	str	x8, [sp, #16]
 8fc:	910043e8 	add	x8, sp, #0x10
 900:	927dd108 	and	x8, x8, #0xfffffffffffff8
 904:	aa090108 	orr	x8, x8, x9
 908:	f9400109 	ldr	x9, [x8]
 90c:	52800c28 	mov	w8, #0x61                  	// #97
 910:	39000128 	strb	w8, [x9]
 914:	a9427bfd 	ldp	x29, x30, [sp, #32]
 918:	9100c3ff 	add	sp, sp, #0x30
 91c:	d65f03c0 	ret

0000000000000920 <check_tag>:
 920:	d100c3ff 	sub	sp, sp, #0x30
 924:	f90017e0 	str	x0, [sp, #40]
 928:	39009fe1 	strb	w1, [sp, #39]
 92c:	f94017e8 	ldr	x8, [sp, #40]
 930:	9240bd08 	and	x8, x8, #0xffffffffffff
 934:	f9000fe8 	str	x8, [sp, #24]
 938:	f9400fe8 	ldr	x8, [sp, #24]
 93c:	39409fe9 	ldrb	w9, [sp, #39]
 940:	aa09e108 	orr	x8, x8, x9, lsl #56
 944:	f9000be8 	str	x8, [sp, #16]
 948:	f9400be8 	ldr	x8, [sp, #16]
 94c:	b9400108 	ldr	w8, [x8]
 950:	b9000fe8 	str	w8, [sp, #12]
 954:	9100c3ff 	add	sp, sp, #0x30
 958:	d65f03c0 	ret

000000000000095c <get_color>:
 95c:	d10043ff 	sub	sp, sp, #0x10
 960:	f90007e0 	str	x0, [sp, #8]
 964:	f94007e8 	ldr	x8, [sp, #8]
 968:	d378fd08 	lsr	x8, x8, #56
 96c:	92400d08 	and	x8, x8, #0xf
 970:	2a0803e0 	mov	w0, w8
 974:	910043ff 	add	sp, sp, #0x10
 978:	d65f03c0 	ret

000000000000097c <set_specific_tag>:
 97c:	d10043ff 	sub	sp, sp, #0x10
 980:	f90007e0 	str	x0, [sp, #8]
 984:	39001fe1 	strb	w1, [sp, #7]
 988:	f94007e8 	ldr	x8, [sp, #8]
 98c:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 990:	39401fe9 	ldrb	w9, [sp, #7]
 994:	aa09e100 	orr	x0, x8, x9, lsl #56
 998:	910043ff 	add	sp, sp, #0x10
 99c:	d65f03c0 	ret

00000000000009a0 <mte_set_tag>:
 9a0:	d10143ff 	sub	sp, sp, #0x50
 9a4:	a9047bfd 	stp	x29, x30, [sp, #64]
 9a8:	910103fd 	add	x29, sp, #0x40
 9ac:	f81f83a0 	stur	x0, [x29, #-8]
 9b0:	381f73a1 	sturb	w1, [x29, #-9]
 9b4:	f81e83a2 	stur	x2, [x29, #-24]
 9b8:	f85f83a0 	ldur	x0, [x29, #-8]
 9bc:	385f73a1 	ldurb	w1, [x29, #-9]
 9c0:	97ffffef 	bl	97c <set_specific_tag>
 9c4:	f90013e0 	str	x0, [sp, #32]
 9c8:	d2800208 	mov	x8, #0x10                  	// #16
 9cc:	f9000fe8 	str	x8, [sp, #24]
 9d0:	f9000bff 	str	xzr, [sp, #16]
 9d4:	14000001 	b	9d8 <mte_set_tag+0x38>
 9d8:	f9400be8 	ldr	x8, [sp, #16]
 9dc:	f85e83a9 	ldur	x9, [x29, #-24]
 9e0:	eb090108 	subs	x8, x8, x9
 9e4:	540001c2 	b.cs	a1c <mte_set_tag+0x7c>  // b.hs, b.nlast
 9e8:	14000001 	b	9ec <mte_set_tag+0x4c>
 9ec:	f94013e8 	ldr	x8, [sp, #32]
 9f0:	f9400be9 	ldr	x9, [sp, #16]
 9f4:	8b090108 	add	x8, x8, x9
 9f8:	f90007e8 	str	x8, [sp, #8]
 9fc:	f94007e8 	ldr	x8, [sp, #8]
 a00:	d9200908 	stg	x8, [x8]
 a04:	14000001 	b	a08 <mte_set_tag+0x68>
 a08:	f9400fe9 	ldr	x9, [sp, #24]
 a0c:	f9400be8 	ldr	x8, [sp, #16]
 a10:	8b090108 	add	x8, x8, x9
 a14:	f9000be8 	str	x8, [sp, #16]
 a18:	17fffff0 	b	9d8 <mte_set_tag+0x38>
 a1c:	f94013e0 	ldr	x0, [sp, #32]
 a20:	a9447bfd 	ldp	x29, x30, [sp, #64]
 a24:	910143ff 	add	sp, sp, #0x50
 a28:	d65f03c0 	ret

0000000000000a2c <main>:
 a2c:	d10183ff 	sub	sp, sp, #0x60
 a30:	a9057bfd 	stp	x29, x30, [sp, #80]
 a34:	910143fd 	add	x29, sp, #0x50
 a38:	b81fc3bf 	stur	wzr, [x29, #-4]
 a3c:	d2800340 	mov	x0, #0x1a                  	// #26
 a40:	97ffff34 	bl	710 <getauxval@plt>
 a44:	2a0003e8 	mov	w8, w0
 a48:	37900108 	tbnz	w8, #18, a68 <main+0x3c>
 a4c:	14000001 	b	a50 <main+0x24>
 a50:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a54:	91332000 	add	x0, x0, #0xcc8
 a58:	97ffff3e 	bl	750 <printf@plt>
 a5c:	52800028 	mov	w8, #0x1                   	// #1
 a60:	b81fc3a8 	stur	w8, [x29, #-4]
 a64:	14000087 	b	c80 <main+0x254>
 a68:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a6c:	91337800 	add	x0, x0, #0xcde
 a70:	97ffff38 	bl	750 <printf@plt>
 a74:	14000001 	b	a78 <main+0x4c>
 a78:	528006e0 	mov	w0, #0x37                  	// #55
 a7c:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 a80:	f2a000e1 	movk	x1, #0x7, lsl #16
 a84:	2a1f03e4 	mov	w4, wzr
 a88:	2a0403e2 	mov	w2, w4
 a8c:	2a0403e3 	mov	w3, w4
 a90:	97ffff34 	bl	760 <prctl@plt>
 a94:	34000100 	cbz	w0, ab4 <main+0x88>
 a98:	14000001 	b	a9c <main+0x70>
 a9c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 aa0:	9133c000 	add	x0, x0, #0xcf0
 aa4:	97ffff13 	bl	6f0 <perror@plt>
 aa8:	52800028 	mov	w8, #0x1                   	// #1
 aac:	b81fc3a8 	stur	w8, [x29, #-4]
 ab0:	14000074 	b	c80 <main+0x254>
 ab4:	aa1f03e0 	mov	x0, xzr
 ab8:	f81e03a0 	stur	x0, [x29, #-32]
 abc:	d2820001 	mov	x1, #0x1000                	// #4096
 ac0:	52800462 	mov	w2, #0x23                  	// #35
 ac4:	b9001fe2 	str	w2, [sp, #28]
 ac8:	52800443 	mov	w3, #0x22                  	// #34
 acc:	b90023e3 	str	w3, [sp, #32]
 ad0:	12800004 	mov	w4, #0xffffffff            	// #-1
 ad4:	b90027e4 	str	w4, [sp, #36]
 ad8:	aa1f03e5 	mov	x5, xzr
 adc:	f90017e5 	str	x5, [sp, #40]
 ae0:	97ffff18 	bl	740 <mmap@plt>
 ae4:	b9401fe2 	ldr	w2, [sp, #28]
 ae8:	b94023e3 	ldr	w3, [sp, #32]
 aec:	b94027e4 	ldr	w4, [sp, #36]
 af0:	f94017e5 	ldr	x5, [sp, #40]
 af4:	aa0003e8 	mov	x8, x0
 af8:	f85e03a0 	ldur	x0, [x29, #-32]
 afc:	f81f03a8 	stur	x8, [x29, #-16]
 b00:	d2840001 	mov	x1, #0x2000                	// #8192
 b04:	97ffff0f 	bl	740 <mmap@plt>
 b08:	f81e83a0 	stur	x0, [x29, #-24]
 b0c:	f85f03a8 	ldur	x8, [x29, #-16]
 b10:	b1000508 	adds	x8, x8, #0x1
 b14:	54000101 	b.ne	b34 <main+0x108>  // b.any
 b18:	14000001 	b	b1c <main+0xf0>
 b1c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b20:	9133fc00 	add	x0, x0, #0xcff
 b24:	97fffef3 	bl	6f0 <perror@plt>
 b28:	52800028 	mov	w8, #0x1                   	// #1
 b2c:	b81fc3a8 	stur	w8, [x29, #-4]
 b30:	14000054 	b	c80 <main+0x254>
 b34:	f85f03a1 	ldur	x1, [x29, #-16]
 b38:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b3c:	91343400 	add	x0, x0, #0xd0d
 b40:	97ffff04 	bl	750 <printf@plt>
 b44:	f85f03a9 	ldur	x9, [x29, #-16]
 b48:	52800828 	mov	w8, #0x41                  	// #65
 b4c:	b9000fe8 	str	w8, [sp, #12]
 b50:	39000128 	strb	w8, [x9]
 b54:	f85f03a9 	ldur	x9, [x29, #-16]
 b58:	52800848 	mov	w8, #0x42                  	// #66
 b5c:	39000528 	strb	w8, [x9, #1]
 b60:	f85f03a8 	ldur	x8, [x29, #-16]
 b64:	39400101 	ldrb	w1, [x8]
 b68:	f85f03a8 	ldur	x8, [x29, #-16]
 b6c:	39400502 	ldrb	w2, [x8, #1]
 b70:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b74:	91349000 	add	x0, x0, #0xd24
 b78:	f9000be0 	str	x0, [sp, #16]
 b7c:	97fffef5 	bl	750 <printf@plt>
 b80:	f85f03a0 	ldur	x0, [x29, #-16]
 b84:	52800061 	mov	w1, #0x3                   	// #3
 b88:	d2802002 	mov	x2, #0x100                 	// #256
 b8c:	97ffff85 	bl	9a0 <mte_set_tag>
 b90:	f81f03a0 	stur	x0, [x29, #-16]
 b94:	f85e83a0 	ldur	x0, [x29, #-24]
 b98:	52800081 	mov	w1, #0x4                   	// #4
 b9c:	d2840002 	mov	x2, #0x2000                	// #8192
 ba0:	97ffff80 	bl	9a0 <mte_set_tag>
 ba4:	f81e83a0 	stur	x0, [x29, #-24]
 ba8:	f85f03a0 	ldur	x0, [x29, #-16]
 bac:	97ffff6c 	bl	95c <get_color>
 bb0:	12001c01 	and	w1, w0, #0xff
 bb4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bb8:	91351400 	add	x0, x0, #0xd45
 bbc:	97fffee5 	bl	750 <printf@plt>
 bc0:	f85e83a0 	ldur	x0, [x29, #-24]
 bc4:	97ffff66 	bl	95c <get_color>
 bc8:	12001c01 	and	w1, w0, #0xff
 bcc:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bd0:	91356000 	add	x0, x0, #0xd58
 bd4:	97fffedf 	bl	750 <printf@plt>
 bd8:	f85f03a1 	ldur	x1, [x29, #-16]
 bdc:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 be0:	9135b400 	add	x0, x0, #0xd6d
 be4:	97fffedb 	bl	750 <printf@plt>
 be8:	f85e83a1 	ldur	x1, [x29, #-24]
 bec:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bf0:	91362000 	add	x0, x0, #0xd88
 bf4:	97fffed7 	bl	750 <printf@plt>
 bf8:	b9400fe8 	ldr	w8, [sp, #12]
 bfc:	f9400be0 	ldr	x0, [sp, #16]
 c00:	f85f03a9 	ldur	x9, [x29, #-16]
 c04:	39000128 	strb	w8, [x9]
 c08:	f85f03a9 	ldur	x9, [x29, #-16]
 c0c:	52800888 	mov	w8, #0x44                  	// #68
 c10:	39000528 	strb	w8, [x9, #1]
 c14:	f85f03a8 	ldur	x8, [x29, #-16]
 c18:	39400101 	ldrb	w1, [x8]
 c1c:	f85f03a8 	ldur	x8, [x29, #-16]
 c20:	39400502 	ldrb	w2, [x8, #1]
 c24:	97fffecb 	bl	750 <printf@plt>
 c28:	f85f03a8 	ldur	x8, [x29, #-16]
 c2c:	39400101 	ldrb	w1, [x8]
 c30:	f85f03a8 	ldur	x8, [x29, #-16]
 c34:	39400502 	ldrb	w2, [x8, #1]
 c38:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c3c:	91369400 	add	x0, x0, #0xda5
 c40:	97fffec4 	bl	750 <printf@plt>
 c44:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c48:	91373800 	add	x0, x0, #0xdce
 c4c:	97fffec1 	bl	750 <printf@plt>
 c50:	f85f03a0 	ldur	x0, [x29, #-16]
 c54:	97ffff10 	bl	894 <process_data>
 c58:	f85f03a8 	ldur	x8, [x29, #-16]
 c5c:	39404101 	ldrb	w1, [x8, #16]
 c60:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c64:	91379000 	add	x0, x0, #0xde4
 c68:	97fffeba 	bl	750 <printf@plt>
 c6c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c70:	9137e800 	add	x0, x0, #0xdfa
 c74:	97fffeb7 	bl	750 <printf@plt>
 c78:	b81fc3bf 	stur	wzr, [x29, #-4]
 c7c:	14000001 	b	c80 <main+0x254>
 c80:	b85fc3a0 	ldur	w0, [x29, #-4]
 c84:	a9457bfd 	ldp	x29, x30, [sp, #80]
 c88:	910183ff 	add	sp, sp, #0x60
 c8c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000c90 <_fini>:
 c90:	d503201f 	nop
 c94:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 c98:	910003fd 	mov	x29, sp
 c9c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 ca0:	d65f03c0 	ret