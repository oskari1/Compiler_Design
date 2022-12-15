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
	movq	%rsp, %r9 
	movq	%rdi, (%r8 )
	movq	%rsi, (%rdx)
	movq	$0, %rax
	movq	%r9 , %rcx
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
	movq	(%rdx), %rdi
	addq	%rdi, %rsi
	movq	%rsi, (%r9 )
	jmp	_merge928
	.text
_merge928:
	movq	(%r9 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then930:
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	subq	$1, %rdi
	pushq	%r9 
	pushq	%rdi
	callq	f
	popq	%rdi
	popq	%r9 
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
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