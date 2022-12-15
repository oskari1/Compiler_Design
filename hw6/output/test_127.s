	.text
	.globl	create_pair
create_pair:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%r8 )
	movq	%rsi, (%rdx)
	pushq	%r8 
	pushq	%rdx
	movq	$16, %rdi
	callq	oat_malloc
	popq	%rdx
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rsi
	movq	(%r8 ), %r8 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	%r8 , (%rdi)
	movq	(%rdx), %rdx
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	%rdx, (%rdi)
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	pushq	%rdx
	movq	$0, %rsi
	movq	$1, %rdi
	callq	create_pair
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	jne	_then6802
	jmp	_else6801
	.text
_else6801:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6800:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6802:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	