	.file	"arrange_keyword.cpp"
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
	.globl	info
	.bss
	.align 32
info:
	.space 2000
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "keyword.txt\0"
.LC1:
	.ascii "open keyword.txt error!\12\0"
.LC2:
	.ascii "clearly_arranged_keywords.txt\0"
	.align 8
.LC3:
	.ascii "open clearly_arranged_keywords.txt error!\12\0"
.LC4:
	.ascii " \0"
.LC5:
	.ascii "pause\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1627:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$1080, %rsp
	.seh_stackalloc	1080
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev
.LEHE0:
	movq	%rbp, %rax
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE1:
	leaq	464(%rbp), %rax
	movl	$8, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
.LEHB2:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	464(%rbp), %rax
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
	movq	%rbp, %rax
	movl	%edx, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	%rbp, %rax
	addq	$200, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L5
	leaq	.LC3(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE2:
	movl	$2, %ecx
	call	exit
.L5:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	leaq	464(%rbp), %rax
	movl	$2000, %r8d
	leaq	info(%rip), %rdx
	movq	%rax, %rcx
.LEHB3:
	call	_ZNSi7getlineEPcx
.L7:
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSi3getEv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L6
	leaq	464(%rbp), %rax
	movl	$2000, %r8d
	leaq	info(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSi7getlineEPcx
	leaq	-96(%rbp), %rdx
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSi3getEv
	leaq	-64(%rbp), %rdx
	leaq	464(%rbp), %rax
	movl	$50, %r8d
	movq	%rax, %rcx
	call	_ZNSi7getlineEPcx
	leaq	-64(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC5(%rip), %rcx
	call	system
	leaq	464(%rbp), %rax
	movl	$2000, %r8d
	leaq	info(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSi7getlineEPcx
	leaq	464(%rbp), %rax
	movl	$2000, %r8d
	leaq	info(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSi7getlineEPcx
.LEHE3:
	jmp	.L7
.L6:
	movl	$0, %ebx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movl	%ebx, %eax
	jmp	.L15
.L14:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L10
.L13:
	movq	%rax, %rbx
.L10:
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L11
.L12:
	movq	%rax, %rbx
.L11:
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L15:
	addq	$1080, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1627:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1627-.LLSDACSB1627
.LLSDACSB1627:
	.uleb128 .LEHB0-.LFB1627
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1627
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L12-.LFB1627
	.uleb128 0
	.uleb128 .LEHB2-.LFB1627
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L13-.LFB1627
	.uleb128 0
	.uleb128 .LEHB3-.LFB1627
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L14-.LFB1627
	.uleb128 0
	.uleb128 .LEHB4-.LFB1627
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1627:
	.text
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2143:
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
.LFB2142:
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
	jne	.L19
	cmpl	$65535, 24(%rbp)
	jne	.L19
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
.L19:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_info;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_info
_GLOBAL__sub_I_info:
.LFB2144:
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
	.quad	_GLOBAL__sub_I_info
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSi7getlineEPcx;	.scl	2;	.type	32;	.endef
	.def	_ZNSi3getEv;	.scl	2;	.type	32;	.endef
	.def	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	system;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
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
