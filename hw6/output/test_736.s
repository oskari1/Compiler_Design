	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$520, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	subq	$8, %rsp
	movq	%rsp, -120(%rbp)
	movq	$3, %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-112(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond505
	.text
_body504:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
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
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -152(%rbp)
	subq	$8, %rsp
	movq	%rsp, -160(%rbp)
	movq	$1, %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	-152(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond522
	.text
_body521:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond522
	.text
_body552:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	-192(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-184(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-192(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -208(%rbp)
	subq	$8, %rsp
	movq	%rsp, -216(%rbp)
	movq	$1, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	-208(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond570
	.text
_body569:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	(%r10), %r11
	movq	-224(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond570
	.text
_body600:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-240(%rbp), %rax
	movq	%rax, %rdx
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
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -248(%rbp)
	subq	$8, %rsp
	movq	%rsp, -256(%rbp)
	movq	$1, %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	-248(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond618
	.text
_body617:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	(%r9 ), %r10
	movq	-264(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-264(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond618
	.text
_body648:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-280(%rbp), %rax
	movq	%rax, %rdx
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
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rdi
	popq	%r8 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -288(%rbp)
	subq	$8, %rsp
	movq	%rsp, -296(%rbp)
	movq	$1, %rax
	movq	-296(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	-288(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond666
	.text
_body665:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	(%r8 ), %r9 
	movq	-304(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-304(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r8 )
	jmp	_cond666
	.text
_body696:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-312(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	-312(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r9 , (%rdx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond697
	.text
_cond505:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rax
	cmpq	-328(%rbp), %rax
	setl	-336(%rbp)
	andq	$1, -336(%rbp)
	cmpq	$0, -336(%rbp)
	jne	_body504
	jmp	_post503
	.text
_cond522:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	cmpq	-344(%rbp), %rdx
	setl	-352(%rbp)
	andq	$1, -352(%rbp)
	cmpq	$0, -352(%rbp)
	jne	_body521
	jmp	_post520
	.text
_cond553:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-360(%rbp), %rax
	cmpq	-368(%rbp), %rax
	setl	-376(%rbp)
	andq	$1, -376(%rbp)
	cmpq	$0, -376(%rbp)
	jne	_body552
	jmp	_post551
	.text
_cond570:
	movq	(%r10), %rdx
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	cmpq	-384(%rbp), %rdx
	setl	-392(%rbp)
	andq	$1, -392(%rbp)
	cmpq	$0, -392(%rbp)
	jne	_body569
	jmp	_post568
	.text
_cond601:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	cmpq	-400(%rbp), %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body600
	jmp	_post599
	.text
_cond618:
	movq	(%r9 ), %rdx
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	cmpq	-408(%rbp), %rdx
	setl	-416(%rbp)
	andq	$1, -416(%rbp)
	cmpq	$0, -416(%rbp)
	jne	_body617
	jmp	_post616
	.text
_cond649:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-520(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	cmpq	-424(%rbp), %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body648
	jmp	_post647
	.text
_cond666:
	movq	(%r8 ), %rdx
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	cmpq	-432(%rbp), %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body665
	jmp	_post664
	.text
_cond697:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	cmpq	-440(%rbp), %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body696
	jmp	_post695
	.text
_post503:
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -448(%rbp)
	subq	$8, %rsp
	movq	%rsp, -456(%rbp)
	movq	$3, %rax
	movq	-456(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-448(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond553
	.text
_post520:
	movq	-152(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond505
	.text
_post551:
	movq	-448(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r9 
	pushq	%r8 
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -480(%rbp)
	subq	$8, %rsp
	movq	%rsp, -488(%rbp)
	movq	$3, %rax
	movq	-488(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-480(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond601
	.text
_post568:
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond553
	.text
_post599:
	movq	-480(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r8 
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -512(%rbp)
	subq	$8, %rsp
	movq	%rsp, -520(%rbp)
	movq	$3, %rax
	movq	-520(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-512(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond649
	.text
_post616:
	movq	-248(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond601
	.text
_post647:
	movq	-512(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$3, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%r8 , (%rsi)
	movq	$0, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond697
	.text
_post664:
	movq	-288(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond649
	.text
_post695:
	movq	%r8 , %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$2, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	