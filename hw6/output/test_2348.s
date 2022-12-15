	.data
	.globl	_str_arr2868
_str_arr2868:
	.asciz	" "
	.text
	.globl	bubble_sort
bubble_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rsi, (%r8 )
	movq	%rdi, (%r10)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rsi
	subq	$1, %rsi
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2893
	.text
_body2892:
	movq	$1, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond2901
	.text
_body2900:
	movq	(%r8 ), %rdi
	movq	(%r9 ), %rsi
	movq	%rsi, %r10
	subq	$1, %r10
	movq	%rdi, %rax
	movq	%rax, %rsi
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
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %r10
	movq	(%r8 ), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r11, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	cmpq	%rsi, %r10
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then2946
	jmp	_else2945
	.text
_cond2893:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	$0, %rsi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body2892
	jmp	_post2891
	.text
_cond2901:
	movq	(%r9 ), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rsi
	setle	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body2900
	jmp	_post2899
	.text
_else2945:
	jmp	_merge2944
	.text
_merge2944:
	movq	(%r9 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond2901
	.text
_post2891:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post2899:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	subq	$1, %rsi
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2893
	.text
_then2946:
	movq	(%r8 ), %rdi
	movq	(%r9 ), %rsi
	movq	%rsi, %r10
	subq	$1, %r10
	movq	%rdi, %rax
	movq	%rax, %rsi
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
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	movq	(%r8 ), %rdi
	movq	(%r9 ), %rsi
	movq	%rsi, %r10
	subq	$1, %r10
	movq	%rdi, %rax
	movq	%rax, %rsi
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
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%r8 ), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r11, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%r10)
	movq	(%r8 ), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%rdi, %rax
	movq	%rax, %rsi
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
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdx), %rsi
	movq	%rsi, (%rdi)
	jmp	_merge2944
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r11
	pushq	%r11
	pushq	%r8 
	movq	$8, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$8, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%r10, (%rdi)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond2811
	.text
_body2810:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%r8 ), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
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
	popq	%r11
	movq	-8(%rbp), %rax
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
	jmp	_cond2811
	.text
_cond2811:
	movq	(%r8 ), %rsi
	movq	(%r9 ), %rdx
	cmpq	%rdx, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body2810
	jmp	_post2809
	.text
_post2809:
	movq	%r10, (%r11)
	movq	(%r11), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$121, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	$125, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$2, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movq	$120, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$3, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movq	$111, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$4, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %rsi
	movq	$116, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$5, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %rsi
	movq	$110, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$6, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %rsi
	movq	$117, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$7, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %rsi
	movq	$119, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rsi
	pushq	%r11
	movq	%rsi, %rdi
	callq	string_of_array
	popq	%r11
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	popq	%r11
	leaq	_str_arr2868(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	popq	%r11
	movq	(%r11), %rsi
	pushq	%r11
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$8, %rsi
	callq	bubble_sort
	popq	%rsi
	popq	%r11
	movq	(%r11), %rsi
	movq	%rsi, %rdi
	callq	string_of_array
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$-1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	