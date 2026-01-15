
hello.elf:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	0f 1f 40 00          	nopl   0x0(%rax)
   140001005:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000100c:	00 00 00 00 

0000000140001010 <__tmainCRTStartup>:
   140001010:	41 57                	push   %r15
   140001012:	41 56                	push   %r14
   140001014:	41 55                	push   %r13
   140001016:	41 54                	push   %r12
   140001018:	55                   	push   %rbp
   140001019:	57                   	push   %rdi
   14000101a:	56                   	push   %rsi
   14000101b:	53                   	push   %rbx
   14000101c:	48 83 ec 58          	sub    $0x58,%rsp
   140001020:	b8 30 00 00 00       	mov    $0x30,%eax
   140001025:	65 67 48 8b 00       	mov    %gs:(%eax),%rax
   14000102a:	48 8b 70 08          	mov    0x8(%rax),%rsi
   14000102e:	48 8b 1d 1b 34 00 00 	mov    0x341b(%rip),%rbx        # 140004450 <.refptr.__native_startup_lock>
   140001035:	48 8b 3d 54 71 00 00 	mov    0x7154(%rip),%rdi        # 140008190 <__imp_Sleep>
   14000103c:	eb 12                	jmp    140001050 <__tmainCRTStartup+0x40>
   14000103e:	66 90                	xchg   %ax,%ax
   140001040:	48 39 c6             	cmp    %rax,%rsi
   140001043:	0f 84 b7 00 00 00    	je     140001100 <__tmainCRTStartup+0xf0>
   140001049:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   14000104e:	ff d7                	call   *%rdi
   140001050:	31 c0                	xor    %eax,%eax
   140001052:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   140001057:	75 e7                	jne    140001040 <__tmainCRTStartup+0x30>
   140001059:	45 31 f6             	xor    %r14d,%r14d
   14000105c:	48 8b 2d fd 33 00 00 	mov    0x33fd(%rip),%rbp        # 140004460 <.refptr.__native_startup_state>
   140001063:	8b 45 00             	mov    0x0(%rbp),%eax
   140001066:	83 f8 01             	cmp    $0x1,%eax
   140001069:	0f 84 59 03 00 00    	je     1400013c8 <__tmainCRTStartup+0x3b8>
   14000106f:	8b 45 00             	mov    0x0(%rbp),%eax
   140001072:	85 c0                	test   %eax,%eax
   140001074:	0f 84 96 00 00 00    	je     140001110 <__tmainCRTStartup+0x100>
   14000107a:	c7 05 80 5f 00 00 01 	movl   $0x1,0x5f80(%rip)        # 140007004 <has_cctor>
   140001081:	00 00 00 
   140001084:	45 85 f6             	test   %r14d,%r14d
   140001087:	0f 84 9b 02 00 00    	je     140001328 <__tmainCRTStartup+0x318>
   14000108d:	48 8b 05 1c 33 00 00 	mov    0x331c(%rip),%rax        # 1400043b0 <.refptr.__dyn_tls_init_callback>
   140001094:	48 8b 00             	mov    (%rax),%rax
   140001097:	48 85 c0             	test   %rax,%rax
   14000109a:	74 0c                	je     1400010a8 <__tmainCRTStartup+0x98>
   14000109c:	45 31 c0             	xor    %r8d,%r8d
   14000109f:	ba 02 00 00 00       	mov    $0x2,%edx
   1400010a4:	31 c9                	xor    %ecx,%ecx
   1400010a6:	ff d0                	call   *%rax
   1400010a8:	e8 33 15 00 00       	call   1400025e0 <__p___initenv>
   1400010ad:	4c 8b 05 5c 5f 00 00 	mov    0x5f5c(%rip),%r8        # 140007010 <envp>
   1400010b4:	8b 0d 66 5f 00 00    	mov    0x5f66(%rip),%ecx        # 140007020 <argc>
   1400010ba:	4c 89 00             	mov    %r8,(%rax)
   1400010bd:	48 8b 15 54 5f 00 00 	mov    0x5f54(%rip),%rdx        # 140007018 <argv>
   1400010c4:	e8 87 03 00 00       	call   140001450 <main>
   1400010c9:	8b 0d 39 5f 00 00    	mov    0x5f39(%rip),%ecx        # 140007008 <managedapp>
   1400010cf:	85 c9                	test   %ecx,%ecx
   1400010d1:	0f 84 fb 02 00 00    	je     1400013d2 <__tmainCRTStartup+0x3c2>
   1400010d7:	8b 15 27 5f 00 00    	mov    0x5f27(%rip),%edx        # 140007004 <has_cctor>
   1400010dd:	85 d2                	test   %edx,%edx
   1400010df:	0f 84 2b 02 00 00    	je     140001310 <__tmainCRTStartup+0x300>
   1400010e5:	48 83 c4 58          	add    $0x58,%rsp
   1400010e9:	5b                   	pop    %rbx
   1400010ea:	5e                   	pop    %rsi
   1400010eb:	5f                   	pop    %rdi
   1400010ec:	5d                   	pop    %rbp
   1400010ed:	41 5c                	pop    %r12
   1400010ef:	41 5d                	pop    %r13
   1400010f1:	41 5e                	pop    %r14
   1400010f3:	41 5f                	pop    %r15
   1400010f5:	c3                   	ret
   1400010f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400010fd:	00 00 00 
   140001100:	41 be 01 00 00 00    	mov    $0x1,%r14d
   140001106:	e9 51 ff ff ff       	jmp    14000105c <__tmainCRTStartup+0x4c>
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	c7 45 00 01 00 00 00 	movl   $0x1,0x0(%rbp)
   140001117:	e8 e4 07 00 00       	call   140001900 <_pei386_runtime_relocator>
   14000111c:	48 8d 0d bd 0b 00 00 	lea    0xbbd(%rip),%rcx        # 140001ce0 <_gnu_exception_handler>
   140001123:	ff 15 5f 70 00 00    	call   *0x705f(%rip)        # 140008188 <__imp_SetUnhandledExceptionFilter>
   140001129:	48 8b 15 10 33 00 00 	mov    0x3310(%rip),%rdx        # 140004440 <.refptr.__mingw_oldexcpt_handler>
   140001130:	48 8d 0d c9 fe ff ff 	lea    -0x137(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001137:	48 89 02             	mov    %rax,(%rdx)
   14000113a:	e8 c1 14 00 00       	call   140002600 <_set_invalid_parameter_handler>
   14000113f:	e8 fc 0f 00 00       	call   140002140 <_fpreset>
   140001144:	48 8b 05 c5 32 00 00 	mov    0x32c5(%rip),%rax        # 140004410 <.refptr.__mingw_initltsdrot_force>
   14000114b:	31 c9                	xor    %ecx,%ecx
   14000114d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001153:	48 8b 05 c6 32 00 00 	mov    0x32c6(%rip),%rax        # 140004420 <.refptr.__mingw_initltsdyn_force>
   14000115a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001160:	48 8b 05 c9 32 00 00 	mov    0x32c9(%rip),%rax        # 140004430 <.refptr.__mingw_initltssuo_force>
   140001167:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000116d:	48 8b 05 0c 32 00 00 	mov    0x320c(%rip),%rax        # 140004380 <.refptr.__ImageBase>
   140001174:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001179:	75 45                	jne    1400011c0 <__tmainCRTStartup+0x1b0>
   14000117b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000117f:	48 01 d0             	add    %rdx,%rax
   140001182:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001188:	75 36                	jne    1400011c0 <__tmainCRTStartup+0x1b0>
   14000118a:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   14000118e:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   140001193:	0f 84 11 02 00 00    	je     1400013aa <__tmainCRTStartup+0x39a>
   140001199:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   14000119e:	75 20                	jne    1400011c0 <__tmainCRTStartup+0x1b0>
   1400011a0:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400011a7:	76 17                	jbe    1400011c0 <__tmainCRTStartup+0x1b0>
   1400011a9:	44 8b 88 f8 00 00 00 	mov    0xf8(%rax),%r9d
   1400011b0:	31 c9                	xor    %ecx,%ecx
   1400011b2:	45 85 c9             	test   %r9d,%r9d
   1400011b5:	0f 95 c1             	setne  %cl
   1400011b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400011bf:	00 
   1400011c0:	48 8b 05 39 32 00 00 	mov    0x3239(%rip),%rax        # 140004400 <.refptr.__mingw_app_type>
   1400011c7:	89 0d 3b 5e 00 00    	mov    %ecx,0x5e3b(%rip)        # 140007008 <managedapp>
   1400011cd:	44 8b 00             	mov    (%rax),%r8d
   1400011d0:	45 85 c0             	test   %r8d,%r8d
   1400011d3:	0f 85 5f 01 00 00    	jne    140001338 <__tmainCRTStartup+0x328>
   1400011d9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400011de:	e8 85 14 00 00       	call   140002668 <__set_app_type>
   1400011e3:	e8 d8 13 00 00       	call   1400025c0 <__p__fmode>
   1400011e8:	48 8b 15 e1 32 00 00 	mov    0x32e1(%rip),%rdx        # 1400044d0 <.refptr._fmode>
   1400011ef:	8b 12                	mov    (%rdx),%edx
   1400011f1:	89 10                	mov    %edx,(%rax)
   1400011f3:	e8 d8 13 00 00       	call   1400025d0 <__p__commode>
   1400011f8:	48 8b 15 b1 32 00 00 	mov    0x32b1(%rip),%rdx        # 1400044b0 <.refptr._commode>
   1400011ff:	8b 12                	mov    (%rdx),%edx
   140001201:	89 10                	mov    %edx,(%rax)
   140001203:	e8 68 03 00 00       	call   140001570 <_setargv>
   140001208:	85 c0                	test   %eax,%eax
   14000120a:	0f 88 f1 00 00 00    	js     140001301 <__tmainCRTStartup+0x2f1>
   140001210:	48 8b 05 49 31 00 00 	mov    0x3149(%rip),%rax        # 140004360 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   140001217:	83 38 01             	cmpl   $0x1,(%rax)
   14000121a:	0f 84 79 01 00 00    	je     140001399 <__tmainCRTStartup+0x389>
   140001220:	48 8b 05 99 31 00 00 	mov    0x3199(%rip),%rax        # 1400043c0 <.refptr.__globallocalestatus>
   140001227:	83 38 ff             	cmpl   $0xffffffff,(%rax)
   14000122a:	0f 84 5a 01 00 00    	je     14000138a <__tmainCRTStartup+0x37a>
   140001230:	48 8b 15 69 32 00 00 	mov    0x3269(%rip),%rdx        # 1400044a0 <.refptr.__xi_z>
   140001237:	48 8b 0d 52 32 00 00 	mov    0x3252(%rip),%rcx        # 140004490 <.refptr.__xi_a>
   14000123e:	e8 3d 13 00 00       	call   140002580 <_initterm_e>
   140001243:	85 c0                	test   %eax,%eax
   140001245:	0f 85 35 01 00 00    	jne    140001380 <__tmainCRTStartup+0x370>
   14000124b:	48 8b 05 ae 32 00 00 	mov    0x32ae(%rip),%rax        # 140004500 <.refptr._newmode>
   140001252:	4c 8d 05 b7 5d 00 00 	lea    0x5db7(%rip),%r8        # 140007010 <envp>
   140001259:	48 8d 15 b8 5d 00 00 	lea    0x5db8(%rip),%rdx        # 140007018 <argv>
   140001260:	48 8d 0d b9 5d 00 00 	lea    0x5db9(%rip),%rcx        # 140007020 <argc>
   140001267:	8b 00                	mov    (%rax),%eax
   140001269:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
   14000126d:	48 8b 05 4c 32 00 00 	mov    0x324c(%rip),%rax        # 1400044c0 <.refptr._dowildcard>
   140001274:	44 8b 08             	mov    (%rax),%r9d
   140001277:	48 8d 44 24 4c       	lea    0x4c(%rsp),%rax
   14000127c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001281:	e8 d2 13 00 00       	call   140002658 <__getmainargs>
   140001286:	85 c0                	test   %eax,%eax
   140001288:	78 77                	js     140001301 <__tmainCRTStartup+0x2f1>
   14000128a:	4c 63 25 8f 5d 00 00 	movslq 0x5d8f(%rip),%r12        # 140007020 <argc>
   140001291:	41 8d 4c 24 01       	lea    0x1(%r12),%ecx
   140001296:	48 63 c9             	movslq %ecx,%rcx
   140001299:	48 c1 e1 03          	shl    $0x3,%rcx
   14000129d:	e8 1e 14 00 00       	call   1400026c0 <malloc>
   1400012a2:	49 89 c5             	mov    %rax,%r13
   1400012a5:	48 85 c0             	test   %rax,%rax
   1400012a8:	74 57                	je     140001301 <__tmainCRTStartup+0x2f1>
   1400012aa:	45 85 e4             	test   %r12d,%r12d
   1400012ad:	0f 8e 99 00 00 00    	jle    14000134c <__tmainCRTStartup+0x33c>
   1400012b3:	4c 8b 3d 5e 5d 00 00 	mov    0x5d5e(%rip),%r15        # 140007018 <argv>
   1400012ba:	be 01 00 00 00       	mov    $0x1,%esi
   1400012bf:	eb 20                	jmp    1400012e1 <__tmainCRTStartup+0x2d1>
   1400012c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400012c8:	49 8b 54 f7 f8       	mov    -0x8(%r15,%rsi,8),%rdx
   1400012cd:	49 89 f8             	mov    %rdi,%r8
   1400012d0:	48 89 c1             	mov    %rax,%rcx
   1400012d3:	e8 f0 13 00 00       	call   1400026c8 <memcpy>
   1400012d8:	49 39 f4             	cmp    %rsi,%r12
   1400012db:	74 6a                	je     140001347 <__tmainCRTStartup+0x337>
   1400012dd:	48 83 c6 01          	add    $0x1,%rsi
   1400012e1:	49 8b 4c f7 f8       	mov    -0x8(%r15,%rsi,8),%rcx
   1400012e6:	e8 f5 13 00 00       	call   1400026e0 <strlen>
   1400012eb:	48 8d 78 01          	lea    0x1(%rax),%rdi
   1400012ef:	48 89 f9             	mov    %rdi,%rcx
   1400012f2:	e8 c9 13 00 00       	call   1400026c0 <malloc>
   1400012f7:	49 89 44 f5 f8       	mov    %rax,-0x8(%r13,%rsi,8)
   1400012fc:	48 85 c0             	test   %rax,%rax
   1400012ff:	75 c7                	jne    1400012c8 <__tmainCRTStartup+0x2b8>
   140001301:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001306:	e8 6d 13 00 00       	call   140002678 <_amsg_exit>
   14000130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001310:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   140001314:	e8 67 13 00 00       	call   140002680 <_cexit>
   140001319:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
   14000131d:	e9 c3 fd ff ff       	jmp    1400010e5 <__tmainCRTStartup+0xd5>
   140001322:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001328:	31 c0                	xor    %eax,%eax
   14000132a:	48 87 03             	xchg   %rax,(%rbx)
   14000132d:	e9 5b fd ff ff       	jmp    14000108d <__tmainCRTStartup+0x7d>
   140001332:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001338:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000133d:	e8 26 13 00 00       	call   140002668 <__set_app_type>
   140001342:	e9 9c fe ff ff       	jmp    1400011e3 <__tmainCRTStartup+0x1d3>
   140001347:	4b 8d 44 e5 00       	lea    0x0(%r13,%r12,8),%rax
   14000134c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140001353:	48 8b 15 26 31 00 00 	mov    0x3126(%rip),%rdx        # 140004480 <.refptr.__xc_z>
   14000135a:	48 8b 0d 0f 31 00 00 	mov    0x310f(%rip),%rcx        # 140004470 <.refptr.__xc_a>
   140001361:	4c 89 2d b0 5c 00 00 	mov    %r13,0x5cb0(%rip)        # 140007018 <argv>
   140001368:	e8 1b 13 00 00       	call   140002688 <_initterm>
   14000136d:	e8 de 01 00 00       	call   140001550 <__main>
   140001372:	c7 45 00 02 00 00 00 	movl   $0x2,0x0(%rbp)
   140001379:	e9 06 fd ff ff       	jmp    140001084 <__tmainCRTStartup+0x74>
   14000137e:	66 90                	xchg   %ax,%ax
   140001380:	b8 ff 00 00 00       	mov    $0xff,%eax
   140001385:	e9 5b fd ff ff       	jmp    1400010e5 <__tmainCRTStartup+0xd5>
   14000138a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   14000138f:	e8 7c 12 00 00       	call   140002610 <_configthreadlocale>
   140001394:	e9 97 fe ff ff       	jmp    140001230 <__tmainCRTStartup+0x220>
   140001399:	48 8d 0d 90 02 00 00 	lea    0x290(%rip),%rcx        # 140001630 <_matherr>
   1400013a0:	e8 2b 09 00 00       	call   140001cd0 <__mingw_setusermatherr>
   1400013a5:	e9 76 fe ff ff       	jmp    140001220 <__tmainCRTStartup+0x210>
   1400013aa:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   1400013ae:	0f 86 0c fe ff ff    	jbe    1400011c0 <__tmainCRTStartup+0x1b0>
   1400013b4:	44 8b 90 e8 00 00 00 	mov    0xe8(%rax),%r10d
   1400013bb:	31 c9                	xor    %ecx,%ecx
   1400013bd:	45 85 d2             	test   %r10d,%r10d
   1400013c0:	0f 95 c1             	setne  %cl
   1400013c3:	e9 f8 fd ff ff       	jmp    1400011c0 <__tmainCRTStartup+0x1b0>
   1400013c8:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   1400013cd:	e8 a6 12 00 00       	call   140002678 <_amsg_exit>
   1400013d2:	89 c1                	mov    %eax,%ecx
   1400013d4:	e8 cf 12 00 00       	call   1400026a8 <exit>
   1400013d9:	90                   	nop
   1400013da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400013e0 <WinMainCRTStartup>:
   1400013e0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013e4 <.l_startw>:
   1400013e4:	48 8b 05 15 30 00 00 	mov    0x3015(%rip),%rax        # 140004400 <.refptr.__mingw_app_type>
   1400013eb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013f1:	e8 1a fc ff ff       	call   140001010 <__tmainCRTStartup>
   1400013f6:	90                   	nop

00000001400013f7 <.l_endw>:
   1400013f7:	90                   	nop
   1400013f8:	48 83 c4 28          	add    $0x28,%rsp
   1400013fc:	c3                   	ret
   1400013fd:	0f 1f 00             	nopl   (%rax)

0000000140001400 <mainCRTStartup>:
   140001400:	48 83 ec 28          	sub    $0x28,%rsp

0000000140001404 <.l_start>:
   140001404:	48 8b 05 f5 2f 00 00 	mov    0x2ff5(%rip),%rax        # 140004400 <.refptr.__mingw_app_type>
   14000140b:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001411:	e8 fa fb ff ff       	call   140001010 <__tmainCRTStartup>
   140001416:	90                   	nop

0000000140001417 <.l_end>:
   140001417:	90                   	nop
   140001418:	48 83 c4 28          	add    $0x28,%rsp
   14000141c:	c3                   	ret
   14000141d:	0f 1f 00             	nopl   (%rax)

0000000140001420 <atexit>:
   140001420:	e9 73 12 00 00       	jmp    140002698 <_crt_atexit>
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 e4 ff ff ff       	jmp    140001420 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <main>:
   140001450:	55                   	push   %rbp
   140001451:	48 89 e5             	mov    %rsp,%rbp
   140001454:	48 83 ec 20          	sub    $0x20,%rsp
   140001458:	e8 f3 00 00 00       	call   140001550 <__main>
   14000145d:	48 8d 05 9c 2b 00 00 	lea    0x2b9c(%rip),%rax        # 140004000 <.rdata>
   140001464:	48 89 c1             	mov    %rax,%rcx
   140001467:	e8 64 12 00 00       	call   1400026d0 <puts>
   14000146c:	b8 00 00 00 00       	mov    $0x0,%eax
   140001471:	48 83 c4 20          	add    $0x20,%rsp
   140001475:	5d                   	pop    %rbp
   140001476:	c3                   	ret
   140001477:	90                   	nop
   140001478:	90                   	nop
   140001479:	90                   	nop
   14000147a:	90                   	nop
   14000147b:	90                   	nop
   14000147c:	90                   	nop
   14000147d:	90                   	nop
   14000147e:	90                   	nop
   14000147f:	90                   	nop

0000000140001480 <__do_global_dtors>:
   140001480:	48 83 ec 28          	sub    $0x28,%rsp
   140001484:	48 8b 05 75 1b 00 00 	mov    0x1b75(%rip),%rax        # 140003000 <__data_start__>
   14000148b:	48 8b 00             	mov    (%rax),%rax
   14000148e:	48 85 c0             	test   %rax,%rax
   140001491:	74 2a                	je     1400014bd <__do_global_dtors+0x3d>
   140001493:	66 90                	xchg   %ax,%ax
   140001495:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000149c:	00 00 00 00 
   1400014a0:	ff d0                	call   *%rax
   1400014a2:	48 8b 05 57 1b 00 00 	mov    0x1b57(%rip),%rax        # 140003000 <__data_start__>
   1400014a9:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400014ad:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400014b1:	48 89 15 48 1b 00 00 	mov    %rdx,0x1b48(%rip)        # 140003000 <__data_start__>
   1400014b8:	48 85 c0             	test   %rax,%rax
   1400014bb:	75 e3                	jne    1400014a0 <__do_global_dtors+0x20>
   1400014bd:	48 83 c4 28          	add    $0x28,%rsp
   1400014c1:	c3                   	ret
   1400014c2:	0f 1f 00             	nopl   (%rax)
   1400014c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400014cc:	00 00 00 00 

00000001400014d0 <__do_global_ctors>:
   1400014d0:	56                   	push   %rsi
   1400014d1:	53                   	push   %rbx
   1400014d2:	48 83 ec 28          	sub    $0x28,%rsp
   1400014d6:	48 8b 15 93 2e 00 00 	mov    0x2e93(%rip),%rdx        # 140004370 <.refptr.__CTOR_LIST__>
   1400014dd:	48 8b 02             	mov    (%rdx),%rax
   1400014e0:	89 c1                	mov    %eax,%ecx
   1400014e2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400014e5:	74 39                	je     140001520 <__do_global_ctors+0x50>
   1400014e7:	85 c9                	test   %ecx,%ecx
   1400014e9:	74 20                	je     14000150b <__do_global_ctors+0x3b>
   1400014eb:	89 c8                	mov    %ecx,%eax
   1400014ed:	83 e9 01             	sub    $0x1,%ecx
   1400014f0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400014f4:	48 29 c8             	sub    %rcx,%rax
   1400014f7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400014fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001500:	ff 13                	call   *(%rbx)
   140001502:	48 83 eb 08          	sub    $0x8,%rbx
   140001506:	48 39 f3             	cmp    %rsi,%rbx
   140001509:	75 f5                	jne    140001500 <__do_global_ctors+0x30>
   14000150b:	48 8d 0d 6e ff ff ff 	lea    -0x92(%rip),%rcx        # 140001480 <__do_global_dtors>
   140001512:	48 83 c4 28          	add    $0x28,%rsp
   140001516:	5b                   	pop    %rbx
   140001517:	5e                   	pop    %rsi
   140001518:	e9 03 ff ff ff       	jmp    140001420 <atexit>
   14000151d:	0f 1f 00             	nopl   (%rax)
   140001520:	31 c0                	xor    %eax,%eax
   140001522:	0f 1f 00             	nopl   (%rax)
   140001525:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000152c:	00 00 00 00 
   140001530:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140001534:	89 c1                	mov    %eax,%ecx
   140001536:	4c 89 c0             	mov    %r8,%rax
   140001539:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   14000153e:	75 f0                	jne    140001530 <__do_global_ctors+0x60>
   140001540:	eb a5                	jmp    1400014e7 <__do_global_ctors+0x17>
   140001542:	0f 1f 00             	nopl   (%rax)
   140001545:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000154c:	00 00 00 00 

0000000140001550 <__main>:
   140001550:	8b 05 da 5a 00 00    	mov    0x5ada(%rip),%eax        # 140007030 <initialized>
   140001556:	85 c0                	test   %eax,%eax
   140001558:	74 06                	je     140001560 <__main+0x10>
   14000155a:	c3                   	ret
   14000155b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001560:	c7 05 c6 5a 00 00 01 	movl   $0x1,0x5ac6(%rip)        # 140007030 <initialized>
   140001567:	00 00 00 
   14000156a:	e9 61 ff ff ff       	jmp    1400014d0 <__do_global_ctors>
   14000156f:	90                   	nop

0000000140001570 <_setargv>:
   140001570:	31 c0                	xor    %eax,%eax
   140001572:	c3                   	ret
   140001573:	90                   	nop
   140001574:	90                   	nop
   140001575:	90                   	nop
   140001576:	90                   	nop
   140001577:	90                   	nop
   140001578:	90                   	nop
   140001579:	90                   	nop
   14000157a:	90                   	nop
   14000157b:	90                   	nop
   14000157c:	90                   	nop
   14000157d:	90                   	nop
   14000157e:	90                   	nop
   14000157f:	90                   	nop

0000000140001580 <__dyn_tls_dtor>:
   140001580:	83 fa 03             	cmp    $0x3,%edx
   140001583:	74 0b                	je     140001590 <__dyn_tls_dtor+0x10>
   140001585:	85 d2                	test   %edx,%edx
   140001587:	74 07                	je     140001590 <__dyn_tls_dtor+0x10>
   140001589:	c3                   	ret
   14000158a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001590:	e9 9b 0a 00 00       	jmp    140002030 <__mingw_TLScallback>
   140001595:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000159c:	00 00 00 00 

00000001400015a0 <__dyn_tls_init>:
   1400015a0:	56                   	push   %rsi
   1400015a1:	53                   	push   %rbx
   1400015a2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015a6:	48 8b 05 a3 2d 00 00 	mov    0x2da3(%rip),%rax        # 140004350 <.refptr._CRT_MT>
   1400015ad:	83 38 02             	cmpl   $0x2,(%rax)
   1400015b0:	74 06                	je     1400015b8 <__dyn_tls_init+0x18>
   1400015b2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400015b8:	83 fa 02             	cmp    $0x2,%edx
   1400015bb:	74 13                	je     1400015d0 <__dyn_tls_init+0x30>
   1400015bd:	83 fa 01             	cmp    $0x1,%edx
   1400015c0:	74 4e                	je     140001610 <__dyn_tls_init+0x70>
   1400015c2:	48 83 c4 28          	add    $0x28,%rsp
   1400015c6:	5b                   	pop    %rbx
   1400015c7:	5e                   	pop    %rsi
   1400015c8:	c3                   	ret
   1400015c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400015d0:	48 8d 1d d9 35 00 00 	lea    0x35d9(%rip),%rbx        # 140004bb0 <__xd_z>
   1400015d7:	48 8d 35 d2 35 00 00 	lea    0x35d2(%rip),%rsi        # 140004bb0 <__xd_z>
   1400015de:	48 39 f3             	cmp    %rsi,%rbx
   1400015e1:	74 df                	je     1400015c2 <__dyn_tls_init+0x22>
   1400015e3:	66 90                	xchg   %ax,%ax
   1400015e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400015ec:	00 00 00 00 
   1400015f0:	48 8b 03             	mov    (%rbx),%rax
   1400015f3:	48 85 c0             	test   %rax,%rax
   1400015f6:	74 02                	je     1400015fa <__dyn_tls_init+0x5a>
   1400015f8:	ff d0                	call   *%rax
   1400015fa:	48 83 c3 08          	add    $0x8,%rbx
   1400015fe:	48 39 f3             	cmp    %rsi,%rbx
   140001601:	75 ed                	jne    1400015f0 <__dyn_tls_init+0x50>
   140001603:	48 83 c4 28          	add    $0x28,%rsp
   140001607:	5b                   	pop    %rbx
   140001608:	5e                   	pop    %rsi
   140001609:	c3                   	ret
   14000160a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001610:	48 83 c4 28          	add    $0x28,%rsp
   140001614:	5b                   	pop    %rbx
   140001615:	5e                   	pop    %rsi
   140001616:	e9 15 0a 00 00       	jmp    140002030 <__mingw_TLScallback>
   14000161b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140001620 <__tlregdtor>:
   140001620:	31 c0                	xor    %eax,%eax
   140001622:	c3                   	ret
   140001623:	90                   	nop
   140001624:	90                   	nop
   140001625:	90                   	nop
   140001626:	90                   	nop
   140001627:	90                   	nop
   140001628:	90                   	nop
   140001629:	90                   	nop
   14000162a:	90                   	nop
   14000162b:	90                   	nop
   14000162c:	90                   	nop
   14000162d:	90                   	nop
   14000162e:	90                   	nop
   14000162f:	90                   	nop

0000000140001630 <_matherr>:
   140001630:	56                   	push   %rsi
   140001631:	53                   	push   %rbx
   140001632:	48 83 ec 78          	sub    $0x78,%rsp
   140001636:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000163b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001640:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001646:	83 39 06             	cmpl   $0x6,(%rcx)
   140001649:	0f 87 cd 00 00 00    	ja     14000171c <_matherr+0xec>
   14000164f:	8b 01                	mov    (%rcx),%eax
   140001651:	48 8d 15 4c 2b 00 00 	lea    0x2b4c(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   140001658:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000165c:	48 01 d0             	add    %rdx,%rax
   14000165f:	ff e0                	jmp    *%rax
   140001661:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001668:	48 8d 1d 30 2a 00 00 	lea    0x2a30(%rip),%rbx        # 14000409f <.rdata+0x1f>
   14000166f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001675:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000167a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000167f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001683:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001688:	e8 a3 0f 00 00       	call   140002630 <__acrt_iob_func>
   14000168d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001694:	49 89 d8             	mov    %rbx,%r8
   140001697:	48 8d 15 da 2a 00 00 	lea    0x2ada(%rip),%rdx        # 140004178 <.rdata+0xf8>
   14000169e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400016a4:	49 89 f1             	mov    %rsi,%r9
   1400016a7:	48 89 c1             	mov    %rax,%rcx
   1400016aa:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400016b0:	e8 fb 0f 00 00       	call   1400026b0 <fprintf>
   1400016b5:	90                   	nop
   1400016b6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   1400016bb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400016c0:	31 c0                	xor    %eax,%eax
   1400016c2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400016c8:	48 83 c4 78          	add    $0x78,%rsp
   1400016cc:	5b                   	pop    %rbx
   1400016cd:	5e                   	pop    %rsi
   1400016ce:	c3                   	ret
   1400016cf:	90                   	nop
   1400016d0:	48 8d 1d a9 29 00 00 	lea    0x29a9(%rip),%rbx        # 140004080 <.rdata>
   1400016d7:	eb 96                	jmp    14000166f <_matherr+0x3f>
   1400016d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400016e0:	48 8d 1d f9 29 00 00 	lea    0x29f9(%rip),%rbx        # 1400040e0 <.rdata+0x60>
   1400016e7:	eb 86                	jmp    14000166f <_matherr+0x3f>
   1400016e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400016f0:	48 8d 1d c9 29 00 00 	lea    0x29c9(%rip),%rbx        # 1400040c0 <.rdata+0x40>
   1400016f7:	e9 73 ff ff ff       	jmp    14000166f <_matherr+0x3f>
   1400016fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001700:	48 8d 1d 29 2a 00 00 	lea    0x2a29(%rip),%rbx        # 140004130 <.rdata+0xb0>
   140001707:	e9 63 ff ff ff       	jmp    14000166f <_matherr+0x3f>
   14000170c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001710:	48 8d 1d f1 29 00 00 	lea    0x29f1(%rip),%rbx        # 140004108 <.rdata+0x88>
   140001717:	e9 53 ff ff ff       	jmp    14000166f <_matherr+0x3f>
   14000171c:	48 8d 1d 43 2a 00 00 	lea    0x2a43(%rip),%rbx        # 140004166 <.rdata+0xe6>
   140001723:	e9 47 ff ff ff       	jmp    14000166f <_matherr+0x3f>
   140001728:	90                   	nop
   140001729:	90                   	nop
   14000172a:	90                   	nop
   14000172b:	90                   	nop
   14000172c:	90                   	nop
   14000172d:	90                   	nop
   14000172e:	90                   	nop
   14000172f:	90                   	nop

0000000140001730 <__report_error>:
   140001730:	56                   	push   %rsi
   140001731:	53                   	push   %rbx
   140001732:	48 83 ec 38          	sub    $0x38,%rsp
   140001736:	48 89 cb             	mov    %rcx,%rbx
   140001739:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000173e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001743:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   140001748:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   14000174d:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001752:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001757:	e8 d4 0e 00 00       	call   140002630 <__acrt_iob_func>
   14000175c:	48 8d 15 5d 2a 00 00 	lea    0x2a5d(%rip),%rdx        # 1400041c0 <.rdata>
   140001763:	48 89 c1             	mov    %rax,%rcx
   140001766:	e8 45 0f 00 00       	call   1400026b0 <fprintf>
   14000176b:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   140001770:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001775:	e8 b6 0e 00 00       	call   140002630 <__acrt_iob_func>
   14000177a:	48 89 da             	mov    %rbx,%rdx
   14000177d:	49 89 f0             	mov    %rsi,%r8
   140001780:	48 89 c1             	mov    %rax,%rcx
   140001783:	e8 68 0f 00 00       	call   1400026f0 <vfprintf>
   140001788:	e8 03 0f 00 00       	call   140002690 <abort>
   14000178d:	90                   	nop
   14000178e:	66 90                	xchg   %ax,%ax

0000000140001790 <mark_section_writable>:
   140001790:	57                   	push   %rdi
   140001791:	56                   	push   %rsi
   140001792:	53                   	push   %rbx
   140001793:	48 83 ec 50          	sub    $0x50,%rsp
   140001797:	48 63 35 06 59 00 00 	movslq 0x5906(%rip),%rsi        # 1400070a4 <maxSections>
   14000179e:	48 89 cb             	mov    %rcx,%rbx
   1400017a1:	85 f6                	test   %esi,%esi
   1400017a3:	0f 8e 17 01 00 00    	jle    1400018c0 <mark_section_writable+0x130>
   1400017a9:	48 8b 05 f8 58 00 00 	mov    0x58f8(%rip),%rax        # 1400070a8 <the_secs>
   1400017b0:	45 31 c9             	xor    %r9d,%r9d
   1400017b3:	48 83 c0 18          	add    $0x18,%rax
   1400017b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400017be:	00 00 
   1400017c0:	4c 8b 00             	mov    (%rax),%r8
   1400017c3:	4c 39 c3             	cmp    %r8,%rbx
   1400017c6:	72 13                	jb     1400017db <mark_section_writable+0x4b>
   1400017c8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400017cc:	8b 52 08             	mov    0x8(%rdx),%edx
   1400017cf:	49 01 d0             	add    %rdx,%r8
   1400017d2:	4c 39 c3             	cmp    %r8,%rbx
   1400017d5:	0f 82 8a 00 00 00    	jb     140001865 <mark_section_writable+0xd5>
   1400017db:	41 83 c1 01          	add    $0x1,%r9d
   1400017df:	48 83 c0 28          	add    $0x28,%rax
   1400017e3:	41 39 f1             	cmp    %esi,%r9d
   1400017e6:	75 d8                	jne    1400017c0 <mark_section_writable+0x30>
   1400017e8:	48 89 d9             	mov    %rbx,%rcx
   1400017eb:	e8 80 0a 00 00       	call   140002270 <__mingw_GetSectionForAddress>
   1400017f0:	48 89 c7             	mov    %rax,%rdi
   1400017f3:	48 85 c0             	test   %rax,%rax
   1400017f6:	0f 84 e6 00 00 00    	je     1400018e2 <mark_section_writable+0x152>
   1400017fc:	48 8b 05 a5 58 00 00 	mov    0x58a5(%rip),%rax        # 1400070a8 <the_secs>
   140001803:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001807:	48 c1 e3 03          	shl    $0x3,%rbx
   14000180b:	48 01 d8             	add    %rbx,%rax
   14000180e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001812:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001818:	e8 93 0b 00 00       	call   1400023b0 <_GetPEImageBase>
   14000181d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140001820:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001826:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000182a:	48 8b 05 77 58 00 00 	mov    0x5877(%rip),%rax        # 1400070a8 <the_secs>
   140001831:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001836:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000183b:	ff 15 67 69 00 00    	call   *0x6967(%rip)        # 1400081a8 <__imp_VirtualQuery>
   140001841:	48 85 c0             	test   %rax,%rax
   140001844:	0f 84 7d 00 00 00    	je     1400018c7 <mark_section_writable+0x137>
   14000184a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000184e:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001851:	83 e2 fb             	and    $0xfffffffb,%edx
   140001854:	74 08                	je     14000185e <mark_section_writable+0xce>
   140001856:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001859:	83 e2 bf             	and    $0xffffffbf,%edx
   14000185c:	75 12                	jne    140001870 <mark_section_writable+0xe0>
   14000185e:	83 05 3f 58 00 00 01 	addl   $0x1,0x583f(%rip)        # 1400070a4 <maxSections>
   140001865:	48 83 c4 50          	add    $0x50,%rsp
   140001869:	5b                   	pop    %rbx
   14000186a:	5e                   	pop    %rsi
   14000186b:	5f                   	pop    %rdi
   14000186c:	c3                   	ret
   14000186d:	0f 1f 00             	nopl   (%rax)
   140001870:	83 f8 02             	cmp    $0x2,%eax
   140001873:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001878:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000187d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140001883:	b8 04 00 00 00       	mov    $0x4,%eax
   140001888:	44 0f 44 c0          	cmove  %eax,%r8d
   14000188c:	48 03 1d 15 58 00 00 	add    0x5815(%rip),%rbx        # 1400070a8 <the_secs>
   140001893:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001897:	49 89 d9             	mov    %rbx,%r9
   14000189a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000189e:	ff 15 fc 68 00 00    	call   *0x68fc(%rip)        # 1400081a0 <__imp_VirtualProtect>
   1400018a4:	85 c0                	test   %eax,%eax
   1400018a6:	75 b6                	jne    14000185e <mark_section_writable+0xce>
   1400018a8:	ff 15 c2 68 00 00    	call   *0x68c2(%rip)        # 140008170 <__imp_GetLastError>
   1400018ae:	48 8d 0d 83 29 00 00 	lea    0x2983(%rip),%rcx        # 140004238 <.rdata+0x78>
   1400018b5:	89 c2                	mov    %eax,%edx
   1400018b7:	e8 74 fe ff ff       	call   140001730 <__report_error>
   1400018bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400018c0:	31 f6                	xor    %esi,%esi
   1400018c2:	e9 21 ff ff ff       	jmp    1400017e8 <mark_section_writable+0x58>
   1400018c7:	48 8b 05 da 57 00 00 	mov    0x57da(%rip),%rax        # 1400070a8 <the_secs>
   1400018ce:	8b 57 08             	mov    0x8(%rdi),%edx
   1400018d1:	48 8d 0d 28 29 00 00 	lea    0x2928(%rip),%rcx        # 140004200 <.rdata+0x40>
   1400018d8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400018dd:	e8 4e fe ff ff       	call   140001730 <__report_error>
   1400018e2:	48 89 da             	mov    %rbx,%rdx
   1400018e5:	48 8d 0d f4 28 00 00 	lea    0x28f4(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   1400018ec:	e8 3f fe ff ff       	call   140001730 <__report_error>
   1400018f1:	90                   	nop
   1400018f2:	0f 1f 00             	nopl   (%rax)
   1400018f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400018fc:	00 00 00 00 

0000000140001900 <_pei386_runtime_relocator>:
   140001900:	55                   	push   %rbp
   140001901:	41 57                	push   %r15
   140001903:	41 56                	push   %r14
   140001905:	41 55                	push   %r13
   140001907:	41 54                	push   %r12
   140001909:	57                   	push   %rdi
   14000190a:	56                   	push   %rsi
   14000190b:	53                   	push   %rbx
   14000190c:	48 83 ec 48          	sub    $0x48,%rsp
   140001910:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001915:	8b 35 85 57 00 00    	mov    0x5785(%rip),%esi        # 1400070a0 <was_init.0>
   14000191b:	85 f6                	test   %esi,%esi
   14000191d:	74 11                	je     140001930 <_pei386_runtime_relocator+0x30>
   14000191f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001923:	5b                   	pop    %rbx
   140001924:	5e                   	pop    %rsi
   140001925:	5f                   	pop    %rdi
   140001926:	41 5c                	pop    %r12
   140001928:	41 5d                	pop    %r13
   14000192a:	41 5e                	pop    %r14
   14000192c:	41 5f                	pop    %r15
   14000192e:	5d                   	pop    %rbp
   14000192f:	c3                   	ret
   140001930:	c7 05 66 57 00 00 01 	movl   $0x1,0x5766(%rip)        # 1400070a0 <was_init.0>
   140001937:	00 00 00 
   14000193a:	e8 b1 09 00 00       	call   1400022f0 <__mingw_GetSectionCount>
   14000193f:	48 98                	cltq
   140001941:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001945:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   14000194c:	00 
   14000194d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001951:	e8 ea 0b 00 00       	call   140002540 <___chkstk_ms>
   140001956:	48 8b 3d 33 2a 00 00 	mov    0x2a33(%rip),%rdi        # 140004390 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   14000195d:	48 8b 1d 3c 2a 00 00 	mov    0x2a3c(%rip),%rbx        # 1400043a0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001964:	48 29 c4             	sub    %rax,%rsp
   140001967:	c7 05 33 57 00 00 00 	movl   $0x0,0x5733(%rip)        # 1400070a4 <maxSections>
   14000196e:	00 00 00 
   140001971:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001976:	48 89 05 2b 57 00 00 	mov    %rax,0x572b(%rip)        # 1400070a8 <the_secs>
   14000197d:	48 89 f8             	mov    %rdi,%rax
   140001980:	48 29 d8             	sub    %rbx,%rax
   140001983:	48 83 f8 07          	cmp    $0x7,%rax
   140001987:	7e 96                	jle    14000191f <_pei386_runtime_relocator+0x1f>
   140001989:	48 83 f8 0b          	cmp    $0xb,%rax
   14000198d:	0f 8f 85 01 00 00    	jg     140001b18 <_pei386_runtime_relocator+0x218>
   140001993:	8b 13                	mov    (%rbx),%edx
   140001995:	85 d2                	test   %edx,%edx
   140001997:	0f 85 90 01 00 00    	jne    140001b2d <_pei386_runtime_relocator+0x22d>
   14000199d:	8b 43 04             	mov    0x4(%rbx),%eax
   1400019a0:	85 c0                	test   %eax,%eax
   1400019a2:	0f 85 85 01 00 00    	jne    140001b2d <_pei386_runtime_relocator+0x22d>
   1400019a8:	8b 53 08             	mov    0x8(%rbx),%edx
   1400019ab:	83 fa 01             	cmp    $0x1,%edx
   1400019ae:	0f 85 cf 02 00 00    	jne    140001c83 <_pei386_runtime_relocator+0x383>
   1400019b4:	48 83 c3 0c          	add    $0xc,%rbx
   1400019b8:	4c 8b 35 c1 29 00 00 	mov    0x29c1(%rip),%r14        # 140004380 <.refptr.__ImageBase>
   1400019bf:	4c 8d 65 f8          	lea    -0x8(%rbp),%r12
   1400019c3:	48 39 fb             	cmp    %rdi,%rbx
   1400019c6:	72 7c                	jb     140001a44 <_pei386_runtime_relocator+0x144>
   1400019c8:	e9 52 ff ff ff       	jmp    14000191f <_pei386_runtime_relocator+0x1f>
   1400019cd:	0f 1f 00             	nopl   (%rax)
   1400019d0:	83 fa 08             	cmp    $0x8,%edx
   1400019d3:	0f 84 1f 02 00 00    	je     140001bf8 <_pei386_runtime_relocator+0x2f8>
   1400019d9:	83 fa 10             	cmp    $0x10,%edx
   1400019dc:	0f 85 79 02 00 00    	jne    140001c5b <_pei386_runtime_relocator+0x35b>
   1400019e2:	41 0f b7 07          	movzwl (%r15),%eax
   1400019e6:	66 85 c0             	test   %ax,%ax
   1400019e9:	79 06                	jns    1400019f1 <_pei386_runtime_relocator+0xf1>
   1400019eb:	48 0d 00 00 ff ff    	or     $0xffffffffffff0000,%rax
   1400019f1:	4c 29 c0             	sub    %r8,%rax
   1400019f4:	4c 01 c8             	add    %r9,%rax
   1400019f7:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   1400019fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001a01:	75 18                	jne    140001a1b <_pei386_runtime_relocator+0x11b>
   140001a03:	48 3d ff ff 00 00    	cmp    $0xffff,%rax
   140001a09:	0f 8f 60 02 00 00    	jg     140001c6f <_pei386_runtime_relocator+0x36f>
   140001a0f:	48 3d 00 80 ff ff    	cmp    $0xffffffffffff8000,%rax
   140001a15:	0f 8c 54 02 00 00    	jl     140001c6f <_pei386_runtime_relocator+0x36f>
   140001a1b:	4c 89 f9             	mov    %r15,%rcx
   140001a1e:	4d 89 e5             	mov    %r12,%r13
   140001a21:	e8 6a fd ff ff       	call   140001790 <mark_section_writable>
   140001a26:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140001a2c:	4c 89 e2             	mov    %r12,%rdx
   140001a2f:	4c 89 f9             	mov    %r15,%rcx
   140001a32:	e8 91 0c 00 00       	call   1400026c8 <memcpy>
   140001a37:	48 83 c3 0c          	add    $0xc,%rbx
   140001a3b:	48 39 fb             	cmp    %rdi,%rbx
   140001a3e:	0f 83 7c 00 00 00    	jae    140001ac0 <_pei386_runtime_relocator+0x1c0>
   140001a44:	44 8b 03             	mov    (%rbx),%r8d
   140001a47:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140001a4a:	44 8b 7b 04          	mov    0x4(%rbx),%r15d
   140001a4e:	4d 01 f0             	add    %r14,%r8
   140001a51:	0f b6 d1             	movzbl %cl,%edx
   140001a54:	4d 8b 08             	mov    (%r8),%r9
   140001a57:	4d 01 f7             	add    %r14,%r15
   140001a5a:	83 fa 20             	cmp    $0x20,%edx
   140001a5d:	0f 84 2d 01 00 00    	je     140001b90 <_pei386_runtime_relocator+0x290>
   140001a63:	0f 86 67 ff ff ff    	jbe    1400019d0 <_pei386_runtime_relocator+0xd0>
   140001a69:	83 fa 40             	cmp    $0x40,%edx
   140001a6c:	0f 85 e9 01 00 00    	jne    140001c5b <_pei386_runtime_relocator+0x35b>
   140001a72:	49 8b 07             	mov    (%r15),%rax
   140001a75:	4c 29 c0             	sub    %r8,%rax
   140001a78:	4c 01 c8             	add    %r9,%rax
   140001a7b:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001a81:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001a85:	75 09                	jne    140001a90 <_pei386_runtime_relocator+0x190>
   140001a87:	48 85 c0             	test   %rax,%rax
   140001a8a:	0f 89 df 01 00 00    	jns    140001c6f <_pei386_runtime_relocator+0x36f>
   140001a90:	4c 89 f9             	mov    %r15,%rcx
   140001a93:	48 83 c3 0c          	add    $0xc,%rbx
   140001a97:	4d 89 e5             	mov    %r12,%r13
   140001a9a:	e8 f1 fc ff ff       	call   140001790 <mark_section_writable>
   140001a9f:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140001aa5:	4c 89 e2             	mov    %r12,%rdx
   140001aa8:	4c 89 f9             	mov    %r15,%rcx
   140001aab:	e8 18 0c 00 00       	call   1400026c8 <memcpy>
   140001ab0:	48 39 fb             	cmp    %rdi,%rbx
   140001ab3:	72 8f                	jb     140001a44 <_pei386_runtime_relocator+0x144>
   140001ab5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001abc:	00 00 00 00 
   140001ac0:	8b 05 de 55 00 00    	mov    0x55de(%rip),%eax        # 1400070a4 <maxSections>
   140001ac6:	85 c0                	test   %eax,%eax
   140001ac8:	0f 8e 51 fe ff ff    	jle    14000191f <_pei386_runtime_relocator+0x1f>
   140001ace:	48 8b 3d cb 66 00 00 	mov    0x66cb(%rip),%rdi        # 1400081a0 <__imp_VirtualProtect>
   140001ad5:	31 db                	xor    %ebx,%ebx
   140001ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001ade:	00 00 
   140001ae0:	48 8b 05 c1 55 00 00 	mov    0x55c1(%rip),%rax        # 1400070a8 <the_secs>
   140001ae7:	48 01 d8             	add    %rbx,%rax
   140001aea:	44 8b 00             	mov    (%rax),%r8d
   140001aed:	45 85 c0             	test   %r8d,%r8d
   140001af0:	74 0d                	je     140001aff <_pei386_runtime_relocator+0x1ff>
   140001af2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001af6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001afa:	4d 89 e9             	mov    %r13,%r9
   140001afd:	ff d7                	call   *%rdi
   140001aff:	83 c6 01             	add    $0x1,%esi
   140001b02:	48 83 c3 28          	add    $0x28,%rbx
   140001b06:	3b 35 98 55 00 00    	cmp    0x5598(%rip),%esi        # 1400070a4 <maxSections>
   140001b0c:	7c d2                	jl     140001ae0 <_pei386_runtime_relocator+0x1e0>
   140001b0e:	e9 0c fe ff ff       	jmp    14000191f <_pei386_runtime_relocator+0x1f>
   140001b13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001b18:	44 8b 0b             	mov    (%rbx),%r9d
   140001b1b:	45 85 c9             	test   %r9d,%r9d
   140001b1e:	75 0d                	jne    140001b2d <_pei386_runtime_relocator+0x22d>
   140001b20:	44 8b 43 04          	mov    0x4(%rbx),%r8d
   140001b24:	45 85 c0             	test   %r8d,%r8d
   140001b27:	0f 84 1a 01 00 00    	je     140001c47 <_pei386_runtime_relocator+0x347>
   140001b2d:	48 39 fb             	cmp    %rdi,%rbx
   140001b30:	0f 83 e9 fd ff ff    	jae    14000191f <_pei386_runtime_relocator+0x1f>
   140001b36:	4c 8b 35 43 28 00 00 	mov    0x2843(%rip),%r14        # 140004380 <.refptr.__ImageBase>
   140001b3d:	4c 8d 6d f8          	lea    -0x8(%rbp),%r13
   140001b41:	0f 1f 40 00          	nopl   0x0(%rax)
   140001b45:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001b4c:	00 00 00 00 
   140001b50:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   140001b54:	8b 03                	mov    (%rbx),%eax
   140001b56:	48 83 c3 08          	add    $0x8,%rbx
   140001b5a:	43 03 04 26          	add    (%r14,%r12,1),%eax
   140001b5e:	4b 8d 0c 34          	lea    (%r12,%r14,1),%rcx
   140001b62:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140001b65:	e8 26 fc ff ff       	call   140001790 <mark_section_writable>
   140001b6a:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001b70:	4c 89 ea             	mov    %r13,%rdx
   140001b73:	4b 8d 0c 34          	lea    (%r12,%r14,1),%rcx
   140001b77:	e8 4c 0b 00 00       	call   1400026c8 <memcpy>
   140001b7c:	48 39 fb             	cmp    %rdi,%rbx
   140001b7f:	72 cf                	jb     140001b50 <_pei386_runtime_relocator+0x250>
   140001b81:	e9 3a ff ff ff       	jmp    140001ac0 <_pei386_runtime_relocator+0x1c0>
   140001b86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001b8d:	00 00 00 
   140001b90:	41 8b 07             	mov    (%r15),%eax
   140001b93:	85 c0                	test   %eax,%eax
   140001b95:	79 0d                	jns    140001ba4 <_pei386_runtime_relocator+0x2a4>
   140001b97:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140001b9e:	ff ff ff 
   140001ba1:	4c 09 d8             	or     %r11,%rax
   140001ba4:	4c 29 c0             	sub    %r8,%rax
   140001ba7:	4c 01 c8             	add    %r9,%rax
   140001baa:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001bb0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001bb4:	75 1a                	jne    140001bd0 <_pei386_runtime_relocator+0x2d0>
   140001bb6:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   140001bbb:	48 39 c8             	cmp    %rcx,%rax
   140001bbe:	0f 8f ab 00 00 00    	jg     140001c6f <_pei386_runtime_relocator+0x36f>
   140001bc4:	48 3d 00 00 00 80    	cmp    $0xffffffff80000000,%rax
   140001bca:	0f 8c 9f 00 00 00    	jl     140001c6f <_pei386_runtime_relocator+0x36f>
   140001bd0:	4c 89 f9             	mov    %r15,%rcx
   140001bd3:	4d 89 e5             	mov    %r12,%r13
   140001bd6:	e8 b5 fb ff ff       	call   140001790 <mark_section_writable>
   140001bdb:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001be1:	4c 89 e2             	mov    %r12,%rdx
   140001be4:	4c 89 f9             	mov    %r15,%rcx
   140001be7:	e8 dc 0a 00 00       	call   1400026c8 <memcpy>
   140001bec:	e9 46 fe ff ff       	jmp    140001a37 <_pei386_runtime_relocator+0x137>
   140001bf1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001bf8:	41 0f b6 07          	movzbl (%r15),%eax
   140001bfc:	84 c0                	test   %al,%al
   140001bfe:	79 06                	jns    140001c06 <_pei386_runtime_relocator+0x306>
   140001c00:	48 0d 00 ff ff ff    	or     $0xffffffffffffff00,%rax
   140001c06:	4c 29 c0             	sub    %r8,%rax
   140001c09:	4c 01 c8             	add    %r9,%rax
   140001c0c:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001c12:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001c16:	75 0e                	jne    140001c26 <_pei386_runtime_relocator+0x326>
   140001c18:	48 3d ff 00 00 00    	cmp    $0xff,%rax
   140001c1e:	7f 4f                	jg     140001c6f <_pei386_runtime_relocator+0x36f>
   140001c20:	48 83 f8 80          	cmp    $0xffffffffffffff80,%rax
   140001c24:	7c 49                	jl     140001c6f <_pei386_runtime_relocator+0x36f>
   140001c26:	4c 89 f9             	mov    %r15,%rcx
   140001c29:	4d 89 e5             	mov    %r12,%r13
   140001c2c:	e8 5f fb ff ff       	call   140001790 <mark_section_writable>
   140001c31:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140001c37:	4c 89 e2             	mov    %r12,%rdx
   140001c3a:	4c 89 f9             	mov    %r15,%rcx
   140001c3d:	e8 86 0a 00 00       	call   1400026c8 <memcpy>
   140001c42:	e9 f0 fd ff ff       	jmp    140001a37 <_pei386_runtime_relocator+0x137>
   140001c47:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140001c4a:	85 c9                	test   %ecx,%ecx
   140001c4c:	0f 85 56 fd ff ff    	jne    1400019a8 <_pei386_runtime_relocator+0xa8>
   140001c52:	48 83 c3 0c          	add    $0xc,%rbx
   140001c56:	e9 38 fd ff ff       	jmp    140001993 <_pei386_runtime_relocator+0x93>
   140001c5b:	48 8d 0d 36 26 00 00 	lea    0x2636(%rip),%rcx        # 140004298 <.rdata+0xd8>
   140001c62:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140001c69:	00 
   140001c6a:	e8 c1 fa ff ff       	call   140001730 <__report_error>
   140001c6f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001c74:	4d 89 f8             	mov    %r15,%r8
   140001c77:	48 8d 0d 4a 26 00 00 	lea    0x264a(%rip),%rcx        # 1400042c8 <.rdata+0x108>
   140001c7e:	e8 ad fa ff ff       	call   140001730 <__report_error>
   140001c83:	48 8d 0d d6 25 00 00 	lea    0x25d6(%rip),%rcx        # 140004260 <.rdata+0xa0>
   140001c8a:	e8 a1 fa ff ff       	call   140001730 <__report_error>
   140001c8f:	90                   	nop

0000000140001c90 <__mingw_raise_matherr>:
   140001c90:	48 83 ec 58          	sub    $0x58,%rsp
   140001c94:	48 8b 05 15 54 00 00 	mov    0x5415(%rip),%rax        # 1400070b0 <stUserMathErr>
   140001c9b:	48 85 c0             	test   %rax,%rax
   140001c9e:	74 29                	je     140001cc9 <__mingw_raise_matherr+0x39>
   140001ca0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001ca7:	00 00 
   140001ca9:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001cad:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001cb1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001cb6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001cbb:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140001cc0:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001cc6:	ff d0                	call   *%rax
   140001cc8:	90                   	nop
   140001cc9:	48 83 c4 58          	add    $0x58,%rsp
   140001ccd:	c3                   	ret
   140001cce:	66 90                	xchg   %ax,%ax

0000000140001cd0 <__mingw_setusermatherr>:
   140001cd0:	48 89 0d d9 53 00 00 	mov    %rcx,0x53d9(%rip)        # 1400070b0 <stUserMathErr>
   140001cd7:	e9 94 09 00 00       	jmp    140002670 <__setusermatherr>
   140001cdc:	90                   	nop
   140001cdd:	90                   	nop
   140001cde:	90                   	nop
   140001cdf:	90                   	nop

0000000140001ce0 <_gnu_exception_handler>:
   140001ce0:	53                   	push   %rbx
   140001ce1:	48 83 ec 20          	sub    $0x20,%rsp
   140001ce5:	48 8b 11             	mov    (%rcx),%rdx
   140001ce8:	8b 02                	mov    (%rdx),%eax
   140001cea:	48 89 cb             	mov    %rcx,%rbx
   140001ced:	89 c1                	mov    %eax,%ecx
   140001cef:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001cf5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001cfb:	0f 84 8f 00 00 00    	je     140001d90 <_gnu_exception_handler+0xb0>
   140001d01:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001d06:	77 47                	ja     140001d4f <_gnu_exception_handler+0x6f>
   140001d08:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001d0d:	76 61                	jbe    140001d70 <_gnu_exception_handler+0x90>
   140001d0f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001d14:	83 f8 09             	cmp    $0x9,%eax
   140001d17:	77 6b                	ja     140001d84 <_gnu_exception_handler+0xa4>
   140001d19:	48 8d 15 00 26 00 00 	lea    0x2600(%rip),%rdx        # 140004320 <.rdata>
   140001d20:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001d24:	48 01 d0             	add    %rdx,%rax
   140001d27:	ff e0                	jmp    *%rax
   140001d29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001d30:	31 d2                	xor    %edx,%edx
   140001d32:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001d37:	e8 9c 09 00 00       	call   1400026d8 <signal>
   140001d3c:	48 83 f8 01          	cmp    $0x1,%rax
   140001d40:	0f 84 3e 01 00 00    	je     140001e84 <_gnu_exception_handler+0x1a4>
   140001d46:	48 85 c0             	test   %rax,%rax
   140001d49:	0f 85 01 01 00 00    	jne    140001e50 <_gnu_exception_handler+0x170>
   140001d4f:	48 8b 05 7a 53 00 00 	mov    0x537a(%rip),%rax        # 1400070d0 <__mingw_oldexcpt_handler>
   140001d56:	48 85 c0             	test   %rax,%rax
   140001d59:	74 45                	je     140001da0 <_gnu_exception_handler+0xc0>
   140001d5b:	48 89 d9             	mov    %rbx,%rcx
   140001d5e:	48 83 c4 20          	add    $0x20,%rsp
   140001d62:	5b                   	pop    %rbx
   140001d63:	48 ff e0             	rex.W jmp *%rax
   140001d66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001d6d:	00 00 00 
   140001d70:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001d75:	0f 84 a5 00 00 00    	je     140001e20 <_gnu_exception_handler+0x140>
   140001d7b:	77 33                	ja     140001db0 <_gnu_exception_handler+0xd0>
   140001d7d:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001d82:	75 cb                	jne    140001d4f <_gnu_exception_handler+0x6f>
   140001d84:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001d89:	48 83 c4 20          	add    $0x20,%rsp
   140001d8d:	5b                   	pop    %rbx
   140001d8e:	c3                   	ret
   140001d8f:	90                   	nop
   140001d90:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001d94:	0f 85 67 ff ff ff    	jne    140001d01 <_gnu_exception_handler+0x21>
   140001d9a:	eb e8                	jmp    140001d84 <_gnu_exception_handler+0xa4>
   140001d9c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001da0:	31 c0                	xor    %eax,%eax
   140001da2:	48 83 c4 20          	add    $0x20,%rsp
   140001da6:	5b                   	pop    %rbx
   140001da7:	c3                   	ret
   140001da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001daf:	00 
   140001db0:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001db5:	74 cd                	je     140001d84 <_gnu_exception_handler+0xa4>
   140001db7:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001dbc:	75 91                	jne    140001d4f <_gnu_exception_handler+0x6f>
   140001dbe:	31 d2                	xor    %edx,%edx
   140001dc0:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001dc5:	e8 0e 09 00 00       	call   1400026d8 <signal>
   140001dca:	48 83 f8 01          	cmp    $0x1,%rax
   140001dce:	0f 84 9c 00 00 00    	je     140001e70 <_gnu_exception_handler+0x190>
   140001dd4:	48 85 c0             	test   %rax,%rax
   140001dd7:	0f 84 72 ff ff ff    	je     140001d4f <_gnu_exception_handler+0x6f>
   140001ddd:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001de2:	ff d0                	call   *%rax
   140001de4:	eb 9e                	jmp    140001d84 <_gnu_exception_handler+0xa4>
   140001de6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001ded:	00 00 00 
   140001df0:	31 d2                	xor    %edx,%edx
   140001df2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001df7:	e8 dc 08 00 00       	call   1400026d8 <signal>
   140001dfc:	48 83 f8 01          	cmp    $0x1,%rax
   140001e00:	0f 85 40 ff ff ff    	jne    140001d46 <_gnu_exception_handler+0x66>
   140001e06:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e0b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e10:	e8 c3 08 00 00       	call   1400026d8 <signal>
   140001e15:	e9 6a ff ff ff       	jmp    140001d84 <_gnu_exception_handler+0xa4>
   140001e1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001e20:	31 d2                	xor    %edx,%edx
   140001e22:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e27:	e8 ac 08 00 00       	call   1400026d8 <signal>
   140001e2c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e30:	74 2a                	je     140001e5c <_gnu_exception_handler+0x17c>
   140001e32:	48 85 c0             	test   %rax,%rax
   140001e35:	0f 84 14 ff ff ff    	je     140001d4f <_gnu_exception_handler+0x6f>
   140001e3b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e40:	ff d0                	call   *%rax
   140001e42:	e9 3d ff ff ff       	jmp    140001d84 <_gnu_exception_handler+0xa4>
   140001e47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001e4e:	00 00 
   140001e50:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e55:	ff d0                	call   *%rax
   140001e57:	e9 28 ff ff ff       	jmp    140001d84 <_gnu_exception_handler+0xa4>
   140001e5c:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e61:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e66:	e8 6d 08 00 00       	call   1400026d8 <signal>
   140001e6b:	e9 14 ff ff ff       	jmp    140001d84 <_gnu_exception_handler+0xa4>
   140001e70:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e75:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e7a:	e8 59 08 00 00       	call   1400026d8 <signal>
   140001e7f:	e9 00 ff ff ff       	jmp    140001d84 <_gnu_exception_handler+0xa4>
   140001e84:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e89:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e8e:	e8 45 08 00 00       	call   1400026d8 <signal>
   140001e93:	e8 a8 02 00 00       	call   140002140 <_fpreset>
   140001e98:	e9 e7 fe ff ff       	jmp    140001d84 <_gnu_exception_handler+0xa4>
   140001e9d:	90                   	nop
   140001e9e:	90                   	nop
   140001e9f:	90                   	nop

0000000140001ea0 <__mingwthr_run_key_dtors.part.0>:
   140001ea0:	55                   	push   %rbp
   140001ea1:	57                   	push   %rdi
   140001ea2:	56                   	push   %rsi
   140001ea3:	53                   	push   %rbx
   140001ea4:	48 83 ec 28          	sub    $0x28,%rsp
   140001ea8:	48 8d 0d 51 52 00 00 	lea    0x5251(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140001eaf:	ff 15 b3 62 00 00    	call   *0x62b3(%rip)        # 140008168 <__imp_EnterCriticalSection>
   140001eb5:	48 8b 1d 24 52 00 00 	mov    0x5224(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001ebc:	48 85 db             	test   %rbx,%rbx
   140001ebf:	74 33                	je     140001ef4 <__mingwthr_run_key_dtors.part.0+0x54>
   140001ec1:	48 8b 2d d0 62 00 00 	mov    0x62d0(%rip),%rbp        # 140008198 <__imp_TlsGetValue>
   140001ec8:	48 8b 3d a1 62 00 00 	mov    0x62a1(%rip),%rdi        # 140008170 <__imp_GetLastError>
   140001ecf:	90                   	nop
   140001ed0:	8b 0b                	mov    (%rbx),%ecx
   140001ed2:	ff d5                	call   *%rbp
   140001ed4:	48 89 c6             	mov    %rax,%rsi
   140001ed7:	ff d7                	call   *%rdi
   140001ed9:	48 85 f6             	test   %rsi,%rsi
   140001edc:	74 0d                	je     140001eeb <__mingwthr_run_key_dtors.part.0+0x4b>
   140001ede:	85 c0                	test   %eax,%eax
   140001ee0:	75 09                	jne    140001eeb <__mingwthr_run_key_dtors.part.0+0x4b>
   140001ee2:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001ee6:	48 89 f1             	mov    %rsi,%rcx
   140001ee9:	ff d0                	call   *%rax
   140001eeb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001eef:	48 85 db             	test   %rbx,%rbx
   140001ef2:	75 dc                	jne    140001ed0 <__mingwthr_run_key_dtors.part.0+0x30>
   140001ef4:	48 8d 0d 05 52 00 00 	lea    0x5205(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140001efb:	48 83 c4 28          	add    $0x28,%rsp
   140001eff:	5b                   	pop    %rbx
   140001f00:	5e                   	pop    %rsi
   140001f01:	5f                   	pop    %rdi
   140001f02:	5d                   	pop    %rbp
   140001f03:	48 ff 25 76 62 00 00 	rex.W jmp *0x6276(%rip)        # 140008180 <__imp_LeaveCriticalSection>
   140001f0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001f10 <___w64_mingwthr_add_key_dtor>:
   140001f10:	48 83 ec 38          	sub    $0x38,%rsp
   140001f14:	8b 05 ce 51 00 00    	mov    0x51ce(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001f1a:	41 89 c9             	mov    %ecx,%r9d
   140001f1d:	85 c0                	test   %eax,%eax
   140001f1f:	75 0f                	jne    140001f30 <___w64_mingwthr_add_key_dtor+0x20>
   140001f21:	31 c0                	xor    %eax,%eax
   140001f23:	48 83 c4 38          	add    $0x38,%rsp
   140001f27:	c3                   	ret
   140001f28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001f2f:	00 
   140001f30:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
   140001f35:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001f3a:	ba 18 00 00 00       	mov    $0x18,%edx
   140001f3f:	44 89 4c 24 40       	mov    %r9d,0x40(%rsp)
   140001f44:	e8 57 07 00 00       	call   1400026a0 <calloc>
   140001f49:	48 85 c0             	test   %rax,%rax
   140001f4c:	74 49                	je     140001f97 <___w64_mingwthr_add_key_dtor+0x87>
   140001f4e:	44 8b 4c 24 40       	mov    0x40(%rsp),%r9d
   140001f53:	4c 8b 44 24 48       	mov    0x48(%rsp),%r8
   140001f58:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001f5d:	48 8d 0d 9c 51 00 00 	lea    0x519c(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140001f64:	44 89 08             	mov    %r9d,(%rax)
   140001f67:	4c 89 40 08          	mov    %r8,0x8(%rax)
   140001f6b:	ff 15 f7 61 00 00    	call   *0x61f7(%rip)        # 140008168 <__imp_EnterCriticalSection>
   140001f71:	48 8b 15 68 51 00 00 	mov    0x5168(%rip),%rdx        # 1400070e0 <key_dtor_list>
   140001f78:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140001f7d:	48 8d 0d 7c 51 00 00 	lea    0x517c(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140001f84:	48 89 50 10          	mov    %rdx,0x10(%rax)
   140001f88:	48 89 05 51 51 00 00 	mov    %rax,0x5151(%rip)        # 1400070e0 <key_dtor_list>
   140001f8f:	ff 15 eb 61 00 00    	call   *0x61eb(%rip)        # 140008180 <__imp_LeaveCriticalSection>
   140001f95:	eb 8a                	jmp    140001f21 <___w64_mingwthr_add_key_dtor+0x11>
   140001f97:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f9c:	eb 85                	jmp    140001f23 <___w64_mingwthr_add_key_dtor+0x13>
   140001f9e:	66 90                	xchg   %ax,%ax

0000000140001fa0 <___w64_mingwthr_remove_key_dtor>:
   140001fa0:	48 83 ec 28          	sub    $0x28,%rsp
   140001fa4:	8b 05 3e 51 00 00    	mov    0x513e(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001faa:	85 c0                	test   %eax,%eax
   140001fac:	75 0a                	jne    140001fb8 <___w64_mingwthr_remove_key_dtor+0x18>
   140001fae:	31 c0                	xor    %eax,%eax
   140001fb0:	48 83 c4 28          	add    $0x28,%rsp
   140001fb4:	c3                   	ret
   140001fb5:	0f 1f 00             	nopl   (%rax)
   140001fb8:	89 4c 24 30          	mov    %ecx,0x30(%rsp)
   140001fbc:	48 8d 0d 3d 51 00 00 	lea    0x513d(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140001fc3:	ff 15 9f 61 00 00    	call   *0x619f(%rip)        # 140008168 <__imp_EnterCriticalSection>
   140001fc9:	48 8b 0d 10 51 00 00 	mov    0x5110(%rip),%rcx        # 1400070e0 <key_dtor_list>
   140001fd0:	48 85 c9             	test   %rcx,%rcx
   140001fd3:	74 2e                	je     140002003 <___w64_mingwthr_remove_key_dtor+0x63>
   140001fd5:	8b 54 24 30          	mov    0x30(%rsp),%edx
   140001fd9:	45 31 c0             	xor    %r8d,%r8d
   140001fdc:	eb 0d                	jmp    140001feb <___w64_mingwthr_remove_key_dtor+0x4b>
   140001fde:	66 90                	xchg   %ax,%ax
   140001fe0:	49 89 c8             	mov    %rcx,%r8
   140001fe3:	48 85 c0             	test   %rax,%rax
   140001fe6:	74 1b                	je     140002003 <___w64_mingwthr_remove_key_dtor+0x63>
   140001fe8:	48 89 c1             	mov    %rax,%rcx
   140001feb:	8b 01                	mov    (%rcx),%eax
   140001fed:	39 d0                	cmp    %edx,%eax
   140001fef:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140001ff3:	75 eb                	jne    140001fe0 <___w64_mingwthr_remove_key_dtor+0x40>
   140001ff5:	4d 85 c0             	test   %r8,%r8
   140001ff8:	74 26                	je     140002020 <___w64_mingwthr_remove_key_dtor+0x80>
   140001ffa:	49 89 40 10          	mov    %rax,0x10(%r8)
   140001ffe:	e8 b5 06 00 00       	call   1400026b8 <free>
   140002003:	48 8d 0d f6 50 00 00 	lea    0x50f6(%rip),%rcx        # 140007100 <__mingwthr_cs>
   14000200a:	ff 15 70 61 00 00    	call   *0x6170(%rip)        # 140008180 <__imp_LeaveCriticalSection>
   140002010:	31 c0                	xor    %eax,%eax
   140002012:	48 83 c4 28          	add    $0x28,%rsp
   140002016:	c3                   	ret
   140002017:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000201e:	00 00 
   140002020:	48 89 05 b9 50 00 00 	mov    %rax,0x50b9(%rip)        # 1400070e0 <key_dtor_list>
   140002027:	eb d5                	jmp    140001ffe <___w64_mingwthr_remove_key_dtor+0x5e>
   140002029:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002030 <__mingw_TLScallback>:
   140002030:	48 83 ec 38          	sub    $0x38,%rsp
   140002034:	83 fa 02             	cmp    $0x2,%edx
   140002037:	0f 84 bb 00 00 00    	je     1400020f8 <__mingw_TLScallback+0xc8>
   14000203d:	77 29                	ja     140002068 <__mingw_TLScallback+0x38>
   14000203f:	85 d2                	test   %edx,%edx
   140002041:	74 3d                	je     140002080 <__mingw_TLScallback+0x50>
   140002043:	8b 05 9f 50 00 00    	mov    0x509f(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002049:	85 c0                	test   %eax,%eax
   14000204b:	0f 84 cf 00 00 00    	je     140002120 <__mingw_TLScallback+0xf0>
   140002051:	c7 05 8d 50 00 00 01 	movl   $0x1,0x508d(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002058:	00 00 00 
   14000205b:	b8 01 00 00 00       	mov    $0x1,%eax
   140002060:	48 83 c4 38          	add    $0x38,%rsp
   140002064:	c3                   	ret
   140002065:	0f 1f 00             	nopl   (%rax)
   140002068:	83 fa 03             	cmp    $0x3,%edx
   14000206b:	75 ee                	jne    14000205b <__mingw_TLScallback+0x2b>
   14000206d:	8b 05 75 50 00 00    	mov    0x5075(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002073:	85 c0                	test   %eax,%eax
   140002075:	74 e4                	je     14000205b <__mingw_TLScallback+0x2b>
   140002077:	e8 24 fe ff ff       	call   140001ea0 <__mingwthr_run_key_dtors.part.0>
   14000207c:	eb dd                	jmp    14000205b <__mingw_TLScallback+0x2b>
   14000207e:	66 90                	xchg   %ax,%ax
   140002080:	8b 05 62 50 00 00    	mov    0x5062(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002086:	85 c0                	test   %eax,%eax
   140002088:	0f 85 82 00 00 00    	jne    140002110 <__mingw_TLScallback+0xe0>
   14000208e:	8b 05 54 50 00 00    	mov    0x5054(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002094:	83 f8 01             	cmp    $0x1,%eax
   140002097:	75 c2                	jne    14000205b <__mingw_TLScallback+0x2b>
   140002099:	48 8b 05 40 50 00 00 	mov    0x5040(%rip),%rax        # 1400070e0 <key_dtor_list>
   1400020a0:	48 85 c0             	test   %rax,%rax
   1400020a3:	74 26                	je     1400020cb <__mingw_TLScallback+0x9b>
   1400020a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400020ac:	00 00 00 00 
   1400020b0:	48 89 c1             	mov    %rax,%rcx
   1400020b3:	48 8b 40 10          	mov    0x10(%rax),%rax
   1400020b7:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400020bc:	e8 f7 05 00 00       	call   1400026b8 <free>
   1400020c1:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400020c6:	48 85 c0             	test   %rax,%rax
   1400020c9:	75 e5                	jne    1400020b0 <__mingw_TLScallback+0x80>
   1400020cb:	48 8d 0d 2e 50 00 00 	lea    0x502e(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400020d2:	48 c7 05 03 50 00 00 	movq   $0x0,0x5003(%rip)        # 1400070e0 <key_dtor_list>
   1400020d9:	00 00 00 00 
   1400020dd:	c7 05 01 50 00 00 00 	movl   $0x0,0x5001(%rip)        # 1400070e8 <__mingwthr_cs_init>
   1400020e4:	00 00 00 
   1400020e7:	ff 15 73 60 00 00    	call   *0x6073(%rip)        # 140008160 <__IAT_start__>
   1400020ed:	e9 69 ff ff ff       	jmp    14000205b <__mingw_TLScallback+0x2b>
   1400020f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400020f8:	e8 43 00 00 00       	call   140002140 <_fpreset>
   1400020fd:	b8 01 00 00 00       	mov    $0x1,%eax
   140002102:	48 83 c4 38          	add    $0x38,%rsp
   140002106:	c3                   	ret
   140002107:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000210e:	00 00 
   140002110:	e8 8b fd ff ff       	call   140001ea0 <__mingwthr_run_key_dtors.part.0>
   140002115:	e9 74 ff ff ff       	jmp    14000208e <__mingw_TLScallback+0x5e>
   14000211a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002120:	48 8d 0d d9 4f 00 00 	lea    0x4fd9(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002127:	ff 15 4b 60 00 00    	call   *0x604b(%rip)        # 140008178 <__imp_InitializeCriticalSection>
   14000212d:	e9 1f ff ff ff       	jmp    140002051 <__mingw_TLScallback+0x21>
   140002132:	90                   	nop
   140002133:	90                   	nop
   140002134:	90                   	nop
   140002135:	90                   	nop
   140002136:	90                   	nop
   140002137:	90                   	nop
   140002138:	90                   	nop
   140002139:	90                   	nop
   14000213a:	90                   	nop
   14000213b:	90                   	nop
   14000213c:	90                   	nop
   14000213d:	90                   	nop
   14000213e:	90                   	nop
   14000213f:	90                   	nop

0000000140002140 <_fpreset>:
   140002140:	db e3                	fninit
   140002142:	c3                   	ret
   140002143:	90                   	nop
   140002144:	90                   	nop
   140002145:	90                   	nop
   140002146:	90                   	nop
   140002147:	90                   	nop
   140002148:	90                   	nop
   140002149:	90                   	nop
   14000214a:	90                   	nop
   14000214b:	90                   	nop
   14000214c:	90                   	nop
   14000214d:	90                   	nop
   14000214e:	90                   	nop
   14000214f:	90                   	nop

0000000140002150 <_ValidateImageBase>:
   140002150:	31 c0                	xor    %eax,%eax
   140002152:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002157:	75 0f                	jne    140002168 <_ValidateImageBase+0x18>
   140002159:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000215d:	48 01 d1             	add    %rdx,%rcx
   140002160:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002166:	74 08                	je     140002170 <_ValidateImageBase+0x20>
   140002168:	c3                   	ret
   140002169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002170:	31 c0                	xor    %eax,%eax
   140002172:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002178:	0f 94 c0             	sete   %al
   14000217b:	c3                   	ret
   14000217c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002180 <_FindPESection>:
   140002180:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002184:	48 01 c8             	add    %rcx,%rax
   140002187:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   14000218b:	66 85 c9             	test   %cx,%cx
   14000218e:	74 3d                	je     1400021cd <_FindPESection+0x4d>
   140002190:	44 0f b7 40 14       	movzwl 0x14(%rax),%r8d
   140002195:	83 e9 01             	sub    $0x1,%ecx
   140002198:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   14000219c:	4a 8d 44 00 18       	lea    0x18(%rax,%r8,1),%rax
   1400021a1:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400021a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400021ad:	00 00 00 
   1400021b0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400021b4:	4c 89 c1             	mov    %r8,%rcx
   1400021b7:	4c 39 c2             	cmp    %r8,%rdx
   1400021ba:	72 08                	jb     1400021c4 <_FindPESection+0x44>
   1400021bc:	03 48 08             	add    0x8(%rax),%ecx
   1400021bf:	48 39 ca             	cmp    %rcx,%rdx
   1400021c2:	72 0b                	jb     1400021cf <_FindPESection+0x4f>
   1400021c4:	48 83 c0 28          	add    $0x28,%rax
   1400021c8:	4c 39 c8             	cmp    %r9,%rax
   1400021cb:	75 e3                	jne    1400021b0 <_FindPESection+0x30>
   1400021cd:	31 c0                	xor    %eax,%eax
   1400021cf:	c3                   	ret

00000001400021d0 <_FindPESectionByName>:
   1400021d0:	55                   	push   %rbp
   1400021d1:	57                   	push   %rdi
   1400021d2:	56                   	push   %rsi
   1400021d3:	53                   	push   %rbx
   1400021d4:	48 83 ec 28          	sub    $0x28,%rsp
   1400021d8:	48 89 cf             	mov    %rcx,%rdi
   1400021db:	e8 00 05 00 00       	call   1400026e0 <strlen>
   1400021e0:	48 83 f8 08          	cmp    $0x8,%rax
   1400021e4:	77 0e                	ja     1400021f4 <_FindPESectionByName+0x24>
   1400021e6:	48 8b 05 93 21 00 00 	mov    0x2193(%rip),%rax        # 140004380 <.refptr.__ImageBase>
   1400021ed:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400021f2:	74 14                	je     140002208 <_FindPESectionByName+0x38>
   1400021f4:	31 db                	xor    %ebx,%ebx
   1400021f6:	48 89 d8             	mov    %rbx,%rax
   1400021f9:	48 83 c4 28          	add    $0x28,%rsp
   1400021fd:	5b                   	pop    %rbx
   1400021fe:	5e                   	pop    %rsi
   1400021ff:	5f                   	pop    %rdi
   140002200:	5d                   	pop    %rbp
   140002201:	c3                   	ret
   140002202:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002208:	48 63 68 3c          	movslq 0x3c(%rax),%rbp
   14000220c:	48 01 c5             	add    %rax,%rbp
   14000220f:	81 7d 00 50 45 00 00 	cmpl   $0x4550,0x0(%rbp)
   140002216:	75 dc                	jne    1400021f4 <_FindPESectionByName+0x24>
   140002218:	66 81 7d 18 0b 02    	cmpw   $0x20b,0x18(%rbp)
   14000221e:	75 d4                	jne    1400021f4 <_FindPESectionByName+0x24>
   140002220:	66 83 7d 06 00       	cmpw   $0x0,0x6(%rbp)
   140002225:	74 cd                	je     1400021f4 <_FindPESectionByName+0x24>
   140002227:	0f b7 45 14          	movzwl 0x14(%rbp),%eax
   14000222b:	31 f6                	xor    %esi,%esi
   14000222d:	48 8d 5c 05 18       	lea    0x18(%rbp,%rax,1),%rbx
   140002232:	0f 1f 00             	nopl   (%rax)
   140002235:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000223c:	00 00 00 00 
   140002240:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002246:	48 89 fa             	mov    %rdi,%rdx
   140002249:	48 89 d9             	mov    %rbx,%rcx
   14000224c:	e8 97 04 00 00       	call   1400026e8 <strncmp>
   140002251:	85 c0                	test   %eax,%eax
   140002253:	74 a1                	je     1400021f6 <_FindPESectionByName+0x26>
   140002255:	0f b7 45 06          	movzwl 0x6(%rbp),%eax
   140002259:	83 c6 01             	add    $0x1,%esi
   14000225c:	48 83 c3 28          	add    $0x28,%rbx
   140002260:	39 c6                	cmp    %eax,%esi
   140002262:	72 dc                	jb     140002240 <_FindPESectionByName+0x70>
   140002264:	eb 8e                	jmp    1400021f4 <_FindPESectionByName+0x24>
   140002266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000226d:	00 00 00 

0000000140002270 <__mingw_GetSectionForAddress>:
   140002270:	48 8b 15 09 21 00 00 	mov    0x2109(%rip),%rdx        # 140004380 <.refptr.__ImageBase>
   140002277:	31 c0                	xor    %eax,%eax
   140002279:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000227e:	75 10                	jne    140002290 <__mingw_GetSectionForAddress+0x20>
   140002280:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002284:	49 01 d0             	add    %rdx,%r8
   140002287:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000228e:	74 08                	je     140002298 <__mingw_GetSectionForAddress+0x28>
   140002290:	c3                   	ret
   140002291:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002298:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000229f:	75 ef                	jne    140002290 <__mingw_GetSectionForAddress+0x20>
   1400022a1:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   1400022a6:	66 45 85 c9          	test   %r9w,%r9w
   1400022aa:	74 e4                	je     140002290 <__mingw_GetSectionForAddress+0x20>
   1400022ac:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400022b1:	48 29 d1             	sub    %rdx,%rcx
   1400022b4:	41 8d 51 ff          	lea    -0x1(%r9),%edx
   1400022b8:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400022bc:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400022c1:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400022c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400022cd:	00 00 00 
   1400022d0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400022d4:	4c 89 c2             	mov    %r8,%rdx
   1400022d7:	4c 39 c1             	cmp    %r8,%rcx
   1400022da:	72 08                	jb     1400022e4 <__mingw_GetSectionForAddress+0x74>
   1400022dc:	03 50 08             	add    0x8(%rax),%edx
   1400022df:	48 39 d1             	cmp    %rdx,%rcx
   1400022e2:	72 ac                	jb     140002290 <__mingw_GetSectionForAddress+0x20>
   1400022e4:	48 83 c0 28          	add    $0x28,%rax
   1400022e8:	4c 39 c8             	cmp    %r9,%rax
   1400022eb:	75 e3                	jne    1400022d0 <__mingw_GetSectionForAddress+0x60>
   1400022ed:	31 c0                	xor    %eax,%eax
   1400022ef:	c3                   	ret

00000001400022f0 <__mingw_GetSectionCount>:
   1400022f0:	48 8b 05 89 20 00 00 	mov    0x2089(%rip),%rax        # 140004380 <.refptr.__ImageBase>
   1400022f7:	31 c9                	xor    %ecx,%ecx
   1400022f9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400022fe:	75 0f                	jne    14000230f <__mingw_GetSectionCount+0x1f>
   140002300:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002304:	48 01 d0             	add    %rdx,%rax
   140002307:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000230d:	74 09                	je     140002318 <__mingw_GetSectionCount+0x28>
   14000230f:	89 c8                	mov    %ecx,%eax
   140002311:	c3                   	ret
   140002312:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002318:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000231e:	75 ef                	jne    14000230f <__mingw_GetSectionCount+0x1f>
   140002320:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140002324:	89 c8                	mov    %ecx,%eax
   140002326:	c3                   	ret
   140002327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000232e:	00 00 

0000000140002330 <_FindPESectionExec>:
   140002330:	4c 8b 05 49 20 00 00 	mov    0x2049(%rip),%r8        # 140004380 <.refptr.__ImageBase>
   140002337:	31 c0                	xor    %eax,%eax
   140002339:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000233f:	75 0f                	jne    140002350 <_FindPESectionExec+0x20>
   140002341:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002345:	4c 01 c2             	add    %r8,%rdx
   140002348:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000234e:	74 08                	je     140002358 <_FindPESectionExec+0x28>
   140002350:	c3                   	ret
   140002351:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002358:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000235e:	75 f0                	jne    140002350 <_FindPESectionExec+0x20>
   140002360:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140002365:	66 45 85 c0          	test   %r8w,%r8w
   140002369:	74 e5                	je     140002350 <_FindPESectionExec+0x20>
   14000236b:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   14000236f:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002374:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140002378:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000237c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002381:	0f 1f 40 00          	nopl   0x0(%rax)
   140002385:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000238c:	00 00 00 00 
   140002390:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002394:	74 09                	je     14000239f <_FindPESectionExec+0x6f>
   140002396:	48 85 c9             	test   %rcx,%rcx
   140002399:	74 b5                	je     140002350 <_FindPESectionExec+0x20>
   14000239b:	48 83 e9 01          	sub    $0x1,%rcx
   14000239f:	48 83 c0 28          	add    $0x28,%rax
   1400023a3:	48 39 c2             	cmp    %rax,%rdx
   1400023a6:	75 e8                	jne    140002390 <_FindPESectionExec+0x60>
   1400023a8:	31 c0                	xor    %eax,%eax
   1400023aa:	c3                   	ret
   1400023ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000001400023b0 <_GetPEImageBase>:
   1400023b0:	48 8b 05 c9 1f 00 00 	mov    0x1fc9(%rip),%rax        # 140004380 <.refptr.__ImageBase>
   1400023b7:	31 d2                	xor    %edx,%edx
   1400023b9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023be:	75 0f                	jne    1400023cf <_GetPEImageBase+0x1f>
   1400023c0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   1400023c4:	48 01 c1             	add    %rax,%rcx
   1400023c7:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400023cd:	74 09                	je     1400023d8 <_GetPEImageBase+0x28>
   1400023cf:	48 89 d0             	mov    %rdx,%rax
   1400023d2:	c3                   	ret
   1400023d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400023d8:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400023de:	48 0f 44 d0          	cmove  %rax,%rdx
   1400023e2:	48 89 d0             	mov    %rdx,%rax
   1400023e5:	c3                   	ret
   1400023e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400023ed:	00 00 00 

00000001400023f0 <_IsNonwritableInCurrentImage>:
   1400023f0:	48 8b 15 89 1f 00 00 	mov    0x1f89(%rip),%rdx        # 140004380 <.refptr.__ImageBase>
   1400023f7:	31 c0                	xor    %eax,%eax
   1400023f9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400023fe:	75 10                	jne    140002410 <_IsNonwritableInCurrentImage+0x20>
   140002400:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002404:	49 01 d0             	add    %rdx,%r8
   140002407:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000240e:	74 08                	je     140002418 <_IsNonwritableInCurrentImage+0x28>
   140002410:	c3                   	ret
   140002411:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002418:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000241f:	75 ef                	jne    140002410 <_IsNonwritableInCurrentImage+0x20>
   140002421:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140002426:	66 45 85 c9          	test   %r9w,%r9w
   14000242a:	74 e4                	je     140002410 <_IsNonwritableInCurrentImage+0x20>
   14000242c:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002431:	48 29 d1             	sub    %rdx,%rcx
   140002434:	41 8d 51 ff          	lea    -0x1(%r9),%edx
   140002438:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000243c:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002441:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002446:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000244d:	00 00 00 
   140002450:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002454:	4c 89 c2             	mov    %r8,%rdx
   140002457:	4c 39 c1             	cmp    %r8,%rcx
   14000245a:	72 08                	jb     140002464 <_IsNonwritableInCurrentImage+0x74>
   14000245c:	03 50 08             	add    0x8(%rax),%edx
   14000245f:	48 39 d1             	cmp    %rdx,%rcx
   140002462:	72 0c                	jb     140002470 <_IsNonwritableInCurrentImage+0x80>
   140002464:	48 83 c0 28          	add    $0x28,%rax
   140002468:	49 39 c1             	cmp    %rax,%r9
   14000246b:	75 e3                	jne    140002450 <_IsNonwritableInCurrentImage+0x60>
   14000246d:	31 c0                	xor    %eax,%eax
   14000246f:	c3                   	ret
   140002470:	8b 40 24             	mov    0x24(%rax),%eax
   140002473:	f7 d0                	not    %eax
   140002475:	c1 e8 1f             	shr    $0x1f,%eax
   140002478:	c3                   	ret
   140002479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002480 <__mingw_enum_import_library_names>:
   140002480:	4c 8b 1d f9 1e 00 00 	mov    0x1ef9(%rip),%r11        # 140004380 <.refptr.__ImageBase>
   140002487:	45 31 c0             	xor    %r8d,%r8d
   14000248a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002490:	75 0f                	jne    1400024a1 <__mingw_enum_import_library_names+0x21>
   140002492:	49 63 53 3c          	movslq 0x3c(%r11),%rdx
   140002496:	4c 01 da             	add    %r11,%rdx
   140002499:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000249f:	74 07                	je     1400024a8 <__mingw_enum_import_library_names+0x28>
   1400024a1:	4c 89 c0             	mov    %r8,%rax
   1400024a4:	c3                   	ret
   1400024a5:	0f 1f 00             	nopl   (%rax)
   1400024a8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   1400024ae:	75 f1                	jne    1400024a1 <__mingw_enum_import_library_names+0x21>
   1400024b0:	8b 82 90 00 00 00    	mov    0x90(%rdx),%eax
   1400024b6:	85 c0                	test   %eax,%eax
   1400024b8:	74 e7                	je     1400024a1 <__mingw_enum_import_library_names+0x21>
   1400024ba:	44 0f b7 4a 06       	movzwl 0x6(%rdx),%r9d
   1400024bf:	66 45 85 c9          	test   %r9w,%r9w
   1400024c3:	74 dc                	je     1400024a1 <__mingw_enum_import_library_names+0x21>
   1400024c5:	44 0f b7 42 14       	movzwl 0x14(%rdx),%r8d
   1400024ca:	4a 8d 54 02 18       	lea    0x18(%rdx,%r8,1),%rdx
   1400024cf:	45 8d 41 ff          	lea    -0x1(%r9),%r8d
   1400024d3:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400024d7:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400024dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400024e0:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400024e4:	4d 89 c8             	mov    %r9,%r8
   1400024e7:	4c 39 c8             	cmp    %r9,%rax
   1400024ea:	72 09                	jb     1400024f5 <__mingw_enum_import_library_names+0x75>
   1400024ec:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400024f0:	4c 39 c0             	cmp    %r8,%rax
   1400024f3:	72 13                	jb     140002508 <__mingw_enum_import_library_names+0x88>
   1400024f5:	48 83 c2 28          	add    $0x28,%rdx
   1400024f9:	49 39 d2             	cmp    %rdx,%r10
   1400024fc:	75 e2                	jne    1400024e0 <__mingw_enum_import_library_names+0x60>
   1400024fe:	45 31 c0             	xor    %r8d,%r8d
   140002501:	4c 89 c0             	mov    %r8,%rax
   140002504:	c3                   	ret
   140002505:	0f 1f 00             	nopl   (%rax)
   140002508:	4c 01 d8             	add    %r11,%rax
   14000250b:	eb 0a                	jmp    140002517 <__mingw_enum_import_library_names+0x97>
   14000250d:	0f 1f 00             	nopl   (%rax)
   140002510:	83 e9 01             	sub    $0x1,%ecx
   140002513:	48 83 c0 14          	add    $0x14,%rax
   140002517:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000251b:	45 85 c0             	test   %r8d,%r8d
   14000251e:	75 07                	jne    140002527 <__mingw_enum_import_library_names+0xa7>
   140002520:	8b 50 0c             	mov    0xc(%rax),%edx
   140002523:	85 d2                	test   %edx,%edx
   140002525:	74 d7                	je     1400024fe <__mingw_enum_import_library_names+0x7e>
   140002527:	85 c9                	test   %ecx,%ecx
   140002529:	7f e5                	jg     140002510 <__mingw_enum_import_library_names+0x90>
   14000252b:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000252f:	4d 01 d8             	add    %r11,%r8
   140002532:	4c 89 c0             	mov    %r8,%rax
   140002535:	c3                   	ret
   140002536:	90                   	nop
   140002537:	90                   	nop
   140002538:	90                   	nop
   140002539:	90                   	nop
   14000253a:	90                   	nop
   14000253b:	90                   	nop
   14000253c:	90                   	nop
   14000253d:	90                   	nop
   14000253e:	90                   	nop
   14000253f:	90                   	nop

0000000140002540 <___chkstk_ms>:
   140002540:	51                   	push   %rcx
   140002541:	50                   	push   %rax
   140002542:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002548:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000254d:	72 19                	jb     140002568 <___chkstk_ms+0x28>
   14000254f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002556:	48 83 09 00          	orq    $0x0,(%rcx)
   14000255a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002560:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002566:	77 e7                	ja     14000254f <___chkstk_ms+0xf>
   140002568:	48 29 c1             	sub    %rax,%rcx
   14000256b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000256f:	58                   	pop    %rax
   140002570:	59                   	pop    %rcx
   140002571:	c3                   	ret
   140002572:	90                   	nop
   140002573:	90                   	nop
   140002574:	90                   	nop
   140002575:	90                   	nop
   140002576:	90                   	nop
   140002577:	90                   	nop
   140002578:	90                   	nop
   140002579:	90                   	nop
   14000257a:	90                   	nop
   14000257b:	90                   	nop
   14000257c:	90                   	nop
   14000257d:	90                   	nop
   14000257e:	90                   	nop
   14000257f:	90                   	nop

0000000140002580 <_initterm_e>:
   140002580:	56                   	push   %rsi
   140002581:	53                   	push   %rbx
   140002582:	48 83 ec 28          	sub    $0x28,%rsp
   140002586:	48 89 cb             	mov    %rcx,%rbx
   140002589:	48 89 d6             	mov    %rdx,%rsi
   14000258c:	48 39 d1             	cmp    %rdx,%rcx
   14000258f:	73 26                	jae    1400025b7 <_initterm_e+0x37>
   140002591:	0f 1f 40 00          	nopl   0x0(%rax)
   140002595:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000259c:	00 00 00 00 
   1400025a0:	48 8b 03             	mov    (%rbx),%rax
   1400025a3:	48 85 c0             	test   %rax,%rax
   1400025a6:	74 06                	je     1400025ae <_initterm_e+0x2e>
   1400025a8:	ff d0                	call   *%rax
   1400025aa:	85 c0                	test   %eax,%eax
   1400025ac:	75 0b                	jne    1400025b9 <_initterm_e+0x39>
   1400025ae:	48 83 c3 08          	add    $0x8,%rbx
   1400025b2:	48 39 f3             	cmp    %rsi,%rbx
   1400025b5:	72 e9                	jb     1400025a0 <_initterm_e+0x20>
   1400025b7:	31 c0                	xor    %eax,%eax
   1400025b9:	48 83 c4 28          	add    $0x28,%rsp
   1400025bd:	5b                   	pop    %rbx
   1400025be:	5e                   	pop    %rsi
   1400025bf:	c3                   	ret

00000001400025c0 <__p__fmode>:
   1400025c0:	48 8b 05 29 1e 00 00 	mov    0x1e29(%rip),%rax        # 1400043f0 <.refptr.__imp__fmode>
   1400025c7:	48 8b 00             	mov    (%rax),%rax
   1400025ca:	c3                   	ret
   1400025cb:	90                   	nop
   1400025cc:	90                   	nop
   1400025cd:	90                   	nop
   1400025ce:	90                   	nop
   1400025cf:	90                   	nop

00000001400025d0 <__p__commode>:
   1400025d0:	48 8b 05 09 1e 00 00 	mov    0x1e09(%rip),%rax        # 1400043e0 <.refptr.__imp__commode>
   1400025d7:	48 8b 00             	mov    (%rax),%rax
   1400025da:	c3                   	ret
   1400025db:	90                   	nop
   1400025dc:	90                   	nop
   1400025dd:	90                   	nop
   1400025de:	90                   	nop
   1400025df:	90                   	nop

00000001400025e0 <__p___initenv>:
   1400025e0:	48 8b 05 e9 1d 00 00 	mov    0x1de9(%rip),%rax        # 1400043d0 <.refptr.__imp___initenv>
   1400025e7:	48 8b 00             	mov    (%rax),%rax
   1400025ea:	c3                   	ret
   1400025eb:	90                   	nop
   1400025ec:	90                   	nop
   1400025ed:	90                   	nop
   1400025ee:	90                   	nop
   1400025ef:	90                   	nop

00000001400025f0 <_get_invalid_parameter_handler>:
   1400025f0:	48 8b 05 79 4b 00 00 	mov    0x4b79(%rip),%rax        # 140007170 <handler>
   1400025f7:	c3                   	ret
   1400025f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400025ff:	00 

0000000140002600 <_set_invalid_parameter_handler>:
   140002600:	48 89 c8             	mov    %rcx,%rax
   140002603:	48 87 05 66 4b 00 00 	xchg   %rax,0x4b66(%rip)        # 140007170 <handler>
   14000260a:	c3                   	ret
   14000260b:	90                   	nop
   14000260c:	90                   	nop
   14000260d:	90                   	nop
   14000260e:	90                   	nop
   14000260f:	90                   	nop

0000000140002610 <_configthreadlocale>:
   140002610:	83 f9 01             	cmp    $0x1,%ecx
   140002613:	74 0b                	je     140002620 <_configthreadlocale+0x10>
   140002615:	b8 02 00 00 00       	mov    $0x2,%eax
   14000261a:	c3                   	ret
   14000261b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002620:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002625:	c3                   	ret
   140002626:	90                   	nop
   140002627:	90                   	nop
   140002628:	90                   	nop
   140002629:	90                   	nop
   14000262a:	90                   	nop
   14000262b:	90                   	nop
   14000262c:	90                   	nop
   14000262d:	90                   	nop
   14000262e:	90                   	nop
   14000262f:	90                   	nop

0000000140002630 <__acrt_iob_func>:
   140002630:	53                   	push   %rbx
   140002631:	48 83 ec 20          	sub    $0x20,%rsp
   140002635:	89 cb                	mov    %ecx,%ebx
   140002637:	e8 24 00 00 00       	call   140002660 <__iob_func>
   14000263c:	89 d9                	mov    %ebx,%ecx
   14000263e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140002642:	48 c1 e2 04          	shl    $0x4,%rdx
   140002646:	48 01 d0             	add    %rdx,%rax
   140002649:	48 83 c4 20          	add    $0x20,%rsp
   14000264d:	5b                   	pop    %rbx
   14000264e:	c3                   	ret
   14000264f:	90                   	nop

0000000140002650 <__C_specific_handler>:
   140002650:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 1400081b8 <__imp___C_specific_handler>
   140002656:	90                   	nop
   140002657:	90                   	nop

0000000140002658 <__getmainargs>:
   140002658:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 1400081c0 <__imp___getmainargs>
   14000265e:	90                   	nop
   14000265f:	90                   	nop

0000000140002660 <__iob_func>:
   140002660:	ff 25 6a 5b 00 00    	jmp    *0x5b6a(%rip)        # 1400081d0 <__imp___iob_func>
   140002666:	90                   	nop
   140002667:	90                   	nop

0000000140002668 <__set_app_type>:
   140002668:	ff 25 6a 5b 00 00    	jmp    *0x5b6a(%rip)        # 1400081d8 <__imp___set_app_type>
   14000266e:	90                   	nop
   14000266f:	90                   	nop

0000000140002670 <__setusermatherr>:
   140002670:	ff 25 6a 5b 00 00    	jmp    *0x5b6a(%rip)        # 1400081e0 <__imp___setusermatherr>
   140002676:	90                   	nop
   140002677:	90                   	nop

0000000140002678 <_amsg_exit>:
   140002678:	ff 25 6a 5b 00 00    	jmp    *0x5b6a(%rip)        # 1400081e8 <__imp__amsg_exit>
   14000267e:	90                   	nop
   14000267f:	90                   	nop

0000000140002680 <_cexit>:
   140002680:	ff 25 6a 5b 00 00    	jmp    *0x5b6a(%rip)        # 1400081f0 <__imp__cexit>
   140002686:	90                   	nop
   140002687:	90                   	nop

0000000140002688 <_initterm>:
   140002688:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008208 <__imp__initterm>
   14000268e:	90                   	nop
   14000268f:	90                   	nop

0000000140002690 <abort>:
   140002690:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008210 <__imp_abort>
   140002696:	90                   	nop
   140002697:	90                   	nop

0000000140002698 <_crt_atexit>:
   140002698:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008218 <__imp__crt_atexit>
   14000269e:	90                   	nop
   14000269f:	90                   	nop

00000001400026a0 <calloc>:
   1400026a0:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008220 <__imp_calloc>
   1400026a6:	90                   	nop
   1400026a7:	90                   	nop

00000001400026a8 <exit>:
   1400026a8:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008228 <__imp_exit>
   1400026ae:	90                   	nop
   1400026af:	90                   	nop

00000001400026b0 <fprintf>:
   1400026b0:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008230 <__imp_fprintf>
   1400026b6:	90                   	nop
   1400026b7:	90                   	nop

00000001400026b8 <free>:
   1400026b8:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008238 <__imp_free>
   1400026be:	90                   	nop
   1400026bf:	90                   	nop

00000001400026c0 <malloc>:
   1400026c0:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008240 <__imp_malloc>
   1400026c6:	90                   	nop
   1400026c7:	90                   	nop

00000001400026c8 <memcpy>:
   1400026c8:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008248 <__imp_memcpy>
   1400026ce:	90                   	nop
   1400026cf:	90                   	nop

00000001400026d0 <puts>:
   1400026d0:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008250 <__imp_puts>
   1400026d6:	90                   	nop
   1400026d7:	90                   	nop

00000001400026d8 <signal>:
   1400026d8:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008258 <__imp_signal>
   1400026de:	90                   	nop
   1400026df:	90                   	nop

00000001400026e0 <strlen>:
   1400026e0:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008260 <__imp_strlen>
   1400026e6:	90                   	nop
   1400026e7:	90                   	nop

00000001400026e8 <strncmp>:
   1400026e8:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008268 <__imp_strncmp>
   1400026ee:	90                   	nop
   1400026ef:	90                   	nop

00000001400026f0 <vfprintf>:
   1400026f0:	ff 25 7a 5b 00 00    	jmp    *0x5b7a(%rip)        # 140008270 <__imp_vfprintf>
   1400026f6:	90                   	nop
   1400026f7:	90                   	nop
   1400026f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400026ff:	00 

0000000140002700 <VirtualQuery>:
   140002700:	ff 25 a2 5a 00 00    	jmp    *0x5aa2(%rip)        # 1400081a8 <__imp_VirtualQuery>
   140002706:	90                   	nop
   140002707:	90                   	nop

0000000140002708 <VirtualProtect>:
   140002708:	ff 25 92 5a 00 00    	jmp    *0x5a92(%rip)        # 1400081a0 <__imp_VirtualProtect>
   14000270e:	90                   	nop
   14000270f:	90                   	nop

0000000140002710 <TlsGetValue>:
   140002710:	ff 25 82 5a 00 00    	jmp    *0x5a82(%rip)        # 140008198 <__imp_TlsGetValue>
   140002716:	90                   	nop
   140002717:	90                   	nop

0000000140002718 <Sleep>:
   140002718:	ff 25 72 5a 00 00    	jmp    *0x5a72(%rip)        # 140008190 <__imp_Sleep>
   14000271e:	90                   	nop
   14000271f:	90                   	nop

0000000140002720 <SetUnhandledExceptionFilter>:
   140002720:	ff 25 62 5a 00 00    	jmp    *0x5a62(%rip)        # 140008188 <__imp_SetUnhandledExceptionFilter>
   140002726:	90                   	nop
   140002727:	90                   	nop

0000000140002728 <LeaveCriticalSection>:
   140002728:	ff 25 52 5a 00 00    	jmp    *0x5a52(%rip)        # 140008180 <__imp_LeaveCriticalSection>
   14000272e:	90                   	nop
   14000272f:	90                   	nop

0000000140002730 <InitializeCriticalSection>:
   140002730:	ff 25 42 5a 00 00    	jmp    *0x5a42(%rip)        # 140008178 <__imp_InitializeCriticalSection>
   140002736:	90                   	nop
   140002737:	90                   	nop

0000000140002738 <GetLastError>:
   140002738:	ff 25 32 5a 00 00    	jmp    *0x5a32(%rip)        # 140008170 <__imp_GetLastError>
   14000273e:	90                   	nop
   14000273f:	90                   	nop

0000000140002740 <EnterCriticalSection>:
   140002740:	ff 25 22 5a 00 00    	jmp    *0x5a22(%rip)        # 140008168 <__imp_EnterCriticalSection>
   140002746:	90                   	nop
   140002747:	90                   	nop

0000000140002748 <DeleteCriticalSection>:
   140002748:	ff 25 12 5a 00 00    	jmp    *0x5a12(%rip)        # 140008160 <__IAT_start__>
   14000274e:	90                   	nop
   14000274f:	90                   	nop

0000000140002750 <register_frame_ctor>:
   140002750:	e9 db ec ff ff       	jmp    140001430 <__gcc_register_frame>
   140002755:	90                   	nop
   140002756:	90                   	nop
   140002757:	90                   	nop
   140002758:	90                   	nop
   140002759:	90                   	nop
   14000275a:	90                   	nop
   14000275b:	90                   	nop
   14000275c:	90                   	nop
   14000275d:	90                   	nop
   14000275e:	90                   	nop
   14000275f:	90                   	nop
