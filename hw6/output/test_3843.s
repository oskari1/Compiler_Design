	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rsi)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	cmpq	$0, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then2792
	jmp	_else2791
	.text
_else2791:
	movq	(%rsi), %rdi
	movq	(%rsi), %rsi
	subq	$1, %rsi
	pushq	%rdi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	f
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	imulq	%rsi, %rdi
	movq	%rdi, (%rdx)
	jmp	_merge2790
	.text
_merge2790:
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then2792:
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge2790
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	f
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	