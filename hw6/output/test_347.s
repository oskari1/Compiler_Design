	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdx, (%rdi)
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
end:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%rdi), %rsi
	cmpq	$0, %rsi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	then
	jmp	end
	.text
then:
	movq	(%rdx), %r8 
	movq	(%rdi), %rsi
	imulq	%r8 , %rsi
	movq	%rsi, (%rdx)
	movq	(%rdi), %rsi
	subq	$1, %rsi
	movq	%rsi, (%rdi)
	jmp	start
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	