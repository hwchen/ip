	.file	"ip1_func.c"
	.text
	.p2align 4,,15
	.globl	ip_placement
	.type	ip_placement, @function
ip_placement:
.LFB0:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%ebx, %ebx
	sall	$24, %edi
	movb	%cl, %bl
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movb	%dl, %bh
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movzbl	%sil, %eax
	sall	$16, %eax
	movl	%eax, %esi
	movzwl	%bx, %eax
	orl	%esi, %eax
	orl	%edi, %eax
	movq	8(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L5
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	ip_placement, .-ip_placement
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
