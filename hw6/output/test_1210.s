	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rdi
	pushq	%r9 
	pushq	%rdi
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rdi
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$3, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%r11, (%rdx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond1788
	.text
_body1787:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	(%r9 ), %r8 
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r8 , %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$110, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond1788
	.text
_cond1788:
	movq	(%r9 ), %rsi
	movq	(%r10), %r8 
	cmpq	%r8 , %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body1787
	jmp	_post1786
	.text
_post1786:
	movq	%r11, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%rdi
	movq	%rsi, %rdi
	callq	string_of_array
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, (%rdi)
	movq	(%rdi), %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	