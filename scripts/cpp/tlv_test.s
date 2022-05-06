	.file	"tlv_test.cpp"
	.option nopic
	.attribute arch, "rv64i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	_ZN3CPU13get_hw_threadERy
	.type	_ZN3CPU13get_hw_threadERy, @function
_ZN3CPU13get_hw_threadERy:
.LFB0:
	.cfi_startproc
 #APP
# 8 "./533_cpu.h" 1
	mv	a5,tp
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN3CPU13get_hw_threadERy, .-_ZN3CPU13get_hw_threadERy
	.align	2
	.globl	_ZN3CPU10get_sharedERyy
	.type	_ZN3CPU10get_sharedERyy, @function
_ZN3CPU10get_sharedERyy:
.LFB1:
	.cfi_startproc
	li	a5,16384
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 12 "./533_cpu.h" 1
	ld	a1,0(a1)
# 0 "" 2
 #NO_APP
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN3CPU10get_sharedERyy, .-_ZN3CPU10get_sharedERyy
	.align	2
	.globl	_ZN3CPU10set_sharedEyy
	.type	_ZN3CPU10set_sharedEyy, @function
_ZN3CPU10set_sharedEyy:
.LFB2:
	.cfi_startproc
	li	a5,16384
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 20 "./533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN3CPU10set_sharedEyy, .-_ZN3CPU10set_sharedEyy
	.align	2
	.globl	_ZN4FIFO8get_dataERyy
	.type	_ZN4FIFO8get_dataERyy, @function
_ZN4FIFO8get_dataERyy:
.LFB3:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,35
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 40 "./533_cpu.h" 1
	ld	a1,0(a1)
# 0 "" 2
 #NO_APP
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN4FIFO8get_dataERyy, .-_ZN4FIFO8get_dataERyy
	.align	2
	.globl	_ZN4FIFO8set_dataEyy
	.type	_ZN4FIFO8set_dataEyy, @function
_ZN4FIFO8set_dataEyy:
.LFB4:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,35
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 48 "./533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN4FIFO8set_dataEyy, .-_ZN4FIFO8set_dataEyy
	.align	2
	.globl	_ZN4FIFO8get_ctrlERyy
	.type	_ZN4FIFO8get_ctrlERyy, @function
_ZN4FIFO8get_ctrlERyy:
.LFB5:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,3
	slli	a5,a5,12
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 57 "./533_cpu.h" 1
	ld	a1,0(a1)
# 0 "" 2
 #NO_APP
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN4FIFO8get_ctrlERyy, .-_ZN4FIFO8get_ctrlERyy
	.align	2
	.globl	_ZN4FIFO8set_ctrlEyy
	.type	_ZN4FIFO8set_ctrlEyy, @function
_ZN4FIFO8set_ctrlEyy:
.LFB6:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,3
	slli	a5,a5,12
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 65 "./533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN4FIFO8set_ctrlEyy, .-_ZN4FIFO8set_ctrlEyy
	.align	2
	.globl	_ZN4FIFO8get_tailERy
	.type	_ZN4FIFO8get_tailERy, @function
_ZN4FIFO8get_tailERy:
.LFB7:
	.cfi_startproc
	li	a5,2097152
	addi	a5,a5,1
	slli	a5,a5,14
 #APP
# 73 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN4FIFO8get_tailERy, .-_ZN4FIFO8get_tailERy
	.align	2
	.globl	_ZN4FIFO8set_tailEy
	.type	_ZN4FIFO8set_tailEy, @function
_ZN4FIFO8set_tailEy:
.LFB8:
	.cfi_startproc
	li	a5,2097152
	addi	a5,a5,1
	slli	a5,a5,14
 #APP
# 80 "./533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE8:
	.size	_ZN4FIFO8set_tailEy, .-_ZN4FIFO8set_tailEy
	.align	2
	.globl	_ZN4FIFO8get_headERy
	.type	_ZN4FIFO8get_headERy, @function
_ZN4FIFO8get_headERy:
.LFB9:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,5
	slli	a5,a5,12
 #APP
# 88 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE9:
	.size	_ZN4FIFO8get_headERy, .-_ZN4FIFO8get_headERy
	.align	2
	.globl	_ZN4FIFO8set_headEy
	.type	_ZN4FIFO8set_headEy, @function
_ZN4FIFO8set_headEy:
.LFB10:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,5
	slli	a5,a5,12
 #APP
# 95 "./533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN4FIFO8set_headEy, .-_ZN4FIFO8set_headEy
	.align	2
	.globl	_ZN4FIFO8get_fullERy
	.type	_ZN4FIFO8get_fullERy, @function
