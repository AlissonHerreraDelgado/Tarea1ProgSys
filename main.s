	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"%04d-%02d-%02d"
	.text
	.globl	fecha_actual
	.type	fecha_actual, @function
fecha_actual:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %esi
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	leal	1900(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L2
	call	__stack_chk_fail@PLT
.L2:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fecha_actual, .-fecha_actual
	.section	.rodata
.LC1:
	.string	"r"
.LC2:
	.string	"%d"
	.text
	.globl	obtener_ultimo_num_factura
	.type	obtener_ultimo_num_factura, @function
obtener_ultimo_num_factura:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -552(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-552(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -536(%rbp)
	cmpq	$0, -536(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L9
.L4:
	movl	$0, -540(%rbp)
	jmp	.L6
.L8:
	leaq	-544(%rbp), %rdx
	leaq	-528(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L6
	movl	-544(%rbp), %eax
	cmpl	%eax, -540(%rbp)
	jge	.L6
	movl	-544(%rbp), %eax
	movl	%eax, -540(%rbp)
.L6:
	movq	-536(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L8
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-540(%rbp), %eax
.L9:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	obtener_ultimo_num_factura, .-obtener_ultimo_num_factura
	.section	.rodata
.LC3:
	.string	"a"
.LC4:
	.string	"No se puede abrir %s\n"
.LC5:
	.string	"%d,%s,%s,%d,%.2f,%.2f,%s\n"
	.text
	.globl	registrar_venta
	.type	registrar_venta, @function
registrar_venta:
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
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L11
.L12:
	movss	280(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	276(%rbp), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rcx
	movl	-32(%rbp), %edi
	leaq	144(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%edi, %r9d
	movq	%rsi, %r8
	leaq	16(%rbp), %rcx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	registrar_venta, .-registrar_venta
	.section	.rodata
.LC6:
	.string	"vendedores.txt"
.LC7:
	.string	"producto.txt"
.LC8:
	.string	"Usuario: "
.LC9:
	.string	"%s"
.LC10:
	.string	"Clave: "
	.align 8
.LC11:
	.string	"Incorrecto. Intentos restantes: %d\n"
.LC12:
	.string	"Acceso denegado."
.LC13:
	.string	"Bienvenido %s\n"
.LC14:
	.string	"ventas.txt"
.LC15:
	.string	"Factura N\302\272 %d\n"
.LC16:
	.string	"C\303\263digo del producto: "
.LC17:
	.string	"Producto no encontrado"
	.align 8
.LC18:
	.string	"Cantidad a vender (disponible %d): "
.LC19:
	.string	"Cantidad inv\303\241lida."
.LC20:
	.string	"Producto agregado."
	.align 8
.LC21:
	.string	"\302\277Desea agregar otro producto? (s/n): "
.LC22:
	.string	" %c"
	.align 8
.LC23:
	.string	"No se registr\303\263 ningun producto."
.LC25:
	.string	"\n--- FACTURA %d ---\n"
.LC26:
	.string	"Fecha: %s\n"
	.align 8
.LC27:
	.string	"Codigo  Nombre  Cant  PU  Total"
.LC28:
	.string	"%s %s %d %.2f %.2f\n"
.LC29:
	.string	"TOTAL: %.2f\n"
.LC30:
	.string	"\302\277Confirmar venta? (s/n): "
.LC31:
	.string	"Venta cancelada."
.LC32:
	.string	"Venta registrada."
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-90112(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$3040, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-92400(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	cargar_usuarios@PLT
	movl	%eax, -93108(%rbp)
	leaq	-54000(%rbp), %rax
	movl	$200, %edx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	cargar_productos@PLT
	movl	%eax, -93104(%rbp)
	movl	$0, -93132(%rbp)
	jmp	.L15
.L18:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-400(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-272(%rbp), %rcx
	leaq	-400(%rbp), %rdx
	movl	-93108(%rbp), %esi
	leaq	-92400(%rbp), %rax
	movq	%rax, %rdi
	call	verificar_login@PLT
	movl	%eax, -93128(%rbp)
	cmpl	$0, -93128(%rbp)
	jns	.L37
	addl	$1, -93132(%rbp)
	movl	$3, %eax
	subl	-93132(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L15:
	cmpl	$2, -93132(%rbp)
	jle	.L18
	jmp	.L17
.L37:
	nop
.L17:
	cmpl	$0, -93128(%rbp)
	jns	.L19
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L35
.L19:
	leaq	-92400(%rbp), %rcx
	movl	-93128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$7, %rax
	addq	$256, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	obtener_ultimo_num_factura
	movl	%eax, -93100(%rbp)
	movl	-93100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -93096(%rbp)
	movl	-93096(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -93124(%rbp)
	movb	$115, -93137(%rbp)
	jmp	.L21
.L28:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-144(%rbp), %rdx
	movl	-93104(%rbp), %ecx
	leaq	-54000(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	buscar_producto@PLT
	movl	%eax, -93092(%rbp)
	cmpl	$0, -93092(%rbp)
	jns	.L22
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L23
.L22:
	movl	-93092(%rbp), %eax
	cltq
	imulq	$268, %rax, %rax
	addq	%rbp, %rax
	subq	$53744, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-93136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-93136(%rbp), %eax
	testl	%eax, %eax
	jle	.L24
	movl	-93092(%rbp), %eax
	cltq
	imulq	$268, %rax, %rax
	addq	%rbp, %rax
	subq	$53744, %rax
	movl	(%rax), %edx
	movl	-93136(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L25
.L24:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L23
.L25:
	movl	-93124(%rbp), %eax
	cltq
	movl	-93092(%rbp), %edx
	movl	%edx, -92800(%rbp,%rax,8)
	movl	-93136(%rbp), %edx
	movl	-93124(%rbp), %eax
	cltq
	movl	%edx, -92796(%rbp,%rax,8)
	addl	$1, -93124(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L23:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-93137(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L21:
	movzbl	-93137(%rbp), %eax
	cmpb	$115, %al
	je	.L26
	movzbl	-93137(%rbp), %eax
	cmpb	$83, %al
	jne	.L27
.L26:
	cmpl	$49, -93124(%rbp)
	jle	.L28
.L27:
	cmpl	$0, -93124(%rbp)
	jne	.L29
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L35
.L29:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -93120(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	fecha_actual
	movl	-93096(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -93116(%rbp)
	jmp	.L30
.L31:
	movl	-93116(%rbp), %eax
	cltq
	movl	-92800(%rbp,%rax,8), %eax
	cltq
	imulq	$268, %rax, %rax
	addq	%rbp, %rax
	leaq	-54000(%rax), %rdx
	leaq	-93072(%rbp), %rax
	movl	$33, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movl	(%rdx), %ecx
	movl	%ecx, (%rax)
	movl	-93116(%rbp), %eax
	cltq
	movl	-92796(%rbp,%rax,8), %eax
	movl	%eax, -93080(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-93080(%rbp), %xmm1
	movss	-92808(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -93076(%rbp)
	movss	-93120(%rbp), %xmm0
	addss	-93076(%rbp), %xmm0
	movss	%xmm0, -93120(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-93076(%rbp), %xmm0
	movss	-92808(%rbp), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rcx
	movl	-93080(%rbp), %edx
	leaq	-93072(%rbp), %rax
	leaq	128(%rax), %rsi
	leaq	-93072(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	addl	$1, -93116(%rbp)
.L30:
	movl	-93116(%rbp), %eax
	cmpl	-93124(%rbp), %eax
	jl	.L31
	pxor	%xmm3, %xmm3
	cvtss2sd	-93120(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-93136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-93136(%rbp), %eax
	cmpb	$115, %al
	je	.L32
	movzbl	-93136(%rbp), %eax
	cmpb	$83, %al
	je	.L32
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L35
.L32:
	movl	$0, -93112(%rbp)
	jmp	.L33
.L34:
	movl	-93112(%rbp), %eax
	cltq
	movl	-92800(%rbp,%rax,8), %eax
	movl	%eax, -93088(%rbp)
	movl	-93112(%rbp), %eax
	cltq
	movl	-92796(%rbp,%rax,8), %eax
	movl	%eax, -93084(%rbp)
	movl	-93088(%rbp), %eax
	cltq
	imulq	$268, %rax, %rax
	addq	%rbp, %rax
	subq	$53744, %rax
	movl	(%rax), %eax
	subl	-93084(%rbp), %eax
	movl	-93088(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$268, %rdx, %rdx
	addq	%rbp, %rdx
	subq	$53744, %rdx
	movl	%eax, (%rdx)
	leaq	-144(%rbp), %r10
	movl	-93084(%rbp), %r9d
	movl	-93096(%rbp), %r8d
	movl	-93088(%rbp), %eax
	cltq
	imulq	$268, %rax, %rax
	addq	%rbp, %rax
	subq	$54000, %rax
	subq	$272, %rsp
	movq	%rsp, %rdx
	movl	$33, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movl	(%rax), %ecx
	movl	%ecx, (%rdx)
	movq	%r10, %rcx
	movl	%r9d, %edx
	movl	%r8d, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	registrar_venta
	addq	$272, %rsp
	addl	$1, -93112(%rbp)
.L33:
	movl	-93112(%rbp), %eax
	cmpl	-93124(%rbp), %eax
	jl	.L34
	movl	-93104(%rbp), %edx
	leaq	-54000(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	guardar_productos@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
.L35:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
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
