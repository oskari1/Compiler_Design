	.data
	.globl	mat1
mat1:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.data
	.globl	mat2
mat2:
	.quad	5
	.quad	6
	.quad	7
	.quad	8
	.data
	.globl	mat3
mat3:
	.quad	19
	.quad	22
	.quad	43
	.quad	50
	.data
	.globl	matr
matr:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$10000000, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
body:
	pushq	%rsi
	leaq	matr(%rip), %rdx
	leaq	mat2(%rip), %rsi
	leaq	mat1(%rip), %rdi
	callq	matmul
	popq	%rsi
	pushq	%rsi
	leaq	matr(%rip), %rsi
	leaq	mat3(%rip), %rdi
	callq	mateq
	popq	%rsi
	movq	%rax, %rdx
	movq	(%rsi), %rdx
	subq	$1, %rdx
	movq	%rdx, (%rsi)
	jmp	loop
	.text
exit:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rsi), %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	exit
	jmp	body
	.text
	.globl	matmul
matmul:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti
	.text
endi:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
endj:
	movq	-24(%rbp), %r8 
	addq	$1, %r8 
	movq	%r8 , %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti
	.text
starti:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$2, %rax
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	theni
	jmp	endi
	.text
startj:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$2, %rax
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	thenj
	jmp	endj
	.text
theni:
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	startj
	.text
thenj:
	movq	%rdx, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r8 
	movq	(%r11), %r11
	movq	(%r9 ), %r9 
	movq	(%r10), %r10
	movq	(%r8 ), %r8 
	imulq	%r11, %r9 
	imulq	%r10, %r8 
	addq	%r9 , %r8 
	movq	%r8 , %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %r8 
	addq	$1, %r8 
	movq	%r8 , %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	startj
	.text
	.globl	mateq
mateq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti1
	.text
endi1:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
endj1:
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti1
	.text
starti1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$2, %rax
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	theni1
	jmp	endi1
	.text
startj1:
	movq	(%r10), %r9 
	cmpq	$2, %r9 
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	thenj1
	jmp	endj1
	.text
theni1:
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	startj1
	.text
thenj1:
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	%rsi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%r11), %r11
	movq	(%rdx), %rdx
	xorq	%rdx, %r11
	movq	(%r8 ), %rdx
	orq	%r11, %rdx
	movq	%rdx, (%r8 )
	movq	%r9 , %rdx
	addq	$1, %rdx
	movq	%rdx, (%r10)
	jmp	startj1