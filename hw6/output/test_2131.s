	.data
	.globl	_str_arr763
_str_arr763:
	.asciz	"abcde"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_str_arr763(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	