
pass_mte_load_store_fixed:     file format elf64-littleaarch64


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
 8a0:	d10023a8 	sub	x8, x29, #0x8
 8a4:	927dd108 	and	x8, x8, #0xfffffffffffff8
 8a8:	d2e12009 	mov	x9, #0x900000000000000     	// #648518346341351424
 8ac:	f90007e9 	str	x9, [sp, #8]
 8b0:	aa090108 	orr	x8, x8, x9
 8b4:	f90003e8 	str	x8, [sp]
 8b8:	f9000100 	str	x0, [x8]
 8bc:	f9400101 	ldr	x1, [x8]
 8c0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8c4:	9132b000 	add	x0, x0, #0xcac
 8c8:	97ffffa2 	bl	750 <printf@plt>
 8cc:	f94003e9 	ldr	x9, [sp]
 8d0:	f94007e8 	ldr	x8, [sp, #8]
 8d4:	f9400129 	ldr	x9, [x9]
 8d8:	b340dd28 	bfxil	x8, x9, #0, #56
 8dc:	39400101 	ldrb	w1, [x8]
 8e0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8e4:	9132e400 	add	x0, x0, #0xcb9
 8e8:	97ffff9a 	bl	750 <printf@plt>
 8ec:	f94003e8 	ldr	x8, [sp]
 8f0:	f94007e9 	ldr	x9, [sp, #8]
 8f4:	f940010a 	ldr	x10, [x8]
 8f8:	910043e8 	add	x8, sp, #0x10
 8fc:	927dd108 	and	x8, x8, #0xfffffffffffff8
 900:	aa090108 	orr	x8, x8, x9
 904:	f900010a 	str	x10, [x8]
 908:	f9400108 	ldr	x8, [x8]
 90c:	b340dd09 	bfxil	x9, x8, #0, #56
 910:	52800c28 	mov	w8, #0x61                  	// #97
 914:	39000128 	strb	w8, [x9]
 918:	a9427bfd 	ldp	x29, x30, [sp, #32]
 91c:	9100c3ff 	add	sp, sp, #0x30
 920:	d65f03c0 	ret

0000000000000924 <check_tag>:
 924:	d100c3ff 	sub	sp, sp, #0x30
 928:	f90017e0 	str	x0, [sp, #40]
 92c:	39009fe1 	strb	w1, [sp, #39]
 930:	f94017e8 	ldr	x8, [sp, #40]
 934:	9240bd08 	and	x8, x8, #0xffffffffffff
 938:	f9000fe8 	str	x8, [sp, #24]
 93c:	f9400fe8 	ldr	x8, [sp, #24]
 940:	39409fe9 	ldrb	w9, [sp, #39]
 944:	aa09e108 	orr	x8, x8, x9, lsl #56
 948:	f9000be8 	str	x8, [sp, #16]
 94c:	f9400be8 	ldr	x8, [sp, #16]
 950:	b9400108 	ldr	w8, [x8]
 954:	b9000fe8 	str	w8, [sp, #12]
 958:	9100c3ff 	add	sp, sp, #0x30
 95c:	d65f03c0 	ret

0000000000000960 <get_color>:
 960:	d10043ff 	sub	sp, sp, #0x10
 964:	f90007e0 	str	x0, [sp, #8]
 968:	f94007e8 	ldr	x8, [sp, #8]
 96c:	d378fd08 	lsr	x8, x8, #56
 970:	92400d08 	and	x8, x8, #0xf
 974:	2a0803e0 	mov	w0, w8
 978:	910043ff 	add	sp, sp, #0x10
 97c:	d65f03c0 	ret

0000000000000980 <set_specific_tag>:
 980:	d10043ff 	sub	sp, sp, #0x10
 984:	f90007e0 	str	x0, [sp, #8]
 988:	39001fe1 	strb	w1, [sp, #7]
 98c:	f94007e8 	ldr	x8, [sp, #8]
 990:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 994:	39401fe9 	ldrb	w9, [sp, #7]
 998:	aa09e100 	orr	x0, x8, x9, lsl #56
 99c:	910043ff 	add	sp, sp, #0x10
 9a0:	d65f03c0 	ret

00000000000009a4 <mte_set_tag>:
 9a4:	d10143ff 	sub	sp, sp, #0x50
 9a8:	a9047bfd 	stp	x29, x30, [sp, #64]
 9ac:	910103fd 	add	x29, sp, #0x40
 9b0:	f81f83a0 	stur	x0, [x29, #-8]
 9b4:	381f73a1 	sturb	w1, [x29, #-9]
 9b8:	f81e83a2 	stur	x2, [x29, #-24]
 9bc:	f85f83a0 	ldur	x0, [x29, #-8]
 9c0:	385f73a1 	ldurb	w1, [x29, #-9]
 9c4:	97ffffef 	bl	980 <set_specific_tag>
 9c8:	f90013e0 	str	x0, [sp, #32]
 9cc:	d2800208 	mov	x8, #0x10                  	// #16
 9d0:	f9000fe8 	str	x8, [sp, #24]
 9d4:	f9000bff 	str	xzr, [sp, #16]
 9d8:	14000001 	b	9dc <mte_set_tag+0x38>
 9dc:	f9400be8 	ldr	x8, [sp, #16]
 9e0:	f85e83a9 	ldur	x9, [x29, #-24]
 9e4:	eb090108 	subs	x8, x8, x9
 9e8:	540001c2 	b.cs	a20 <mte_set_tag+0x7c>  // b.hs, b.nlast
 9ec:	14000001 	b	9f0 <mte_set_tag+0x4c>
 9f0:	f94013e8 	ldr	x8, [sp, #32]
 9f4:	f9400be9 	ldr	x9, [sp, #16]
 9f8:	8b090108 	add	x8, x8, x9
 9fc:	f90007e8 	str	x8, [sp, #8]
 a00:	f94007e8 	ldr	x8, [sp, #8]
 a04:	d9200908 	stg	x8, [x8]
 a08:	14000001 	b	a0c <mte_set_tag+0x68>
 a0c:	f9400fe9 	ldr	x9, [sp, #24]
 a10:	f9400be8 	ldr	x8, [sp, #16]
 a14:	8b090108 	add	x8, x8, x9
 a18:	f9000be8 	str	x8, [sp, #16]
 a1c:	17fffff0 	b	9dc <mte_set_tag+0x38>
 a20:	f94013e0 	ldr	x0, [sp, #32]
 a24:	a9447bfd 	ldp	x29, x30, [sp, #64]
 a28:	910143ff 	add	sp, sp, #0x50
 a2c:	d65f03c0 	ret

0000000000000a30 <main>:
 a30:	d10183ff 	sub	sp, sp, #0x60
 a34:	a9057bfd 	stp	x29, x30, [sp, #80]
 a38:	910143fd 	add	x29, sp, #0x50
 a3c:	b81fc3bf 	stur	wzr, [x29, #-4]
 a40:	d2800340 	mov	x0, #0x1a                  	// #26
 a44:	97ffff33 	bl	710 <getauxval@plt>
 a48:	2a0003e8 	mov	w8, w0
 a4c:	37900108 	tbnz	w8, #18, a6c <main+0x3c>
 a50:	14000001 	b	a54 <main+0x24>
 a54:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a58:	91333000 	add	x0, x0, #0xccc
 a5c:	97ffff3d 	bl	750 <printf@plt>
 a60:	52800028 	mov	w8, #0x1                   	// #1
 a64:	b81fc3a8 	stur	w8, [x29, #-4]
 a68:	14000087 	b	c84 <main+0x254>
 a6c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a70:	91338800 	add	x0, x0, #0xce2
 a74:	97ffff37 	bl	750 <printf@plt>
 a78:	14000001 	b	a7c <main+0x4c>
 a7c:	528006e0 	mov	w0, #0x37                  	// #55
 a80:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 a84:	f2a000e1 	movk	x1, #0x7, lsl #16
 a88:	2a1f03e4 	mov	w4, wzr
 a8c:	2a0403e2 	mov	w2, w4
 a90:	2a0403e3 	mov	w3, w4
 a94:	97ffff33 	bl	760 <prctl@plt>
 a98:	34000100 	cbz	w0, ab8 <main+0x88>
 a9c:	14000001 	b	aa0 <main+0x70>
 aa0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 aa4:	9133d000 	add	x0, x0, #0xcf4
 aa8:	97ffff12 	bl	6f0 <perror@plt>
 aac:	52800028 	mov	w8, #0x1                   	// #1
 ab0:	b81fc3a8 	stur	w8, [x29, #-4]
 ab4:	14000074 	b	c84 <main+0x254>
 ab8:	aa1f03e0 	mov	x0, xzr
 abc:	f81e03a0 	stur	x0, [x29, #-32]
 ac0:	d2820001 	mov	x1, #0x1000                	// #4096
 ac4:	52800462 	mov	w2, #0x23                  	// #35
 ac8:	b9001fe2 	str	w2, [sp, #28]
 acc:	52800443 	mov	w3, #0x22                  	// #34
 ad0:	b90023e3 	str	w3, [sp, #32]
 ad4:	12800004 	mov	w4, #0xffffffff            	// #-1
 ad8:	b90027e4 	str	w4, [sp, #36]
 adc:	aa1f03e5 	mov	x5, xzr
 ae0:	f90017e5 	str	x5, [sp, #40]
 ae4:	97ffff17 	bl	740 <mmap@plt>
 ae8:	b9401fe2 	ldr	w2, [sp, #28]
 aec:	b94023e3 	ldr	w3, [sp, #32]
 af0:	b94027e4 	ldr	w4, [sp, #36]
 af4:	f94017e5 	ldr	x5, [sp, #40]
 af8:	aa0003e8 	mov	x8, x0
 afc:	f85e03a0 	ldur	x0, [x29, #-32]
 b00:	f81f03a8 	stur	x8, [x29, #-16]
 b04:	d2840001 	mov	x1, #0x2000                	// #8192
 b08:	97ffff0e 	bl	740 <mmap@plt>
 b0c:	f81e83a0 	stur	x0, [x29, #-24]
 b10:	f85f03a8 	ldur	x8, [x29, #-16]
 b14:	b1000508 	adds	x8, x8, #0x1
 b18:	54000101 	b.ne	b38 <main+0x108>  // b.any
 b1c:	14000001 	b	b20 <main+0xf0>
 b20:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b24:	91340c00 	add	x0, x0, #0xd03
 b28:	97fffef2 	bl	6f0 <perror@plt>
 b2c:	52800028 	mov	w8, #0x1                   	// #1
 b30:	b81fc3a8 	stur	w8, [x29, #-4]
 b34:	14000054 	b	c84 <main+0x254>
 b38:	f85f03a1 	ldur	x1, [x29, #-16]
 b3c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b40:	91344400 	add	x0, x0, #0xd11
 b44:	97ffff03 	bl	750 <printf@plt>
 b48:	f85f03a9 	ldur	x9, [x29, #-16]
 b4c:	52800828 	mov	w8, #0x41                  	// #65
 b50:	b9000fe8 	str	w8, [sp, #12]
 b54:	39000128 	strb	w8, [x9]
 b58:	f85f03a9 	ldur	x9, [x29, #-16]
 b5c:	52800848 	mov	w8, #0x42                  	// #66
 b60:	39000528 	strb	w8, [x9, #1]
 b64:	f85f03a8 	ldur	x8, [x29, #-16]
 b68:	39400101 	ldrb	w1, [x8]
 b6c:	f85f03a8 	ldur	x8, [x29, #-16]
 b70:	39400502 	ldrb	w2, [x8, #1]
 b74:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b78:	9134a000 	add	x0, x0, #0xd28
 b7c:	f9000be0 	str	x0, [sp, #16]
 b80:	97fffef4 	bl	750 <printf@plt>
 b84:	f85f03a0 	ldur	x0, [x29, #-16]
 b88:	52800061 	mov	w1, #0x3                   	// #3
 b8c:	d2802002 	mov	x2, #0x100                 	// #256
 b90:	97ffff85 	bl	9a4 <mte_set_tag>
 b94:	f81f03a0 	stur	x0, [x29, #-16]
 b98:	f85e83a0 	ldur	x0, [x29, #-24]
 b9c:	52800081 	mov	w1, #0x4                   	// #4
 ba0:	d2840002 	mov	x2, #0x2000                	// #8192
 ba4:	97ffff80 	bl	9a4 <mte_set_tag>
 ba8:	f81e83a0 	stur	x0, [x29, #-24]
 bac:	f85f03a0 	ldur	x0, [x29, #-16]
 bb0:	97ffff6c 	bl	960 <get_color>
 bb4:	12001c01 	and	w1, w0, #0xff
 bb8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bbc:	91352400 	add	x0, x0, #0xd49
 bc0:	97fffee4 	bl	750 <printf@plt>
 bc4:	f85e83a0 	ldur	x0, [x29, #-24]
 bc8:	97ffff66 	bl	960 <get_color>
 bcc:	12001c01 	and	w1, w0, #0xff
 bd0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bd4:	91357000 	add	x0, x0, #0xd5c
 bd8:	97fffede 	bl	750 <printf@plt>
 bdc:	f85f03a1 	ldur	x1, [x29, #-16]
 be0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 be4:	9135c400 	add	x0, x0, #0xd71
 be8:	97fffeda 	bl	750 <printf@plt>
 bec:	f85e83a1 	ldur	x1, [x29, #-24]
 bf0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bf4:	91363000 	add	x0, x0, #0xd8c
 bf8:	97fffed6 	bl	750 <printf@plt>
 bfc:	b9400fe8 	ldr	w8, [sp, #12]
 c00:	f9400be0 	ldr	x0, [sp, #16]
 c04:	f85f03a9 	ldur	x9, [x29, #-16]
 c08:	39000128 	strb	w8, [x9]
 c0c:	f85f03a9 	ldur	x9, [x29, #-16]
 c10:	52800888 	mov	w8, #0x44                  	// #68
 c14:	39000528 	strb	w8, [x9, #1]
 c18:	f85f03a8 	ldur	x8, [x29, #-16]
 c1c:	39400101 	ldrb	w1, [x8]
 c20:	f85f03a8 	ldur	x8, [x29, #-16]
 c24:	39400502 	ldrb	w2, [x8, #1]
 c28:	97fffeca 	bl	750 <printf@plt>
 c2c:	f85f03a8 	ldur	x8, [x29, #-16]
 c30:	39400101 	ldrb	w1, [x8]
 c34:	f85f03a8 	ldur	x8, [x29, #-16]
 c38:	39400502 	ldrb	w2, [x8, #1]
 c3c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c40:	9136a400 	add	x0, x0, #0xda9
 c44:	97fffec3 	bl	750 <printf@plt>
 c48:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c4c:	91374800 	add	x0, x0, #0xdd2
 c50:	97fffec0 	bl	750 <printf@plt>
 c54:	f85f03a0 	ldur	x0, [x29, #-16]
 c58:	97ffff0f 	bl	894 <process_data>
 c5c:	f85f03a8 	ldur	x8, [x29, #-16]
 c60:	39404101 	ldrb	w1, [x8, #16]
 c64:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c68:	9137a000 	add	x0, x0, #0xde8
 c6c:	97fffeb9 	bl	750 <printf@plt>
 c70:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c74:	9137f800 	add	x0, x0, #0xdfe
 c78:	97fffeb6 	bl	750 <printf@plt>
 c7c:	b81fc3bf 	stur	wzr, [x29, #-4]
 c80:	14000001 	b	c84 <main+0x254>
 c84:	b85fc3a0 	ldur	w0, [x29, #-4]
 c88:	a9457bfd 	ldp	x29, x30, [sp, #80]
 c8c:	910183ff 	add	sp, sp, #0x60
 c90:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000c94 <_fini>:
 c94:	d503201f 	nop
 c98:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 c9c:	910003fd 	mov	x29, sp
 ca0:	a8c17bfd 	ldp	x29, x30, [sp], #16
 ca4:	d65f03c0 	ret
