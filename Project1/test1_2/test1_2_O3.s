	.file	"test1_2.cpp"
	.text
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB4654:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %r12
	testq	%r12, %r12
	je	.L7
	cmpb	$0, 56(%r12)
	movq	%rdi, %rbp
	je	.L3
	movsbl	67(%r12), %esi
.L4:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L3:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	movq	%r12, %rdi
	call	*48(%rax)
	movsbl	%al, %esi
	jmp	.L4
.L7:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4654:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.p2align 4
	.globl	_Z9factoriali
	.type	_Z9factoriali, @function
_Z9factoriali:
.LFB3898:
	.cfi_startproc
	endbr64
	movl	$1, %r8d
	cmpl	$1, %edi
	jle	.L8
	movslq	%edi, %rdx
	leal	-2(%rdi), %esi
	movl	$1, %r8d
	leaq	-1(%rdx), %rax
	movq	%rax, %rcx
	subq	%rsi, %rcx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L12:
	subq	$1, %rax
.L11:
	imulq	%rdx, %r8
	movq	%rax, %rdx
	cmpq	%rcx, %rax
	jne	.L12
.L8:
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE3898:
	.size	_Z9factoriali, .-_Z9factoriali
	.p2align 4
	.globl	_Z14sum_of_squaresRKSt6vectorIdSaIdEE
	.type	_Z14sum_of_squaresRKSt6vectorIdSaIdEE, @function
_Z14sum_of_squaresRKSt6vectorIdSaIdEE:
.LFB3899:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rcx, %rdx
	je	.L19
	subq	%rdx, %rcx
	movq	%rdx, %rax
	leaq	-8(%rcx), %rsi
	shrq	$3, %rsi
	addq	$1, %rsi
	cmpq	$8, %rcx
	je	.L20
	movq	%rsi, %rcx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	salq	$4, %rcx
	addq	%rdx, %rcx
	.p2align 4,,10
	.p2align 3
.L16:
	movupd	(%rax), %xmm1
	addq	$16, %rax
	mulpd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rax, %rcx
	jne	.L16
	movq	%rsi, %rax
	andq	$-2, %rax
	leaq	(%rdx,%rax,8), %rdx
	cmpq	%rax, %rsi
	je	.L22
.L15:
	movsd	(%rdx), %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	pxor	%xmm0, %xmm0
	ret
.L20:
	pxor	%xmm0, %xmm0
	jmp	.L15
	.cfi_endproc
.LFE3899:
	.size	_Z14sum_of_squaresRKSt6vectorIdSaIdEE, .-_Z14sum_of_squaresRKSt6vectorIdSaIdEE
	.p2align 4
	.globl	_Z11max_elementRKSt6vectorIdSaIdEE
	.type	_Z11max_elementRKSt6vectorIdSaIdEE, @function
_Z11max_elementRKSt6vectorIdSaIdEE:
.LFB3903:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rdx
	movq	(%rdi), %rcx
	cmpq	%rdx, %rcx
	je	.L24
	leaq	8(%rcx), %rax
	movsd	(%rcx), %xmm0
	cmpq	%rax, %rdx
	je	.L23
	.p2align 4,,10
	.p2align 3
.L28:
	movsd	(%rax), %xmm1
	addq	$8, %rax
	maxsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cmpq	%rax, %rdx
	jne	.L28
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	movsd	(%rcx), %xmm0
.L23:
	ret
	.cfi_endproc
.LFE3903:
	.size	_Z11max_elementRKSt6vectorIdSaIdEE, .-_Z11max_elementRKSt6vectorIdSaIdEE
	.p2align 4
	.globl	_Z4meanRKSt6vectorIdSaIdEE
	.type	_Z4meanRKSt6vectorIdSaIdEE, @function
_Z4meanRKSt6vectorIdSaIdEE:
.LFB3904:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rdx
	movq	(%rdi), %rdi
	cmpq	%rdx, %rdi
	je	.L39
	movq	%rdx, %rcx
	movq	%rdi, %rax
	subq	%rdi, %rcx
	leaq	-8(%rcx), %rsi
	shrq	$3, %rsi
	addq	$1, %rsi
	cmpq	$8, %rcx
	je	.L40
	movq	%rsi, %rcx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	salq	$4, %rcx
	addq	%rdi, %rcx
	.p2align 4,,10
	.p2align 3
.L34:
	movsd	(%rax), %xmm1
	addq	$16, %rax
	addsd	%xmm1, %xmm0
	movsd	-8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rax, %rcx
	jne	.L34
	movq	%rsi, %rcx
	andq	$-2, %rcx
	leaq	(%rdi,%rcx,8), %rax
	cmpq	%rcx, %rsi
	je	.L32
