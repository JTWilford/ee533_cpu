	.file	"test.cpp"
	.option nopic
	.attribute arch, "rv64i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	_ZN3CPU13get_hw_threadERm
	.type	_ZN3CPU13get_hw_threadERm, @function
_ZN3CPU13get_hw_threadERm:
.LFB0:
	.cfi_startproc
 #APP
# 6 "533_cpu.h" 1
	mv	a5,tp
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN3CPU13get_hw_threadERm, .-_ZN3CPU13get_hw_threadERm
	.align	2
	.globl	_ZN3CPU10get_sharedERmm
	.type	_ZN3CPU10get_sharedERmm, @function
_ZN3CPU10get_sharedERmm:
.LFB1:
	.cfi_startproc
	lui	a5,%hi(_ZN3CPU10SHARED_MEME)
	ld	a5,%lo(_ZN3CPU10SHARED_MEME)(a5)
	add	a1,a1,a5
 #APP
# 9 "533_cpu.h" 1
	ld	a1,0(a1)
# 0 "" 2
 #NO_APP
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN3CPU10get_sharedERmm, .-_ZN3CPU10get_sharedERmm
	.align	2
	.globl	_ZN3CPU10set_sharedEmm
	.type	_ZN3CPU10set_sharedEmm, @function
_ZN3CPU10set_sharedEmm:
.LFB2:
	.cfi_startproc
	lui	a5,%hi(_ZN3CPU10SHARED_MEME)
	ld	a5,%lo(_ZN3CPU10SHARED_MEME)(a5)
	add	a1,a1,a5
 #APP
# 17 "533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN3CPU10set_sharedEmm, .-_ZN3CPU10set_sharedEmm
	.align	2
	.globl	_ZN4FIFO8get_dataERmm
	.type	_ZN4FIFO8get_dataERmm, @function
_ZN4FIFO8get_dataERmm:
.LFB3:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,35
	add	a1,a1,a5
 #APP
# 37 "533_cpu.h" 1
	ld	a1,0(a1)
# 0 "" 2
 #NO_APP
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN4FIFO8get_dataERmm, .-_ZN4FIFO8get_dataERmm
	.align	2
	.globl	_ZN4FIFO8set_dataEmm
	.type	_ZN4FIFO8set_dataEmm, @function
_ZN4FIFO8set_dataEmm:
.LFB4:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,35
	add	a1,a1,a5
 #APP
# 45 "533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN4FIFO8set_dataEmm, .-_ZN4FIFO8set_dataEmm
	.align	2
	.globl	_ZN4FIFO8get_ctrlERmm
	.type	_ZN4FIFO8get_ctrlERmm, @function
_ZN4FIFO8get_ctrlERmm:
.LFB5:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,3
	slli	a5,a5,12
	add	a1,a1,a5
 #APP
# 54 "533_cpu.h" 1
	ld	a1,0(a1)
# 0 "" 2
 #NO_APP
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN4FIFO8get_ctrlERmm, .-_ZN4FIFO8get_ctrlERmm
	.align	2
	.globl	_ZN4FIFO8set_ctrlEmm
	.type	_ZN4FIFO8set_ctrlEmm, @function
_ZN4FIFO8set_ctrlEmm:
.LFB6:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,3
	slli	a5,a5,12
	add	a1,a1,a5
 #APP
# 62 "533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN4FIFO8set_ctrlEmm, .-_ZN4FIFO8set_ctrlEmm
	.align	2
	.globl	_ZN4FIFO8get_tailERm
	.type	_ZN4FIFO8get_tailERm, @function
_ZN4FIFO8get_tailERm:
.LFB7:
	.cfi_startproc
	li	a5,2097152
	addi	a5,a5,1
	slli	a5,a5,14
 #APP
# 70 "533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN4FIFO8get_tailERm, .-_ZN4FIFO8get_tailERm
	.align	2
	.globl	_ZN4FIFO8set_tailEm
	.type	_ZN4FIFO8set_tailEm, @function
_ZN4FIFO8set_tailEm:
.LFB8:
	.cfi_startproc
	li	a5,2097152
	addi	a5,a5,1
	slli	a5,a5,14
 #APP
# 77 "533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE8:
	.size	_ZN4FIFO8set_tailEm, .-_ZN4FIFO8set_tailEm
	.align	2
	.globl	_ZN4FIFO8get_headERm
	.type	_ZN4FIFO8get_headERm, @function
