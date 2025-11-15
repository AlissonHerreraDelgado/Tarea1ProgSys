
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <fecha_actual>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 30          	sub    rsp,0x30
   c:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  10:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  17:	00 00 
  19:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  1d:	31 c0                	xor    eax,eax
  1f:	bf 00 00 00 00       	mov    edi,0x0
  24:	e8 00 00 00 00       	call   29 <fecha_actual+0x29>
  29:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  2d:	48 8d 45 e8          	lea    rax,[rbp-0x18]
  31:	48 89 c7             	mov    rdi,rax
  34:	e8 00 00 00 00       	call   39 <fecha_actual+0x39>
  39:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  3d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  41:	8b 70 0c             	mov    esi,DWORD PTR [rax+0xc]
  44:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  48:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  4b:	8d 48 01             	lea    ecx,[rax+0x1]
  4e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  52:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  55:	8d 90 6c 07 00 00    	lea    edx,[rax+0x76c]
  5b:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  5f:	41 89 f0             	mov    r8d,esi
  62:	48 8d 35 00 00 00 00 	lea    rsi,[rip+0x0]        # 69 <fecha_actual+0x69>
  69:	48 89 c7             	mov    rdi,rax
  6c:	b8 00 00 00 00       	mov    eax,0x0
  71:	e8 00 00 00 00       	call   76 <fecha_actual+0x76>
  76:	90                   	nop
  77:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  7b:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
  82:	00 00 
  84:	74 05                	je     8b <fecha_actual+0x8b>
  86:	e8 00 00 00 00       	call   8b <fecha_actual+0x8b>
  8b:	c9                   	leave
  8c:	c3                   	ret

000000000000008d <obtener_ultimo_num_factura>:
  8d:	f3 0f 1e fa          	endbr64
  91:	55                   	push   rbp
  92:	48 89 e5             	mov    rbp,rsp
  95:	48 81 ec 30 02 00 00 	sub    rsp,0x230
  9c:	48 89 bd d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],rdi
  a3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  aa:	00 00 
  ac:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  b0:	31 c0                	xor    eax,eax
  b2:	48 8b 85 d8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x228]
  b9:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # c0 <obtener_ultimo_num_factura+0x33>
  c0:	48 89 d6             	mov    rsi,rdx
  c3:	48 89 c7             	mov    rdi,rax
  c6:	e8 00 00 00 00       	call   cb <obtener_ultimo_num_factura+0x3e>
  cb:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
  d2:	48 83 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x0
  d9:	00 
  da:	75 0a                	jne    e6 <obtener_ultimo_num_factura+0x59>
  dc:	b8 00 00 00 00       	mov    eax,0x0
  e1:	e9 85 00 00 00       	jmp    16b <obtener_ultimo_num_factura+0xde>
  e6:	c7 85 e4 fd ff ff 00 	mov    DWORD PTR [rbp-0x21c],0x0
  ed:	00 00 00 
  f0:	eb 44                	jmp    136 <obtener_ultimo_num_factura+0xa9>
  f2:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  f9:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
 100:	48 8d 0d 00 00 00 00 	lea    rcx,[rip+0x0]        # 107 <obtener_ultimo_num_factura+0x7a>
 107:	48 89 ce             	mov    rsi,rcx
 10a:	48 89 c7             	mov    rdi,rax
 10d:	b8 00 00 00 00       	mov    eax,0x0
 112:	e8 00 00 00 00       	call   117 <obtener_ultimo_num_factura+0x8a>
 117:	83 f8 01             	cmp    eax,0x1
 11a:	75 1a                	jne    136 <obtener_ultimo_num_factura+0xa9>
 11c:	8b 85 e0 fd ff ff    	mov    eax,DWORD PTR [rbp-0x220]
 122:	39 85 e4 fd ff ff    	cmp    DWORD PTR [rbp-0x21c],eax
 128:	7d 0c                	jge    136 <obtener_ultimo_num_factura+0xa9>
 12a:	8b 85 e0 fd ff ff    	mov    eax,DWORD PTR [rbp-0x220]
 130:	89 85 e4 fd ff ff    	mov    DWORD PTR [rbp-0x21c],eax
 136:	48 8b 95 e8 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x218]
 13d:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
 144:	be 00 02 00 00       	mov    esi,0x200
 149:	48 89 c7             	mov    rdi,rax
 14c:	e8 00 00 00 00       	call   151 <obtener_ultimo_num_factura+0xc4>
 151:	48 85 c0             	test   rax,rax
 154:	75 9c                	jne    f2 <obtener_ultimo_num_factura+0x65>
 156:	48 8b 85 e8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x218]
 15d:	48 89 c7             	mov    rdi,rax
 160:	e8 00 00 00 00       	call   165 <obtener_ultimo_num_factura+0xd8>
 165:	8b 85 e4 fd ff ff    	mov    eax,DWORD PTR [rbp-0x21c]
 16b:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 16f:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
 176:	00 00 
 178:	74 05                	je     17f <obtener_ultimo_num_factura+0xf2>
 17a:	e8 00 00 00 00       	call   17f <obtener_ultimo_num_factura+0xf2>
 17f:	c9                   	leave
 180:	c3                   	ret

