	.data
	.globl	x
x:
	.quad	_global_arr7401
	.data
	.globl	_global_arr7401
_global_arr7401:
	.quad	3
	.quad	1
	.quad	2
	.quad	3
	.data
	.globl	y
y:
	.quad	_global_arr7400
	.data
	.globl	_global_arr7400
_global_arr7400:
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rdx, %rdi
	movq	%rsi, %rdx
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rsi, (%r9 )
	movq	%rdx, (%r8 )
	movq	%rdi, (%r10)
	movq	(%r10), %rdx
	cmpq	$0, %rdx
	jne	_then7416
	jmp	_else7415
	.text
_else7415:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge7414:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then7416:
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rdx
	callq	f
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$17, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rdx
	callq	f
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %r8 
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	f
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
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
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	addq	%r8 , %rsi
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	