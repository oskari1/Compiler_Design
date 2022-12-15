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
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$8, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	(%rdx), %r8 
	cmpq	%r9 , %r8 
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	if
	jmp	else
	.text
else:
	movq	%r9 , %rsi
	subq	%r8 , %rsi
	movq	%rsi, (%rdi)
	jmp	loop
	.text
gcd:
	movq	(%rdx), %rsi
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	ret_b
	jmp	loop
	.text
if:
	movq	%r8 , %rsi
	subq	%r9 , %rsi
	movq	%rsi, (%rdx)
	jmp	loop
	.text
loop:
	movq	(%rdi), %r9 
	movq	$0, %rax
	cmpq	%r9 , %rax
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	