0000000000000181 <registrar_venta>:
 181:	f3 0f 1e fa          	endbr64
 185:	55                   	push   rbp
 186:	48 89 e5             	mov    rbp,rsp
 189:	48 83 ec 30          	sub    rsp,0x30
 18d:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 191:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
 194:	89 55 e0             	mov    DWORD PTR [rbp-0x20],edx
 197:	48 89 4d d8          	mov    QWORD PTR [rbp-0x28],rcx
 19b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 19f:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 1a6 <registrar_venta+0x25>
 1a6:	48 89 d6             	mov    rsi,rdx
 1a9:	48 89 c7             	mov    rdi,rax
 1ac:	e8 00 00 00 00       	call   1b1 <registrar_venta+0x30>
 1b1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 1b5:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 1ba:	75 1d                	jne    1d9 <registrar_venta+0x58>
 1bc:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 1c0:	48 89 c6             	mov    rsi,rax
 1c3:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 1ca <registrar_venta+0x49>
 1ca:	48 89 c7             	mov    rdi,rax
 1cd:	b8 00 00 00 00       	mov    eax,0x0
 1d2:	e8 00 00 00 00       	call   1d7 <registrar_venta+0x56>
 1d7:	eb 70                	jmp    249 <registrar_venta+0xc8>
 1d9:	f3 0f 10 85 18 01 00 	movss  xmm0,DWORD PTR [rbp+0x118]
 1e0:	00 
 1e1:	f3 0f 5a c0          	cvtss2sd xmm0,xmm0
 1e5:	f3 0f 10 8d 14 01 00 	movss  xmm1,DWORD PTR [rbp+0x114]
 1ec:	00 
 1ed:	66 0f ef d2          	pxor   xmm2,xmm2
 1f1:	f3 0f 5a d1          	cvtss2sd xmm2,xmm1
 1f5:	66 48 0f 7e d1       	movq   rcx,xmm2
 1fa:	8b 7d e0             	mov    edi,DWORD PTR [rbp-0x20]
 1fd:	48 8d b5 90 00 00 00 	lea    rsi,[rbp+0x90]
 204:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
 207:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 20b:	48 83 ec 08          	sub    rsp,0x8
 20f:	ff 75 d8             	push   QWORD PTR [rbp-0x28]
 212:	66 0f 28 c8          	movapd xmm1,xmm0
 216:	66 48 0f 6e c1       	movq   xmm0,rcx
 21b:	41 89 f9             	mov    r9d,edi
 21e:	49 89 f0             	mov    r8,rsi
 221:	48 8d 4d 10          	lea    rcx,[rbp+0x10]
 225:	48 8d 35 00 00 00 00 	lea    rsi,[rip+0x0]        # 22c <registrar_venta+0xab>
 22c:	48 89 c7             	mov    rdi,rax
 22f:	b8 02 00 00 00       	mov    eax,0x2
 234:	e8 00 00 00 00       	call   239 <registrar_venta+0xb8>
 239:	48 83 c4 10          	add    rsp,0x10
 23d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 241:	48 89 c7             	mov    rdi,rax
 244:	e8 00 00 00 00       	call   249 <registrar_venta+0xc8>
 249:	c9                   	leave
 24a:	c3                   	ret

