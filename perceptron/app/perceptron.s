	.file	"perceptron.c"
	.text
	.globl	funcaoDegrau
	.type	funcaoDegrau, @function
funcaoDegrau:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L6
	movl	$1, %eax
	jmp	.L4
.L6:
	movl	$0, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	funcaoDegrau, .-funcaoDegrau
	.globl	treinarPerceptron
	.type	treinarPerceptron, @function
treinarPerceptron:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L8
.L17:
	movl	$0, -20(%rbp)
	jmp	.L9
.L16:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L10
.L11:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	-28(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	addl	$1, -16(%rbp)
.L10:
	cmpl	$99, -16(%rbp)
	jle	.L11
	movl	-28(%rbp), %eax
	movd	%eax, %xmm0
	call	funcaoDegrau
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	subss	-8(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jp	.L18
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	je	.L12
.L18:
	movl	$0, -12(%rbp)
	jmp	.L14
.L15:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	-4(%rbp), %xmm2
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -12(%rbp)
.L14:
	cmpl	$1, -12(%rbp)
	jle	.L15
.L12:
	addl	$1, -20(%rbp)
.L9:
	movl	-20(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L16
	addl	$1, -24(%rbp)
.L8:
	cmpl	$99, -24(%rbp)
	jle	.L17
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	treinarPerceptron, .-treinarPerceptron
	.section	.rodata
	.align 8
.LC5:
	.string	"Entrada: [%f, %f] - Sa\303\255da: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$0, -88(%rbp)
	jmp	.L20
.L21:
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC3(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	-88(%rbp), %eax
	cltq
	movss	%xmm0, -72(%rbp,%rax,4)
	addl	$1, -88(%rbp)
.L20:
	cmpl	$1, -88(%rbp)
	jle	.L21
	pxor	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	movl	$1, -52(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	treinarPerceptron
	movl	$0, -84(%rbp)
	jmp	.L22
.L25:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L23
.L24:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rdx, %rax
	movss	-48(%rbp,%rax,4), %xmm1
	movl	-76(%rbp), %eax
	cltq
	movss	-72(%rbp,%rax,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	-80(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	addl	$1, -76(%rbp)
.L23:
	cmpl	$1, -76(%rbp)
	jle	.L24
	movl	-80(%rbp), %eax
	movd	%eax, %xmm0
	call	funcaoDegrau
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	cltq
	movss	-44(%rbp,%rax,8), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-84(%rbp), %eax
	cltq
	movss	-48(%rbp,%rax,8), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rax
	movl	%edx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	addl	$1, -84(%rbp)
.L22:
	cmpl	$3, -84(%rbp)
	jle	.L25
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	-1717986918
	.long	1069128089
	.align 4
.LC2:
	.long	1325400064
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 4
.LC4:
	.long	1065353216
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
