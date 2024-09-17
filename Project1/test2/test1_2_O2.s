	.file	"test1_2.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1565:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1565:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB4656:
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
	je	.L9
	cmpb	$0, 56(%r12)
	movq	%rdi, %rbp
	je	.L5
	movsbl	67(%r12), %esi
.L6:
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
.L5:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L6
	movl	$10, %esi
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L6
.L9:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4656:
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
	jle	.L10
	movslq	%edi, %rdx
	leal	-2(%rdi), %esi
	movl	$1, %r8d
	leaq	-1(%rdx), %rax
	movq	%rax, %rcx
	subq	%rsi, %rcx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L14:
	subq	$1, %rax
.L13:
	imulq	%rdx, %r8
	movq	%rax, %rdx
	cmpq	%rcx, %rax
	jne	.L14
.L10:
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
	movq	8(%rdi), %rdx
	movq	(%rdi), %rax
	pxor	%xmm1, %xmm1
	cmpq	%rdx, %rax
	je	.L15
	.p2align 4,,10
	.p2align 3
.L17:
	movsd	(%rax), %xmm0
	addq	$8, %rax
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	cmpq	%rdx, %rax
	jne	.L17
.L15:
	movapd	%xmm1, %xmm0
	ret
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
	je	.L21
	leaq	8(%rcx), %rax
	movsd	(%rcx), %xmm0
	cmpq	%rax, %rdx
	je	.L20
	.p2align 4,,10
	.p2align 3
.L25:
	movsd	(%rax), %xmm1
	addq	$8, %rax
	maxsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cmpq	%rax, %rdx
	jne	.L25
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	movsd	(%rcx), %xmm0
.L20:
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
	movq	(%rdi), %rcx
	cmpq	%rdx, %rcx
	je	.L33
	movq	%rcx, %rax
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L30:
	addsd	(%rax), %xmm0
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L30
.L29:
	subq	%rcx, %rdx
	sarq	$3, %rdx
	js	.L31
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	divsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L31:
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
.L33:
	pxor	%xmm0, %xmm0
	jmp	.L29
	.cfi_endproc
.LFE3904:
	.size	_Z4meanRKSt6vectorIdSaIdEE, .-_Z4meanRKSt6vectorIdSaIdEE
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB4390:
	.cfi_startproc
	endbr64
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	.L35
	movq	16(%rdi), %rsi
	movq	%r8, %rdi
	subq	%r8, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L35:
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
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	leaq	8000000(%rax), %rbp
	leaq	8(%rax), %rdi
	movq	%rax, 16(%rsp)
	movq	%rax, %rbx
	movq	%rbp, 32(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	%rbp, %rdi
	je	.L38
	movl	$7999992, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L38:
	movsd	.LC1(%rip), %xmm1
	movq	%rbp, 24(%rsp)
	movq	%rbx, %rax
	movq	%rbx, %rdx
	movapd	%xmm1, %xmm0
	.p2align 4,,10
	.p2align 3
.L39:
	movsd	%xmm0, (%rdx)
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	cmpq	%rbp, %rdx
	jne	.L39
	pxor	%xmm3, %xmm3
	movsd	%xmm3, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L40:
	movsd	(%rax), %xmm0
	addq	$8, %rax
	mulsd	%xmm0, %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	cmpq	%rax, %rbp
	jne	.L40
	leaq	_ZSt4cout(%rip), %r12
	leaq	.LC2(%rip), %rsi
	movq	%r12, %rdi
	leaq	16(%rsp), %rbp
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movsd	8(%rsp), %xmm0
	movq	%rax, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
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
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
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
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	leaq	.LC5(%rip), %rsi
	movq	%r12, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movl	$20, %esi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.LC6(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movl	$20, %edx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L41:
	imulq	%rdx, %rsi
	subq	$1, %rdx
	cmpq	$1, %rdx
	jne	.L41
	call	_ZNSo9_M_insertIxEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE1:
	movq	%rbp, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L53
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L53:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L47:
	endbr64
	movq	%rax, %r12
	jmp	.L44
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
	.uleb128 .L47-.LFB3905
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
.L44:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	%rbp, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%r12, %rdi
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
