	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rdx, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	xorq	%rdx, %rsi
	movq	%rdx, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	andq	$1, %rdx
	orq	%rsi, %rdx
	movq	%rdx, %rax
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
	movq	%rsp, %rdi
	movq	$1, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rdi), %rdx
	movq	%rdx, %r8 
	addq	$1, %r8 
	movq	%r8 , (%rdi)
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	one_iteration
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	cmpq	$5, %r8 
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	end
	jmp	loop