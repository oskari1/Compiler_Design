	.text
	.globl	compute_determinant
compute_determinant:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$712, %rsp
	movq	%rdi, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
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
	movq	%rsp, -80(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r10)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$-1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	cmpq	$1, %rdx
	sete	-88(%rbp)
	andq	$1, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	_then4658
	jmp	_else4657
	.text
_body4478:
	movq	(%r10), %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	movq	-104(%rbp), %rdi
	callq	oat_alloc_array
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	subq	$8, %rsp
	movq	%rsp, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	-112(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4496
	.text
_body4495:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	-136(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	movq	-152(%rbp), %rdi
	callq	oat_alloc_array
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -160(%rbp)
	subq	$8, %rsp
	movq	%rsp, -168(%rbp)
	movq	-152(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	-160(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4514
	.text
_body4513:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-184(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-184(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
	movq	$1, %rax
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4514
	.text
_body4540:
	movq	$0, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4550
	.text
_body4549:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	-224(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-216(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-224(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	-248(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-248(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -256(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-272(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-272(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	-296(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-288(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-296(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4550
	.text
_body4588:
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond4598
	.text
_body4597:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	(%r8 ), %rsi
	movq	-328(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-328(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	(%r9 ), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-344(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -352(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -360(%rbp)
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-360(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-360(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	-384(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-376(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-384(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	-352(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond4598
	.text
_cond4479:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	(%r10), %rdx
	movq	-416(%rbp), %rax
	cmpq	%rdx, %rax
	setl	-424(%rbp)
	andq	$1, -424(%rbp)
	cmpq	$0, -424(%rbp)
	jne	_body4478
	jmp	_post4477
	.text
_cond4496:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-432(%rbp), %rax
	cmpq	-440(%rbp), %rax
	setl	-448(%rbp)
	andq	$1, -448(%rbp)
	cmpq	$0, -448(%rbp)
	jne	_body4495
	jmp	_post4494
	.text
_cond4514:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-456(%rbp), %rax
	cmpq	-464(%rbp), %rax
	setl	-472(%rbp)
	andq	$1, -472(%rbp)
	cmpq	$0, -472(%rbp)
	jne	_body4513
	jmp	_post4512
	.text
_cond4541:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-480(%rbp), %rax
	cmpq	-488(%rbp), %rax
	setl	-496(%rbp)
	andq	$1, -496(%rbp)
	cmpq	$0, -496(%rbp)
	jne	_body4540
	jmp	_post4539
	.text
_cond4550:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	(%r10), %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -512(%rbp)
	movq	-504(%rbp), %rax
	cmpq	-512(%rbp), %rax
	setl	-520(%rbp)
	andq	$1, -520(%rbp)
	cmpq	$0, -520(%rbp)
	jne	_body4549
	jmp	_post4548
	.text
_cond4589:
	movq	(%r9 ), %rdx
	movq	(%r10), %rsi
	movq	%rsi, %rax
	subq	$1, %rax
	movq	%rax, -528(%rbp)
	cmpq	-528(%rbp), %rdx
	setl	-536(%rbp)
	andq	$1, -536(%rbp)
	cmpq	$0, -536(%rbp)
	jne	_body4588
	jmp	_post4587
	.text
_cond4598:
	movq	(%r8 ), %rdx
	movq	(%r10), %rsi
	movq	%rsi, %rax
	subq	$1, %rax
	movq	%rax, -544(%rbp)
	cmpq	-544(%rbp), %rdx
	setl	-552(%rbp)
	andq	$1, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jne	_body4597
	jmp	_post4596
	.text
_else4657:
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4479
	.text
_merge4656:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post4477:
	jmp	_merge4656
	.text
_post4494:
	movq	-112(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4541
	.text
_post4512:
	movq	-160(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4496
	.text
_post4539:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond4589
	.text
_post4548:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4541
	.text
_post4587:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	imulq	$-1, %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-608(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -624(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-632(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-624(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-632(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	%r11, %rax
	imulq	-648(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	(%r10), %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -664(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	-664(%rbp), %rsi
	movq	-672(%rbp), %rdi
	callq	compute_determinant
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	-656(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -680(%rbp)
	movq	%rsi, %rax
	addq	-680(%rbp), %rax
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4479
	.text
_post4596:
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -712(%rbp)
	movq	-712(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond4589
	.text
_then4658:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rdi)
	jmp	_merge4656
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rsi
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%rsi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$20, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	$2, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%r8 , (%rdx)
	pushq	%rdi
	pushq	%rsi
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	$5, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	%r8 , (%rdx)
	movq	%rdi, (%rsi)
	movq	(%rsi), %rdx
	movq	$2, %rsi
	movq	%rdx, %rdi
	callq	compute_determinant
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	