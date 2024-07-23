
pass_mte_singleFile:     file format elf64-littleaarch64


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
 6c4:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xff1c>
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
 79c:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xff1c>
 7a0:	f947ec00 	ldr	x0, [x0, #4056]
 7a4:	d2800003 	mov	x3, #0x0                   	// #0
 7a8:	d2800004 	mov	x4, #0x0                   	// #0
 7ac:	97ffffcd 	bl	6e0 <__libc_start_main@plt>
 7b0:	97ffffe0 	bl	730 <abort@plt>

00000000000007b4 <call_weak_fn>:
 7b4:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xff1c>
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
 7e8:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0xff1c>
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
 824:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0xff1c>
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
 858:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xff1c>
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

0000000000000894 <run_if_tag_matches>:
 894:	d10103ff 	sub	sp, sp, #0x40
 898:	a9037bfd 	stp	x29, x30, [sp, #48]
 89c:	9100c3fd 	add	x29, sp, #0x30
 8a0:	f81f83a0 	stur	x0, [x29, #-8]
 8a4:	381f43a1 	sturb	w1, [x29, #-12]
 8a8:	f9000fe2 	str	x2, [sp, #24]
 8ac:	d10023a8 	sub	x8, x29, #0x8
 8b0:	927dd108 	and	x8, x8, #0xfffffffffffff8
 8b4:	d2e1200a 	mov	x10, #0x900000000000000     	// #648518346341351424
 8b8:	aa0a0109 	orr	x9, x8, x10
 8bc:	f9400128 	ldr	x8, [x9]
 8c0:	9240bd08 	and	x8, x8, #0xffffffffffff
 8c4:	f9000be8 	str	x8, [sp, #16]
 8c8:	910043e8 	add	x8, sp, #0x10
 8cc:	927dd108 	and	x8, x8, #0xfffffffffffff8
 8d0:	aa0a0108 	orr	x8, x8, x10
 8d4:	f9400108 	ldr	x8, [x8]
 8d8:	d10033ab 	sub	x11, x29, #0xc
 8dc:	927ed56b 	and	x11, x11, #0xfffffffffffffc
 8e0:	aa0a016b 	orr	x11, x11, x10
 8e4:	3940016b 	ldrb	w11, [x11]
 8e8:	aa0be108 	orr	x8, x8, x11, lsl #56
 8ec:	f90007e8 	str	x8, [sp, #8]
 8f0:	910023e8 	add	x8, sp, #0x8
 8f4:	927dd108 	and	x8, x8, #0xfffffffffffff8
 8f8:	aa0a0108 	orr	x8, x8, x10
 8fc:	f9400108 	ldr	x8, [x8]
 900:	b9400108 	ldr	w8, [x8]
 904:	b90007e8 	str	w8, [sp, #4]
 908:	910063e8 	add	x8, sp, #0x18
 90c:	927dd108 	and	x8, x8, #0xfffffffffffff8
 910:	aa0a0108 	orr	x8, x8, x10
 914:	f9400108 	ldr	x8, [x8]
 918:	f9400120 	ldr	x0, [x9]
 91c:	d63f0100 	blr	x8
 920:	a9437bfd 	ldp	x29, x30, [sp, #48]
 924:	910103ff 	add	sp, sp, #0x40
 928:	d65f03c0 	ret

000000000000092c <process_data>:
 92c:	d10103ff 	sub	sp, sp, #0x40
 930:	a9037bfd 	stp	x29, x30, [sp, #48]
 934:	9100c3fd 	add	x29, sp, #0x30
 938:	f81f83a0 	stur	x0, [x29, #-8]
 93c:	d10023a8 	sub	x8, x29, #0x8
 940:	927dd108 	and	x8, x8, #0xfffffffffffff8
 944:	d2e12009 	mov	x9, #0x900000000000000     	// #648518346341351424
 948:	f9000be9 	str	x9, [sp, #16]
 94c:	aa090108 	orr	x8, x8, x9
 950:	f90007e8 	str	x8, [sp, #8]
 954:	f9400101 	ldr	x1, [x8]
 958:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 95c:	91361000 	add	x0, x0, #0xd84
 960:	97ffff7c 	bl	750 <printf@plt>
 964:	f94007e8 	ldr	x8, [sp, #8]
 968:	f9400be9 	ldr	x9, [sp, #16]
 96c:	f9400108 	ldr	x8, [x8]
 970:	f81f03a8 	stur	x8, [x29, #-16]
 974:	d10043a8 	sub	x8, x29, #0x10
 978:	927dd108 	and	x8, x8, #0xfffffffffffff8
 97c:	aa090108 	orr	x8, x8, x9
 980:	f9000fe8 	str	x8, [sp, #24]
 984:	f9400101 	ldr	x1, [x8]
 988:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 98c:	91369000 	add	x0, x0, #0xda4
 990:	97ffff70 	bl	750 <printf@plt>
 994:	f9400fe8 	ldr	x8, [sp, #24]
 998:	f9400109 	ldr	x9, [x8]
 99c:	52800c28 	mov	w8, #0x61                  	// #97
 9a0:	39000128 	strb	w8, [x9]
 9a4:	a9437bfd 	ldp	x29, x30, [sp, #48]
 9a8:	910103ff 	add	sp, sp, #0x40
 9ac:	d65f03c0 	ret

00000000000009b0 <safe_process_data>:
 9b0:	d10083ff 	sub	sp, sp, #0x20
 9b4:	a9017bfd 	stp	x29, x30, [sp, #16]
 9b8:	910043fd 	add	x29, sp, #0x10
 9bc:	f90007e0 	str	x0, [sp, #8]
 9c0:	390013e1 	strb	w1, [sp, #4]
 9c4:	910023e8 	add	x8, sp, #0x8
 9c8:	927dd108 	and	x8, x8, #0xfffffffffffff8
 9cc:	d2e12009 	mov	x9, #0x900000000000000     	// #648518346341351424
 9d0:	aa090108 	orr	x8, x8, x9
 9d4:	f9400100 	ldr	x0, [x8]
 9d8:	910013e8 	add	x8, sp, #0x4
 9dc:	927ed508 	and	x8, x8, #0xfffffffffffffc
 9e0:	aa090108 	orr	x8, x8, x9
 9e4:	39400101 	ldrb	w1, [x8]
 9e8:	90000002 	adrp	x2, 0 <__abi_tag-0x278>
 9ec:	9124b042 	add	x2, x2, #0x92c
 9f0:	97ffffa9 	bl	894 <run_if_tag_matches>
 9f4:	a9417bfd 	ldp	x29, x30, [sp, #16]
 9f8:	910083ff 	add	sp, sp, #0x20
 9fc:	d65f03c0 	ret

0000000000000a00 <check_tag>:
 a00:	d100c3ff 	sub	sp, sp, #0x30
 a04:	f90017e0 	str	x0, [sp, #40]
 a08:	39009fe1 	strb	w1, [sp, #39]
 a0c:	f94017e8 	ldr	x8, [sp, #40]
 a10:	9240bd08 	and	x8, x8, #0xffffffffffff
 a14:	f9000fe8 	str	x8, [sp, #24]
 a18:	f9400fe8 	ldr	x8, [sp, #24]
 a1c:	39409fe9 	ldrb	w9, [sp, #39]
 a20:	aa09e108 	orr	x8, x8, x9, lsl #56
 a24:	f9000be8 	str	x8, [sp, #16]
 a28:	f9400be8 	ldr	x8, [sp, #16]
 a2c:	b9400108 	ldr	w8, [x8]
 a30:	b9000fe8 	str	w8, [sp, #12]
 a34:	9100c3ff 	add	sp, sp, #0x30
 a38:	d65f03c0 	ret

0000000000000a3c <get_color>:
 a3c:	d10043ff 	sub	sp, sp, #0x10
 a40:	f90007e0 	str	x0, [sp, #8]
 a44:	f94007e8 	ldr	x8, [sp, #8]
 a48:	d378fd08 	lsr	x8, x8, #56
 a4c:	92400d08 	and	x8, x8, #0xf
 a50:	2a0803e0 	mov	w0, w8
 a54:	910043ff 	add	sp, sp, #0x10
 a58:	d65f03c0 	ret

0000000000000a5c <set_specific_tag>:
 a5c:	d10043ff 	sub	sp, sp, #0x10
 a60:	f90007e0 	str	x0, [sp, #8]
 a64:	39001fe1 	strb	w1, [sp, #7]
 a68:	f94007e8 	ldr	x8, [sp, #8]
 a6c:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 a70:	39401fe9 	ldrb	w9, [sp, #7]
 a74:	aa09e100 	orr	x0, x8, x9, lsl #56
 a78:	910043ff 	add	sp, sp, #0x10
 a7c:	d65f03c0 	ret

0000000000000a80 <mte_set_tag>:
 a80:	d10143ff 	sub	sp, sp, #0x50
 a84:	a9047bfd 	stp	x29, x30, [sp, #64]
 a88:	910103fd 	add	x29, sp, #0x40
 a8c:	f81f83a0 	stur	x0, [x29, #-8]
 a90:	381f73a1 	sturb	w1, [x29, #-9]
 a94:	f81e83a2 	stur	x2, [x29, #-24]
 a98:	f85f83a0 	ldur	x0, [x29, #-8]
 a9c:	385f73a1 	ldurb	w1, [x29, #-9]
 aa0:	97ffffef 	bl	a5c <set_specific_tag>
 aa4:	f90013e0 	str	x0, [sp, #32]
 aa8:	d2800208 	mov	x8, #0x10                  	// #16
 aac:	f9000fe8 	str	x8, [sp, #24]
 ab0:	f9000bff 	str	xzr, [sp, #16]
 ab4:	14000001 	b	ab8 <mte_set_tag+0x38>
 ab8:	f9400be8 	ldr	x8, [sp, #16]
 abc:	f85e83a9 	ldur	x9, [x29, #-24]
 ac0:	eb090108 	subs	x8, x8, x9
 ac4:	540001c2 	b.cs	afc <mte_set_tag+0x7c>  // b.hs, b.nlast
 ac8:	14000001 	b	acc <mte_set_tag+0x4c>
 acc:	f94013e8 	ldr	x8, [sp, #32]
 ad0:	f9400be9 	ldr	x9, [sp, #16]
 ad4:	8b090108 	add	x8, x8, x9
 ad8:	f90007e8 	str	x8, [sp, #8]
 adc:	f94007e8 	ldr	x8, [sp, #8]
 ae0:	d9200908 	stg	x8, [x8]
 ae4:	14000001 	b	ae8 <mte_set_tag+0x68>
 ae8:	f9400fe9 	ldr	x9, [sp, #24]
 aec:	f9400be8 	ldr	x8, [sp, #16]
 af0:	8b090108 	add	x8, x8, x9
 af4:	f9000be8 	str	x8, [sp, #16]
 af8:	17fffff0 	b	ab8 <mte_set_tag+0x38>
 afc:	f94013e0 	ldr	x0, [sp, #32]
 b00:	a9447bfd 	ldp	x29, x30, [sp, #64]
 b04:	910143ff 	add	sp, sp, #0x50
 b08:	d65f03c0 	ret

0000000000000b0c <main>:
 b0c:	d10143ff 	sub	sp, sp, #0x50
 b10:	a9047bfd 	stp	x29, x30, [sp, #64]
 b14:	910103fd 	add	x29, sp, #0x40
 b18:	b81fc3bf 	stur	wzr, [x29, #-4]
 b1c:	d2800340 	mov	x0, #0x1a                  	// #26
 b20:	97fffefc 	bl	710 <getauxval@plt>
 b24:	2a0003e8 	mov	w8, w0
 b28:	37900108 	tbnz	w8, #18, b48 <main+0x3c>
 b2c:	14000001 	b	b30 <main+0x24>
 b30:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b34:	9136f400 	add	x0, x0, #0xdbd
 b38:	97ffff06 	bl	750 <printf@plt>
 b3c:	52800028 	mov	w8, #0x1                   	// #1
 b40:	b81fc3a8 	stur	w8, [x29, #-4]
 b44:	14000086 	b	d5c <main+0x250>
 b48:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b4c:	91374c00 	add	x0, x0, #0xdd3
 b50:	97ffff00 	bl	750 <printf@plt>
 b54:	14000001 	b	b58 <main+0x4c>
 b58:	528006e0 	mov	w0, #0x37                  	// #55
 b5c:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 b60:	f2a000e1 	movk	x1, #0x7, lsl #16
 b64:	2a1f03e4 	mov	w4, wzr
 b68:	2a0403e2 	mov	w2, w4
 b6c:	2a0403e3 	mov	w3, w4
 b70:	97fffefc 	bl	760 <prctl@plt>
 b74:	34000100 	cbz	w0, b94 <main+0x88>
 b78:	14000001 	b	b7c <main+0x70>
 b7c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b80:	91379400 	add	x0, x0, #0xde5
 b84:	97fffedb 	bl	6f0 <perror@plt>
 b88:	52800028 	mov	w8, #0x1                   	// #1
 b8c:	b81fc3a8 	stur	w8, [x29, #-4]
 b90:	14000073 	b	d5c <main+0x250>
 b94:	aa1f03e0 	mov	x0, xzr
 b98:	f90013e0 	str	x0, [sp, #32]
 b9c:	d2820001 	mov	x1, #0x1000                	// #4096
 ba0:	52800462 	mov	w2, #0x23                  	// #35
 ba4:	b9000fe2 	str	w2, [sp, #12]
 ba8:	52800443 	mov	w3, #0x22                  	// #34
 bac:	b90013e3 	str	w3, [sp, #16]
 bb0:	12800004 	mov	w4, #0xffffffff            	// #-1
 bb4:	b90017e4 	str	w4, [sp, #20]
 bb8:	aa1f03e5 	mov	x5, xzr
 bbc:	f9000fe5 	str	x5, [sp, #24]
 bc0:	97fffee0 	bl	740 <mmap@plt>
 bc4:	b9400fe2 	ldr	w2, [sp, #12]
 bc8:	b94013e3 	ldr	w3, [sp, #16]
 bcc:	b94017e4 	ldr	w4, [sp, #20]
 bd0:	f9400fe5 	ldr	x5, [sp, #24]
 bd4:	aa0003e8 	mov	x8, x0
 bd8:	f94013e0 	ldr	x0, [sp, #32]
 bdc:	f81f03a8 	stur	x8, [x29, #-16]
 be0:	d2840001 	mov	x1, #0x2000                	// #8192
 be4:	97fffed7 	bl	740 <mmap@plt>
 be8:	f81e83a0 	stur	x0, [x29, #-24]
 bec:	f85f03a8 	ldur	x8, [x29, #-16]
 bf0:	b1000508 	adds	x8, x8, #0x1
 bf4:	54000101 	b.ne	c14 <main+0x108>  // b.any
 bf8:	14000001 	b	bfc <main+0xf0>
 bfc:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c00:	9137d000 	add	x0, x0, #0xdf4
 c04:	97fffebb 	bl	6f0 <perror@plt>
 c08:	52800028 	mov	w8, #0x1                   	// #1
 c0c:	b81fc3a8 	stur	w8, [x29, #-4]
 c10:	14000053 	b	d5c <main+0x250>
 c14:	f85f03a1 	ldur	x1, [x29, #-16]
 c18:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c1c:	91380800 	add	x0, x0, #0xe02
 c20:	97fffecc 	bl	750 <printf@plt>
 c24:	f85f03a9 	ldur	x9, [x29, #-16]
 c28:	52800828 	mov	w8, #0x41                  	// #65
 c2c:	39000128 	strb	w8, [x9]
 c30:	f85f03a9 	ldur	x9, [x29, #-16]
 c34:	52800848 	mov	w8, #0x42                  	// #66
 c38:	39000528 	strb	w8, [x9, #1]
 c3c:	f85f03a8 	ldur	x8, [x29, #-16]
 c40:	39400101 	ldrb	w1, [x8]
 c44:	f85f03a8 	ldur	x8, [x29, #-16]
 c48:	39400502 	ldrb	w2, [x8, #1]
 c4c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c50:	91386400 	add	x0, x0, #0xe19
 c54:	f90003e0 	str	x0, [sp]
 c58:	97fffebe 	bl	750 <printf@plt>
 c5c:	f85f03a0 	ldur	x0, [x29, #-16]
 c60:	52800061 	mov	w1, #0x3                   	// #3
 c64:	d2802002 	mov	x2, #0x100                 	// #256
 c68:	97ffff86 	bl	a80 <mte_set_tag>
 c6c:	f81f03a0 	stur	x0, [x29, #-16]
 c70:	f85e83a0 	ldur	x0, [x29, #-24]
 c74:	52800081 	mov	w1, #0x4                   	// #4
 c78:	d2840002 	mov	x2, #0x2000                	// #8192
 c7c:	97ffff81 	bl	a80 <mte_set_tag>
 c80:	f81e83a0 	stur	x0, [x29, #-24]
 c84:	f85f03a0 	ldur	x0, [x29, #-16]
 c88:	97ffff6d 	bl	a3c <get_color>
 c8c:	12001c01 	and	w1, w0, #0xff
 c90:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c94:	9138e800 	add	x0, x0, #0xe3a
 c98:	97fffeae 	bl	750 <printf@plt>
 c9c:	f85e83a0 	ldur	x0, [x29, #-24]
 ca0:	97ffff67 	bl	a3c <get_color>
 ca4:	12001c01 	and	w1, w0, #0xff
 ca8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 cac:	91393400 	add	x0, x0, #0xe4d
 cb0:	97fffea8 	bl	750 <printf@plt>
 cb4:	f85f03a1 	ldur	x1, [x29, #-16]
 cb8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 cbc:	91398800 	add	x0, x0, #0xe62
 cc0:	97fffea4 	bl	750 <printf@plt>
 cc4:	f85e83a1 	ldur	x1, [x29, #-24]
 cc8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 ccc:	9139f400 	add	x0, x0, #0xe7d
 cd0:	97fffea0 	bl	750 <printf@plt>
 cd4:	f94003e0 	ldr	x0, [sp]
 cd8:	f85f03a9 	ldur	x9, [x29, #-16]
 cdc:	52800868 	mov	w8, #0x43                  	// #67
 ce0:	39000128 	strb	w8, [x9]
 ce4:	f85f03a9 	ldur	x9, [x29, #-16]
 ce8:	52800888 	mov	w8, #0x44                  	// #68
 cec:	39000528 	strb	w8, [x9, #1]
 cf0:	f85f03a8 	ldur	x8, [x29, #-16]
 cf4:	39400101 	ldrb	w1, [x8]
 cf8:	f85f03a8 	ldur	x8, [x29, #-16]
 cfc:	39400502 	ldrb	w2, [x8, #1]
 d00:	97fffe94 	bl	750 <printf@plt>
 d04:	f85f03a8 	ldur	x8, [x29, #-16]
 d08:	39400101 	ldrb	w1, [x8]
 d0c:	f85f03a8 	ldur	x8, [x29, #-16]
 d10:	39400502 	ldrb	w2, [x8, #1]
 d14:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 d18:	913a6800 	add	x0, x0, #0xe9a
 d1c:	97fffe8d 	bl	750 <printf@plt>
 d20:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 d24:	913b0c00 	add	x0, x0, #0xec3
 d28:	97fffe8a 	bl	750 <printf@plt>
 d2c:	f85f03a0 	ldur	x0, [x29, #-16]
 d30:	97fffeff 	bl	92c <process_data>
 d34:	f85f03a8 	ldur	x8, [x29, #-16]
 d38:	39404101 	ldrb	w1, [x8, #16]
 d3c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 d40:	913b6400 	add	x0, x0, #0xed9
 d44:	97fffe83 	bl	750 <printf@plt>
 d48:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 d4c:	913bbc00 	add	x0, x0, #0xeef
 d50:	97fffe80 	bl	750 <printf@plt>
 d54:	b81fc3bf 	stur	wzr, [x29, #-4]
 d58:	14000001 	b	d5c <main+0x250>
 d5c:	b85fc3a0 	ldur	w0, [x29, #-4]
 d60:	a9447bfd 	ldp	x29, x30, [sp, #64]
 d64:	910143ff 	add	sp, sp, #0x50
 d68:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000d6c <_fini>:
 d6c:	d503201f 	nop
 d70:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 d74:	910003fd 	mov	x29, sp
 d78:	a8c17bfd 	ldp	x29, x30, [sp], #16
 d7c:	d65f03c0 	ret
