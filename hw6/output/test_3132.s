	.data
	.globl	_str_arr7201
_str_arr7201:
	.asciz	"ab"
	.text
	.globl	run2
run2:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rsi, (%rdx)
	movq	%rdi, (%r8 )
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	pushq	%r15
	movq	%rsi, %r15
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	*%r15
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r15
	movq	(%rdx), %rdx
	movq	(%r8 ), %rsi
	pushq	%r15
	movq	%rdx, %r15
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	*%r15
	popq	%rdx
	popq	%rsi
	popq	%r15
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_str_arr7201(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%rsi
	leaq	print_string(%rip), %rdi
	callq	run2
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	