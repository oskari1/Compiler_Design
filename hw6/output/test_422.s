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
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rsi, (%r8 )
	movq	%rdi, (%r9 )
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rsi
	pushq	%r15
	movq	%rdx, %r15
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	*%r15
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r15
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rsi
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
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rsi
	leaq	print_string(%rip), %rdi
	callq	run2
	popq	%rdx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	