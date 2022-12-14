	.text
	.globl	naive_mod
naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
final:
	movq	(%r8 ), %rdx
	subq	%rdi, %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%r8 ), %rdx
	addq	%rdi, %rdx
	movq	%rdx, (%r8 )
	cmpq	%rsi, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
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
	movq	(%rsi), %rdx
	addq	$1, %r8 
	movq	%r8 , (%rsi)
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rsi
	callq	naive_mod
	popq	%rsi
	popq	%rdi
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
	movq	(%rsi), %r8 
	movq	%r8 , %rdx
	imulq	%r8 , %rdx
	cmpq	%rdi, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
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
	movq	$100, %rdi
	callq	naive_prime
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	