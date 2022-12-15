	.text
	.globl	bubble_sort
bubble_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r10)
	movq	$1, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond4845
	.text
_body4844:
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4855
	.text
_body4854:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%r11, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
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
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	cmpq	%rdx, %rsi
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then4902
	jmp	_else4901
	.text
_cond4845:
	movq	(%r9 ), %rdx
	cmpq	$0, %rdx
	jne	_body4844
	jmp	_post4843
	.text
_cond4855:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	(%r10), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body4854
	jmp	_post4853
	.text
_else4901:
	jmp	_merge4900
	.text
_merge4900:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4855
	.text
_post4843:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post4853:
	jmp	_cond4845
	.text
_then4902:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r8 )
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%r11, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
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
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%r8 ), %rdx
	movq	%rdx, (%rsi)
	movq	$1, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_merge4900
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	pushq	%r10
	pushq	%rdx
	movq	$10, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	movq	$10, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	-32(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4755
	.text
_body4754:
	movq	(%r8 ), %r9 
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%r9 , %rax
	movq	%rax, %rsi
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
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	pushq	%r10
	pushq	%r8 
	pushq	%rdx
	movq	$10, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%r8 
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	movq	$10, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4772
	.text
_body4771:
	movq	(%rdi), %r11
	movq	(%r10), %r9 
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
	movq	%r9 , %rsi
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
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	$10, %r11
	imulq	%rsi, %r11
	movq	(%r10), %rsi
	movq	%r11, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, (%r9 )
	movq	(%r10), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r10)
	jmp	_cond4772
	.text
_body4803:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%r8 , %rax
	movq	%rax, %rsi
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
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$10, %rsi
	callq	bubble_sort
	popq	%rdx
	popq	%rsi
	movq	(%rdx), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r9 , %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r8 , %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %r8 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r8 , %rax
	movq	%rax, %rdi
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
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	addq	%rdi, %rsi
	movq	%rsi, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4804
	.text
_cond4755:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4754
	jmp	_post4753
	.text
_cond4772:
	movq	(%r10), %rsi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	cmpq	%r9 , %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4771
	jmp	_post4770
	.text
_cond4804:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	$10, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4803
	jmp	_post4802
	.text
_else4832:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge4831:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post4753:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4804
	.text
_post4770:
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4755
	.text
_post4802:
	movq	(%rdx), %rdx
	cmpq	$405, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then4833
	jmp	_else4832
	.text
_then4833:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	