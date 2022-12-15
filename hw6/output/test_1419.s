	.data
	.globl	_str_arr4220
_str_arr4220:
	.asciz	"\n"
	.text
	.globl	xor
xor:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r9 )
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rsi
	andq	%rdi, %rsi
	movq	%rsi, %rdx
	xorq	$-1, %rdx
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rsi
	orq	%rdi, %rsi
	andq	%rdx, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	xor_shift_plus
xor_shift_plus:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdi, (%r8 )
	movq	(%r8 ), %r9 
	movq	%r9 , %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rdx)
	movq	(%r8 ), %r9 
	movq	%r9 , %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rsi)
	movq	(%r8 ), %r9 
	movq	%r9 , %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	(%rsi), %rdi
	movq	%rdi, (%r9 )
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	$23, %rcx
	shlq	%cl, %rax
	movq	%rax, %r9 
	movq	(%rdx), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	callq	xor
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdi
	movq	%rdi, (%rdx)
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	$17, %rcx
	shrq	%cl, %rax
	movq	%rax, %r9 
	movq	(%rdx), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	callq	xor
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdi
	movq	%rdi, (%rdx)
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	$26, %rcx
	shrq	%cl, %rax
	movq	%rax, %r9 
	movq	(%rsi), %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	callq	xor
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	(%rdx), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	callq	xor
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdi
	movq	%rdi, (%rdx)
	movq	(%r8 ), %r8 
	movq	%r8 , %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	(%rdx), %rdi
	movq	%rdi, (%r8 )
	movq	(%rdx), %rdx
	movq	(%rsi), %rdi
	addq	%rdx, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r10
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$2, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	-8(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4184
	.text
_body4183:
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	(%r11), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
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
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r11)
	jmp	_cond4184
	.text
_body4203:
	movq	(%r8 ), %rdi
	movq	(%r10), %rdx
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r10
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
	popq	%r10
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%r10), %rsi
	addq	$1, %rsi
	imulq	$100, %rsi
	movq	%rsi, (%rdi)
	movq	(%r10), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r10)
	jmp	_cond4204
	.text
_cond4184:
	movq	(%r11), %rsi
	movq	(%rdx), %rdi
	cmpq	%rdi, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4183
	jmp	_post4182
	.text
_cond4204:
	movq	(%r10), %rsi
	cmpq	$2, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4203
	jmp	_post4202
	.text
_post4182:
	movq	-8(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4204
	.text
_post4202:
	movq	(%r8 ), %rsi
	pushq	%r8 
	movq	%rsi, %rdi
	callq	xor_shift_plus
	popq	%r8 
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_int
	popq	%rsi
	popq	%r8 
	leaq	_str_arr4220(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	popq	%r8 
	movq	(%r8 ), %rsi
	movq	%rsi, %rdi
	callq	xor_shift_plus
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_int
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	