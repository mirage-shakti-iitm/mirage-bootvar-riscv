	.file ""
	.section .data
	.globl	camlBootvar__data_begin
	.type	camlBootvar__data_begin, @object
camlBootvar__data_begin:
	.section .text
	.globl	camlBootvar__code_begin
	.type	camlBootvar__code_begin, @object
camlBootvar__code_begin:
	.section .data
	.quad	1792
	.globl	camlBootvar
	.type	camlBootvar, @object
camlBootvar:
	.quad	1
	.section .data
	.globl	camlBootvar__gc_roots
	.type	camlBootvar__gc_roots, @object
camlBootvar__gc_roots:
	.quad	camlBootvar
	.quad	0
	.globl	camlBootvar__argv_1003
	.type	camlBootvar__argv_1003, @function
	.section .text
	.align	2
camlBootvar__argv_1003:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L106:
	li	a0, 1
	la	t2, mirage_riscv_get_cmdline
	call	caml_c_call
L100:
	call	camlParse_argv__parse_1002
L101:
	lbu	a4, -8(a0)
	li	a5, 0
	beq	a4, a5, L105
	ld	a0, 0(a0)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	csrwi	utailcall, 1
	tail	camlLwt__fail_with_1102437
L105:
L108:
	addi	s10, s10, -24
	addi	a6, s10, 8
	bltu	s10, s11, L109
	li	a7, 2048
	sd	a7, -8(a6)
	la	s2, camlBootvar__1
	sd	s2, 0(a6)
	ld	s3, 0(a0)
	sd	s3, 8(a6)
	mv      a0, a6
	call	camlStdlib__array__of_list_1099
L102:
	ld	ra, 8(sp)
	addi	sp, sp, 16
	csrwi	utailcall, 1
	tail	camlLwt__return_1102420
L109:
	call	caml_call_gc
L107:
	j	L108
	.size	camlBootvar__argv_1003, .-camlBootvar__argv_1003
	.section .data
	.quad	2044
camlBootvar__1:
	.byte	109,105,114,97,103,101
	.space	1
	.byte	1
	.section .data
	.quad	3063
camlBootvar__2:
	.quad	camlBootvar__argv_1003
	.quad	3
	.globl	camlBootvar__entry
	.type	camlBootvar__entry, @function
	.section .text
	.align	2
camlBootvar__entry:
	checkcap	-1
L110:
	la	a0, camlBootvar__2
	la	a1, camlBootvar
	sd	a0, 0(a1)
	li	a0, 1
	ret
	.size	camlBootvar__entry, .-camlBootvar__entry
	.section .data
	.quad	mirage_riscv_get_cmdline
	.section .text
	.globl	camlBootvar__code_end
	.type	camlBootvar__code_end, @object
camlBootvar__code_end:
	.long	0
	.section .data
	.globl	camlBootvar__data_end
	.type	camlBootvar__data_end, @object
camlBootvar__data_end:
	.quad	0
	.section .rodata
	.globl	camlBootvar__frametable
	.type	camlBootvar__frametable, @object
camlBootvar__frametable:
	.quad	4
	.quad	L102
	.short	17
	.short	0
	.align	3
	.quad	L111
	.quad	L107
	.short	17
	.short	1
	.short	1
	.align	3
	.quad	L112
	.quad	L101
	.short	17
	.short	0
	.align	3
	.quad	L113
	.quad	L100
	.short	17
	.short	0
	.align	3
	.quad	L114
	.align	3
L113:
	.long	(L115 - .) + 0x84000000
	.long	0x15080
	.quad	0
	.align	3
L114:
	.long	(L115 - .) + 0x80000000
	.long	0x14110
	.quad	0
	.align	3
L111:
	.long	(L115 - .) + 0xd8000000
	.long	0x16170
	.quad	0
	.align	3
L112:
	.long	(L115 - .) + 0xd4000000
	.long	0x16260
	.quad	0
L115:
	.byte	108,105,98,47,98,111,111,116,118,97,114,46,109,108,0
	.align	3
