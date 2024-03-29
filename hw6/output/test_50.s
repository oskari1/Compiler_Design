	.text
	.globl	naive_mod
naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
final:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	subq	%rdi, %rax
	movq	%rax, %rdi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%rdx), %r8 
	addq	%rdi, %r8 
	movq	%r8 , (%rdx)
	cmpq	%rsi, %r8 
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	final
	jmp	start
	.text
	.globl	naive_prime
naive_prime:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$2, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
final_false:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
final_true:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
inc:
	movq	(%rsi), %r8 
	addq	$1, %rdx
	movq	%rdx, (%rsi)
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%r8 , %rsi
	callq	naive_mod
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	final_false
	jmp	loop
	.text
loop:
	movq	(%rsi), %rdx
	movq	%rdx, %r8 
	imulq	%rdx, %r8 
	cmpq	%rdi, %r8 
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	final_true
	jmp	inc
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	movq	$19, %rdi
	callq	naive_prime
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	