	.file	"arrange_word.cpp"
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
	.globl	fin
	.bss
	.align 32
fin:
	.space 472
	.globl	fout
	.align 32
fout:
	.space 464
	.globl	word_num
	.align 4
word_num:
	.space 4
	.globl	get_word
	.align 32
get_word:
	.space 28728000
	.globl	flag
	.align 32
flag:
	.space 133000
	.text
	.globl	_Z10quick_sortii
	.def	_Z10quick_sortii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10quick_sortii
_Z10quick_sortii:
.LFB1627:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	subq	$256, %rsp
	.seh_stackalloc	256
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movl	%ecx, 160(%rbp)
	movl	%edx, 168(%rbp)
	movl	160(%rbp), %eax
	movl	%eax, 124(%rbp)
	movl	168(%rbp), %eax
	movl	%eax, 120(%rbp)
	movl	120(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	get_word(%rip), %rdx
	leaq	-96(%rbp), %rax
	addq	%rcx, %rdx
	movl	$27, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
.L13:
	movl	124(%rbp), %eax
	cmpl	120(%rbp), %eax
	jge	.L4
.L8:
	movl	124(%rbp), %eax
	cmpl	120(%rbp), %eax
	jge	.L5
	movl	124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZN4Word13smaller_equalERKS_
	testb	%al, %al
	je	.L5
	movl	$1, %eax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	testb	%al, %al
	je	.L7
	addl	$1, 124(%rbp)
	jmp	.L8
.L7:
	movl	120(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movl	124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	addq	%rax, %rdx
	movq	%rcx, %rax
	movl	$212, %ecx
	movq	(%rdx), %r8
	movq	%r8, (%rax)
	movl	%ecx, %r8d
	addq	%rax, %r8
	leaq	8(%r8), %r9
	movl	%ecx, %r8d
	addq	%rdx, %r8
	addq	$8, %r8
	movq	-16(%r8), %r8
	movq	%r8, -16(%r9)
	leaq	8(%rax), %r8
	andq	$-8, %r8
	subq	%r8, %rax
	subq	%rax, %rdx
	addl	%eax, %ecx
	andl	$-8, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %eax
	movq	%r8, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rcx
	rep movsq
.L12:
	movl	120(%rbp), %eax
	cmpl	124(%rbp), %eax
	jle	.L9
	movl	120(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZN4Word12larger_equalERKS_
	testb	%al, %al
	je	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	testb	%al, %al
	je	.L11
	subl	$1, 120(%rbp)
	jmp	.L12
.L11:
	movl	124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movl	120(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	addq	%rax, %rdx
	movq	%rcx, %rax
	movl	$212, %ecx
	movq	(%rdx), %r8
	movq	%r8, (%rax)
	movl	%ecx, %r8d
	addq	%rax, %r8
	leaq	8(%r8), %r9
	movl	%ecx, %r8d
	addq	%rdx, %r8
	addq	$8, %r8
	movq	-16(%r8), %r8
	movq	%r8, -16(%r9)
	leaq	8(%rax), %r8
	andq	$-8, %r8
	subq	%r8, %rax
	subq	%rax, %rdx
	addl	%eax, %ecx
	andl	$-8, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %eax
	movq	%r8, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rcx
	rep movsq
	jmp	.L13
.L4:
	movl	124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movl	$212, %ecx
	movq	(%rax), %r8
	movq	%r8, (%rdx)
	movl	%ecx, %r8d
	addq	%rdx, %r8
	leaq	8(%r8), %r9
	movl	%ecx, %r8d
	addq	%rax, %r8
	addq	$8, %r8
	movq	-16(%r8), %r8
	movq	%r8, -16(%r9)
	leaq	8(%rdx), %r8
	andq	$-8, %r8
	subq	%r8, %rdx
	subq	%rdx, %rax
	addl	%edx, %ecx
	andl	$-8, %ecx
	shrl	$3, %ecx
	movl	%ecx, %edx
	movl	%edx, %edx
	movq	%r8, %rdi
	movq	%rax, %rsi
	movq	%rdx, %rcx
	rep movsq
	movl	124(%rbp), %eax
	subl	$1, %eax
	cmpl	160(%rbp), %eax
	jle	.L14
	movl	124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	160(%rbp), %ecx
	call	_Z10quick_sortii
.L14:
	movl	120(%rbp), %eax
	addl	$1, %eax
	cmpl	168(%rbp), %eax
	jge	.L16
	movl	120(%rbp), %eax
	leal	1(%rax), %ecx
	movl	168(%rbp), %eax
	movl	%eax, %edx
	call	_Z10quick_sortii
.L16:
	nop
	addq	$256, %rsp
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "valid_word.txt\0"
.LC1:
	.ascii "open valid_word.txt error!\12\0"
.LC2:
	.ascii "fully_arranged_word.txt\0"
	.align 8
.LC3:
	.ascii "open arranged_word.txt error!\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1628:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, -80(%rbp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	call	__main
	movl	$8, %r8d
	leaq	.LC0(%rip), %rdx
	leaq	fin(%rip), %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	208+fin(%rip), %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L18
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, %ecx
	call	exit
.L18:
	movl	$32, %edx
	movl	$16, %ecx
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %r8d
	leaq	.LC2(%rip), %rdx
	leaq	fout(%rip), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	200+fout(%rip), %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L19
	leaq	.LC3(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %ecx
	call	exit
.L19:
	movl	$0, -84(%rbp)
.L21:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	fin(%rip), %rcx
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	testb	%al, %al
	je	.L20
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	208(%rax), %rdx
	leaq	get_word(%rip), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	192(%rax), %rdx
	leaq	get_word(%rip), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	leaq	fin(%rip), %rcx
	call	_ZNSirsERd
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSirsERi
	addl	$1, -84(%rbp)
	jmp	.L21
.L20:
	movl	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	$0, %ecx
	call	_Z10quick_sortii
	movl	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)
.L24:
	cmpl	$0, -88(%rbp)
	jle	.L22
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	je	.L23
	movl	-88(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	200+get_word(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	200+get_word(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	200+get_word(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	leaq	flag(%rip), %rax
	movb	$1, (%rdx,%rax)
.L23:
	subl	$1, -88(%rbp)
	jmp	.L24
.L22:
	movl	208+get_word(%rip), %ebx
	movsd	200+get_word(%rip), %xmm6
	leaq	get_word(%rip), %rdx
	leaq	fout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$32, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movapd	%xmm6, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movl	$32, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZNSolsEi
	movl	$1, -92(%rbp)
.L28:
	movl	-92(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.L25
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	leaq	flag(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L26
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	leaq	fout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	208+get_word(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	200+get_word(%rip), %rax
	movsd	(%rdx,%rax), %xmm6
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	get_word(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	fout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$32, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movapd	%xmm6, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movl	$32, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZNSolsEi
	jmp	.L27
.L26:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	208+get_word(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	$32, %edx
	leaq	fout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZNSolsEi
.L27:
	addl	$1, -92(%rbp)
	jmp	.L28
.L25:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	leaq	fout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	fin(%rip), %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	leaq	fout(%rip), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	movl	$0, %eax
	movaps	-80(%rbp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2139:
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
	.def	__tcf_1;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_1
__tcf_1:
.LFB2140:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	fin(%rip), %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__tcf_2;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_2
__tcf_2:
.LFB2141:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	fout(%rip), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB2138:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 32(%rbp)
	movl	%edx, 40(%rbp)
	cmpl	$1, 32(%rbp)
	jne	.L37
	cmpl	$65535, 40(%rbp)
	jne	.L37
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	leaq	fin(%rip), %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev
	leaq	__tcf_1(%rip), %rcx
	call	atexit
	leaq	fout(%rip), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
	leaq	__tcf_2(%rip), %rcx
	call	atexit
	leaq	get_word(%rip), %rax
	movl	$132999, %ebx
	movq	%rax, %rsi
.L36:
	testq	%rbx, %rbx
	js	.L37
	movl	$0, %r9d
	movsd	.LC4(%rip), %xmm2
	movl	$0, %edx
	movq	%rsi, %rcx
	call	_ZN4WordC1EPKcdi
	addq	$216, %rsi
	subq	$1, %rbx
	jmp	.L36
.L37:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_fin;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_fin
_GLOBAL__sub_I_fin:
.LFB2150:
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
	.quad	_GLOBAL__sub_I_fin
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	_ZN4Word13smaller_equalERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZN4Word12larger_equalERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERd;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_ZN4WordeqERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN4WordC1EPKcdi;	.scl	2;	.type	32;	.endef
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
