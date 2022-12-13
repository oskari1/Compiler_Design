	.text
	.globl	quick_sort
quick_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, (%r11)
	movq	%rsi, (%r9 )
	movq	%rdx, (%r8 )
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then1060
	jmp	_else1059
	.text
_else1059:
	jmp	_merge1058
	.text
_merge1058:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then1060:
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rsi
	movq	(%r11), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	partition
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, (%r10)
	movq	(%r10), %rdx
	movq	%rdx, %rsi
	subq	$1, %rsi
	movq	(%r9 ), %rdx
	movq	(%r11), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rsi
	movq	%rdx, %rsi
	popq	%rdx
	callq	quick_sort
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	(%r8 ), %rdx
	movq	(%r10), %rsi
	addq	$1, %rsi
	movq	(%r11), %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	quick_sort
	popq	%rdx
	popq	%rsi
	popq	%rdi
	jmp	_merge1058
	.text
	.globl	partition
partition:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r11)
	movq	%rdx, (%r9 )
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	(%r11), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r10)
	movq	(%r11), %rdx
	movq	%rdx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond925
	.text
_body924:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond943
	.text
_body942:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond943
	.text
_body959:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond960
	.text
_cond925:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	$0, %rdx
	sete	-80(%rbp)
	andq	$1, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	_body924
	jmp	_post923
	.text
_cond943:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%r10), %rdx
	cmpq	%rdx, %rsi
	setle	-96(%rbp)
	andq	$1, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	(%r9 ), %rdx
	cmpq	%rdx, %rsi
	setle	-104(%rbp)
	andq	$1, -104(%rbp)
	movq	-96(%rbp), %rax
	andq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	_body942
	jmp	_post941
	.text
_cond960:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%r10), %rdx
	cmpq	%rdx, %rsi
	setg	-128(%rbp)
	andq	$1, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	_body959
	jmp	_post958
	.text
_else1000:
	jmp	_merge999
	.text
_else969:
	jmp	_merge968
	.text
_merge968:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	$0, %rdx
	sete	-136(%rbp)
	andq	$1, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	_then1001
	jmp	_else1000
	.text
_merge999:
	jmp	_cond925
	.text
_post923:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r11), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
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
	popq	%r11
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
	movq	(%r11), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
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
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%r9 , %rax
	movq	%rax, %rdx
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
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post941:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond960
	.text
_post958:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	%rdx, %rsi
	setge	-152(%rbp)
	andq	$1, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	_then970
	jmp	_else969
	.text
_then1001:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-160(%rbp), %rax
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
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -176(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-184(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%r8 ), %rdx
	movq	%rdx, (%rsi)
	jmp	_merge999
	.text
_then970:
	movq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge968
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rsi
	movq	$9, %rdi
	callq	oat_alloc_array
	popq	%rsi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$107, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	$112, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	$121, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	$102, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %rdx
	movq	$123, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %rdx
	movq	$115, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %rdx
	movq	$104, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %rdx
	movq	$111, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, %rdx
	movq	$109, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, (%rsi)
	movq	(%rsi), %rdx
	pushq	%rsi
	movq	%rdx, %rdi
	callq	string_of_array
	popq	%rsi
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	movq	(%rsi), %rdx
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	movq	$8, %rdx
	callq	quick_sort
	popq	%rdx
	popq	%rsi
	movq	(%rsi), %rdx
	movq	%rdx, %rdi
	callq	string_of_array
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	movq	$255, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	