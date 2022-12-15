	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	xorq	%rdx, %rdi
	movq	%rdx, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdi
	xorq	%rdi, %rdx
	movq	%rdx, %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	andq	$1, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rsi), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rdi
	callq	one_iteration
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	cmpq	$5, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	end
	jmp	loop