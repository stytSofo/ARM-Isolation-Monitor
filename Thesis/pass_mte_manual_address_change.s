
pass_mte_manual_address_change:     file format elf64-littleaarch64


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
 8a0:	f90007e0 	str	x0, [sp, #8]
 8a4:	f94007e8 	ldr	x8, [sp, #8]
 8a8:	9240dd08 	and	x8, x8, #0xffffffffffffff
 8ac:	d2e12009 	mov	x9, #0x900000000000000     	// #648518346341351424
 8b0:	aa090108 	orr	x8, x8, x9
 8b4:	f90007e8 	str	x8, [sp, #8]
 8b8:	f94007e1 	ldr	x1, [sp, #8]
 8bc:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8c0:	91320000 	add	x0, x0, #0xc80
 8c4:	97ffffa3 	bl	750 <printf@plt>
 8c8:	f94007e8 	ldr	x8, [sp, #8]
 8cc:	39400101 	ldrb	w1, [x8]
 8d0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 8d4:	91323400 	add	x0, x0, #0xc8d
 8d8:	97ffff9e 	bl	750 <printf@plt>
 8dc:	f94007e8 	ldr	x8, [sp, #8]
 8e0:	f90003e8 	str	x8, [sp]
 8e4:	f94003e9 	ldr	x9, [sp]
 8e8:	52800c28 	mov	w8, #0x61                  	// #97
 8ec:	39000128 	strb	w8, [x9]
 8f0:	a9417bfd 	ldp	x29, x30, [sp, #16]
 8f4:	910083ff 	add	sp, sp, #0x20
 8f8:	d65f03c0 	ret

00000000000008fc <check_tag>:
 8fc:	d100c3ff 	sub	sp, sp, #0x30
 900:	f90017e0 	str	x0, [sp, #40]
 904:	39009fe1 	strb	w1, [sp, #39]
 908:	f94017e8 	ldr	x8, [sp, #40]
 90c:	9240bd08 	and	x8, x8, #0xffffffffffff
 910:	f9000fe8 	str	x8, [sp, #24]
 914:	f9400fe8 	ldr	x8, [sp, #24]
 918:	39409fe9 	ldrb	w9, [sp, #39]
 91c:	aa09e108 	orr	x8, x8, x9, lsl #56
 920:	f9000be8 	str	x8, [sp, #16]
 924:	f9400be8 	ldr	x8, [sp, #16]
 928:	b9400108 	ldr	w8, [x8]
 92c:	b9000fe8 	str	w8, [sp, #12]
 930:	9100c3ff 	add	sp, sp, #0x30
 934:	d65f03c0 	ret

0000000000000938 <get_color>:
 938:	d10043ff 	sub	sp, sp, #0x10
 93c:	f90007e0 	str	x0, [sp, #8]
 940:	f94007e8 	ldr	x8, [sp, #8]
 944:	d378fd08 	lsr	x8, x8, #56
 948:	92400d08 	and	x8, x8, #0xf
 94c:	2a0803e0 	mov	w0, w8
 950:	910043ff 	add	sp, sp, #0x10
 954:	d65f03c0 	ret

0000000000000958 <set_specific_tag>:
 958:	d10043ff 	sub	sp, sp, #0x10
 95c:	f90007e0 	str	x0, [sp, #8]
 960:	39001fe1 	strb	w1, [sp, #7]
 964:	f94007e8 	ldr	x8, [sp, #8]
 968:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 96c:	39401fe9 	ldrb	w9, [sp, #7]
 970:	aa09e100 	orr	x0, x8, x9, lsl #56
 974:	910043ff 	add	sp, sp, #0x10
 978:	d65f03c0 	ret

000000000000097c <mte_set_tag>:
 97c:	d10143ff 	sub	sp, sp, #0x50
 980:	a9047bfd 	stp	x29, x30, [sp, #64]
 984:	910103fd 	add	x29, sp, #0x40
 988:	f81f83a0 	stur	x0, [x29, #-8]
 98c:	381f73a1 	sturb	w1, [x29, #-9]
 990:	f81e83a2 	stur	x2, [x29, #-24]
 994:	f85f83a0 	ldur	x0, [x29, #-8]
 998:	385f73a1 	ldurb	w1, [x29, #-9]
 99c:	97ffffef 	bl	958 <set_specific_tag>
 9a0:	f90013e0 	str	x0, [sp, #32]
 9a4:	d2800208 	mov	x8, #0x10                  	// #16
 9a8:	f9000fe8 	str	x8, [sp, #24]
 9ac:	f9000bff 	str	xzr, [sp, #16]
 9b0:	14000001 	b	9b4 <mte_set_tag+0x38>
 9b4:	f9400be8 	ldr	x8, [sp, #16]
 9b8:	f85e83a9 	ldur	x9, [x29, #-24]
 9bc:	eb090108 	subs	x8, x8, x9
 9c0:	540001c2 	b.cs	9f8 <mte_set_tag+0x7c>  // b.hs, b.nlast
 9c4:	14000001 	b	9c8 <mte_set_tag+0x4c>
 9c8:	f94013e8 	ldr	x8, [sp, #32]
 9cc:	f9400be9 	ldr	x9, [sp, #16]
 9d0:	8b090108 	add	x8, x8, x9
 9d4:	f90007e8 	str	x8, [sp, #8]
 9d8:	f94007e8 	ldr	x8, [sp, #8]
 9dc:	d9200908 	stg	x8, [x8]
 9e0:	14000001 	b	9e4 <mte_set_tag+0x68>
 9e4:	f9400fe9 	ldr	x9, [sp, #24]
 9e8:	f9400be8 	ldr	x8, [sp, #16]
 9ec:	8b090108 	add	x8, x8, x9
 9f0:	f9000be8 	str	x8, [sp, #16]
 9f4:	17fffff0 	b	9b4 <mte_set_tag+0x38>
 9f8:	f94013e0 	ldr	x0, [sp, #32]
 9fc:	a9447bfd 	ldp	x29, x30, [sp, #64]
 a00:	910143ff 	add	sp, sp, #0x50
 a04:	d65f03c0 	ret

0000000000000a08 <main>:
 a08:	d10143ff 	sub	sp, sp, #0x50
 a0c:	a9047bfd 	stp	x29, x30, [sp, #64]
 a10:	910103fd 	add	x29, sp, #0x40
 a14:	b81fc3bf 	stur	wzr, [x29, #-4]
 a18:	d2800340 	mov	x0, #0x1a                  	// #26
 a1c:	97ffff3d 	bl	710 <getauxval@plt>
 a20:	2a0003e8 	mov	w8, w0
 a24:	37900108 	tbnz	w8, #18, a44 <main+0x3c>
 a28:	14000001 	b	a2c <main+0x24>
 a2c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a30:	91328000 	add	x0, x0, #0xca0
 a34:	97ffff47 	bl	750 <printf@plt>
 a38:	52800028 	mov	w8, #0x1                   	// #1
 a3c:	b81fc3a8 	stur	w8, [x29, #-4]
 a40:	14000086 	b	c58 <main+0x250>
 a44:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a48:	9132d800 	add	x0, x0, #0xcb6
 a4c:	97ffff41 	bl	750 <printf@plt>
 a50:	14000001 	b	a54 <main+0x4c>
 a54:	528006e0 	mov	w0, #0x37                  	// #55
 a58:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 a5c:	f2a000e1 	movk	x1, #0x7, lsl #16
 a60:	2a1f03e4 	mov	w4, wzr
 a64:	2a0403e2 	mov	w2, w4
 a68:	2a0403e3 	mov	w3, w4
 a6c:	97ffff3d 	bl	760 <prctl@plt>
 a70:	34000100 	cbz	w0, a90 <main+0x88>
 a74:	14000001 	b	a78 <main+0x70>
 a78:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a7c:	91332000 	add	x0, x0, #0xcc8
 a80:	97ffff1c 	bl	6f0 <perror@plt>
 a84:	52800028 	mov	w8, #0x1                   	// #1
 a88:	b81fc3a8 	stur	w8, [x29, #-4]
 a8c:	14000073 	b	c58 <main+0x250>
 a90:	aa1f03e0 	mov	x0, xzr
 a94:	f90013e0 	str	x0, [sp, #32]
 a98:	d2820001 	mov	x1, #0x1000                	// #4096
 a9c:	52800462 	mov	w2, #0x23                  	// #35
 aa0:	b9000fe2 	str	w2, [sp, #12]
 aa4:	52800443 	mov	w3, #0x22                  	// #34
 aa8:	b90013e3 	str	w3, [sp, #16]
 aac:	12800004 	mov	w4, #0xffffffff            	// #-1
 ab0:	b90017e4 	str	w4, [sp, #20]
 ab4:	aa1f03e5 	mov	x5, xzr
 ab8:	f9000fe5 	str	x5, [sp, #24]
 abc:	97ffff21 	bl	740 <mmap@plt>
 ac0:	b9400fe2 	ldr	w2, [sp, #12]
 ac4:	b94013e3 	ldr	w3, [sp, #16]
 ac8:	b94017e4 	ldr	w4, [sp, #20]
 acc:	f9400fe5 	ldr	x5, [sp, #24]
 ad0:	aa0003e8 	mov	x8, x0
 ad4:	f94013e0 	ldr	x0, [sp, #32]
 ad8:	f81f03a8 	stur	x8, [x29, #-16]
 adc:	d2840001 	mov	x1, #0x2000                	// #8192
 ae0:	97ffff18 	bl	740 <mmap@plt>
 ae4:	f81e83a0 	stur	x0, [x29, #-24]
 ae8:	f85f03a8 	ldur	x8, [x29, #-16]
 aec:	b1000508 	adds	x8, x8, #0x1
 af0:	54000101 	b.ne	b10 <main+0x108>  // b.any
 af4:	14000001 	b	af8 <main+0xf0>
 af8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 afc:	91335c00 	add	x0, x0, #0xcd7
 b00:	97fffefc 	bl	6f0 <perror@plt>
 b04:	52800028 	mov	w8, #0x1                   	// #1
 b08:	b81fc3a8 	stur	w8, [x29, #-4]
 b0c:	14000053 	b	c58 <main+0x250>
 b10:	f85f03a1 	ldur	x1, [x29, #-16]
 b14:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b18:	91339400 	add	x0, x0, #0xce5
 b1c:	97ffff0d 	bl	750 <printf@plt>
 b20:	f85f03a9 	ldur	x9, [x29, #-16]
 b24:	52800828 	mov	w8, #0x41                  	// #65
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
 b50:	f90003e0 	str	x0, [sp]
 b54:	97fffeff 	bl	750 <printf@plt>
 b58:	f85f03a0 	ldur	x0, [x29, #-16]
 b5c:	52800061 	mov	w1, #0x3                   	// #3
 b60:	d2802002 	mov	x2, #0x100                 	// #256
 b64:	97ffff86 	bl	97c <mte_set_tag>
 b68:	f81f03a0 	stur	x0, [x29, #-16]
 b6c:	f85e83a0 	ldur	x0, [x29, #-24]
 b70:	52800081 	mov	w1, #0x4                   	// #4
 b74:	d2840002 	mov	x2, #0x2000                	// #8192
 b78:	97ffff81 	bl	97c <mte_set_tag>
 b7c:	f81e83a0 	stur	x0, [x29, #-24]
 b80:	f85f03a0 	ldur	x0, [x29, #-16]
 b84:	97ffff6d 	bl	938 <get_color>
 b88:	12001c01 	and	w1, w0, #0xff
 b8c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b90:	91347400 	add	x0, x0, #0xd1d
 b94:	97fffeef 	bl	750 <printf@plt>
 b98:	f85e83a0 	ldur	x0, [x29, #-24]
 b9c:	97ffff67 	bl	938 <get_color>
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
 bd0:	f94003e0 	ldr	x0, [sp]
 bd4:	f85f03a9 	ldur	x9, [x29, #-16]
 bd8:	52800868 	mov	w8, #0x43                  	// #67
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
 c54:	14000001 	b	c58 <main+0x250>
 c58:	b85fc3a0 	ldur	w0, [x29, #-4]
 c5c:	a9447bfd 	ldp	x29, x30, [sp, #64]
 c60:	910143ff 	add	sp, sp, #0x50
 c64:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000c68 <_fini>:
 c68:	d503201f 	nop
 c6c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 c70:	910003fd 	mov	x29, sp
 c74:	a8c17bfd 	ldp	x29, x30, [sp], #16
 c78:	d65f03c0 	ret
