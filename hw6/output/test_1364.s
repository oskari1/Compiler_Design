	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$42, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$100, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rsi
	cmpq	$0, %rsi
	setne	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	then
	jmp	else
	.text
else:
	pushq	%rdi
	callq	bar
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, (%rdi)
	jmp	end
	.text
end:
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
then:
	pushq	%rdi
	callq	foo
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, (%rdi)
	jmp	end