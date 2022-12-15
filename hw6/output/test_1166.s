	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$8, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	(%r9 ), %rdi
	cmpq	%rdx, %rdi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	if
	jmp	else
	.text
else:
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rsi, (%r8 )
	jmp	loop
	.text
gcd:
	movq	(%r9 ), %rsi
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	ret_b
	jmp	loop
	.text
if:
	movq	%rdi, %rsi
	subq	%rdx, %rsi
	movq	%rsi, (%r9 )
	jmp	loop
	.text
loop:
	movq	(%r8 ), %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	(%r9 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	