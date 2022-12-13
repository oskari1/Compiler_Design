	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_then56
	.text
_else55:
	movq	$4, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge54:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then56:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	