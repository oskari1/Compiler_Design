	.text
	.file	"callback1.ll"
	.globl	foo                     # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
	.cfi_startproc
# %bb.0:
	addq	%rsi, %rdi
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	retq
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movabsq	$foo, %rax
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	callq	ll_callback
	movq	%rax, %rdi
	callq	ll_ltoa
	movq	%rax, %rdi
	callq	ll_puts
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ll_callback
	.addrsig_sym ll_ltoa
	.addrsig_sym ll_puts
	.addrsig_sym foo
