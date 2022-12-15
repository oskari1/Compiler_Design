	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
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
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$111, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	$112, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movq	$113, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movq	$114, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %rsi
	movq	$115, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%r11, (%r10)
	movq	(%r10), %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	string_of_array
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, (%rdi)
	movq	(%rdi), %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	%rsi, %rdi
	callq	array_of_string
	popq	%rdx
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, (%r9 )
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond2267
	.text
_body2266:
	movq	(%rdx), %rdi
	movq	(%r9 ), %r11
	movq	(%r8 ), %r10
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
	addq	%rdi, %rsi
	movq	%rsi, (%rdx)
	movq	(%r8 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond2267
	.text
_cond2267:
	movq	(%r8 ), %rsi
	cmpq	$5, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body2266
	jmp	_post2265
	.text
_post2265:
	movq	(%rdx), %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	print_int
	popq	%rdx
	popq	%rsi
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	