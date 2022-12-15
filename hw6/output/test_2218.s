	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$12, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$800, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdi
	movq	(%rdx), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	cmpq	$0, %rsi
	setle	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then8224
	jmp	_else8223
	.text
_else8223:
	movq	(%r8 ), %rdi
	movq	(%rdx), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8222:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8224:
	movq	(%r8 ), %rsi
	movq	$0, %rdi
	subq	%rsi, %rdi
	movq	(%rdx), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	