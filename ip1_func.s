	.file	"ip1_func.c"
	.text
	.globl	ip_placement
	.type	ip_placement, @function
ip_placement:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-32(%rbp), %eax
	movb	%al, -12(%rbp)
	movl	-28(%rbp), %eax
	movb	%al, -11(%rbp)
	movl	-24(%rbp), %eax
	movb	%al, -10(%rbp)
	movl	-20(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	ip_placement, .-ip_placement
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
