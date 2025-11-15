	.file	"usuarios.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"No se pudo abrir %s\n"
.LC2:
	.string	"%127[^,],%127[^,],%127[^\n]"
	.text
	.globl	cargar_usuarios
	.type	cargar_usuarios, @function
cargar_usuarios:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$704, %rsp
	movq	%rdi, -680(%rbp)
	movq	%rsi, -688(%rbp)
	movl	%edx, -692(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-680(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -664(%rbp)
	cmpq	$0, -664(%rbp)
	jne	.L2
	movq	-680(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$0, -668(%rbp)
	jmp	.L4
.L8:
	movq	-664(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L10
	leaq	-400(%rbp), %rsi
	leaq	-528(%rbp), %rcx
	leaq	-656(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$3, %eax
	jne	.L4
	movl	-668(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-688(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	-656(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movl	-668(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-688(%rbp), %rax
	addq	%rdx, %rax
	leaq	128(%rax), %rdx
	leaq	-528(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movl	-668(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-688(%rbp), %rax
	addq	%rdx, %rax
	leaq	256(%rax), %rdx
	leaq	-400(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	addl	$1, -668(%rbp)
.L4:
	movq	-664(%rbp), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L6
	movl	-668(%rbp), %eax
	cmpl	-692(%rbp), %eax
	jl	.L8
	jmp	.L6
.L10:
	nop
.L6:
	movq	-664(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-668(%rbp), %eax
.L3:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cargar_usuarios, .-cargar_usuarios
	.globl	verificar_login
	.type	verificar_login, @function
verificar_login:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L12
.L15:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L13
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	128(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L13
	movl	-4(%rbp), %eax
	jmp	.L14
.L13:
	addl	$1, -4(%rbp)
.L12:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L15
	movl	$-1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	verificar_login, .-verificar_login
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
