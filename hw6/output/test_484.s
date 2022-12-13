	.data
	.globl	b
b:
	.quad	1
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	leaq	b(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	$0, %rsi
	jne	_then124
	jmp	_else123
	.text
_else123:
	jmp	_merge122
	.text
_merge122:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then124:
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge122