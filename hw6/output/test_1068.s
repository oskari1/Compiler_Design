	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r9 )
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then2792
	jmp	_else2791
	.text
_else2791:
	movq	(%r9 ), %rsi
	movq	(%r9 ), %rdx
	subq	$1, %rdx
	pushq	%r8 
	pushq	%rsi
	movq	%rdx, %rdi
	callq	f
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdx
	imulq	%rsi, %rdx
	movq	%rdx, (%r8 )
	jmp	_merge2790
	.text
_merge2790:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then2792:
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_merge2790
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	f
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	