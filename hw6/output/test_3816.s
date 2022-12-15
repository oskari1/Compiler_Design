	.text
	.globl	fact
fact:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdi, (%rdx)
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond793
	.text
_body792:
	movq	(%rsi), %r8 
	movq	(%rdx), %rdi
	imulq	%r8 , %rdi
	movq	%rdi, (%rsi)
	movq	(%rdx), %rdi
	subq	$1, %rdi
	movq	%rdi, (%rdx)
	jmp	_cond793
	.text
_cond793:
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body792
	jmp	_post791
	.text
_post791:
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	fact
	movq	%rax, %rsi
	movq	%rsi, %rdi
	callq	string_of_int
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	