000000000000024b <main>:
 24b:	f3 0f 1e fa          	endbr64
 24f:	55                   	push   rbp
 250:	48 89 e5             	mov    rbp,rsp
 253:	4c 8d 9c 24 00 a0 fe 	lea    r11,[rsp-0x16000]
 25a:	ff 
 25b:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
 262:	48 83 0c 24 00       	or     QWORD PTR [rsp],0x0
 267:	4c 39 dc             	cmp    rsp,r11
 26a:	75 ef                	jne    25b <main+0x10>
 26c:	48 81 ec e0 0b 00 00 	sub    rsp,0xbe0
 273:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 27a:	00 00 
 27c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 280:	31 c0                	xor    eax,eax
 282:	48 8d 85 10 97 fe ff 	lea    rax,[rbp-0x168f0]
 289:	ba 64 00 00 00       	mov    edx,0x64
 28e:	48 89 c6             	mov    rsi,rax
 291:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 298 <main+0x4d>
 298:	48 89 c7             	mov    rdi,rax
 29b:	e8 00 00 00 00       	call   2a0 <main+0x55>
 2a0:	89 85 4c 94 fe ff    	mov    DWORD PTR [rbp-0x16bb4],eax
 2a6:	48 8d 85 10 2d ff ff 	lea    rax,[rbp-0xd2f0]
 2ad:	ba c8 00 00 00       	mov    edx,0xc8
 2b2:	48 89 c6             	mov    rsi,rax
 2b5:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 2bc <main+0x71>
 2bc:	48 89 c7             	mov    rdi,rax
 2bf:	e8 00 00 00 00       	call   2c4 <main+0x79>
 2c4:	89 85 50 94 fe ff    	mov    DWORD PTR [rbp-0x16bb0],eax
 2ca:	c7 85 34 94 fe ff 00 	mov    DWORD PTR [rbp-0x16bcc],0x0
 2d1:	00 00 00 
 2d4:	e9 be 00 00 00       	jmp    397 <main+0x14c>
 2d9:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 2e0 <main+0x95>
 2e0:	48 89 c7             	mov    rdi,rax
 2e3:	b8 00 00 00 00       	mov    eax,0x0
 2e8:	e8 00 00 00 00       	call   2ed <main+0xa2>
 2ed:	48 8d 85 70 fe ff ff 	lea    rax,[rbp-0x190]
 2f4:	48 89 c6             	mov    rsi,rax
 2f7:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 2fe <main+0xb3>
 2fe:	48 89 c7             	mov    rdi,rax
 301:	b8 00 00 00 00       	mov    eax,0x0
 306:	e8 00 00 00 00       	call   30b <main+0xc0>
 30b:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 312 <main+0xc7>
 312:	48 89 c7             	mov    rdi,rax
 315:	b8 00 00 00 00       	mov    eax,0x0
 31a:	e8 00 00 00 00       	call   31f <main+0xd4>
 31f:	48 8d 85 f0 fe ff ff 	lea    rax,[rbp-0x110]
 326:	48 89 c6             	mov    rsi,rax
 329:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 330 <main+0xe5>
 330:	48 89 c7             	mov    rdi,rax
 333:	b8 00 00 00 00       	mov    eax,0x0
 338:	e8 00 00 00 00       	call   33d <main+0xf2>
 33d:	48 8d 8d f0 fe ff ff 	lea    rcx,[rbp-0x110]
 344:	48 8d 95 70 fe ff ff 	lea    rdx,[rbp-0x190]
 34b:	8b b5 4c 94 fe ff    	mov    esi,DWORD PTR [rbp-0x16bb4]
 351:	48 8d 85 10 97 fe ff 	lea    rax,[rbp-0x168f0]
 358:	48 89 c7             	mov    rdi,rax
 35b:	e8 00 00 00 00       	call   360 <main+0x115>
 360:	89 85 38 94 fe ff    	mov    DWORD PTR [rbp-0x16bc8],eax
 366:	83 bd 38 94 fe ff 00 	cmp    DWORD PTR [rbp-0x16bc8],0x0
 36d:	79 37                	jns    3a6 <main+0x15b>
 36f:	83 85 34 94 fe ff 01 	add    DWORD PTR [rbp-0x16bcc],0x1
 376:	b8 03 00 00 00       	mov    eax,0x3
 37b:	2b 85 34 94 fe ff    	sub    eax,DWORD PTR [rbp-0x16bcc]
 381:	89 c6                	mov    esi,eax
 383:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 38a <main+0x13f>
 38a:	48 89 c7             	mov    rdi,rax
 38d:	b8 00 00 00 00       	mov    eax,0x0
 392:	e8 00 00 00 00       	call   397 <main+0x14c>
 397:	83 bd 34 94 fe ff 02 	cmp    DWORD PTR [rbp-0x16bcc],0x2
 39e:	0f 8e 35 ff ff ff    	jle    2d9 <main+0x8e>
 3a4:	eb 01                	jmp    3a7 <main+0x15c>
 3a6:	90                   	nop
 3a7:	83 bd 38 94 fe ff 00 	cmp    DWORD PTR [rbp-0x16bc8],0x0
 3ae:	79 19                	jns    3c9 <main+0x17e>
 3b0:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 3b7 <main+0x16c>
 3b7:	48 89 c7             	mov    rdi,rax
 3ba:	e8 00 00 00 00       	call   3bf <main+0x174>
 3bf:	b8 00 00 00 00       	mov    eax,0x0
 3c4:	e9 7f 05 00 00       	jmp    948 <main+0x6fd>
 3c9:	48 8d 8d 10 97 fe ff 	lea    rcx,[rbp-0x168f0]
 3d0:	8b 85 38 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bc8]
 3d6:	48 63 d0             	movsxd rdx,eax
 3d9:	48 89 d0             	mov    rax,rdx
 3dc:	48 01 c0             	add    rax,rax
 3df:	48 01 d0             	add    rax,rdx
 3e2:	48 c1 e0 07          	shl    rax,0x7
 3e6:	48 05 00 01 00 00    	add    rax,0x100
 3ec:	48 01 c8             	add    rax,rcx
 3ef:	48 89 c6             	mov    rsi,rax
 3f2:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 3f9 <main+0x1ae>
 3f9:	48 89 c7             	mov    rdi,rax
 3fc:	b8 00 00 00 00       	mov    eax,0x0
 401:	e8 00 00 00 00       	call   406 <main+0x1bb>
 406:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 40d <main+0x1c2>
 40d:	48 89 c7             	mov    rdi,rax
 410:	e8 00 00 00 00       	call   415 <main+0x1ca>
 415:	89 85 54 94 fe ff    	mov    DWORD PTR [rbp-0x16bac],eax
 41b:	8b 85 54 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bac]
 421:	83 c0 01             	add    eax,0x1
 424:	89 85 58 94 fe ff    	mov    DWORD PTR [rbp-0x16ba8],eax
 42a:	8b 85 58 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16ba8]
 430:	89 c6                	mov    esi,eax
 432:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 439 <main+0x1ee>
 439:	48 89 c7             	mov    rdi,rax
 43c:	b8 00 00 00 00       	mov    eax,0x0
 441:	e8 00 00 00 00       	call   446 <main+0x1fb>
 446:	c7 85 3c 94 fe ff 00 	mov    DWORD PTR [rbp-0x16bc4],0x0
 44d:	00 00 00 
 450:	c6 85 2f 94 fe ff 73 	mov    BYTE PTR [rbp-0x16bd1],0x73
 457:	e9 72 01 00 00       	jmp    5ce <main+0x383>
 45c:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 463 <main+0x218>
 463:	48 89 c7             	mov    rdi,rax
 466:	b8 00 00 00 00       	mov    eax,0x0
 46b:	e8 00 00 00 00       	call   470 <main+0x225>
 470:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
 477:	48 89 c6             	mov    rsi,rax
 47a:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 481 <main+0x236>
 481:	48 89 c7             	mov    rdi,rax
 484:	b8 00 00 00 00       	mov    eax,0x0
 489:	e8 00 00 00 00       	call   48e <main+0x243>
 48e:	48 8d 95 70 ff ff ff 	lea    rdx,[rbp-0x90]
 495:	8b 8d 50 94 fe ff    	mov    ecx,DWORD PTR [rbp-0x16bb0]
 49b:	48 8d 85 10 2d ff ff 	lea    rax,[rbp-0xd2f0]
 4a2:	89 ce                	mov    esi,ecx
 4a4:	48 89 c7             	mov    rdi,rax
 4a7:	e8 00 00 00 00       	call   4ac <main+0x261>
 4ac:	89 85 5c 94 fe ff    	mov    DWORD PTR [rbp-0x16ba4],eax
 4b2:	83 bd 5c 94 fe ff 00 	cmp    DWORD PTR [rbp-0x16ba4],0x0
 4b9:	79 14                	jns    4cf <main+0x284>
 4bb:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 4c2 <main+0x277>
 4c2:	48 89 c7             	mov    rdi,rax
 4c5:	e8 00 00 00 00       	call   4ca <main+0x27f>
 4ca:	e9 cd 00 00 00       	jmp    59c <main+0x351>
 4cf:	8b 85 5c 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16ba4]
 4d5:	48 98                	cdqe
 4d7:	48 69 c0 0c 01 00 00 	imul   rax,rax,0x10c
 4de:	48 01 e8             	add    rax,rbp
 4e1:	48 2d f0 d1 00 00    	sub    rax,0xd1f0
 4e7:	8b 00                	mov    eax,DWORD PTR [rax]
 4e9:	89 c6                	mov    esi,eax
 4eb:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 4f2 <main+0x2a7>
 4f2:	48 89 c7             	mov    rdi,rax
 4f5:	b8 00 00 00 00       	mov    eax,0x0
 4fa:	e8 00 00 00 00       	call   4ff <main+0x2b4>
 4ff:	48 8d 85 30 94 fe ff 	lea    rax,[rbp-0x16bd0]
 506:	48 89 c6             	mov    rsi,rax
 509:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 510 <main+0x2c5>
 510:	48 89 c7             	mov    rdi,rax
 513:	b8 00 00 00 00       	mov    eax,0x0
 518:	e8 00 00 00 00       	call   51d <main+0x2d2>
 51d:	8b 85 30 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bd0]
 523:	85 c0                	test   eax,eax
 525:	7e 24                	jle    54b <main+0x300>
 527:	8b 85 5c 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16ba4]
 52d:	48 98                	cdqe
 52f:	48 69 c0 0c 01 00 00 	imul   rax,rax,0x10c
 536:	48 01 e8             	add    rax,rbp
 539:	48 2d f0 d1 00 00    	sub    rax,0xd1f0
 53f:	8b 10                	mov    edx,DWORD PTR [rax]
 541:	8b 85 30 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bd0]
 547:	39 c2                	cmp    edx,eax
 549:	7d 11                	jge    55c <main+0x311>
 54b:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 552 <main+0x307>
 552:	48 89 c7             	mov    rdi,rax
 555:	e8 00 00 00 00       	call   55a <main+0x30f>
 55a:	eb 40                	jmp    59c <main+0x351>
 55c:	8b 85 3c 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bc4]
 562:	48 98                	cdqe
 564:	8b 95 5c 94 fe ff    	mov    edx,DWORD PTR [rbp-0x16ba4]
 56a:	89 94 c5 80 95 fe ff 	mov    DWORD PTR [rbp+rax*8-0x16a80],edx
 571:	8b 95 30 94 fe ff    	mov    edx,DWORD PTR [rbp-0x16bd0]
 577:	8b 85 3c 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bc4]
 57d:	48 98                	cdqe
 57f:	89 94 c5 84 95 fe ff 	mov    DWORD PTR [rbp+rax*8-0x16a7c],edx
 586:	83 85 3c 94 fe ff 01 	add    DWORD PTR [rbp-0x16bc4],0x1
 58d:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 594 <main+0x349>
 594:	48 89 c7             	mov    rdi,rax
 597:	e8 00 00 00 00       	call   59c <main+0x351>
 59c:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 5a3 <main+0x358>
 5a3:	48 89 c7             	mov    rdi,rax
 5a6:	b8 00 00 00 00       	mov    eax,0x0
 5ab:	e8 00 00 00 00       	call   5b0 <main+0x365>
 5b0:	48 8d 85 2f 94 fe ff 	lea    rax,[rbp-0x16bd1]
 5b7:	48 89 c6             	mov    rsi,rax
 5ba:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 5c1 <main+0x376>
 5c1:	48 89 c7             	mov    rdi,rax
 5c4:	b8 00 00 00 00       	mov    eax,0x0
 5c9:	e8 00 00 00 00       	call   5ce <main+0x383>
 5ce:	0f b6 85 2f 94 fe ff 	movzx  eax,BYTE PTR [rbp-0x16bd1]
 5d5:	3c 73                	cmp    al,0x73
 5d7:	74 0b                	je     5e4 <main+0x399>
 5d9:	0f b6 85 2f 94 fe ff 	movzx  eax,BYTE PTR [rbp-0x16bd1]
 5e0:	3c 53                	cmp    al,0x53
 5e2:	75 0d                	jne    5f1 <main+0x3a6>
 5e4:	83 bd 3c 94 fe ff 31 	cmp    DWORD PTR [rbp-0x16bc4],0x31
 5eb:	0f 8e 6b fe ff ff    	jle    45c <main+0x211>
 5f1:	83 bd 3c 94 fe ff 00 	cmp    DWORD PTR [rbp-0x16bc4],0x0
 5f8:	75 19                	jne    613 <main+0x3c8>
 5fa:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 601 <main+0x3b6>
 601:	48 89 c7             	mov    rdi,rax
 604:	e8 00 00 00 00       	call   609 <main+0x3be>
 609:	b8 00 00 00 00       	mov    eax,0x0
 60e:	e9 35 03 00 00       	jmp    948 <main+0x6fd>
 613:	66 0f ef c0          	pxor   xmm0,xmm0
 617:	f3 0f 11 85 40 94 fe 	movss  DWORD PTR [rbp-0x16bc0],xmm0
 61e:	ff 
 61f:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
 626:	48 89 c7             	mov    rdi,rax
 629:	e8 00 00 00 00       	call   62e <main+0x3e3>
 62e:	8b 85 58 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16ba8]
 634:	89 c6                	mov    esi,eax
 636:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 63d <main+0x3f2>
 63d:	48 89 c7             	mov    rdi,rax
 640:	b8 00 00 00 00       	mov    eax,0x0
 645:	e8 00 00 00 00       	call   64a <main+0x3ff>
 64a:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
 651:	48 89 c6             	mov    rsi,rax
 654:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 65b <main+0x410>
 65b:	48 89 c7             	mov    rdi,rax
 65e:	b8 00 00 00 00       	mov    eax,0x0
 663:	e8 00 00 00 00       	call   668 <main+0x41d>
 668:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 66f <main+0x424>
 66f:	48 89 c7             	mov    rdi,rax
 672:	e8 00 00 00 00       	call   677 <main+0x42c>
 677:	c7 85 44 94 fe ff 00 	mov    DWORD PTR [rbp-0x16bbc],0x0
 67e:	00 00 00 
 681:	e9 f6 00 00 00       	jmp    77c <main+0x531>
 686:	8b 85 44 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bbc]
 68c:	48 98                	cdqe
 68e:	8b 84 c5 80 95 fe ff 	mov    eax,DWORD PTR [rbp+rax*8-0x16a80]
 695:	48 98                	cdqe
 697:	48 69 c0 0c 01 00 00 	imul   rax,rax,0x10c
 69e:	48 01 e8             	add    rax,rbp
 6a1:	48 8d 90 10 2d ff ff 	lea    rdx,[rax-0xd2f0]
 6a8:	48 8d 85 70 94 fe ff 	lea    rax,[rbp-0x16b90]
 6af:	b9 21 00 00 00       	mov    ecx,0x21
 6b4:	48 89 c7             	mov    rdi,rax
 6b7:	48 89 d6             	mov    rsi,rdx
 6ba:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
 6bd:	48 89 f2             	mov    rdx,rsi
 6c0:	48 89 f8             	mov    rax,rdi
 6c3:	8b 0a                	mov    ecx,DWORD PTR [rdx]
 6c5:	89 08                	mov    DWORD PTR [rax],ecx
 6c7:	8b 85 44 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bbc]
 6cd:	48 98                	cdqe
 6cf:	8b 84 c5 84 95 fe ff 	mov    eax,DWORD PTR [rbp+rax*8-0x16a7c]
 6d6:	89 85 68 94 fe ff    	mov    DWORD PTR [rbp-0x16b98],eax
 6dc:	66 0f ef c9          	pxor   xmm1,xmm1
 6e0:	f3 0f 2a 8d 68 94 fe 	cvtsi2ss xmm1,DWORD PTR [rbp-0x16b98]
 6e7:	ff 
 6e8:	f3 0f 10 85 78 95 fe 	movss  xmm0,DWORD PTR [rbp-0x16a88]
 6ef:	ff 
 6f0:	f3 0f 59 c1          	mulss  xmm0,xmm1
 6f4:	f3 0f 11 85 6c 94 fe 	movss  DWORD PTR [rbp-0x16b94],xmm0
 6fb:	ff 
 6fc:	f3 0f 10 85 40 94 fe 	movss  xmm0,DWORD PTR [rbp-0x16bc0]
 703:	ff 
 704:	f3 0f 58 85 6c 94 fe 	addss  xmm0,DWORD PTR [rbp-0x16b94]
 70b:	ff 
 70c:	f3 0f 11 85 40 94 fe 	movss  DWORD PTR [rbp-0x16bc0],xmm0
 713:	ff 
 714:	66 0f ef c0          	pxor   xmm0,xmm0
 718:	f3 0f 5a 85 6c 94 fe 	cvtss2sd xmm0,DWORD PTR [rbp-0x16b94]
 71f:	ff 
 720:	f3 0f 10 8d 78 95 fe 	movss  xmm1,DWORD PTR [rbp-0x16a88]
 727:	ff 
 728:	66 0f ef d2          	pxor   xmm2,xmm2
 72c:	f3 0f 5a d1          	cvtss2sd xmm2,xmm1
 730:	66 48 0f 7e d1       	movq   rcx,xmm2
 735:	8b 95 68 94 fe ff    	mov    edx,DWORD PTR [rbp-0x16b98]
 73b:	48 8d 85 70 94 fe ff 	lea    rax,[rbp-0x16b90]
 742:	48 8d b0 80 00 00 00 	lea    rsi,[rax+0x80]
 749:	48 8d 85 70 94 fe ff 	lea    rax,[rbp-0x16b90]
 750:	66 0f 28 c8          	movapd xmm1,xmm0
 754:	66 48 0f 6e c1       	movq   xmm0,rcx
 759:	89 d1                	mov    ecx,edx
 75b:	48 89 f2             	mov    rdx,rsi
 75e:	48 89 c6             	mov    rsi,rax
 761:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 768 <main+0x51d>
 768:	48 89 c7             	mov    rdi,rax
 76b:	b8 02 00 00 00       	mov    eax,0x2
 770:	e8 00 00 00 00       	call   775 <main+0x52a>
 775:	83 85 44 94 fe ff 01 	add    DWORD PTR [rbp-0x16bbc],0x1
 77c:	8b 85 44 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bbc]
 782:	3b 85 3c 94 fe ff    	cmp    eax,DWORD PTR [rbp-0x16bc4]
 788:	0f 8c f8 fe ff ff    	jl     686 <main+0x43b>
 78e:	66 0f ef db          	pxor   xmm3,xmm3
 792:	f3 0f 5a 9d 40 94 fe 	cvtss2sd xmm3,DWORD PTR [rbp-0x16bc0]
 799:	ff 
 79a:	66 48 0f 7e d8       	movq   rax,xmm3
 79f:	66 48 0f 6e c0       	movq   xmm0,rax
 7a4:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 7ab <main+0x560>
 7ab:	48 89 c7             	mov    rdi,rax
 7ae:	b8 01 00 00 00       	mov    eax,0x1
 7b3:	e8 00 00 00 00       	call   7b8 <main+0x56d>
 7b8:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 7bf <main+0x574>
 7bf:	48 89 c7             	mov    rdi,rax
 7c2:	b8 00 00 00 00       	mov    eax,0x0
 7c7:	e8 00 00 00 00       	call   7cc <main+0x581>
 7cc:	48 8d 85 30 94 fe ff 	lea    rax,[rbp-0x16bd0]
 7d3:	48 89 c6             	mov    rsi,rax
 7d6:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 7dd <main+0x592>
 7dd:	48 89 c7             	mov    rdi,rax
 7e0:	b8 00 00 00 00       	mov    eax,0x0
 7e5:	e8 00 00 00 00       	call   7ea <main+0x59f>
 7ea:	0f b6 85 30 94 fe ff 	movzx  eax,BYTE PTR [rbp-0x16bd0]
 7f1:	3c 73                	cmp    al,0x73
 7f3:	74 24                	je     819 <main+0x5ce>
 7f5:	0f b6 85 30 94 fe ff 	movzx  eax,BYTE PTR [rbp-0x16bd0]
 7fc:	3c 53                	cmp    al,0x53
 7fe:	74 19                	je     819 <main+0x5ce>
 800:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 807 <main+0x5bc>
 807:	48 89 c7             	mov    rdi,rax
 80a:	e8 00 00 00 00       	call   80f <main+0x5c4>
 80f:	b8 00 00 00 00       	mov    eax,0x0
 814:	e9 2f 01 00 00       	jmp    948 <main+0x6fd>
 819:	c7 85 48 94 fe ff 00 	mov    DWORD PTR [rbp-0x16bb8],0x0
 820:	00 00 00 
 823:	e9 db 00 00 00       	jmp    903 <main+0x6b8>
 828:	8b 85 48 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bb8]
 82e:	48 98                	cdqe
 830:	8b 84 c5 80 95 fe ff 	mov    eax,DWORD PTR [rbp+rax*8-0x16a80]
 837:	89 85 60 94 fe ff    	mov    DWORD PTR [rbp-0x16ba0],eax
 83d:	8b 85 48 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bb8]
 843:	48 98                	cdqe
 845:	8b 84 c5 84 95 fe ff 	mov    eax,DWORD PTR [rbp+rax*8-0x16a7c]
 84c:	89 85 64 94 fe ff    	mov    DWORD PTR [rbp-0x16b9c],eax
 852:	8b 85 60 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16ba0]
 858:	48 98                	cdqe
 85a:	48 69 c0 0c 01 00 00 	imul   rax,rax,0x10c
 861:	48 01 e8             	add    rax,rbp
 864:	48 2d f0 d1 00 00    	sub    rax,0xd1f0
 86a:	8b 00                	mov    eax,DWORD PTR [rax]
 86c:	2b 85 64 94 fe ff    	sub    eax,DWORD PTR [rbp-0x16b9c]
 872:	8b 95 60 94 fe ff    	mov    edx,DWORD PTR [rbp-0x16ba0]
 878:	48 63 d2             	movsxd rdx,edx
 87b:	48 69 d2 0c 01 00 00 	imul   rdx,rdx,0x10c
 882:	48 01 ea             	add    rdx,rbp
 885:	48 81 ea f0 d1 00 00 	sub    rdx,0xd1f0
 88c:	89 02                	mov    DWORD PTR [rdx],eax
 88e:	4c 8d 95 70 ff ff ff 	lea    r10,[rbp-0x90]
 895:	44 8b 8d 64 94 fe ff 	mov    r9d,DWORD PTR [rbp-0x16b9c]
 89c:	44 8b 85 58 94 fe ff 	mov    r8d,DWORD PTR [rbp-0x16ba8]
 8a3:	8b 85 60 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16ba0]
 8a9:	48 98                	cdqe
 8ab:	48 69 c0 0c 01 00 00 	imul   rax,rax,0x10c
 8b2:	48 01 e8             	add    rax,rbp
 8b5:	48 2d f0 d2 00 00    	sub    rax,0xd2f0
 8bb:	48 81 ec 10 01 00 00 	sub    rsp,0x110
 8c2:	48 89 e2             	mov    rdx,rsp
 8c5:	b9 21 00 00 00       	mov    ecx,0x21
 8ca:	48 89 d7             	mov    rdi,rdx
 8cd:	48 89 c6             	mov    rsi,rax
 8d0:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
 8d3:	48 89 f0             	mov    rax,rsi
 8d6:	48 89 fa             	mov    rdx,rdi
 8d9:	8b 08                	mov    ecx,DWORD PTR [rax]
 8db:	89 0a                	mov    DWORD PTR [rdx],ecx
 8dd:	4c 89 d1             	mov    rcx,r10
 8e0:	44 89 ca             	mov    edx,r9d
 8e3:	44 89 c6             	mov    esi,r8d
 8e6:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 8ed <main+0x6a2>
 8ed:	48 89 c7             	mov    rdi,rax
 8f0:	e8 00 00 00 00       	call   8f5 <main+0x6aa>
 8f5:	48 81 c4 10 01 00 00 	add    rsp,0x110
 8fc:	83 85 48 94 fe ff 01 	add    DWORD PTR [rbp-0x16bb8],0x1
 903:	8b 85 48 94 fe ff    	mov    eax,DWORD PTR [rbp-0x16bb8]
 909:	3b 85 3c 94 fe ff    	cmp    eax,DWORD PTR [rbp-0x16bc4]
 90f:	0f 8c 13 ff ff ff    	jl     828 <main+0x5dd>
 915:	8b 95 50 94 fe ff    	mov    edx,DWORD PTR [rbp-0x16bb0]
 91b:	48 8d 85 10 2d ff ff 	lea    rax,[rbp-0xd2f0]
 922:	48 89 c6             	mov    rsi,rax
 925:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 92c <main+0x6e1>
 92c:	48 89 c7             	mov    rdi,rax
 92f:	e8 00 00 00 00       	call   934 <main+0x6e9>
 934:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 93b <main+0x6f0>
 93b:	48 89 c7             	mov    rdi,rax
 93e:	e8 00 00 00 00       	call   943 <main+0x6f8>
 943:	b8 00 00 00 00       	mov    eax,0x0
 948:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 94c:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
 953:	00 00 
 955:	74 05                	je     95c <main+0x711>
 957:	e8 00 00 00 00       	call   95c <main+0x711>
 95c:	c9                   	leave
 95d:	c3                   	ret