_ZN4FIFO8get_fullERy:
.LFB11:
	.cfi_startproc
	li	a5,4194304
	addi	a5,a5,3
	slli	a5,a5,13
 #APP
# 103 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN4FIFO8get_fullERy, .-_ZN4FIFO8get_fullERy
	.align	2
	.globl	_ZN4FIFO8set_doneEv
	.type	_ZN4FIFO8set_doneEv, @function
_ZN4FIFO8set_doneEv:
.LFB12:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,7
	slli	a5,a5,12
 #APP
# 110 "./533_cpu.h" 1
	sd	zero,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN4FIFO8set_doneEv, .-_ZN4FIFO8set_doneEv
	.align	2
	.globl	_ZN3TLV8get_dataERyy
	.type	_ZN3TLV8get_dataERyy, @function
_ZN3TLV8get_dataERyy:
.LFB13:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 139 "./533_cpu.h" 1
	ld	a1,0(a1)
# 0 "" 2
 #NO_APP
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN3TLV8get_dataERyy, .-_ZN3TLV8get_dataERyy
	.align	2
	.globl	_ZN3TLV8set_dataEyy
	.type	_ZN3TLV8set_dataEyy, @function
_ZN3TLV8set_dataEyy:
.LFB14:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 147 "./533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE14:
	.size	_ZN3TLV8set_dataEyy, .-_ZN3TLV8set_dataEyy
	.align	2
	.globl	_ZN3TLV15get_byte_offsetERy
	.type	_ZN3TLV15get_byte_offsetERy, @function
_ZN3TLV15get_byte_offsetERy:
.LFB15:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,24
 #APP
# 155 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN3TLV15get_byte_offsetERy, .-_ZN3TLV15get_byte_offsetERy
	.align	2
	.globl	_ZN3TLV15set_byte_offsetEy
	.type	_ZN3TLV15set_byte_offsetEy, @function
_ZN3TLV15set_byte_offsetEy:
.LFB16:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,24
 #APP
# 162 "./533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN3TLV15set_byte_offsetEy, .-_ZN3TLV15set_byte_offsetEy
	.align	2
	.globl	_ZN3TLV8get_typeERy
	.type	_ZN3TLV8get_typeERy, @function
_ZN3TLV8get_typeERy:
.LFB17:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,32
 #APP
# 170 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE17:
	.size	_ZN3TLV8get_typeERy, .-_ZN3TLV8get_typeERy
	.align	2
	.globl	_ZN3TLV10get_lengthERy
	.type	_ZN3TLV10get_lengthERy, @function
_ZN3TLV10get_lengthERy:
.LFB18:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,40
 #APP
# 177 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN3TLV10get_lengthERy, .-_ZN3TLV10get_lengthERy
	.align	2
	.globl	_ZN3TLV16get_value_offsetERy
	.type	_ZN3TLV16get_value_offsetERy, @function
_ZN3TLV16get_value_offsetERy:
.LFB19:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,48
 #APP
# 184 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN3TLV16get_value_offsetERy, .-_ZN3TLV16get_value_offsetERy
	.align	2
	.globl	_Z14soft_parse_tlvyyRyS_S_
	.type	_Z14soft_parse_tlvyyRyS_S_, @function
_Z14soft_parse_tlvyyRyS_S_:
.LFB20:
	.cfi_startproc
	li	a7,1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	slli	t1,a0,3
	slli	a7,a7,35
	sd	s0,8(sp)
	.cfi_offset 8, -8
	add	t1,t1,a7
 #APP
# 40 "./533_cpu.h" 1
	ld	t1,0(t1)
# 0 "" 2
 #NO_APP
	li	t3,4096
	addi	a6,a0,1
	addi	t3,t3,-8
	slli	a6,a6,3
	and	a6,a6,t3
	add	a6,a6,a7
 #APP
# 40 "./533_cpu.h" 1
	ld	a6,0(a6)
# 0 "" 2
 #NO_APP
	addi	a5,a0,2
	slli	a5,a5,3
	and	a5,a5,t3
	add	a5,a5,a7
 #APP
# 40 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	li	t3,0
	li	a7,1
	li	t5,7
	li	t6,7
	li	t0,252
	li	t2,253
	li	s0,254
.L26:
	bleu	a1,t5,.L22
	mv	t1,a6
	li	a1,0
	mv	a6,a5
.L22:
	subw	a0,t6,a1
	srl	a0,t1,a0
	andi	a0,a0,255
	bne	t3,zero,.L23
	bgtu	a0,t0,.L24
.L38:
	sd	a0,0(a2)
	j	.L25
.L24:
	beq	a0,t2,.L32
	bne	a0,s0,.L25
	li	a7,5
