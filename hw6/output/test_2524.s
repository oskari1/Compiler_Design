	.data
	.globl	_str_arr2201
_str_arr2201:
	.asciz	"hello"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rdx
	leaq	_str_arr2201(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	%r9 , (%rsi)
	movq	(%rsi), %rsi
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
	jmp	_cond2217
	.text
_body2216:
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
	jmp	_cond2217
	.text
_cond2217:
	movq	(%rdx), %rsi
	cmpq	$5, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body2216
	jmp	_post2215
	.text
_post2215:
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	