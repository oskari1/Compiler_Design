	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	pushq	%r8 
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rsi
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$3, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%rsi, (%rdi)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond254
	.text
_body253:
	movq	(%rdi), %r10
	movq	(%r8 ), %rdx
	movq	%r10, %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond254
	.text
_cond254:
	movq	(%r8 ), %rsi
	movq	(%r9 ), %rdx
	cmpq	%rdx, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body253
	jmp	_post252
	.text
_post252:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	