.L25:
	addi	t3,t3,1
	addi	a1,a1,1
	bgtu	a7,t3,.L26
	li	t3,0
	li	a0,1
	li	t5,8
	li	t6,7
	li	t0,252
	li	t2,253
	li	s0,254
.L31:
	bne	a1,t5,.L27
	mv	t1,a6
	li	a1,0
	mv	a6,a5
.L27:
	subw	a2,t6,a1
	srl	a2,t1,a2
	andi	a2,a2,255
	bne	t3,zero,.L28
	bgtu	a2,t0,.L29
.L39:
	sd	a2,0(a3)
	j	.L30
.L23:
	subw	t4,a7,t3
	slliw	t4,t4,3
	sll	a0,a0,t4
	ld	t4,0(a2)
	add	a0,t4,a0
	j	.L38
.L32:
	li	a7,3
	j	.L25
.L29:
	li	a0,3
	beq	a2,t2,.L30
	li	a0,5
	beq	a2,s0,.L30
	li	a0,9
.L30:
	addi	t3,t3,1
	addi	a1,a1,1
	bgtu	a0,t3,.L31
	ld	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	add	a7,a7,a0
	sd	a7,0(a4)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L28:
	.cfi_restore_state
	subw	t4,a0,t3
	slliw	t4,t4,3
	sll	a2,a2,t4
	ld	t4,0(a3)
	add	a2,t4,a2
	j	.L39
	.cfi_endproc
.LFE20:
	.size	_Z14soft_parse_tlvyyRyS_S_, .-_Z14soft_parse_tlvyyRyS_S_
	.align	2
	.globl	_Z9parse_tlvyyRyS_S_
	.type	_Z9parse_tlvyyRyS_S_, @function
_Z9parse_tlvyyRyS_S_:
.LFB21:
	.cfi_startproc
	li	a6,1
	slli	t1,a0,3
	slli	t4,a6,35
	add	t1,t1,t4
 #APP
# 40 "./533_cpu.h" 1
	ld	t1,0(t1)
# 0 "" 2
 #NO_APP
	li	t3,4096
	addi	a7,a0,1
	addi	t3,t3,-8
	slli	a7,a7,3
	and	a7,a7,t3
	add	a7,a7,t4
 #APP
# 40 "./533_cpu.h" 1
	ld	a7,0(a7)
# 0 "" 2
 #NO_APP
	addi	a5,a0,2
	slli	a5,a5,3
	and	a5,a5,t3
	add	a5,a5,t4
 #APP
# 40 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	slli	a0,a6,61
 #APP
# 147 "./533_cpu.h" 1
	sd	t1,0(a0)
# 0 "" 2
 #NO_APP
	addi	a6,a0,8
 #APP
# 147 "./533_cpu.h" 1
	sd	a7,0(a6)
# 0 "" 2
 #NO_APP
	addi	a6,a0,16
 #APP
# 147 "./533_cpu.h" 1
	sd	a5,0(a6)
# 0 "" 2
 #NO_APP
	addi	a5,a0,24
 #APP
# 162 "./533_cpu.h" 1
	sd	a1,0(a5)
# 0 "" 2
 #NO_APP
	addi	a5,a0,32
 #APP
# 170 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a2)
	addi	a5,a0,40
 #APP
# 177 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a3)
	addi	a0,a0,48
 #APP
# 184 "./533_cpu.h" 1
	ld	a0,0(a0)
# 0 "" 2
 #NO_APP
	sd	a0,0(a4)
	ret
	.cfi_endproc
.LFE21:
	.size	_Z9parse_tlvyyRyS_S_, .-_Z9parse_tlvyyRyS_S_
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
 #APP
# 8 "./533_cpu.h" 1
	mv	a5,tp
# 0 "" 2
 #NO_APP
	bne	a5,zero,.L43
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	s3,120(sp)
	sd	s4,112(sp)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	li	s3,8388608
	sd	s5,104(sp)
	li	s4,4194304
	.cfi_offset 21, -56
	li	s5,2097152
	sd	s8,80(sp)
	sd	s9,72(sp)
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	addi	s8,s3,5
	addi	s9,s3,3
	sd	s11,56(sp)
	addi	s4,s4,3
	addi	s5,s5,1
	.cfi_offset 27, -104
	li	s11,3
	addi	s3,s3,7
	sd	ra,152(sp)
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	s2,128(sp)
	sd	s6,96(sp)
	sd	s7,88(sp)
	sd	s10,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 26, -96
	slli	s4,s4,13
	slli	s5,s5,14
	slli	s8,s8,12
	slli	s9,s9,12
	slli	s11,s11,33
	slli	s3,s3,12
.L44:
 #APP
# 103 "./533_cpu.h" 1
	ld	a5,0(s4)
# 0 "" 2
 #NO_APP
	beq	a5,zero,.L44
 #APP
