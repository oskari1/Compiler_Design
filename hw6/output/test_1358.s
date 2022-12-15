	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rsi, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdi
	xorq	%rdi, %rdx
	movq	%rdi, %rax
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
	movq	%rsp, %rdx
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rdx), %rsi
	movq	%rsi, %r8 
	addq	$1, %r8 
	movq	%r8 , (%rdx)
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	one_iteration
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	cmpq	$5, %r8 
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	end
	jmp	loop