	.data
	.globl	_str_arr4037
_str_arr4037:
	.asciz	"Correct!"
	.text
	.globl	euclid_division
euclid_division:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%r10)
	movq	%rdi, (%r9 )
	movq	(%r9 ), %rsi
	cmpq	$0, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4116
	jmp	_else4115
	.text
_body4131:
	movq	(%r8 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	movq	(%rdx), %rsi
	movq	(%r9 ), %rdi
	subq	%rdi, %rsi
	movq	%rsi, (%rdx)
	jmp	_cond4132
	.text
_body4157:
	movq	(%r8 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	movq	(%rdx), %rsi
	movq	(%r9 ), %rdi
	subq	%rdi, %rsi
	movq	%rsi, (%rdx)
	jmp	_cond4158
	.text
_cond4132:
	movq	(%rdx), %rsi
	movq	(%r9 ), %rdi
	cmpq	%rdi, %rsi
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4131
	jmp	_post4130
	.text
_cond4158:
	movq	(%rdx), %rsi
	movq	(%r9 ), %rdi
	cmpq	%rdi, %rsi
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4157
	jmp	_post4156
	.text
_else4115:
	jmp	_merge4114
	.text
_else4148:
	movq	(%r8 ), %rsi
	movq	$0, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	subq	$1, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_else4151:
	jmp	_merge4150
	.text
_merge4114:
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rsi
	movq	%rsi, (%rdx)
	movq	(%r10), %rsi
	cmpq	$0, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4152
	jmp	_else4151
	.text
_merge4147:
	jmp	_merge4150
	.text
_merge4150:
	jmp	_cond4158
	.text
_post4130:
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4149
	jmp	_else4148
	.text
_post4156:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4116:
	movq	(%r9 ), %rsi
	movq	$0, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	(%r10), %rdi
	pushq	%rdi
	callq	euclid_division
	popq	%rdi
	movq	%rax, %rsi
	movq	$0, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4149:
	movq	(%r8 ), %rsi
	movq	$0, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4152:
	movq	(%r10), %rsi
	movq	$0, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	jmp	_cond4132
	.text
	.globl	binary_search
binary_search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdx, -8(%rbp)
	movq	%rcx, %rdx
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r11)
	movq	-8(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdx, (%r10)
	movq	(%r10), %rsi
	movq	(%r8 ), %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then4060
	jmp	_else4059
	.text
_else4059:
	jmp	_merge4058
	.text
_else4082:
	jmp	_merge4081
	.text
_else4099:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge4058:
	movq	(%r10), %rsi
	movq	(%r8 ), %rdx
	addq	%rsi, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	$2, %rsi
	movq	%rdx, %rdi
	callq	euclid_division
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, (%r9 )
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r9 ), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
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
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%r11), %rdx
	cmpq	%rdx, %rsi
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then4083
	jmp	_else4082
	.text
_merge4081:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r9 ), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%r11), %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then4100
	jmp	_else4099
	.text
_merge4098:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4060:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4083:
	movq	(%r9 ), %rdx
	movq	%rdx, %r9 
	subq	$1, %r9 
	movq	(%r8 ), %rdx
	movq	(%r11), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	movq	%r9 , %rcx
	callq	binary_search
	popq	%rsi
	popq	%rdi
	popq	%r9 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4100:
	movq	(%r10), %rsi
	movq	(%r9 ), %rdx
	movq	%rdx, %r8 
	addq	$1, %r8 
	movq	(%r11), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rcx
	movq	%rdx, %rsi
	movq	%r8 , %rdx
	callq	binary_search
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r9 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdx
	movq	$100, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	$100, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	-16(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond3988
	.text
_body3987:
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	(%r11), %rdi
	movq	-32(%rbp), %rax
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
	movq	-32(%rbp), %rax
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
	jmp	_cond3988
	.text
_body4007:
	movq	(%rdx), %rdi
	movq	(%r10), %r8 
	movq	%rdi, %rax
	movq	%rax, %rsi
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
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%r10), %rsi
	imulq	$2, %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdi)
	movq	(%r10), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r10)
	jmp	_cond4008
	.text
_cond3988:
	movq	(%r11), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body3987
	jmp	_post3986
	.text
_cond4008:
	movq	(%r10), %rsi
	cmpq	$100, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4007
	jmp	_post4006
	.text
_else4041:
	jmp	_merge4040
	.text
_merge4040:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post3986:
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4008
	.text
_post4006:
	movq	(%rdx), %rsi
	pushq	%r9 
	pushq	%rdx
	movq	$99, %rcx
	movq	$0, %rdx
	movq	%rsi, %rdi
	movq	$80, %rsi
	callq	binary_search
	popq	%rdx
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rsi
	pushq	%r9 
	movq	$99, %rcx
	movq	$0, %rdx
	movq	%rsi, %rdi
	movq	$81, %rsi
	callq	binary_search
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, (%r9 )
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r9 ), %rsi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	sete	%sil
	andq	$1, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	(%r9 ), %rdi
	orq	%rdx, %rdi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	jne	_then4042
	jmp	_else4041
	.text
_then4042:
	leaq	_str_arr4037(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	jmp	_merge4040