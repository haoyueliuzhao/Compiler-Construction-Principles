	.file	"test1_2.cpp"
	.text
	.globl	_Z9factoriali
	.type	_Z9factoriali, @function
_Z9factoriali:
.LFB3898:
	.cfi_startproc
	endbr64
	movl	$1, %eax
	cmpl	$1, %edi
	jle	.L5
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	leal	-1(%rdi), %edi
	call	_Z9factoriali
	movq	%rax, %rdx
	movslq	%ebx, %rax
	imulq	%rdx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE3898:
	.size	_Z9factoriali, .-_Z9factoriali
	.globl	_Z14sum_of_squaresRKSt6vectorIdSaIdEE
	.type	_Z14sum_of_squaresRKSt6vectorIdSaIdEE, @function
_Z14sum_of_squaresRKSt6vectorIdSaIdEE:
.LFB3899:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rdx
	movq	(%rdi), %rax
	cmpq	%rdx, %rax
	je	.L11
	pxor	%xmm1, %xmm1
.L10:
	movsd	(%rax), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L10
.L8:
	movapd	%xmm1, %xmm0
	ret
.L11:
	pxor	%xmm1, %xmm1
	jmp	.L8
	.cfi_endproc
.LFE3899:
	.size	_Z14sum_of_squaresRKSt6vectorIdSaIdEE, .-_Z14sum_of_squaresRKSt6vectorIdSaIdEE
	.globl	_Z11max_elementRKSt6vectorIdSaIdEE
	.type	_Z11max_elementRKSt6vectorIdSaIdEE, @function
_Z11max_elementRKSt6vectorIdSaIdEE:
.LFB3903:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rcx, %rdx
	je	.L18
	leaq	8(%rdx), %rax
	cmpq	%rax, %rcx
	je	.L14
.L17:
	movsd	(%rax), %xmm0
	ucomisd	(%rdx), %xmm0
	cmova	%rax, %rdx
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L17
.L14:
	movsd	(%rdx), %xmm0
	ret
.L18:
	movq	%rcx, %rdx
	jmp	.L14
	.cfi_endproc
.LFE3903:
	.size	_Z11max_elementRKSt6vectorIdSaIdEE, .-_Z11max_elementRKSt6vectorIdSaIdEE
	.globl	_Z4meanRKSt6vectorIdSaIdEE
	.type	_Z4meanRKSt6vectorIdSaIdEE, @function
_Z4meanRKSt6vectorIdSaIdEE:
.LFB3904:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rdx
	movq	(%rdi), %rcx
	cmpq	%rdx, %rcx
	je	.L26
	movq	%rcx, %rax
	pxor	%xmm0, %xmm0
.L23:
	addsd	(%rax), %xmm0
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L23
.L22:
	subq	%rcx, %rdx
	sarq	$3, %rdx
	js	.L24
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
.L25:
	divsd	%xmm1, %xmm0
	ret
.L26:
	pxor	%xmm0, %xmm0
	jmp	.L22
.L24:
	movq	%rdx, %rax
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L25
	.cfi_endproc
.LFE3904:
	.size	_Z4meanRKSt6vectorIdSaIdEE, .-_Z4meanRKSt6vectorIdSaIdEE
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB4390:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L31
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	16(%rdi), %rsi
	subq	%rax, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
.L31:
	ret
	.cfi_endproc
.LFE4390:
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB3905:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3905
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$8000000, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, (%rsp)
	leaq	8000000(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movq	$0x000000000, (%rax)
	addq	$8, %rax
	cmpq	%rdx, %rax
	je	.L35
.L36:
	movq	$0x000000000, (%rax)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L36
.L35:
	movq	%rdx, 8(%rsp)
	movq	(%rsp), %rax
	cmpq	%rdx, %rax
	je	.L37
	movsd	.LC1(%rip), %xmm0
	movapd	%xmm0, %xmm1
.L38:
	movsd	%xmm0, (%rax)
	addsd	%xmm1, %xmm0
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L38
.L37:
	movq	%rsp, %rdi
	call	_Z14sum_of_squaresRKSt6vectorIdSaIdEE
	movq	%xmm0, %rbx
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%rbx, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%rsp, %rdi
	call	_Z11max_elementRKSt6vectorIdSaIdEE
	movq	%xmm0, %rbx
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%rbx, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%rsp, %rdi
	call	_Z4meanRKSt6vectorIdSaIdEE
	movq	%xmm0, %rbx
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%rbx, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movl	$20, %esi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.LC6(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movl	$20, %edi
	call	_Z9factoriali
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIxEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE1:
	movq	%rsp, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L46
	movl	$0, %eax
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L41:
	.cfi_restore_state
	endbr64
	movq	%rax, %rbx
	movq	%rsp, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L46:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3905:
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
	.uleb128 .L41-.LFB3905
	.uleb128 0
	.uleb128 .LEHB2-.LFB3905
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3905:
	.text
	.size	main, .-main
	.type	_GLOBAL__sub_I__Z9factoriali, @function
_GLOBAL__sub_I__Z9factoriali:
.LFB4650:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	call	__cxa_atexit@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
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
