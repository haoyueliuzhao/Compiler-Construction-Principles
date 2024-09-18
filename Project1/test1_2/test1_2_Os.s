	.file	"test1_2.cpp"
	.text
	.globl	_Z9factoriali
	.type	_Z9factoriali, @function
_Z9factoriali:
.LFB3878:
	.cfi_startproc
	endbr64
	movslq	%edi, %rdx
	movl	$1, %eax
.L3:
	cmpl	$1, %edi
	jle	.L4
	imulq	%rdx, %rax
	decl	%edi
	decq	%rdx
	jmp	.L3
.L4:
	ret
	.cfi_endproc
.LFE3878:
	.size	_Z9factoriali, .-_Z9factoriali
	.globl	_Z14sum_of_squaresRKSt6vectorIdSaIdEE
	.type	_Z14sum_of_squaresRKSt6vectorIdSaIdEE, @function
_Z14sum_of_squaresRKSt6vectorIdSaIdEE:
.LFB3879:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	xorps	%xmm1, %xmm1
.L7:
	cmpq	%rdx, %rax
	je	.L9
	movsd	(%rax), %xmm0
	addq	$8, %rax
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	jmp	.L7
.L9:
	movaps	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE3879:
	.size	_Z14sum_of_squaresRKSt6vectorIdSaIdEE, .-_Z14sum_of_squaresRKSt6vectorIdSaIdEE
	.globl	_Z11max_elementRKSt6vectorIdSaIdEE
	.type	_Z11max_elementRKSt6vectorIdSaIdEE, @function
_Z11max_elementRKSt6vectorIdSaIdEE:
.LFB3883:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	leaq	8(%rax), %rdx
	cmpq	%rcx, %rax
	je	.L11
.L12:
	movsd	(%rax), %xmm0
	cmpq	%rdx, %rcx
	je	.L11
	movsd	(%rdx), %xmm1
	ucomisd	%xmm0, %xmm1
	cmova	%rdx, %rax
	addq	$8, %rdx
	jmp	.L12
.L11:
	movsd	(%rax), %xmm0
	ret
	.cfi_endproc
.LFE3883:
	.size	_Z11max_elementRKSt6vectorIdSaIdEE, .-_Z11max_elementRKSt6vectorIdSaIdEE
	.globl	_Z4meanRKSt6vectorIdSaIdEE
	.type	_Z4meanRKSt6vectorIdSaIdEE, @function
_Z4meanRKSt6vectorIdSaIdEE:
.LFB3884:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	xorps	%xmm0, %xmm0
	movq	%rcx, %rdx
.L19:
	cmpq	%rdx, %rax
	je	.L23
	addsd	(%rdx), %xmm0
	addq	$8, %rdx
	jmp	.L19
.L23:
	subq	%rcx, %rax
	sarq	$3, %rax
	js	.L21
	cvtsi2sdq	%rax, %xmm1
	jmp	.L22
.L21:
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
.L22:
	divsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE3884:
	.size	_Z4meanRKSt6vectorIdSaIdEE, .-_Z4meanRKSt6vectorIdSaIdEE
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB4370:
	.cfi_startproc
	endbr64
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	.L24
	movq	16(%rdi), %rsi
	movq	%r8, %rdi
	subq	%r8, %rsi
	jmp	_ZdlPvm@PLT
.L24:
	ret
	.cfi_endproc
.LFE4370:
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
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
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB3885:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3885
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$8000000, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movsd	.LC1(%rip), %xmm0
	movl	$1999998, %ecx
	leaq	8000000(%rax), %rsi
	leaq	8(%rax), %r8
	movq	%rax, (%rsp)
	movq	%rax, %rdx
	movq	%rsi, 16(%rsp)
	movq	%r8, %rdi
	movaps	%xmm0, %xmm1
	movq	%rsi, 8(%rsp)
	movq	$0x000000000, (%rax)
	xorl	%eax, %eax
	rep stosl
	xorl	%eax, %eax
.L27:
	movsd	%xmm0, (%rdx,%rax)
	addq	$8, %rax
	addsd	%xmm1, %xmm0
	cmpq	$8000000, %rax
	jne	.L27
	movq	%rsp, %rbp
	leaq	_ZSt4cout(%rip), %r12
	leaq	.LC2(%rip), %rsi
	movq	%rbp, %rdi
	call	_Z14sum_of_squaresRKSt6vectorIdSaIdEE
	movq	%r12, %rdi
	movq	%xmm0, %rbx
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%rbx, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%rbp, %rdi
	leaq	.LC3(%rip), %rsi
	call	_Z11max_elementRKSt6vectorIdSaIdEE
	movq	%r12, %rdi
	movq	%xmm0, %rbx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%rbx, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%rbp, %rdi
	leaq	.LC4(%rip), %rsi
	call	_Z4meanRKSt6vectorIdSaIdEE
	movq	%r12, %rdi
	movq	%xmm0, %rbx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%rbx, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC5(%rip), %rsi
	movq	%r12, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movl	$20, %esi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.LC6(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$20, %edi
	movq	%rax, %r8
	call	_Z9factoriali
	movq	%r8, %rdi
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIxEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE1:
	movq	%rbp, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L29
	call	__stack_chk_fail@PLT
.L30:
	endbr64
	movq	%rax, %r12
.L28:
	movq	%rbp, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%r12, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L29:
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3885:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3885:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3885-.LLSDACSB3885
.LLSDACSB3885:
	.uleb128 .LEHB0-.LFB3885
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3885
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L30-.LFB3885
	.uleb128 0
	.uleb128 .LEHB2-.LFB3885
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3885:
	.section	.text.startup
	.size	main, .-main
	.type	_GLOBAL__sub_I__Z9factoriali, @function
_GLOBAL__sub_I__Z9factoriali:
.LFB4630:
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
.LFE4630:
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
