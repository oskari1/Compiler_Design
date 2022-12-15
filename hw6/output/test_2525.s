	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	$5, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	$111, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	$112, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %r11
	movq	$113, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %r11
	movq	$114, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %r11
	movq	$115, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r9 )
	movq	(%r9 ), %rsi
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	string_of_array
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, (%r10)
	movq	(%r10), %rsi
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	array_of_string
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, (%r8 )
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2267
	.text
_body2266:
	movq	(%rdi), %r9 
	movq	(%r8 ), %r11
	movq	(%rdx), %r10
	movq	%r11, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r10, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	addq	%r9 , %rsi
	movq	%rsi, (%rdi)
	movq	(%rdx), %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdx)
	jmp	_cond2267
	.text
_cond2267:
	movq	(%rdx), %rsi
	cmpq	$5, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body2266
	jmp	_post2265
	.text
_post2265:
	movq	(%rdi), %rsi
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_int
	popq	%rsi
	popq	%rdi
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	