# 73 "./533_cpu.h" 1
	ld	a5,0(s5)
# 0 "" 2
# 88 "./533_cpu.h" 1
	ld	s7,0(s8)
# 0 "" 2
 #NO_APP
	li	s0,0
	mv	a3,s7
	li	a2,511
.L46:
	mv	a5,a3
	bleu	a3,a2,.L45
	addi	a5,a3,-512
.L45:
	slli	a4,a5,3
	add	a4,a4,s9
 #APP
# 57 "./533_cpu.h" 1
	ld	a4,0(a4)
# 0 "" 2
 #NO_APP
	addi	a5,s0,1
	addi	a3,a3,1
	bne	a4,zero,.L68
	add	a5,a5,s7
	li	a4,4096
	addi	a4,a4,-8
	slli	a5,a5,3
	and	a5,a5,a4
	li	a4,1
	slli	a4,a4,35
	add	a5,a5,a4
 #APP
# 40 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	srli	a5,a5,48
	andi	a5,a5,255
	li	a4,252
	beq	a5,a4,.L47
.L66:
 #APP
# 110 "./533_cpu.h" 1
	sd	zero,0(s3)
# 0 "" 2
 #NO_APP
	j	.L44
.L43:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
 #APP
# 88 "./tlv_test.cpp" 1
	nop
# 0 "" 2
 #NO_APP
	j	.L43
.L68:
	.cfi_def_cfa_offset 160
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	mv	s0,a5
	j	.L46
.L47:
	addi	s0,s0,2
	li	s1,0
	li	s6,0
	li	a1,4
	li	s2,1
	li	s10,16384
.L65:
	add	a0,s7,s0
	addi	a4,sp,40
	addi	a3,sp,32
	addi	a2,sp,24
	andi	a0,a0,511
	sd	a1,8(sp)
	call	_Z9parse_tlvyyRyS_S_
	ld	a4,24(sp)
	li	a6,5
	ld	a3,32(sp)
	ld	a1,8(sp)
	li	a7,6
	bne	a4,a6,.L48
	slli	a5,a6,32
	add	a5,a3,a5
 #APP
# 20 "./533_cpu.h" 1
	sd	a5,0(s10)
# 0 "" 2
 #NO_APP
	ld	s1,40(sp)
	ld	s2,32(sp)
	li	s6,1
	add	a1,s1,a1
	srli	a5,a1,3
	add	s2,s1,s2
	add	s0,s0,a5
	andi	a1,a1,7
.L64:
	bgeu	s1,s2,.L66
	j	.L65
.L48:
	bne	a4,a7,.L50
	add	a3,a3,s11
 #APP
# 20 "./533_cpu.h" 1
	sd	a3,0(s10)
# 0 "" 2
 #NO_APP
	ld	s1,40(sp)
	ld	s2,32(sp)
	li	s6,0
	add	a1,s1,a1
	srli	a5,a1,3
	add	s2,s1,s2
	add	s0,s0,a5
	andi	a1,a1,7
	j	.L64
.L50:
	li	a5,8
	beq	s6,zero,.L51
	beq	a4,a5,.L59
	bgtu	a4,a5,.L53
.L83:
	li	a5,1
	beq	a4,a5,.L61
	li	a5,7
	beq	a4,a5,.L55
.L77:
	li	a5,0
	j	.L76
.L53:
	li	a5,10
	beq	a4,a5,.L57
	li	a5,18
.L79:
	bne	a4,a5,.L77
	ld	a5,40(sp)
	li	a2,4
	add	a5,a3,a5
	add	a5,a5,a1
	j	.L56
.L55:
	ld	a5,40(sp)
	add	a5,a1,a5
.L76:
	li	a2,1
.L56:
	slli	a4,a4,32
	slli	a2,a2,3
	add	a4,a4,a3
	add	a2,a2,s10
 #APP
# 20 "./533_cpu.h" 1
	sd	a4,0(a2)
# 0 "" 2
 #NO_APP
	sub	a1,a5,a1
	srli	a4,a5,3
	add	s1,s1,a1
	add	s0,s0,a4
	andi	a1,a5,7
	j	.L64
.L57:
	ld	a5,40(sp)
	li	a2,5
	add	a5,a3,a5
	add	a5,a5,a1
	j	.L56
.L51:
	beq	a4,a5,.L59
	bleu	a4,a5,.L83
	li	a5,21
	j	.L79
.L59:
	ld	a5,40(sp)
	li	a2,2
	add	a5,a3,a5
	add	a5,a5,a1
	j	.L56
.L61:
	ld	a5,40(sp)
	li	a2,3
	add	a5,a3,a5
	add	a5,a5,a1
	j	.L56
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.1.0"
