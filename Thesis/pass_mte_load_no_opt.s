
pass_mte_load_no_opt:     file format elf64-littleaarch64


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
 6c4:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0x1007c>
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
 79c:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x1007c>
 7a0:	f947ec00 	ldr	x0, [x0, #4056]
 7a4:	d2800003 	mov	x3, #0x0                   	// #0
 7a8:	d2800004 	mov	x4, #0x0                   	// #0
 7ac:	97ffffcd 	bl	6e0 <__libc_start_main@plt>
 7b0:	97ffffe0 	bl	730 <abort@plt>

00000000000007b4 <call_weak_fn>:
 7b4:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x1007c>
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
 7e8:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0x1007c>
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
 824:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0x1007c>
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
 858:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x1007c>
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
 894:	d10083ff 	sub	sp, sp, #0x20
 898:	a9017bfd 	stp	x29, x30, [sp, #16]
 89c:	910043fd 	add	x29, sp, #0x10
 8a0:	910023e8 	add	x8, sp, #0x8
 8a4:	927dd108 	and	x8, x8, #0xfffffffffffff8
 8a8:	d2e12009 	mov	x9, #0x900000000000000     	// #648518346341351424
 8ac:	aa090108 	orr	x8, x8, x9
 8b0:	f90007e8 	str	x8, [sp, #8]
 8b4:	f94007e1 	ldr	x1, [sp, #8]
 8b8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8bc:	91320000 	add	x0, x0, #0xc80
 8c0:	97ffffa4 	bl	750 <printf@plt>
 8c4:	f94007e8 	ldr	x8, [sp, #8]
 8c8:	39400101 	ldrb	w1, [x8]
 8cc:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8d0:	91323400 	add	x0, x0, #0xc8d
 8d4:	97ffff9f 	bl	750 <printf@plt>
 8d8:	f94007e8 	ldr	x8, [sp, #8]
 8dc:	f90003e8 	str	x8, [sp]
 8e0:	f94003e9 	ldr	x9, [sp]
 8e4:	52800c28 	mov	w8, #0x61                  	// #97
 8e8:	39000128 	strb	w8, [x9]
 8ec:	a9417bfd 	ldp	x29, x30, [sp, #16]
 8f0:	910083ff 	add	sp, sp, #0x20
 8f4:	d65f03c0 	ret

00000000000008f8 <check_tag>:
 8f8:	d100c3ff 	sub	sp, sp, #0x30
 8fc:	f90017e0 	str	x0, [sp, #40]
 900:	39009fe1 	strb	w1, [sp, #39]
 904:	f94017e8 	ldr	x8, [sp, #40]
 908:	9240bd08 	and	x8, x8, #0xffffffffffff
 90c:	f9000fe8 	str	x8, [sp, #24]
 910:	f9400fe8 	ldr	x8, [sp, #24]
 914:	39409fe9 	ldrb	w9, [sp, #39]
 918:	aa09e108 	orr	x8, x8, x9, lsl #56
 91c:	f9000be8 	str	x8, [sp, #16]
 920:	f9400be8 	ldr	x8, [sp, #16]
 924:	b9400108 	ldr	w8, [x8]
 928:	b9000fe8 	str	w8, [sp, #12]
 92c:	9100c3ff 	add	sp, sp, #0x30
 930:	d65f03c0 	ret

0000000000000934 <get_color>:
 934:	d10043ff 	sub	sp, sp, #0x10
 938:	f90007e0 	str	x0, [sp, #8]
 93c:	f94007e8 	ldr	x8, [sp, #8]
 940:	d378fd08 	lsr	x8, x8, #56
 944:	92400d08 	and	x8, x8, #0xf
 948:	2a0803e0 	mov	w0, w8
 94c:	910043ff 	add	sp, sp, #0x10
 950:	d65f03c0 	ret

0000000000000954 <set_specific_tag>:
 954:	d10043ff 	sub	sp, sp, #0x10
 958:	f90007e0 	str	x0, [sp, #8]
 95c:	39001fe1 	strb	w1, [sp, #7]
 960:	f94007e8 	ldr	x8, [sp, #8]
 964:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 968:	39401fe9 	ldrb	w9, [sp, #7]
 96c:	aa09e100 	orr	x0, x8, x9, lsl #56
 970:	910043ff 	add	sp, sp, #0x10
 974:	d65f03c0 	ret

0000000000000978 <mte_set_tag>:
 978:	d10143ff 	sub	sp, sp, #0x50
 97c:	a9047bfd 	stp	x29, x30, [sp, #64]
 980:	910103fd 	add	x29, sp, #0x40
 984:	f81f83a0 	stur	x0, [x29, #-8]
 988:	381f73a1 	sturb	w1, [x29, #-9]
 98c:	f81e83a2 	stur	x2, [x29, #-24]
 990:	f85f83a0 	ldur	x0, [x29, #-8]
 994:	385f73a1 	ldurb	w1, [x29, #-9]
 998:	97ffffef 	bl	954 <set_specific_tag>
 99c:	f90013e0 	str	x0, [sp, #32]
 9a0:	d2800208 	mov	x8, #0x10                  	// #16
 9a4:	f9000fe8 	str	x8, [sp, #24]
 9a8:	f9000bff 	str	xzr, [sp, #16]
 9ac:	14000001 	b	9b0 <mte_set_tag+0x38>
 9b0:	f9400be8 	ldr	x8, [sp, #16]
 9b4:	f85e83a9 	ldur	x9, [x29, #-24]
 9b8:	eb090108 	subs	x8, x8, x9
 9bc:	540001c2 	b.cs	9f4 <mte_set_tag+0x7c>  // b.hs, b.nlast
 9c0:	14000001 	b	9c4 <mte_set_tag+0x4c>
 9c4:	f94013e8 	ldr	x8, [sp, #32]
 9c8:	f9400be9 	ldr	x9, [sp, #16]
 9cc:	8b090108 	add	x8, x8, x9
 9d0:	f90007e8 	str	x8, [sp, #8]
 9d4:	f94007e8 	ldr	x8, [sp, #8]
 9d8:	d9200908 	stg	x8, [x8]
 9dc:	14000001 	b	9e0 <mte_set_tag+0x68>
 9e0:	f9400fe9 	ldr	x9, [sp, #24]
 9e4:	f9400be8 	ldr	x8, [sp, #16]
 9e8:	8b090108 	add	x8, x8, x9
 9ec:	f9000be8 	str	x8, [sp, #16]
 9f0:	17fffff0 	b	9b0 <mte_set_tag+0x38>
 9f4:	f94013e0 	ldr	x0, [sp, #32]
 9f8:	a9447bfd 	ldp	x29, x30, [sp, #64]
 9fc:	910143ff 	add	sp, sp, #0x50
 a00:	d65f03c0 	ret

0000000000000a04 <main>:
 a04:	d10183ff 	sub	sp, sp, #0x60
 a08:	a9057bfd 	stp	x29, x30, [sp, #80]
 a0c:	910143fd 	add	x29, sp, #0x50
 a10:	b81fc3bf 	stur	wzr, [x29, #-4]
 a14:	d2800340 	mov	x0, #0x1a                  	// #26
 a18:	97ffff3e 	bl	710 <getauxval@plt>
 a1c:	2a0003e8 	mov	w8, w0
 a20:	37900108 	tbnz	w8, #18, a40 <main+0x3c>
 a24:	14000001 	b	a28 <main+0x24>
 a28:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a2c:	91328000 	add	x0, x0, #0xca0
 a30:	97ffff48 	bl	750 <printf@plt>
 a34:	52800028 	mov	w8, #0x1                   	// #1
 a38:	b81fc3a8 	stur	w8, [x29, #-4]
 a3c:	14000087 	b	c58 <main+0x254>
 a40:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a44:	9132d800 	add	x0, x0, #0xcb6
 a48:	97ffff42 	bl	750 <printf@plt>
 a4c:	14000001 	b	a50 <main+0x4c>
 a50:	528006e0 	mov	w0, #0x37                  	// #55
 a54:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 a58:	f2a000e1 	movk	x1, #0x7, lsl #16
 a5c:	2a1f03e4 	mov	w4, wzr
 a60:	2a0403e2 	mov	w2, w4
 a64:	2a0403e3 	mov	w3, w4
 a68:	97ffff3e 	bl	760 <prctl@plt>
 a6c:	34000100 	cbz	w0, a8c <main+0x88>
 a70:	14000001 	b	a74 <main+0x70>
 a74:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a78:	91332000 	add	x0, x0, #0xcc8
 a7c:	97ffff1d 	bl	6f0 <perror@plt>
 a80:	52800028 	mov	w8, #0x1                   	// #1
 a84:	b81fc3a8 	stur	w8, [x29, #-4]
 a88:	14000074 	b	c58 <main+0x254>
 a8c:	aa1f03e0 	mov	x0, xzr
 a90:	f81e03a0 	stur	x0, [x29, #-32]
 a94:	d2820001 	mov	x1, #0x1000                	// #4096
 a98:	52800462 	mov	w2, #0x23                  	// #35
 a9c:	b9001fe2 	str	w2, [sp, #28]
 aa0:	52800443 	mov	w3, #0x22                  	// #34
 aa4:	b90023e3 	str	w3, [sp, #32]
 aa8:	12800004 	mov	w4, #0xffffffff            	// #-1
 aac:	b90027e4 	str	w4, [sp, #36]
 ab0:	aa1f03e5 	mov	x5, xzr
 ab4:	f90017e5 	str	x5, [sp, #40]
 ab8:	97ffff22 	bl	740 <mmap@plt>
 abc:	b9401fe2 	ldr	w2, [sp, #28]
 ac0:	b94023e3 	ldr	w3, [sp, #32]
 ac4:	b94027e4 	ldr	w4, [sp, #36]
 ac8:	f94017e5 	ldr	x5, [sp, #40]
 acc:	aa0003e8 	mov	x8, x0
 ad0:	f85e03a0 	ldur	x0, [x29, #-32]
 ad4:	f81f03a8 	stur	x8, [x29, #-16]
 ad8:	d2840001 	mov	x1, #0x2000                	// #8192
 adc:	97ffff19 	bl	740 <mmap@plt>
 ae0:	f81e83a0 	stur	x0, [x29, #-24]
 ae4:	f85f03a8 	ldur	x8, [x29, #-16]
 ae8:	b1000508 	adds	x8, x8, #0x1
 aec:	54000101 	b.ne	b0c <main+0x108>  // b.any
 af0:	14000001 	b	af4 <main+0xf0>
 af4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 af8:	91335c00 	add	x0, x0, #0xcd7
 afc:	97fffefd 	bl	6f0 <perror@plt>
 b00:	52800028 	mov	w8, #0x1                   	// #1
 b04:	b81fc3a8 	stur	w8, [x29, #-4]
 b08:	14000054 	b	c58 <main+0x254>
 b0c:	f85f03a1 	ldur	x1, [x29, #-16]
 b10:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b14:	91339400 	add	x0, x0, #0xce5
 b18:	97ffff0e 	bl	750 <printf@plt>
 b1c:	f85f03a9 	ldur	x9, [x29, #-16]
 b20:	52800828 	mov	w8, #0x41                  	// #65
 b24:	b9000fe8 	str	w8, [sp, #12]
 b28:	39000128 	strb	w8, [x9]
 b2c:	f85f03a9 	ldur	x9, [x29, #-16]
 b30:	52800848 	mov	w8, #0x42                  	// #66
 b34:	39000528 	strb	w8, [x9, #1]
 b38:	f85f03a8 	ldur	x8, [x29, #-16]
 b3c:	39400101 	ldrb	w1, [x8]
 b40:	f85f03a8 	ldur	x8, [x29, #-16]
 b44:	39400502 	ldrb	w2, [x8, #1]
 b48:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b4c:	9133f000 	add	x0, x0, #0xcfc
 b50:	f9000be0 	str	x0, [sp, #16]
 b54:	97fffeff 	bl	750 <printf@plt>
 b58:	f85f03a0 	ldur	x0, [x29, #-16]
 b5c:	52800061 	mov	w1, #0x3                   	// #3
 b60:	d2802002 	mov	x2, #0x100                 	// #256
 b64:	97ffff85 	bl	978 <mte_set_tag>
 b68:	f81f03a0 	stur	x0, [x29, #-16]
 b6c:	f85e83a0 	ldur	x0, [x29, #-24]
 b70:	52800081 	mov	w1, #0x4                   	// #4
 b74:	d2840002 	mov	x2, #0x2000                	// #8192
 b78:	97ffff80 	bl	978 <mte_set_tag>
 b7c:	f81e83a0 	stur	x0, [x29, #-24]
 b80:	f85f03a0 	ldur	x0, [x29, #-16]
 b84:	97ffff6c 	bl	934 <get_color>
 b88:	12001c01 	and	w1, w0, #0xff
 b8c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b90:	91347400 	add	x0, x0, #0xd1d
 b94:	97fffeef 	bl	750 <printf@plt>
 b98:	f85e83a0 	ldur	x0, [x29, #-24]
 b9c:	97ffff66 	bl	934 <get_color>
 ba0:	12001c01 	and	w1, w0, #0xff
 ba4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 ba8:	9134c000 	add	x0, x0, #0xd30
 bac:	97fffee9 	bl	750 <printf@plt>
 bb0:	f85f03a1 	ldur	x1, [x29, #-16]
 bb4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bb8:	91351400 	add	x0, x0, #0xd45
 bbc:	97fffee5 	bl	750 <printf@plt>
 bc0:	f85e83a1 	ldur	x1, [x29, #-24]
 bc4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bc8:	91358000 	add	x0, x0, #0xd60
 bcc:	97fffee1 	bl	750 <printf@plt>
 bd0:	b9400fe8 	ldr	w8, [sp, #12]
 bd4:	f9400be0 	ldr	x0, [sp, #16]
 bd8:	f85f03a9 	ldur	x9, [x29, #-16]
 bdc:	39000128 	strb	w8, [x9]
 be0:	f85f03a9 	ldur	x9, [x29, #-16]
 be4:	52800888 	mov	w8, #0x44                  	// #68
 be8:	39000528 	strb	w8, [x9, #1]
 bec:	f85f03a8 	ldur	x8, [x29, #-16]
 bf0:	39400101 	ldrb	w1, [x8]
 bf4:	f85f03a8 	ldur	x8, [x29, #-16]
 bf8:	39400502 	ldrb	w2, [x8, #1]
 bfc:	97fffed5 	bl	750 <printf@plt>
 c00:	f85f03a8 	ldur	x8, [x29, #-16]
 c04:	39400101 	ldrb	w1, [x8]
 c08:	f85f03a8 	ldur	x8, [x29, #-16]
 c0c:	39400502 	ldrb	w2, [x8, #1]
 c10:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c14:	9135f400 	add	x0, x0, #0xd7d
 c18:	97fffece 	bl	750 <printf@plt>
 c1c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c20:	91369800 	add	x0, x0, #0xda6
 c24:	97fffecb 	bl	750 <printf@plt>
 c28:	f85f03a0 	ldur	x0, [x29, #-16]
 c2c:	97ffff1a 	bl	894 <process_data>
 c30:	f85f03a8 	ldur	x8, [x29, #-16]
 c34:	39404101 	ldrb	w1, [x8, #16]
 c38:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c3c:	9136f000 	add	x0, x0, #0xdbc
 c40:	97fffec4 	bl	750 <printf@plt>
 c44:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c48:	91374800 	add	x0, x0, #0xdd2
 c4c:	97fffec1 	bl	750 <printf@plt>
 c50:	b81fc3bf 	stur	wzr, [x29, #-4]
 c54:	14000001 	b	c58 <main+0x254>
 c58:	b85fc3a0 	ldur	w0, [x29, #-4]
 c5c:	a9457bfd 	ldp	x29, x30, [sp, #80]
 c60:	910183ff 	add	sp, sp, #0x60
 c64:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000c68 <_fini>:
 c68:	d503201f 	nop
 c6c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 c70:	910003fd 	mov	x29, sp
 c74:	a8c17bfd 	ldp	x29, x30, [sp], #16
 c78:	d65f03c0 	ret
