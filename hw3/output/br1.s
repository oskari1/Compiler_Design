	.text
main.main:
	jmp	end
	.text
main.end:
	movq	$9, %rax
	addq	$16, %rsp
	popq	%rbp
	retq	