
a.out:     file format elf64-littleaarch64


Disassembly of section .init:

00000000000006d8 <_init>:
 6d8:	d503201f 	nop
 6dc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 6e0:	910003fd 	mov	x29, sp
 6e4:	94000044 	bl	7f4 <call_weak_fn>
 6e8:	a8c17bfd 	ldp	x29, x30, [sp], #16
 6ec:	d65f03c0 	ret

Disassembly of section .plt:

00000000000006f0 <.plt>:
 6f0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 6f4:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0x101e8>
 6f8:	f947fe11 	ldr	x17, [x16, #4088]
 6fc:	913fe210 	add	x16, x16, #0xff8
 700:	d61f0220 	br	x17
 704:	d503201f 	nop
 708:	d503201f 	nop
 70c:	d503201f 	nop

0000000000000710 <exit@plt>:
 710:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 714:	f9400211 	ldr	x17, [x16]
 718:	91000210 	add	x16, x16, #0x0
 71c:	d61f0220 	br	x17

0000000000000720 <__libc_start_main@plt>:
 720:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 724:	f9400611 	ldr	x17, [x16, #8]
 728:	91002210 	add	x16, x16, #0x8
 72c:	d61f0220 	br	x17

0000000000000730 <perror@plt>:
 730:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 734:	f9400a11 	ldr	x17, [x16, #16]
 738:	91004210 	add	x16, x16, #0x10
 73c:	d61f0220 	br	x17

0000000000000740 <__cxa_finalize@plt>:
 740:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 744:	f9400e11 	ldr	x17, [x16, #24]
 748:	91006210 	add	x16, x16, #0x18
 74c:	d61f0220 	br	x17

0000000000000750 <getauxval@plt>:
 750:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 754:	f9401211 	ldr	x17, [x16, #32]
 758:	91008210 	add	x16, x16, #0x20
 75c:	d61f0220 	br	x17

0000000000000760 <__gmon_start__@plt>:
 760:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 764:	f9401611 	ldr	x17, [x16, #40]
 768:	9100a210 	add	x16, x16, #0x28
 76c:	d61f0220 	br	x17

0000000000000770 <abort@plt>:
 770:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 774:	f9401a11 	ldr	x17, [x16, #48]
 778:	9100c210 	add	x16, x16, #0x30
 77c:	d61f0220 	br	x17

0000000000000780 <mmap@plt>:
 780:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 784:	f9401e11 	ldr	x17, [x16, #56]
 788:	9100e210 	add	x16, x16, #0x38
 78c:	d61f0220 	br	x17

0000000000000790 <printf@plt>:
 790:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 794:	f9402211 	ldr	x17, [x16, #64]
 798:	91010210 	add	x16, x16, #0x40
 79c:	d61f0220 	br	x17

00000000000007a0 <prctl@plt>:
 7a0:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 7a4:	f9402611 	ldr	x17, [x16, #72]
 7a8:	91012210 	add	x16, x16, #0x48
 7ac:	d61f0220 	br	x17

Disassembly of section .text:

00000000000007c0 <_start>:
 7c0:	d503201f 	nop
 7c4:	d280001d 	mov	x29, #0x0                   	// #0
 7c8:	d280001e 	mov	x30, #0x0                   	// #0
 7cc:	aa0003e5 	mov	x5, x0
 7d0:	f94003e1 	ldr	x1, [sp]
 7d4:	910023e2 	add	x2, sp, #0x8
 7d8:	910003e6 	mov	x6, sp
 7dc:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x101e8>
 7e0:	f947ec00 	ldr	x0, [x0, #4056]
 7e4:	d2800003 	mov	x3, #0x0                   	// #0
 7e8:	d2800004 	mov	x4, #0x0                   	// #0
 7ec:	97ffffcd 	bl	720 <__libc_start_main@plt>
 7f0:	97ffffe0 	bl	770 <abort@plt>

00000000000007f4 <call_weak_fn>:
 7f4:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x101e8>
 7f8:	f947e800 	ldr	x0, [x0, #4048]
 7fc:	b4000040 	cbz	x0, 804 <call_weak_fn+0x10>
 800:	17ffffd8 	b	760 <__gmon_start__@plt>
 804:	d65f03c0 	ret
 808:	d503201f 	nop
 80c:	d503201f 	nop

0000000000000810 <deregister_tm_clones>:
 810:	d0000080 	adrp	x0, 12000 <exit@GLIBC_2.17>
 814:	91018000 	add	x0, x0, #0x60
 818:	d0000081 	adrp	x1, 12000 <exit@GLIBC_2.17>
 81c:	91018021 	add	x1, x1, #0x60
 820:	eb00003f 	cmp	x1, x0
 824:	540000c0 	b.eq	83c <deregister_tm_clones+0x2c>  // b.none
 828:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0x101e8>
 82c:	f947e021 	ldr	x1, [x1, #4032]
 830:	b4000061 	cbz	x1, 83c <deregister_tm_clones+0x2c>
 834:	aa0103f0 	mov	x16, x1
 838:	d61f0200 	br	x16
 83c:	d65f03c0 	ret

0000000000000840 <register_tm_clones>:
 840:	d0000080 	adrp	x0, 12000 <exit@GLIBC_2.17>
 844:	91018000 	add	x0, x0, #0x60
 848:	d0000081 	adrp	x1, 12000 <exit@GLIBC_2.17>
 84c:	91018021 	add	x1, x1, #0x60
 850:	cb000021 	sub	x1, x1, x0
 854:	d37ffc22 	lsr	x2, x1, #63
 858:	8b810c41 	add	x1, x2, x1, asr #3
 85c:	9341fc21 	asr	x1, x1, #1
 860:	b40000c1 	cbz	x1, 878 <register_tm_clones+0x38>
 864:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0x101e8>
 868:	f947f042 	ldr	x2, [x2, #4064]
 86c:	b4000062 	cbz	x2, 878 <register_tm_clones+0x38>
 870:	aa0203f0 	mov	x16, x2
 874:	d61f0200 	br	x16
 878:	d65f03c0 	ret
 87c:	d503201f 	nop

0000000000000880 <__do_global_dtors_aux>:
 880:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 884:	910003fd 	mov	x29, sp
 888:	f9000bf3 	str	x19, [sp, #16]
 88c:	d0000093 	adrp	x19, 12000 <exit@GLIBC_2.17>
 890:	39418260 	ldrb	w0, [x19, #96]
 894:	35000140 	cbnz	w0, 8bc <__do_global_dtors_aux+0x3c>
 898:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x101e8>
 89c:	f947e400 	ldr	x0, [x0, #4040]
 8a0:	b4000080 	cbz	x0, 8b0 <__do_global_dtors_aux+0x30>
 8a4:	d0000080 	adrp	x0, 12000 <exit@GLIBC_2.17>
 8a8:	f9402c00 	ldr	x0, [x0, #88]
 8ac:	97ffffa5 	bl	740 <__cxa_finalize@plt>
 8b0:	97ffffd8 	bl	810 <deregister_tm_clones>
 8b4:	52800020 	mov	w0, #0x1                   	// #1
 8b8:	39018260 	strb	w0, [x19, #96]
 8bc:	f9400bf3 	ldr	x19, [sp, #16]
 8c0:	a8c27bfd 	ldp	x29, x30, [sp], #32
 8c4:	d65f03c0 	ret
 8c8:	d503201f 	nop
 8cc:	d503201f 	nop

00000000000008d0 <frame_dummy>:
 8d0:	17ffffdc 	b	840 <register_tm_clones>

00000000000008d4 <compartment1>:
 8d4:	d10083ff 	sub	sp, sp, #0x20
 8d8:	a9017bfd 	stp	x29, x30, [sp, #16]
 8dc:	910043fd 	add	x29, sp, #0x10
 8e0:	f90007e0 	str	x0, [sp, #8]
 8e4:	910023e8 	add	x8, sp, #0x8
 8e8:	927dd108 	and	x8, x8, #0xfffffffffffff8
 8ec:	b2480508 	orr	x8, x8, #0x300000000000000
 8f0:	f9400109 	ldr	x9, [x8]
 8f4:	d2e06008 	mov	x8, #0x300000000000000     	// #216172782113783808
 8f8:	b340dd28 	bfxil	x8, x9, #0, #56
 8fc:	39400101 	ldrb	w1, [x8]
 900:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 904:	912f5000 	add	x0, x0, #0xbd4
 908:	97ffffa2 	bl	790 <printf@plt>
 90c:	a9417bfd 	ldp	x29, x30, [sp, #16]
 910:	910083ff 	add	sp, sp, #0x20
 914:	d65f03c0 	ret

0000000000000918 <main>:
 918:	d10183ff 	sub	sp, sp, #0x60
 91c:	a9057bfd 	stp	x29, x30, [sp, #80]
 920:	910143fd 	add	x29, sp, #0x50
 924:	b81fc3bf 	stur	wzr, [x29, #-4]
 928:	d2800340 	mov	x0, #0x1a                  	// #26
 92c:	97ffff89 	bl	750 <getauxval@plt>
 930:	2a0003e8 	mov	w8, w0
 934:	37900108 	tbnz	w8, #18, 954 <main+0x3c>
 938:	14000001 	b	93c <main+0x24>
 93c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 940:	912f6400 	add	x0, x0, #0xbd9
 944:	97ffff93 	bl	790 <printf@plt>
 948:	52800028 	mov	w8, #0x1                   	// #1
 94c:	b81fc3a8 	stur	w8, [x29, #-4]
 950:	1400006b 	b	afc <main+0x1e4>
 954:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 958:	912fbc00 	add	x0, x0, #0xbef
 95c:	97ffff8d 	bl	790 <printf@plt>
 960:	14000001 	b	964 <main+0x4c>
 964:	528006e0 	mov	w0, #0x37                  	// #55
 968:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 96c:	f2a000e1 	movk	x1, #0x7, lsl #16
 970:	2a1f03e4 	mov	w4, wzr
 974:	2a0403e2 	mov	w2, w4
 978:	2a0403e3 	mov	w3, w4
 97c:	97ffff89 	bl	7a0 <prctl@plt>
 980:	34000100 	cbz	w0, 9a0 <main+0x88>
 984:	14000001 	b	988 <main+0x70>
 988:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 98c:	91300400 	add	x0, x0, #0xc01
 990:	97ffff68 	bl	730 <perror@plt>
 994:	52800028 	mov	w8, #0x1                   	// #1
 998:	b81fc3a8 	stur	w8, [x29, #-4]
 99c:	14000058 	b	afc <main+0x1e4>
 9a0:	aa1f03e0 	mov	x0, xzr
 9a4:	f90017e0 	str	x0, [sp, #40]
 9a8:	d2820001 	mov	x1, #0x1000                	// #4096
 9ac:	f90007e1 	str	x1, [sp, #8]
 9b0:	52800462 	mov	w2, #0x23                  	// #35
 9b4:	b90017e2 	str	w2, [sp, #20]
 9b8:	52800443 	mov	w3, #0x22                  	// #34
 9bc:	b9001be3 	str	w3, [sp, #24]
 9c0:	12800004 	mov	w4, #0xffffffff            	// #-1
 9c4:	b9001fe4 	str	w4, [sp, #28]
 9c8:	aa1f03e5 	mov	x5, xzr
 9cc:	f90013e5 	str	x5, [sp, #32]
 9d0:	97ffff6c 	bl	780 <mmap@plt>
 9d4:	f94007e1 	ldr	x1, [sp, #8]
 9d8:	b94017e2 	ldr	w2, [sp, #20]
 9dc:	b9401be3 	ldr	w3, [sp, #24]
 9e0:	b9401fe4 	ldr	w4, [sp, #28]
 9e4:	f94013e5 	ldr	x5, [sp, #32]
 9e8:	aa0003e8 	mov	x8, x0
 9ec:	f94017e0 	ldr	x0, [sp, #40]
 9f0:	f81f03a8 	stur	x8, [x29, #-16]
 9f4:	97ffff63 	bl	780 <mmap@plt>
 9f8:	f81e83a0 	stur	x0, [x29, #-24]
 9fc:	f85f03a8 	ldur	x8, [x29, #-16]
 a00:	b1000508 	adds	x8, x8, #0x1
 a04:	540000e1 	b.ne	a20 <main+0x108>  // b.any
 a08:	14000001 	b	a0c <main+0xf4>
 a0c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a10:	91304000 	add	x0, x0, #0xc10
 a14:	97ffff5f 	bl	790 <printf@plt>
 a18:	12800000 	mov	w0, #0xffffffff            	// #-1
 a1c:	97ffff3d 	bl	710 <exit@plt>
 a20:	f85e83a8 	ldur	x8, [x29, #-24]
 a24:	b1000508 	adds	x8, x8, #0x1
 a28:	540000e1 	b.ne	a44 <main+0x12c>  // b.any
 a2c:	14000001 	b	a30 <main+0x118>
 a30:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a34:	9130d400 	add	x0, x0, #0xc35
 a38:	97ffff56 	bl	790 <printf@plt>
 a3c:	12800000 	mov	w0, #0xffffffff            	// #-1
 a40:	97ffff34 	bl	710 <exit@plt>
 a44:	f85f03a0 	ldur	x0, [x29, #-16]
 a48:	52800061 	mov	w1, #0x3                   	// #3
 a4c:	d2800402 	mov	x2, #0x20                  	// #32
 a50:	f90003e2 	str	x2, [sp]
 a54:	94000037 	bl	b30 <mte_set_tag>
 a58:	f94003e2 	ldr	x2, [sp]
 a5c:	f81f03a0 	stur	x0, [x29, #-16]
 a60:	f85e83a0 	ldur	x0, [x29, #-24]
 a64:	52800021 	mov	w1, #0x1                   	// #1
 a68:	94000032 	bl	b30 <mte_set_tag>
 a6c:	f81e83a0 	stur	x0, [x29, #-24]
 a70:	b81e43bf 	stur	wzr, [x29, #-28]
 a74:	14000001 	b	a78 <main+0x160>
 a78:	b85e43a8 	ldur	w8, [x29, #-28]
 a7c:	71008108 	subs	w8, w8, #0x20
 a80:	5400022a 	b.ge	ac4 <main+0x1ac>  // b.tcont
 a84:	14000001 	b	a88 <main+0x170>
 a88:	b85e43a8 	ldur	w8, [x29, #-28]
 a8c:	11018508 	add	w8, w8, #0x61
 a90:	f85f03a9 	ldur	x9, [x29, #-16]
 a94:	b89e43aa 	ldursw	x10, [x29, #-28]
 a98:	382a6928 	strb	w8, [x9, x10]
 a9c:	b85e43a8 	ldur	w8, [x29, #-28]
 aa0:	11018508 	add	w8, w8, #0x61
 aa4:	f85e83a9 	ldur	x9, [x29, #-24]
 aa8:	b89e43aa 	ldursw	x10, [x29, #-28]
 aac:	382a6928 	strb	w8, [x9, x10]
 ab0:	14000001 	b	ab4 <main+0x19c>
 ab4:	b85e43a8 	ldur	w8, [x29, #-28]
 ab8:	11000508 	add	w8, w8, #0x1
 abc:	b81e43a8 	stur	w8, [x29, #-28]
 ac0:	17ffffee 	b	a78 <main+0x160>
 ac4:	f85f03a1 	ldur	x1, [x29, #-16]
 ac8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 acc:	91317000 	add	x0, x0, #0xc5c
 ad0:	97ffff30 	bl	790 <printf@plt>
 ad4:	f85f03a0 	ldur	x0, [x29, #-16]
 ad8:	97ffff7f 	bl	8d4 <compartment1>
 adc:	f85e83a1 	ldur	x1, [x29, #-24]
 ae0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 ae4:	91322000 	add	x0, x0, #0xc88
 ae8:	97ffff2a 	bl	790 <printf@plt>
 aec:	f85e83a0 	ldur	x0, [x29, #-24]
 af0:	97ffff79 	bl	8d4 <compartment1>
 af4:	b81fc3bf 	stur	wzr, [x29, #-4]
 af8:	14000001 	b	afc <main+0x1e4>
 afc:	b85fc3a0 	ldur	w0, [x29, #-4]
 b00:	a9457bfd 	ldp	x29, x30, [sp, #80]
 b04:	910183ff 	add	sp, sp, #0x60
 b08:	d65f03c0 	ret

0000000000000b0c <set_specific_tag>:
 b0c:	d10043ff 	sub	sp, sp, #0x10
 b10:	f90007e0 	str	x0, [sp, #8]
 b14:	39001fe1 	strb	w1, [sp, #7]
 b18:	f94007e8 	ldr	x8, [sp, #8]
 b1c:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 b20:	39401fe9 	ldrb	w9, [sp, #7]
 b24:	aa09e100 	orr	x0, x8, x9, lsl #56
 b28:	910043ff 	add	sp, sp, #0x10
 b2c:	d65f03c0 	ret

0000000000000b30 <mte_set_tag>:
 b30:	d10143ff 	sub	sp, sp, #0x50
 b34:	a9047bfd 	stp	x29, x30, [sp, #64]
 b38:	910103fd 	add	x29, sp, #0x40
 b3c:	f81f83a0 	stur	x0, [x29, #-8]
 b40:	381f73a1 	sturb	w1, [x29, #-9]
 b44:	f81e83a2 	stur	x2, [x29, #-24]
 b48:	f85f83a0 	ldur	x0, [x29, #-8]
 b4c:	385f73a1 	ldurb	w1, [x29, #-9]
 b50:	97ffffef 	bl	b0c <set_specific_tag>
 b54:	f90013e0 	str	x0, [sp, #32]
 b58:	d2800208 	mov	x8, #0x10                  	// #16
 b5c:	f9000fe8 	str	x8, [sp, #24]
 b60:	f9000bff 	str	xzr, [sp, #16]
 b64:	14000001 	b	b68 <mte_set_tag+0x38>
 b68:	f9400be8 	ldr	x8, [sp, #16]
 b6c:	f85e83a9 	ldur	x9, [x29, #-24]
 b70:	eb090108 	subs	x8, x8, x9
 b74:	540001c2 	b.cs	bac <mte_set_tag+0x7c>  // b.hs, b.nlast
 b78:	14000001 	b	b7c <mte_set_tag+0x4c>
 b7c:	f94013e8 	ldr	x8, [sp, #32]
 b80:	f9400be9 	ldr	x9, [sp, #16]
 b84:	8b090108 	add	x8, x8, x9
 b88:	f90007e8 	str	x8, [sp, #8]
 b8c:	f94007e8 	ldr	x8, [sp, #8]
 b90:	d9200908 	stg	x8, [x8]
 b94:	14000001 	b	b98 <mte_set_tag+0x68>
 b98:	f9400fe9 	ldr	x9, [sp, #24]
 b9c:	f9400be8 	ldr	x8, [sp, #16]
 ba0:	8b090108 	add	x8, x8, x9
 ba4:	f9000be8 	str	x8, [sp, #16]
 ba8:	17fffff0 	b	b68 <mte_set_tag+0x38>
 bac:	f94013e0 	ldr	x0, [sp, #32]
 bb0:	a9447bfd 	ldp	x29, x30, [sp, #64]
 bb4:	910143ff 	add	sp, sp, #0x50
 bb8:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000bbc <_fini>:
 bbc:	d503201f 	nop
 bc0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 bc4:	910003fd 	mov	x29, sp
 bc8:	a8c17bfd 	ldp	x29, x30, [sp], #16
 bcc:	d65f03c0 	ret
