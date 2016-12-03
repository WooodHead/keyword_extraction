	.file	"extract_word.cpp"
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
	.section	.text$_ZStorSt13_Ios_OpenmodeS_,"x"
	.linkonce discard
	.globl	_ZStorSt13_Ios_OpenmodeS_
	.def	_ZStorSt13_Ios_OpenmodeS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStorSt13_Ios_OpenmodeS_
_ZStorSt13_Ios_OpenmodeS_:
.LFB1110:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	orl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
.lcomm _ZStL8__ioinit,1,1
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "train.data\0"
.LC1:
	.ascii "open train.data error!\12\0"
.LC2:
	.ascii "words.txt\0"
.LC3:
	.ascii "open words.txt error!\12\0"
.LC4:
	.ascii "http\0\0"
.LC6:
	.ascii "HTTP\0\0"
.LC7:
	.ascii "Http\0\0"
.LC8:
	.ascii "https\0\0"
.LC9:
	.ascii "HTTPS\0\0"
.LC10:
	.ascii "www\0\0"
.LC11:
	.ascii "WWW\0\0"
.LC12:
	.ascii " \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1636:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$3016, %rsp
	.seh_stackalloc	3016
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, 2864(%rbp)
	.seh_savexmm	%xmm6, 2992
	.seh_endprologue
	call	__main
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev
.LEHE0:
	leaq	1904(%rbp), %rax
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE1:
	leaq	2368(%rbp), %rax
	movl	$8, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
