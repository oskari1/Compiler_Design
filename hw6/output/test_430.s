	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r9 )
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
end:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%r9 ), %rdx
	cmpq	$0, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	then
	jmp	end
	.text
then:
	movq	(%r8 ), %rsi
	movq	(%r9 ), %rdx
	imulq	%rsi, %rdx
	movq	%rdx, (%r8 )
	movq	(%r9 ), %rdx
	subq	$1, %rdx
	movq	%rdx, (%r9 )
	jmp	start
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	