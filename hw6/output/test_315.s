	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	jmp	next
	.text
end:
	movq	$17, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
next:
	jmp	end