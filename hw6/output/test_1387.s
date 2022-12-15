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
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%r9 )
	movq	%rsi, (%r8 )
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rsi
	cmpq	$1, %rsi
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then930
	jmp	_else929
	.text
_else929:
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rsi
	addq	%rdi, %rsi
	movq	%rsi, (%rdx)
	jmp	_merge928
	.text
_merge928:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then930:
	movq	(%r8 ), %rsi
	movq	(%r9 ), %rdi
	subq	$1, %rdi
	pushq	%rdi
	pushq	%rdx
	callq	f
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdx)
	jmp	_merge928
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$3, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	pushq	%rdi
	callq	f
	popq	%rdi
	movq	%rax, %rsi
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	