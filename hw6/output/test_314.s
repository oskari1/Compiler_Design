	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	jmp	end
	.text
end:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	