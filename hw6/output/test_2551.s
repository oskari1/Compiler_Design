	.text
	.globl	gcd
gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%r9 )
	movq	%rsi, (%r8 )
	jmp	_cond6229
	.text
_body6228:
	movq	(%r8 ), %rsi
	movq	%rsi, (%rdx)
	movq	(%r8 ), %rsi
	movq	(%r9 ), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	callq	mod
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, (%r8 )
	movq	(%rdx), %rsi
	movq	%rsi, (%r9 )
	jmp	_cond6229
	.text
_cond6229:
	movq	(%r8 ), %rsi
	cmpq	$0, %rsi
	setne	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body6228
	jmp	_post6227
	.text
_post6227:
	movq	(%r9 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	mod
mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r9 )
	movq	(%rdx), %rsi
	movq	%rsi, (%r8 )
	jmp	_cond6213
	.text
_body6212:
	movq	(%r8 ), %rsi
	movq	(%r9 ), %rdi
	subq	%rdi, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond6213
	.text
_cond6213:
	movq	(%r8 ), %rsi
	movq	(%r9 ), %rdi
	subq	%rdi, %rsi
	cmpq	$0, %rsi
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body6212
	jmp	_post6211
	.text
_post6211:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$64, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$48, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	pushq	%rdi
	callq	gcd
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	