_ZN4FIFO8get_headERm:
.LFB9:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,5
	slli	a5,a5,12
 #APP
# 85 "533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE9:
	.size	_ZN4FIFO8get_headERm, .-_ZN4FIFO8get_headERm
	.align	2
	.globl	_ZN4FIFO8set_headEm
	.type	_ZN4FIFO8set_headEm, @function
_ZN4FIFO8set_headEm:
.LFB10:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,5
	slli	a5,a5,12
 #APP
# 92 "533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN4FIFO8set_headEm, .-_ZN4FIFO8set_headEm
	.align	2
	.globl	_ZN4FIFO8get_fullERm
	.type	_ZN4FIFO8get_fullERm, @function
_ZN4FIFO8get_fullERm:
.LFB11:
	.cfi_startproc
	li	a5,4194304
	addi	a5,a5,3
	slli	a5,a5,13
 #APP
# 100 "533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN4FIFO8get_fullERm, .-_ZN4FIFO8get_fullERm
	.align	2
	.globl	_ZN4FIFO8set_doneEv
	.type	_ZN4FIFO8set_doneEv, @function
_ZN4FIFO8set_doneEv:
.LFB12:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,5
	slli	a5,a5,12
 #APP
# 107 "533_cpu.h" 1
	sd	zero,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN4FIFO8set_doneEv, .-_ZN4FIFO8set_doneEv
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	li	a5,-255
	li	a4,8388608
	sd	s1,56(sp)
	li	a0,4194304
	.cfi_offset 9, -24
	li	s1,2097152
	addi	t6,a4,5
	slli	t2,a5,40
	slli	t0,a5,32
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	slli	ra,a5,48
	li	t3,1
	addi	a4,a4,3
	slli	a5,a5,24
	addi	a0,a0,3
	addi	s1,s1,1
	li	s0,-1
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	lui	t4,%hi(_ZN3CPU10SHARED_MEME)
	slli	a0,a0,13
	slli	s1,s1,14
	slli	t6,t6,12
	slli	a6,a4,12
	slli	a7,t3,35
	srli	s0,s0,8
	addi	ra,ra,-1
	addi	t2,t2,-1
	addi	t0,t0,-1
	addi	t5,a5,-1
 #APP
# 6 "533_cpu.h" 1
	mv	t1,tp
# 0 "" 2
 #NO_APP
.L17:
 #APP
# 100 "533_cpu.h" 1
	ld	a5,0(a0)
# 0 "" 2
 #NO_APP
	beq	a5,zero,.L17
 #APP
# 70 "533_cpu.h" 1
	ld	a5,0(s1)
# 0 "" 2
# 85 "533_cpu.h" 1
	ld	a1,0(t6)
# 0 "" 2
 #NO_APP
	sub	a5,a5,a1
	bge	a5,zero,.L18
	addi	a5,a5,512
.L18:
	add	a4,t1,a1
	li	a2,1
	add	a1,a5,a1
	bleu	a5,t1,.L34
	li	s2,51
	li	s5,-16711680
	li	s4,-65536
	li	s3,12288
	slli	s7,s2,56
	slli	s6,s2,48
	addi	s5,s5,-1
	addi	s4,s4,255
	addi	s3,s3,768
	j	.L33
.L24:
	addi	a4,a4,1
	beq	a1,a4,.L34
.L33:
	li	a5,511
	mv	a3,a4
	bleu	a4,a5,.L22
	addi	a3,a4,-512
.L22:
	add	a5,a3,a6
 #APP
# 54 "533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	beq	a2,zero,.L23
	bne	a5,zero,.L24
.L23:
	add	a3,a3,a7
 #APP
# 37 "533_cpu.h" 1
	ld	a5,0(a3)
# 0 "" 2
 #NO_APP
	li	a2,101
	andi	s8,a5,255
	bne	s8,a2,.L25
	andi	a5,a5,-256
	addi	a5,a5,51
.L25:
	srli	a2,a5,8
	andi	a2,a2,255
	li	s8,101
	bne	a2,s8,.L26
	and	a5,a5,s4
	add	a5,a5,s3
