	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	%rcx, -8(%rbp)
	pushq	16(%rbp)
	popq	-16(%rbp)
	pushq	24(%rbp)
	popq	-24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	(%r11), %rsi
	addq	%rsi, %rdx
	movq	(%r10), %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rsi
	pushq	$-3
	pushq	$-4
	movq	$-5, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	f
	addq	$16, %rsp
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	(%rsi), %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_int
	popq	%rsi
	movq	$41, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	