.L33:
	addsd	(%rax), %xmm0
.L32:
	subq	%rdi, %rdx
	sarq	$3, %rdx
	js	.L37
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	divsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	movq	%rdx, %rax
	andl	$1, %edx
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	pxor	%xmm0, %xmm0
	jmp	.L32
.L40:
	pxor	%xmm0, %xmm0
	jmp	.L33
	.cfi_endproc
.LFE3904:
	.size	_Z4meanRKSt6vectorIdSaIdEE, .-_Z4meanRKSt6vectorIdSaIdEE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Sum of squares: "
.LC3:
	.string	"Max element: "
.LC4:
	.string	"Mean: "
.LC5:
	.string	"Factorial of "
.LC6:
	.string	": "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3905:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3905
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$8000000, %edi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	leaq	8(%rax), %rbx
	leaq	8000000(%rax), %rbp
	movq	$0x000000000, (%rax)
	movq	%rax, %r12
	cmpq	%rbp, %rbx
	je	.L45
	movl	$7999992, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	memset@PLT
.L45:
	movsd	.LC1(%rip), %xmm1
	movq	%r12, %r13
	movq	%r12, %rax
	movapd	%xmm1, %xmm0
	.p2align 4,,10
	.p2align 3
.L44:
	movsd	%xmm0, (%rax)
	addq	$8, %rax
	addsd	%xmm1, %xmm0
	cmpq	%rbp, %rax
	jne	.L44
	movq	$0x000000000, 8(%rsp)
	movq	%r12, %rax
	.p2align 4,,10
	.p2align 3
.L46:
	movupd	(%rax), %xmm0
	movsd	8(%rsp), %xmm1
	addq	$16, %rax
	mulpd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)
	cmpq	%rbp, %rax
	jne	.L46
	leaq	_ZSt4cout(%rip), %r14
	movl	$16, %edx
	leaq	.LC2(%rip), %rsi
	movq	%r14, %rdi
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movsd	(%r12), %xmm0
	cmpq	%rbp, %rbx
	je	.L58
	movq	%rbx, %rax
	movq	%r12, %rdx
	.p2align 4,,10
	.p2align 3
.L50:
	movsd	(%rax), %xmm1
	comisd	%xmm0, %xmm1
	maxsd	%xmm0, %xmm1
	cmova	%rax, %rdx
	addq	$8, %rax
	movapd	%xmm1, %xmm0
	cmpq	%rbp, %rax
	jne	.L50
.L47:
	movq	(%rdx), %rbx
	leaq	.LC3(%rip), %rsi
	movl	$13, %edx
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L51:
	movsd	0(%r13), %xmm1
	addq	$16, %r13
	addsd	%xmm1, %xmm0
	movsd	-8(%r13), %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rbp, %r13
	jne	.L51
	movl	$1000000, %eax
	pxor	%xmm1, %xmm1
	movl	$6, %edx
	movq	%r14, %rdi
	cvtsi2sdq	%rax, %xmm1
	leaq	.LC4(%rip), %rsi
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$13, %edx
	leaq	.LC5(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %esi
	movq	%r14, %rdi
	call	_ZNSolsEi@PLT
	movl	$2, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %edx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L54:
	imulq	%rdx, %rsi
	subq	$1, %rdx
	cmpq	$1, %rdx
	jne	.L54
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIxEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE1:
	movq	%r12, %rdi
	movl	$8000000, %esi
	call	_ZdlPvm@PLT
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L58:
	.cfi_restore_state
	movq	%r12, %rdx
	jmp	.L47
.L60:
	endbr64
	movq	%rax, %rbp
	jmp	.L57
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3905:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3905-.LLSDACSB3905
.LLSDACSB3905:
	.uleb128 .LEHB0-.LFB3905
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3905
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L60-.LFB3905
	.uleb128 0
.LLSDACSE3905:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3905
	.type	main.cold, @function
main.cold:
.LFSB3905:
.L57:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	%r12, %rdi
	movl	$8000000, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE3905:
	.section	.gcc_except_table
.LLSDAC3905:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3905-.LLSDACSBC3905
.LLSDACSBC3905:
	.uleb128 .LEHB2-.LCOLDB7
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC3905:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE7:
	.section	.text.startup
.LHOTE7:
	.p2align 4
	.type	_GLOBAL__sub_I__Z9factoriali, @function
_GLOBAL__sub_I__Z9factoriali:
.LFB4650:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE4650:
	.size	_GLOBAL__sub_I__Z9factoriali, .-_GLOBAL__sub_I__Z9factoriali
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z9factoriali
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
