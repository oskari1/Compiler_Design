	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_then87
	.text
_else86:
	movq	$2, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge85:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then87:
	movq	$-96, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	