.L26:
	srli	a2,a5,16
	andi	a2,a2,255
	li	s8,101
	bne	a2,s8,.L27
	and	a5,a5,s5
	li	a2,3342336
	add	a5,a5,a2
.L27:
	srliw	a2,a5,24
	li	s8,101
	bne	a2,s8,.L28
	and	a5,a5,t5
	li	a2,855638016
	add	a5,a5,a2
.L28:
	srli	a2,a5,32
	andi	a2,a2,255
	li	s8,101
	bne	a2,s8,.L29
	and	a5,a5,t0
	slli	a2,s2,32
	add	a5,a5,a2
.L29:
	srli	a2,a5,40
	andi	a2,a2,255
	li	s8,101
	bne	a2,s8,.L30
	and	a5,a5,t2
	slli	a2,s2,40
	add	a5,a5,a2
.L30:
	srli	a2,a5,48
	andi	a2,a2,255
	li	s8,101
	bne	a2,s8,.L31
	and	a5,a5,ra
	add	a5,a5,s6
.L31:
	srli	a2,a5,56
	li	s8,101
	bne	a2,s8,.L32
	and	a5,a5,s0
	add	a5,a5,s7
.L32:
 #APP
# 45 "533_cpu.h" 1
	sd	a5,0(a3)
# 0 "" 2
 #NO_APP
	addi	a4,a4,1
	li	a2,0
	bne	a1,a4,.L33
.L34:
	ld	a2,%lo(_ZN3CPU10SHARED_MEME)(t4)
	bne	t1,zero,.L56
	addi	s2,a2,1
	addi	a1,a2,2
	addi	a2,a2,3
.L35:
 #APP
# 9 "533_cpu.h" 1
	ld	a5,0(s2)
# 0 "" 2
# 9 "533_cpu.h" 1
	ld	a3,0(a1)
# 0 "" 2
# 9 "533_cpu.h" 1
	ld	a4,0(a2)
# 0 "" 2
 #NO_APP
	and	a5,a5,a3
	and	a5,a5,a4
	beq	a5,zero,.L35
 #APP
# 107 "533_cpu.h" 1
	sd	zero,0(t6)
# 0 "" 2
 #NO_APP
	ld	a5,%lo(_ZN3CPU10SHARED_MEME)(t4)
 #APP
# 17 "533_cpu.h" 1
	sd	t3,0(a5)
# 0 "" 2
 #NO_APP
	ld	s3,%lo(_ZN3CPU10SHARED_MEME)(t4)
	addi	s2,s3,1
	addi	a1,s3,2
	addi	a2,s3,3
.L36:
 #APP
# 9 "533_cpu.h" 1
	ld	a5,0(s2)
# 0 "" 2
# 9 "533_cpu.h" 1
	ld	a3,0(a1)
# 0 "" 2
# 9 "533_cpu.h" 1
	ld	a4,0(a2)
# 0 "" 2
 #NO_APP
	or	a5,a5,a3
	or	a5,a5,a4
	bne	a5,zero,.L36
 #APP
# 17 "533_cpu.h" 1
	sd	a5,0(s3)
# 0 "" 2
 #NO_APP
	j	.L17
.L56:
	add	a2,t1,a2
 #APP
# 17 "533_cpu.h" 1
	sd	t3,0(a2)
# 0 "" 2
 #NO_APP
	ld	a4,%lo(_ZN3CPU10SHARED_MEME)(t4)
.L38:
 #APP
# 9 "533_cpu.h" 1
	ld	a5,0(a4)
# 0 "" 2
 #NO_APP
	beq	a5,zero,.L38
	add	a4,a4,t1
	li	a5,0
 #APP
# 17 "533_cpu.h" 1
	sd	a5,0(a4)
# 0 "" 2
 #NO_APP
	ld	a4,%lo(_ZN3CPU10SHARED_MEME)(t4)
.L39:
 #APP
# 9 "533_cpu.h" 1
	ld	a5,0(a4)
# 0 "" 2
 #NO_APP
	beq	a5,t3,.L39
	j	.L17
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.globl	_ZN3CPU10SHARED_MEME
	.section	.sdata,"aw"
	.align	3
	.type	_ZN3CPU10SHARED_MEME, @object
	.size	_ZN3CPU10SHARED_MEME, 8
_ZN3CPU10SHARED_MEME:
	.dword	16384
	.ident	"GCC: () 11.1.0"
