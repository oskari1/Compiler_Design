	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	pushq	%r10
	pushq	%rsi
	pushq	%rdx
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%r10
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$3, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	-8(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond7235
	.text
_body7234:
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	(%r10), %r9 
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
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
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdi
	addq	$1, %rdi
	movq	%rdi, (%r10)
	jmp	_cond7235
	.text
_cond7235:
	movq	(%r10), %rdi
	movq	(%r11), %r9 
	cmpq	%r9 , %rdi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body7234
	jmp	_post7233
	.text
_merge7255:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_notnull7256:
	movq	$4, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge7255
	.text
_null7257:
	movq	$5, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge7255
	.text
_post7233:
	movq	-8(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rsi
	cmpq	$0, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_null7257
	jmp	_notnull7256