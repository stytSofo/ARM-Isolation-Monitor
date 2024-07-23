
mte:     file format elf64-littleaarch64


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
 6c4:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xff8c>
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
 79c:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xff8c>
 7a0:	f947ec00 	ldr	x0, [x0, #4056]
 7a4:	d2800003 	mov	x3, #0x0                   	// #0
 7a8:	d2800004 	mov	x4, #0x0                   	// #0
 7ac:	97ffffcd 	bl	6e0 <__libc_start_main@plt>
 7b0:	97ffffe0 	bl	730 <abort@plt>

00000000000007b4 <call_weak_fn>:
 7b4:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xff8c>
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
 7e8:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0xff8c>
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
 824:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0xff8c>
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
 858:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xff8c>
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

0000000000000894 <check_tag>:
 894:	d100c3ff 	sub	sp, sp, #0x30
 898:	f90017e0 	str	x0, [sp, #40]
 89c:	39009fe1 	strb	w1, [sp, #39]
 8a0:	f94017e8 	ldr	x8, [sp, #40]
 8a4:	9240bd08 	and	x8, x8, #0xffffffffffff
 8a8:	f9000fe8 	str	x8, [sp, #24]
 8ac:	f9400fe8 	ldr	x8, [sp, #24]
 8b0:	39409fe9 	ldrb	w9, [sp, #39]
 8b4:	aa09e108 	orr	x8, x8, x9, lsl #56
 8b8:	f9000be8 	str	x8, [sp, #16]
 8bc:	f9400be8 	ldr	x8, [sp, #16]
 8c0:	b9400108 	ldr	w8, [x8]
 8c4:	b9000fe8 	str	w8, [sp, #12]
 8c8:	9100c3ff 	add	sp, sp, #0x30
 8cc:	d65f03c0 	ret

00000000000008d0 <get_color>:
 8d0:	d10043ff 	sub	sp, sp, #0x10
 8d4:	f90007e0 	str	x0, [sp, #8]
 8d8:	f94007e8 	ldr	x8, [sp, #8]
 8dc:	d378fd08 	lsr	x8, x8, #56
 8e0:	92400d08 	and	x8, x8, #0xf
 8e4:	2a0803e0 	mov	w0, w8
 8e8:	910043ff 	add	sp, sp, #0x10
 8ec:	d65f03c0 	ret

00000000000008f0 <set_specific_tag>:
 8f0:	d10043ff 	sub	sp, sp, #0x10
 8f4:	f90007e0 	str	x0, [sp, #8]
 8f8:	39001fe1 	strb	w1, [sp, #7]
 8fc:	f94007e8 	ldr	x8, [sp, #8]
 900:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 904:	39401fe9 	ldrb	w9, [sp, #7]
 908:	aa09e100 	orr	x0, x8, x9, lsl #56
 90c:	910043ff 	add	sp, sp, #0x10
 910:	d65f03c0 	ret

0000000000000914 <mte_set_tag>:
 914:	d10143ff 	sub	sp, sp, #0x50
 918:	a9047bfd 	stp	x29, x30, [sp, #64]
 91c:	910103fd 	add	x29, sp, #0x40
 920:	f81f83a0 	stur	x0, [x29, #-8]
 924:	381f73a1 	sturb	w1, [x29, #-9]
 928:	f81e83a2 	stur	x2, [x29, #-24]
 92c:	f85f83a0 	ldur	x0, [x29, #-8]
 930:	385f73a1 	ldurb	w1, [x29, #-9]
 934:	97ffffef 	bl	8f0 <set_specific_tag>
 938:	f90013e0 	str	x0, [sp, #32]
 93c:	d2800208 	mov	x8, #0x10                  	// #16
 940:	f9000fe8 	str	x8, [sp, #24]
 944:	f9000bff 	str	xzr, [sp, #16]
 948:	14000001 	b	94c <mte_set_tag+0x38>
 94c:	f9400be8 	ldr	x8, [sp, #16]
 950:	f85e83a9 	ldur	x9, [x29, #-24]
 954:	eb090108 	subs	x8, x8, x9
 958:	540001c2 	b.cs	990 <mte_set_tag+0x7c>  // b.hs, b.nlast
 95c:	14000001 	b	960 <mte_set_tag+0x4c>
 960:	f94013e8 	ldr	x8, [sp, #32]
 964:	f9400be9 	ldr	x9, [sp, #16]
 968:	8b090108 	add	x8, x8, x9
 96c:	f90007e8 	str	x8, [sp, #8]
 970:	f94007e8 	ldr	x8, [sp, #8]
 974:	d9200908 	stg	x8, [x8]
 978:	14000001 	b	97c <mte_set_tag+0x68>
 97c:	f9400fe9 	ldr	x9, [sp, #24]
 980:	f9400be8 	ldr	x8, [sp, #16]
 984:	8b090108 	add	x8, x8, x9
 988:	f9000be8 	str	x8, [sp, #16]
 98c:	17fffff0 	b	94c <mte_set_tag+0x38>
 990:	f94013e0 	ldr	x0, [sp, #32]
 994:	a9447bfd 	ldp	x29, x30, [sp, #64]
 998:	910143ff 	add	sp, sp, #0x50
 99c:	d65f03c0 	ret

00000000000009a0 <main>:
 9a0:	d10143ff 	sub	sp, sp, #0x50
 9a4:	a9047bfd 	stp	x29, x30, [sp, #64]
 9a8:	910103fd 	add	x29, sp, #0x40
 9ac:	b81fc3bf 	stur	wzr, [x29, #-4]
 9b0:	d2800340 	mov	x0, #0x1a                  	// #26
 9b4:	97ffff57 	bl	710 <getauxval@plt>
 9b8:	2a0003e8 	mov	w8, w0
 9bc:	37900108 	tbnz	w8, #18, 9dc <main+0x3c>
 9c0:	14000001 	b	9c4 <main+0x24>
 9c4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 9c8:	91344000 	add	x0, x0, #0xd10
 9cc:	97ffff61 	bl	750 <printf@plt>
 9d0:	52800028 	mov	w8, #0x1                   	// #1
 9d4:	b81fc3a8 	stur	w8, [x29, #-4]
 9d8:	14000088 	b	bf8 <main+0x258>
 9dc:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 9e0:	91349800 	add	x0, x0, #0xd26
 9e4:	97ffff5b 	bl	750 <printf@plt>
 9e8:	14000001 	b	9ec <main+0x4c>
 9ec:	528006e0 	mov	w0, #0x37                  	// #55
 9f0:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 9f4:	f2a000e1 	movk	x1, #0x7, lsl #16
 9f8:	2a1f03e4 	mov	w4, wzr
 9fc:	2a0403e2 	mov	w2, w4
 a00:	2a0403e3 	mov	w3, w4
 a04:	97ffff57 	bl	760 <prctl@plt>
 a08:	34000100 	cbz	w0, a28 <main+0x88>
 a0c:	14000001 	b	a10 <main+0x70>
 a10:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a14:	9134e000 	add	x0, x0, #0xd38
 a18:	97ffff36 	bl	6f0 <perror@plt>
 a1c:	52800028 	mov	w8, #0x1                   	// #1
 a20:	b81fc3a8 	stur	w8, [x29, #-4]
 a24:	14000075 	b	bf8 <main+0x258>
 a28:	aa1f03e0 	mov	x0, xzr
 a2c:	f90013e0 	str	x0, [sp, #32]
 a30:	d2820001 	mov	x1, #0x1000                	// #4096
 a34:	52800462 	mov	w2, #0x23                  	// #35
 a38:	b9000fe2 	str	w2, [sp, #12]
 a3c:	52800443 	mov	w3, #0x22                  	// #34
 a40:	b90013e3 	str	w3, [sp, #16]
 a44:	12800004 	mov	w4, #0xffffffff            	// #-1
 a48:	b90017e4 	str	w4, [sp, #20]
 a4c:	aa1f03e5 	mov	x5, xzr
 a50:	f9000fe5 	str	x5, [sp, #24]
 a54:	97ffff3b 	bl	740 <mmap@plt>
 a58:	b9400fe2 	ldr	w2, [sp, #12]
 a5c:	b94013e3 	ldr	w3, [sp, #16]
 a60:	b94017e4 	ldr	w4, [sp, #20]
 a64:	f9400fe5 	ldr	x5, [sp, #24]
 a68:	aa0003e8 	mov	x8, x0
 a6c:	f94013e0 	ldr	x0, [sp, #32]
 a70:	f81f03a8 	stur	x8, [x29, #-16]
 a74:	d2840001 	mov	x1, #0x2000                	// #8192
 a78:	97ffff32 	bl	740 <mmap@plt>
 a7c:	f81e83a0 	stur	x0, [x29, #-24]
 a80:	f85f03a8 	ldur	x8, [x29, #-16]
 a84:	b1000508 	adds	x8, x8, #0x1
 a88:	54000101 	b.ne	aa8 <main+0x108>  // b.any
 a8c:	14000001 	b	a90 <main+0xf0>
 a90:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a94:	91351c00 	add	x0, x0, #0xd47
 a98:	97ffff16 	bl	6f0 <perror@plt>
 a9c:	52800028 	mov	w8, #0x1                   	// #1
 aa0:	b81fc3a8 	stur	w8, [x29, #-4]
 aa4:	14000055 	b	bf8 <main+0x258>
 aa8:	f85f03a1 	ldur	x1, [x29, #-16]
 aac:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 ab0:	91355400 	add	x0, x0, #0xd55
 ab4:	97ffff27 	bl	750 <printf@plt>
 ab8:	f85f03a9 	ldur	x9, [x29, #-16]
 abc:	52800828 	mov	w8, #0x41                  	// #65
 ac0:	39000128 	strb	w8, [x9]
 ac4:	f85f03a9 	ldur	x9, [x29, #-16]
 ac8:	52800848 	mov	w8, #0x42                  	// #66
 acc:	39000528 	strb	w8, [x9, #1]
 ad0:	f85f03a8 	ldur	x8, [x29, #-16]
 ad4:	39400101 	ldrb	w1, [x8]
 ad8:	f85f03a8 	ldur	x8, [x29, #-16]
 adc:	39400502 	ldrb	w2, [x8, #1]
 ae0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 ae4:	9135b000 	add	x0, x0, #0xd6c
 ae8:	f90003e0 	str	x0, [sp]
 aec:	97ffff19 	bl	750 <printf@plt>
 af0:	f85f03a0 	ldur	x0, [x29, #-16]
 af4:	52800061 	mov	w1, #0x3                   	// #3
 af8:	b9000be1 	str	w1, [sp, #8]
 afc:	d2802002 	mov	x2, #0x100                 	// #256
 b00:	97ffff85 	bl	914 <mte_set_tag>
 b04:	f81f03a0 	stur	x0, [x29, #-16]
 b08:	f85e83a0 	ldur	x0, [x29, #-24]
 b0c:	52800081 	mov	w1, #0x4                   	// #4
 b10:	d2840002 	mov	x2, #0x2000                	// #8192
 b14:	97ffff80 	bl	914 <mte_set_tag>
 b18:	f81e83a0 	stur	x0, [x29, #-24]
 b1c:	f85f03a0 	ldur	x0, [x29, #-16]
 b20:	97ffff6c 	bl	8d0 <get_color>
 b24:	12001c01 	and	w1, w0, #0xff
 b28:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b2c:	91363400 	add	x0, x0, #0xd8d
 b30:	97ffff08 	bl	750 <printf@plt>
 b34:	f85e83a0 	ldur	x0, [x29, #-24]
 b38:	97ffff66 	bl	8d0 <get_color>
 b3c:	12001c01 	and	w1, w0, #0xff
 b40:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b44:	91368000 	add	x0, x0, #0xda0
 b48:	97ffff02 	bl	750 <printf@plt>
 b4c:	f85f03a1 	ldur	x1, [x29, #-16]
 b50:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b54:	9136d400 	add	x0, x0, #0xdb5
 b58:	97fffefe 	bl	750 <printf@plt>
 b5c:	f85e83a1 	ldur	x1, [x29, #-24]
 b60:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b64:	91374000 	add	x0, x0, #0xdd0
 b68:	97fffefa 	bl	750 <printf@plt>
 b6c:	f94003e0 	ldr	x0, [sp]
 b70:	f85f03a9 	ldur	x9, [x29, #-16]
 b74:	52800868 	mov	w8, #0x43                  	// #67
 b78:	39000128 	strb	w8, [x9]
 b7c:	f85f03a9 	ldur	x9, [x29, #-16]
 b80:	52800888 	mov	w8, #0x44                  	// #68
 b84:	39000528 	strb	w8, [x9, #1]
 b88:	f85f03a8 	ldur	x8, [x29, #-16]
 b8c:	39400101 	ldrb	w1, [x8]
 b90:	f85f03a8 	ldur	x8, [x29, #-16]
 b94:	39400502 	ldrb	w2, [x8, #1]
 b98:	97fffeee 	bl	750 <printf@plt>
 b9c:	f85f03a8 	ldur	x8, [x29, #-16]
 ba0:	39400101 	ldrb	w1, [x8]
 ba4:	f85f03a8 	ldur	x8, [x29, #-16]
 ba8:	39400502 	ldrb	w2, [x8, #1]
 bac:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bb0:	9137b400 	add	x0, x0, #0xded
 bb4:	97fffee7 	bl	750 <printf@plt>
 bb8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bbc:	91385800 	add	x0, x0, #0xe16
 bc0:	97fffee4 	bl	750 <printf@plt>
 bc4:	b9400be1 	ldr	w1, [sp, #8]
 bc8:	f85f03a0 	ldur	x0, [x29, #-16]
 bcc:	94000025 	bl	c60 <safe_process_data>
 bd0:	f85f03a8 	ldur	x8, [x29, #-16]
 bd4:	39404101 	ldrb	w1, [x8, #16]
 bd8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bdc:	9138b000 	add	x0, x0, #0xe2c
 be0:	97fffedc 	bl	750 <printf@plt>
 be4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 be8:	91390800 	add	x0, x0, #0xe42
 bec:	97fffed9 	bl	750 <printf@plt>
 bf0:	b81fc3bf 	stur	wzr, [x29, #-4]
 bf4:	14000001 	b	bf8 <main+0x258>
 bf8:	b85fc3a0 	ldur	w0, [x29, #-4]
 bfc:	a9447bfd 	ldp	x29, x30, [sp, #64]
 c00:	910143ff 	add	sp, sp, #0x50
 c04:	d65f03c0 	ret

0000000000000c08 <run_if_tag_matches>:
 c08:	d10103ff 	sub	sp, sp, #0x40
 c0c:	a9037bfd 	stp	x29, x30, [sp, #48]
 c10:	9100c3fd 	add	x29, sp, #0x30
 c14:	f81f83a0 	stur	x0, [x29, #-8]
 c18:	381f73a1 	sturb	w1, [x29, #-9]
 c1c:	f9000fe2 	str	x2, [sp, #24]
 c20:	f85f83a8 	ldur	x8, [x29, #-8]
 c24:	9240bd08 	and	x8, x8, #0xffffffffffff
 c28:	f9000be8 	str	x8, [sp, #16]
 c2c:	f9400be8 	ldr	x8, [sp, #16]
 c30:	385f73a9 	ldurb	w9, [x29, #-9]
 c34:	aa09e108 	orr	x8, x8, x9, lsl #56
 c38:	f90007e8 	str	x8, [sp, #8]
 c3c:	f94007e8 	ldr	x8, [sp, #8]
 c40:	b9400108 	ldr	w8, [x8]
 c44:	b90007e8 	str	w8, [sp, #4]
 c48:	f9400fe8 	ldr	x8, [sp, #24]
 c4c:	f85f83a0 	ldur	x0, [x29, #-8]
 c50:	d63f0100 	blr	x8
 c54:	a9437bfd 	ldp	x29, x30, [sp, #48]
 c58:	910103ff 	add	sp, sp, #0x40
 c5c:	d65f03c0 	ret

0000000000000c60 <safe_process_data>:
 c60:	d10083ff 	sub	sp, sp, #0x20
 c64:	a9017bfd 	stp	x29, x30, [sp, #16]
 c68:	910043fd 	add	x29, sp, #0x10
 c6c:	f90007e0 	str	x0, [sp, #8]
 c70:	39001fe1 	strb	w1, [sp, #7]
 c74:	f94007e0 	ldr	x0, [sp, #8]
 c78:	39401fe1 	ldrb	w1, [sp, #7]
 c7c:	90000002 	adrp	x2, 0 <__abi_tag-0x278>
 c80:	91325042 	add	x2, x2, #0xc94
 c84:	97ffffe1 	bl	c08 <run_if_tag_matches>
 c88:	a9417bfd 	ldp	x29, x30, [sp, #16]
 c8c:	910083ff 	add	sp, sp, #0x20
 c90:	d65f03c0 	ret

0000000000000c94 <process_data>:
 c94:	d10083ff 	sub	sp, sp, #0x20
 c98:	a9017bfd 	stp	x29, x30, [sp, #16]
 c9c:	910043fd 	add	x29, sp, #0x10
 ca0:	f90007e0 	str	x0, [sp, #8]
 ca4:	f94007e8 	ldr	x8, [sp, #8]
 ca8:	d2820009 	mov	x9, #0x1000                	// #4096
 cac:	f2e02009 	movk	x9, #0x100, lsl #48
 cb0:	8b090108 	add	x8, x8, x9
 cb4:	f90007e8 	str	x8, [sp, #8]
 cb8:	f94007e1 	ldr	x1, [sp, #8]
 cbc:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 cc0:	91397800 	add	x0, x0, #0xe5e
 cc4:	97fffea3 	bl	750 <printf@plt>
 cc8:	f94007e8 	ldr	x8, [sp, #8]
 ccc:	f90003e8 	str	x8, [sp]
 cd0:	f94003e1 	ldr	x1, [sp]
 cd4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 cd8:	9139f800 	add	x0, x0, #0xe7e
 cdc:	97fffe9d 	bl	750 <printf@plt>
 ce0:	f94003e9 	ldr	x9, [sp]
 ce4:	52800c28 	mov	w8, #0x61                  	// #97
 ce8:	39000128 	strb	w8, [x9]
 cec:	a9417bfd 	ldp	x29, x30, [sp, #16]
 cf0:	910083ff 	add	sp, sp, #0x20
 cf4:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000cf8 <_fini>:
 cf8:	d503201f 	nop
 cfc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 d00:	910003fd 	mov	x29, sp
 d04:	a8c17bfd 	ldp	x29, x30, [sp], #16
 d08:	d65f03c0 	ret
