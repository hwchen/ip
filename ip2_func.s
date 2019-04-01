	.file	"ip2_func.c"
	.text
	.p2align 4,,15
	.globl	ip_placement
	.type	ip_placement, @function
ip_placement:
.LFB0:
	.cfi_startproc
	sall	$24, %edi
	sall	$16, %esi
	sall	$8, %edx
	leal	(%rdi,%rsi), %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	ip_placement, .-ip_placement
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