.LEHB2:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	2368(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, %ecx
	call	exit
.L4:
	movl	$32, %edx
	movl	$16, %ecx
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %edx
	leaq	1904(%rbp), %rax
	movl	%edx, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	1904(%rbp), %rax
	addq	$200, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L5
	leaq	.LC3(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %ecx
	call	exit
.L5:
	movl	$0, 1900(%rbp)
	leaq	1472(%rbp), %rax
	movl	$0, %r9d
	movsd	.LC5(%rip), %xmm2
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN4WordC1EPKcdi
	leaq	1248(%rbp), %rax
	movl	$0, %r9d
	movsd	.LC5(%rip), %xmm2
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN4WordC1EPKcdi
	leaq	1024(%rbp), %rax
	movl	$0, %r9d
	movsd	.LC5(%rip), %xmm2
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN4WordC1EPKcdi
	leaq	800(%rbp), %rax
	movl	$0, %r9d
	movsd	.LC5(%rip), %xmm2
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN4WordC1EPKcdi
	leaq	576(%rbp), %rax
	movl	$0, %r9d
	movsd	.LC5(%rip), %xmm2
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN4WordC1EPKcdi
	leaq	352(%rbp), %rax
	movl	$0, %r9d
	movsd	.LC5(%rip), %xmm2
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN4WordC1EPKcdi
	leaq	128(%rbp), %rax
	movl	$0, %r9d
	movsd	.LC5(%rip), %xmm2
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN4WordC1EPKcdi
.L31:
	leaq	1900(%rbp), %rdx
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSirsERi
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	testb	%al, %al
	je	.L6
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSi3getEv
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSi3getEv
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSi3getEv
	movb	$1, 2863(%rbp)
.L30:
	cmpb	$0, 2863(%rbp)
	je	.L7
	leaq	1696(%rbp), %rdx
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	testb	%al, %al
	je	.L7
	movl	$1, %eax
	jmp	.L8
.L7:
	movl	$0, %eax
.L8:
	testb	%al, %al
	je	.L31
	leaq	1696(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movl	%eax, 2856(%rbp)
	movl	$0, 2852(%rbp)
.L14:
	movl	2852(%rbp), %eax
	cmpl	2856(%rbp), %eax
	jge	.L10
	movl	2852(%rbp), %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$36, %al
	jne	.L11
	movl	2852(%rbp), %eax
	subl	$1, %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$35, %al
	jne	.L11
	movl	2852(%rbp), %eax
	addl	$1, %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$35, %al
	jne	.L11
	movl	2852(%rbp), %eax
	movl	%eax, 2856(%rbp)
.L13:
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSi3getEv
	cmpl	$10, %eax
	setne	%al
	testb	%al, %al
	je	.L12
	jmp	.L13
.L12:
	movb	$0, 2863(%rbp)
	jmp	.L10
.L11:
	addl	$1, 2852(%rbp)
	jmp	.L14
.L10:
	movl	$0, 2840(%rbp)
.L29:
	movl	2840(%rbp), %eax
	cmpl	2856(%rbp), %eax
	jge	.L30
	movl	2840(%rbp), %eax
	movl	%eax, 2848(%rbp)
.L19:
	movl	2848(%rbp), %eax
	cmpl	2856(%rbp), %eax
	jge	.L16
	movl	2848(%rbp), %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$64, %al
	jle	.L17
	movl	2848(%rbp), %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$90, %al
	jle	.L18
	movl	2848(%rbp), %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$96, %al
	jle	.L17
.L18:
	movl	2848(%rbp), %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$122, %al
	jle	.L16
.L17:
	addl	$1, 2848(%rbp)
	jmp	.L19
.L16:
	movl	2848(%rbp), %eax
	movl	%eax, 2844(%rbp)
.L23:
	movl	2844(%rbp), %eax
	cmpl	2856(%rbp), %eax
	jge	.L20
	movl	2844(%rbp), %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$64, %al
	jle	.L21
	movl	2844(%rbp), %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$90, %al
	jle	.L22
.L21:
	movl	2844(%rbp), %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$96, %al
	jle	.L20
	movl	2844(%rbp), %eax
	cltq
	movzbl	1696(%rbp,%rax), %eax
	cmpb	$122, %al
	jg	.L20
.L22:
	addl	$1, 2844(%rbp)
	jmp	.L23
.L20:
	movl	2844(%rbp), %eax
	cltq
	movb	$0, 1696(%rbp,%rax)
	movl	2844(%rbp), %eax
	cmpl	2848(%rbp), %eax
	jle	.L24
	movl	1900(%rbp), %ecx
	movl	2848(%rbp), %eax
	cltq
	leaq	1696(%rbp), %rdx
	addq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movl	%ecx, %r9d
	movsd	.LC5(%rip), %xmm2
	movq	%rax, %rcx
	call	_ZN4WordC1EPKcdi
	leaq	1472(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	jne	.L25
	leaq	1248(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	jne	.L25
	leaq	1024(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	jne	.L25
	leaq	800(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	jne	.L25
	leaq	576(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	jne	.L25
	leaq	352(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	jne	.L25
	leaq	128(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	je	.L26
.L25:
	movl	$1, %eax
	jmp	.L27
.L26:
	movl	$0, %eax
.L27:
	testb	%al, %al
	jne	.L38
	movl	112(%rbp), %ebx
	movsd	104(%rbp), %xmm6
	leaq	-96(%rbp), %rdx
	leaq	1904(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movapd	%xmm6, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.L24:
	movl	2844(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 2840(%rbp)
	jmp	.L29
.L38:
	nop
	jmp	.L30
.L6:
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	leaq	1904(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE2:
	movl	$0, %ebx
	leaq	1904(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movl	%ebx, %eax
	jmp	.L37
.L36:
	movq	%rax, %rbx
	leaq	1904(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L34
.L35:
	movq	%rax, %rbx
.L34:
	leaq	2368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L37:
	movaps	2864(%rbp), %xmm6
	addq	$3016, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1636:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1636-.LLSDACSB1636
.LLSDACSB1636:
	.uleb128 .LEHB0-.LFB1636
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1636
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L35-.LFB1636
	.uleb128 0
	.uleb128 .LEHB2-.LFB1636
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L36-.LFB1636
	.uleb128 0
	.uleb128 .LEHB3-.LFB1636
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1636:
	.text
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2153:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB2152:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L42
	cmpl	$65535, 24(%rbp)
	jne	.L42
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
.L42:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB2154:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section .rdata,"dr"
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZN4WordC1EPKcdi;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSi3getEv;	.scl	2;	.type	32;	.endef
	.def	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZN4WordeqERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
