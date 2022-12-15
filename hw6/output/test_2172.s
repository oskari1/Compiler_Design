	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%rdx), %rdi
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4931
	jmp	_else4930
	.text
_else4930:
	jmp	_merge4929
	.text
_else4936:
	jmp	_merge4935
	.text
_else4942:
	jmp	_merge4941
	.text
_else4962:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	pushq	%rdi
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	binary_gcd
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_else4965:
	jmp	_merge4964
	.text
_else4976:
	jmp	_merge4975
	.text
_else4988:
	jmp	_merge4987
	.text
_merge4929:
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4937
	jmp	_else4936
	.text
_merge4935:
	movq	(%r8 ), %rsi
	cmpq	$0, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4943
	jmp	_else4942
	.text
_merge4941:
	movq	(%rdx), %rsi
	xorq	$-1, %rsi
	andq	$1, %rsi
	cmpq	$1, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4966
	jmp	_else4965
	.text
_merge4961:
	jmp	_merge4964
	.text
_merge4964:
	movq	(%r8 ), %rsi
	xorq	$-1, %rsi
	andq	$1, %rsi
	cmpq	$1, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4977
	jmp	_else4976
	.text
_merge4975:
	movq	(%rdx), %rdi
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4989
	jmp	_else4988
	.text
_merge4987:
	movq	(%rdx), %r9 
	movq	(%r8 ), %rdi
	movq	(%rdx), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	pushq	%r9 
	movq	%rsi, %rdi
	movq	%r9 , %rsi
	callq	binary_gcd
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4931:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4937:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4943:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4963:
	movq	(%r8 ), %rdi
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	pushq	%rdi
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	binary_gcd
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4966:
	movq	(%r8 ), %rsi
	andq	$1, %rsi
	cmpq	$1, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4963
	jmp	_else4962
	.text
_then4977:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	movq	(%rdx), %rsi
	pushq	%rdi
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	binary_gcd
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4989:
	movq	(%r8 ), %r9 
	movq	(%rdx), %rdi
	movq	(%r8 ), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	pushq	%r9 
	movq	%rsi, %rdi
	movq	%r9 , %rsi
	callq	binary_gcd
	popq	%r9 
	movq	%rax, %rsi
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
	movq	$21, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$15, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	pushq	%rdi
	callq	binary_gcd
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	