	.data
	.globl	i
i:
	.quad	0
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r10)
	movq	%rsi, (%r9 )
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	cmpq	$1, %rdx
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then930
	jmp	_else929
	.text
_else929:
	movq	(%r10), %rsi
	movq	(%r9 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%r8 )
	jmp	_merge928
	.text
_merge928:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then930:
	movq	(%r9 ), %rdx
	movq	(%r10), %rsi
	subq	$1, %rsi
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	f
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, (%r8 )
	jmp	_merge928
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdx
	movq	(%rsi), %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	f
	popq	%rsi
	movq	%rax, %rdx
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	