	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
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