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
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%rdi, (%r8 )
	movq	%rsi, (%rdx)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rsi
	cmpq	$1, %rsi
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then930
	jmp	_else929
	.text
_else929:
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%rdi)
	jmp	_merge928
	.text
_merge928:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then930:
	movq	(%rdx), %rdx
	movq	(%r8 ), %rsi
	subq	$1, %rsi
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	f
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rdi)
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