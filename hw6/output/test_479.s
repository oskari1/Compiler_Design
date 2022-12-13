	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_then69
	.text
_else68:
	movq	$46, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge67:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then69:
	movq	$23, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	