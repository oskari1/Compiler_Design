	.data
	.globl	x
x:
	.quad	_global_arr138
	.data
	.globl	_global_arr138
_global_arr138:
	.quad	3
	.quad	1
	.quad	2
	.quad	3
	.data
	.globl	y
y:
	.quad	_global_arr137
	.data
	.globl	_global_arr137
_global_arr137:
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
	jne	_then153
	jmp	_else152
	.text
_else152:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge151:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then153:
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
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	$1, %rdx
	callq	f
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$17, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	