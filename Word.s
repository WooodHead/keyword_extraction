	.file	"Word.cpp"
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
	.text
	.align 2
	.globl	_ZN4WordC2EPKcdi
	.def	_ZN4WordC2EPKcdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4WordC2EPKcdi
_ZN4WordC2EPKcdi:
.LFB1518:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movsd	%xmm2, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movq	16(%rbp), %rax
	movl	$200, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movl	$0, -4(%rbp)
.L3:
	cmpq	$0, 24(%rbp)
	je	.L2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -4(%rbp)
	jmp	.L3
.L2:
	movq	16(%rbp), %rax
	movsd	32(%rbp), %xmm0
	movsd	%xmm0, 200(%rax)
	movq	16(%rbp), %rax
	movl	40(%rbp), %edx
	movl	%edx, 208(%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN4WordC1EPKcdi
	.def	_ZN4WordC1EPKcdi;	.scl	2;	.type	32;	.endef
	.set	_ZN4WordC1EPKcdi,_ZN4WordC2EPKcdi
	.align 2
	.globl	_ZN4WordltERKS_
	.def	_ZN4WordltERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4WordltERKS_
_ZN4WordltERKS_:
.LFB1520:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	$0, -4(%rbp)
.L9:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L5
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L5
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jge	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jle	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	addl	$1, -4(%rbp)
	jmp	.L9
.L5:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L10
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L11
	movl	$1, %eax
	jmp	.L7
.L11:
	movl	$0, %eax
	jmp	.L7
.L10:
	movl	$0, %eax
.L7:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4WordgtERKS_
	.def	_ZN4WordgtERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4WordgtERKS_
_ZN4WordgtERKS_:
.LFB1521:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	$0, -4(%rbp)
.L17:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L13
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L13
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jle	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jge	.L16
	movl	$0, %eax
	jmp	.L15
.L16:
	addl	$1, -4(%rbp)
	jmp	.L17
.L13:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L18
	movl	$0, %eax
	jmp	.L15
.L18:
	movl	$1, %eax
.L15:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4WordeqERKS_
	.def	_ZN4WordeqERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4WordeqERKS_
_ZN4WordeqERKS_:
.LFB1522:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	$0, -4(%rbp)
.L23:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L20
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L20
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	je	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	addl	$1, -4(%rbp)
	jmp	.L23
.L20:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	je	.L24
	movl	$0, %eax
	jmp	.L22
.L24:
	movl	$1, %eax
.L22:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4WordneERKS_
	.def	_ZN4WordneERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4WordneERKS_
_ZN4WordneERKS_:
.LFB1523:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordeqERKS_
	xorl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4WordleERKS_
	.def	_ZN4WordleERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4WordleERKS_
_ZN4WordleERKS_:
.LFB1524:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	$0, -4(%rbp)
.L32:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L28
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L28
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jge	.L29
	movl	$1, %eax
	jmp	.L30
.L29:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jle	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	addl	$1, -4(%rbp)
	jmp	.L32
.L28:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L33
	movl	$0, %eax
	jmp	.L30
.L33:
	movl	$1, %eax
.L30:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4WordgeERKS_
	.def	_ZN4WordgeERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4WordgeERKS_
_ZN4WordgeERKS_:
.LFB1525:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	$0, -4(%rbp)
.L39:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L35
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L35
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jle	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jge	.L38
	movl	$0, %eax
	jmp	.L37
.L38:
	addl	$1, -4(%rbp)
	jmp	.L39
.L35:
	movq	16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L40
	movl	$1, %eax
	jmp	.L37
.L40:
	movq	24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L41
	movl	$0, %eax
	jmp	.L37
.L41:
	movl	$1, %eax
.L37:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4Word11larger_thanERKS_
	.def	_ZN4Word11larger_thanERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Word11larger_thanERKS_
_ZN4Word11larger_thanERKS_:
.LFB1526:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordgtERKS_
	testb	%al, %al
	jne	.L43
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	je	.L44
	movq	16(%rbp), %rax
	movl	208(%rax), %edx
	movq	24(%rbp), %rax
	movl	208(%rax), %eax
	cmpl	%eax, %edx
	jle	.L44
.L43:
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	testb	%al, %al
	je	.L46
	movl	$1, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4Word12smaller_thanERKS_
	.def	_ZN4Word12smaller_thanERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Word12smaller_thanERKS_
_ZN4Word12smaller_thanERKS_:
.LFB1527:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordltERKS_
	testb	%al, %al
	jne	.L49
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	je	.L50
	movq	16(%rbp), %rax
	movl	208(%rax), %edx
	movq	24(%rbp), %rax
	movl	208(%rax), %eax
	cmpl	%eax, %edx
	jge	.L50
.L49:
	movl	$1, %eax
	jmp	.L51
.L50:
	movl	$0, %eax
.L51:
	testb	%al, %al
	je	.L52
	movl	$1, %eax
	jmp	.L53
.L52:
	movl	$0, %eax
.L53:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4Word5equalERKS_
	.def	_ZN4Word5equalERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Word5equalERKS_
_ZN4Word5equalERKS_:
.LFB1528:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	je	.L55
	movq	16(%rbp), %rax
	movl	208(%rax), %edx
	movq	24(%rbp), %rax
	movl	208(%rax), %eax
	cmpl	%eax, %edx
	jne	.L55
	movl	$1, %eax
	jmp	.L56
.L55:
	movl	$0, %eax
.L56:
	testb	%al, %al
	je	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4Word9not_equalERKS_
	.def	_ZN4Word9not_equalERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Word9not_equalERKS_
_ZN4Word9not_equalERKS_:
.LFB1529:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4Word5equalERKS_
	xorl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4Word12larger_equalERKS_
	.def	_ZN4Word12larger_equalERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Word12larger_equalERKS_
_ZN4Word12larger_equalERKS_:
.LFB1530:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordgtERKS_
	testb	%al, %al
	jne	.L62
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	je	.L63
	movq	16(%rbp), %rax
	movl	208(%rax), %edx
	movq	24(%rbp), %rax
	movl	208(%rax), %eax
	cmpl	%eax, %edx
	jl	.L63
.L62:
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	testb	%al, %al
	je	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN4Word13smaller_equalERKS_
	.def	_ZN4Word13smaller_equalERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Word13smaller_equalERKS_
_ZN4Word13smaller_equalERKS_:
.LFB1531:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordltERKS_
	testb	%al, %al
	jne	.L68
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN4WordeqERKS_
	testb	%al, %al
	je	.L69
	movq	16(%rbp), %rax
	movl	208(%rax), %edx
	movq	24(%rbp), %rax
	movl	208(%rax), %eax
	cmpl	%eax, %edx
	jg	.L69
.L68:
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	testb	%al, %al
	je	.L71
	movl	$1, %eax
	jmp	.L72
.L71:
	movl	$0, %eax
.L72:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB1968:
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
.LFB1967:
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
	jne	.L76
	cmpl	$65535, 24(%rbp)
	jne	.L76
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
.L76:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__ZN4WordC2EPKcdi;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN4WordC2EPKcdi
_GLOBAL__sub_I__ZN4WordC2EPKcdi:
.LFB1969:
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
	.quad	_GLOBAL__sub_I__ZN4WordC2EPKcdi
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
