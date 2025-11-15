	.file	"productos.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"No se pudo abrir %s\n"
.LC2:
	.string	"%127[^,],%127[^,],%d,%f,%f"
	.text
	.globl	cargar_productos
	.type	cargar_productos, @function
cargar_productos:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$848, %rsp
	movq	%rdi, -824(%rbp)
	movq	%rsi, -832(%rbp)
	movl	%edx, -836(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-824(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -792(%rbp)
	cmpq	$0, -792(%rbp)
	jne	.L2
	movq	-824(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$0, -796(%rbp)
	jmp	.L4
.L8:
	movq	-792(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L10
	leaq	-804(%rbp), %r8
	leaq	-808(%rbp), %rdi
	leaq	-656(%rbp), %rcx
	leaq	-784(%rbp), %rdx
	leaq	-528(%rbp), %rax
	subq	$8, %rsp
	leaq	-800(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	addq	$16, %rsp
	cmpl	$5, %eax
	jne	.L4
	movl	-796(%rbp), %eax
	cltq
	imulq	$268, %rax, %rdx
	movq	-832(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	-784(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movl	-796(%rbp), %eax
	cltq
	imulq	$268, %rax, %rdx
	movq	-832(%rbp), %rax
	addq	%rdx, %rax
	leaq	128(%rax), %rdx
	leaq	-656(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movl	-796(%rbp), %eax
	cltq
	imulq	$268, %rax, %rdx
	movq	-832(%rbp), %rax
	addq	%rax, %rdx
	movl	-808(%rbp), %eax
	movl	%eax, 256(%rdx)
	movl	-796(%rbp), %eax
	cltq
	imulq	$268, %rax, %rdx
	movq	-832(%rbp), %rax
	addq	%rdx, %rax
	movss	-804(%rbp), %xmm0
	movss	%xmm0, 260(%rax)
	movl	-796(%rbp), %eax
	cltq
	imulq	$268, %rax, %rdx
	movq	-832(%rbp), %rax
	addq	%rdx, %rax
	movss	-800(%rbp), %xmm0
	movss	%xmm0, 264(%rax)
	addl	$1, -796(%rbp)
.L4:
	movq	-792(%rbp), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L6
	movl	-796(%rbp), %eax
	cmpl	-836(%rbp), %eax
	jl	.L8
	jmp	.L6
.L10:
	nop
.L6:
	movq	-792(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-796(%rbp), %eax
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
	.size	cargar_productos, .-cargar_productos
	.section	.rodata
.LC3:
	.string	"w"
.LC4:
	.string	"%s,%s,%d,%.2f,%.2f\n"
	.text
	.globl	guardar_productos
	.type	guardar_productos, @function
guardar_productos:
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
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movl	$0, -12(%rbp)
	jmp	.L14
.L15:
	movl	-12(%rbp), %eax
	cltq
	imulq	$268, %rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	264(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-12(%rbp), %eax
	cltq
	imulq	$268, %rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	260(%rax), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$268, %rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	256(%rax), %edi
	movl	-12(%rbp), %eax
	cltq
	imulq	$268, %rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	leaq	128(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	imulq	$268, %rax, %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movl	%edi, %r8d
	movq	%rsi, %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	addl	$1, -12(%rbp)
.L14:
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	guardar_productos, .-guardar_productos
	.globl	buscar_producto
	.type	buscar_producto, @function
buscar_producto:
.LFB2:
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
	movl	$0, -4(%rbp)
	jmp	.L17
.L20:
	movl	-4(%rbp), %eax
	cltq
	imulq	$268, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L18
	movl	-4(%rbp), %eax
	jmp	.L19
.L18:
	addl	$1, -4(%rbp)
.L17:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L20
	movl	$-1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	buscar_producto, .-buscar_producto
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
