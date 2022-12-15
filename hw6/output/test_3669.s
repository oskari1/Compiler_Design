	.data
	.globl	lfsr_iterations
lfsr_iterations:
	.quad	5
	.data
	.globl	lfsr_length
lfsr_length:
	.quad	4
	.data
	.globl	lfsr_init_values
lfsr_init_values:
	.quad	_global_arr5170
	.data
	.globl	_global_arr5170
_global_arr5170:
	.quad	4
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.data
	.globl	_str_arr5148
_str_arr5148:
	.asciz	"T"
	.data
	.globl	_str_arr5150
_str_arr5150:
	.asciz	"F"
	.data
	.globl	_str_arr5113
_str_arr5113:
	.asciz	" "
	.text
	.globl	xor
xor:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%r8 )
	movq	%rsi, (%rdx)
	movq	(%r8 ), %rdi
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	sete	%sil
	andq	$1, %rsi
	andq	%rdi, %rsi
	movq	(%r8 ), %rdi
	cmpq	$0, %rdi
	sete	%dil
	andq	$1, %rdi
	movq	(%rdx), %rdx
	andq	%rdx, %rdi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	string_of_bool
string_of_bool:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rdx)
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	jne	_then5154
	jmp	_else5153
	.text
_else5153:
	leaq	_str_arr5150(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge5152:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5154:
	leaq	_str_arr5148(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	print_lfsr
print_lfsr:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rsi, (%rdx)
	movq	%rdi, (%r8 )
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond5132
	.text
_body5131:
	movq	(%rdx), %rdi
	movq	(%r9 ), %r10
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
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	%rsi, %rdi
	callq	string_of_bool
	popq	%rdx
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	(%r9 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond5132
	.text
_cond5132:
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5131
	jmp	_post5130
	.text
_post5130:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r8 
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	%rsi, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	-24(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond5014
	.text
_body5013:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	(%r9 ), %r11
	movq	-40(%rbp), %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %r10
	addq	$1, %r10
	movq	%r10, (%r9 )
	jmp	_cond5014
	.text
_body5034:
	movq	(%rdx), %r9 
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r9 , %rax
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
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	%rax, %r9 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %r9 
	movq	%r9 , (%rsi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5035
	.text
_body5057:
	movq	(%rdx), %r9 
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %r10
	subq	$2, %r10
	movq	%r9 , %rax
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
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %r10
	movq	(%rdx), %r9 
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %r11
	subq	$1, %r11
	movq	%r9 , %rax
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
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r10, %rsi
	callq	xor
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, (%rdi)
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	subq	$1, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond5084
	.text
_body5083:
	movq	(%rdx), %r9 
	movq	(%r8 ), %r10
	movq	%r9 , %rax
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
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rdx), %r10
	movq	(%r8 ), %r9 
	movq	%r9 , %r11
	subq	$1, %r11
	movq	%r10, %rax
	movq	%rax, %r9 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %r9 
	movq	%r9 , (%rsi)
	movq	(%r8 ), %rsi
	subq	$1, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond5084
	.text
_cond5014:
	movq	(%r9 ), %r10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	cmpq	%r11, %r10
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_body5013
	jmp	_post5012
	.text
_cond5035:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	%rsi, %r9 
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5034
	jmp	_post5033
	.text
_cond5058:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	leaq	lfsr_iterations(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	%rsi, %r9 
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5057
	jmp	_post5056
	.text
_cond5084:
	movq	(%r8 ), %rsi
	cmpq	$0, %rsi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5083
	jmp	_post5082
	.text
_post5012:
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5035
	.text
_post5033:
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5058
	.text
_post5056:
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	print_lfsr
	popq	%rdx
	popq	%rsi
	popq	%rdi
	leaq	_str_arr5113(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	(%rdx), %rdi
	pushq	%rdi
	pushq	%rsi
	callq	print_lfsr
	popq	%rsi
	popq	%rdi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5082:
	movq	(%rdx), %r9 
	movq	%r9 , %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
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
	movq	(%rdi), %rsi
	movq	%rsi, (%r9 )
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5058