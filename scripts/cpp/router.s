	.file	"router.cpp"
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
	slli	a1,a1,3
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
	slli	a1,a1,3
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
# 41 "./533_cpu.h" 1
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
# 49 "./533_cpu.h" 1
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
# 58 "./533_cpu.h" 1
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
# 66 "./533_cpu.h" 1
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
# 74 "./533_cpu.h" 1
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
# 81 "./533_cpu.h" 1
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
# 89 "./533_cpu.h" 1
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
# 96 "./533_cpu.h" 1
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
# 104 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN4FIFO8get_fullERy, .-_ZN4FIFO8get_fullERy
	.align	2
	.globl	_ZN4FIFO8get_doneERy
	.type	_ZN4FIFO8get_doneERy, @function
_ZN4FIFO8get_doneERy:
.LFB12:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,7
	slli	a5,a5,12
 #APP
# 111 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN4FIFO8get_doneERy, .-_ZN4FIFO8get_doneERy
	.align	2
	.globl	_ZN4FIFO8set_doneEv
	.type	_ZN4FIFO8set_doneEv, @function
_ZN4FIFO8set_doneEv:
.LFB13:
	.cfi_startproc
	li	a5,8388608
	addi	a5,a5,7
	slli	a5,a5,12
 #APP
# 118 "./533_cpu.h" 1
	sd	zero,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN4FIFO8set_doneEv, .-_ZN4FIFO8set_doneEv
	.align	2
	.globl	_ZN4FIFO8set_sendEy
	.type	_ZN4FIFO8set_sendEy, @function
_ZN4FIFO8set_sendEy:
.LFB14:
	.cfi_startproc
	li	a5,1048576
	addi	a5,a5,1
	slli	a5,a5,15
 #APP
# 126 "./533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE14:
	.size	_ZN4FIFO8set_sendEy, .-_ZN4FIFO8set_sendEy
	.align	2
	.globl	_ZN3TLV8get_dataERyy
	.type	_ZN3TLV8get_dataERyy, @function
_ZN3TLV8get_dataERyy:
.LFB15:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 155 "./533_cpu.h" 1
	ld	a1,0(a1)
# 0 "" 2
 #NO_APP
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN3TLV8get_dataERyy, .-_ZN3TLV8get_dataERyy
	.align	2
	.globl	_ZN3TLV8set_dataEyy
	.type	_ZN3TLV8set_dataEyy, @function
_ZN3TLV8set_dataEyy:
.LFB16:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 163 "./533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN3TLV8set_dataEyy, .-_ZN3TLV8set_dataEyy
	.align	2
	.globl	_ZN3TLV15get_byte_offsetERy
	.type	_ZN3TLV15get_byte_offsetERy, @function
_ZN3TLV15get_byte_offsetERy:
.LFB17:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,24
 #APP
# 171 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE17:
	.size	_ZN3TLV15get_byte_offsetERy, .-_ZN3TLV15get_byte_offsetERy
	.align	2
	.globl	_ZN3TLV15set_byte_offsetEy
	.type	_ZN3TLV15set_byte_offsetEy, @function
_ZN3TLV15set_byte_offsetEy:
.LFB18:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,24
 #APP
# 178 "./533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN3TLV15set_byte_offsetEy, .-_ZN3TLV15set_byte_offsetEy
	.align	2
	.globl	_ZN3TLV8get_typeERy
	.type	_ZN3TLV8get_typeERy, @function
_ZN3TLV8get_typeERy:
.LFB19:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,32
 #APP
# 186 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN3TLV8get_typeERy, .-_ZN3TLV8get_typeERy
	.align	2
	.globl	_ZN3TLV10get_lengthERy
	.type	_ZN3TLV10get_lengthERy, @function
_ZN3TLV10get_lengthERy:
.LFB20:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,40
 #APP
# 193 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE20:
	.size	_ZN3TLV10get_lengthERy, .-_ZN3TLV10get_lengthERy
	.align	2
	.globl	_ZN3TLV16get_value_offsetERy
	.type	_ZN3TLV16get_value_offsetERy, @function
_ZN3TLV16get_value_offsetERy:
.LFB21:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,61
	addi	a5,a5,48
 #APP
# 200 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE21:
	.size	_ZN3TLV16get_value_offsetERy, .-_ZN3TLV16get_value_offsetERy
	.align	2
	.globl	_ZN3PAT8get_dataERyy
	.type	_ZN3PAT8get_dataERyy, @function
_ZN3PAT8get_dataERyy:
.LFB22:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,62
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 217 "./533_cpu.h" 1
	ld	a1,0(a1)
# 0 "" 2
 #NO_APP
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE22:
	.size	_ZN3PAT8get_dataERyy, .-_ZN3PAT8get_dataERyy
	.align	2
	.globl	_ZN3PAT8set_dataEyy
	.type	_ZN3PAT8set_dataEyy, @function
_ZN3PAT8set_dataEyy:
.LFB23:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,62
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 225 "./533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE23:
	.size	_ZN3PAT8set_dataEyy, .-_ZN3PAT8set_dataEyy
	.align	2
	.globl	_ZN3PAT11get_patternERy
	.type	_ZN3PAT11get_patternERy, @function
_ZN3PAT11get_patternERy:
.LFB24:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,62
	addi	a5,a5,16
 #APP
# 233 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE24:
	.size	_ZN3PAT11get_patternERy, .-_ZN3PAT11get_patternERy
	.align	2
	.globl	_ZN3PAT11set_patternEy
	.type	_ZN3PAT11set_patternEy, @function
_ZN3PAT11set_patternEy:
.LFB25:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,62
	addi	a5,a5,16
 #APP
# 240 "./533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN3PAT11set_patternEy, .-_ZN3PAT11set_patternEy
	.align	2
	.globl	_ZN3PAT13get_wild_maskERy
	.type	_ZN3PAT13get_wild_maskERy, @function
_ZN3PAT13get_wild_maskERy:
.LFB26:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,62
	addi	a5,a5,24
 #APP
# 248 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE26:
	.size	_ZN3PAT13get_wild_maskERy, .-_ZN3PAT13get_wild_maskERy
	.align	2
	.globl	_ZN3PAT13set_wild_maskEy
	.type	_ZN3PAT13set_wild_maskEy, @function
_ZN3PAT13set_wild_maskEy:
.LFB27:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,62
	addi	a5,a5,24
 #APP
# 255 "./533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE27:
	.size	_ZN3PAT13set_wild_maskEy, .-_ZN3PAT13set_wild_maskEy
	.align	2
	.globl	_ZN3PAT10get_resultERy
	.type	_ZN3PAT10get_resultERy, @function
_ZN3PAT10get_resultERy:
.LFB28:
	.cfi_startproc
	li	a5,1
	slli	a5,a5,62
	addi	a5,a5,32
 #APP
# 263 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN3PAT10get_resultERy, .-_ZN3PAT10get_resultERy
	.align	2
	.globl	_Z9parse_tlvyyRyS_S_
	.type	_Z9parse_tlvyyRyS_S_, @function
_Z9parse_tlvyyRyS_S_:
.LFB29:
	.cfi_startproc
	li	a6,1
	slli	t1,a0,3
	slli	t4,a6,35
	add	t1,t1,t4
 #APP
# 41 "./533_cpu.h" 1
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
# 41 "./533_cpu.h" 1
	ld	a7,0(a7)
# 0 "" 2
 #NO_APP
	addi	a5,a0,2
	slli	a5,a5,3
	and	a5,a5,t3
	add	a5,a5,t4
 #APP
# 41 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	slli	a0,a6,61
 #APP
# 163 "./533_cpu.h" 1
	sd	t1,0(a0)
# 0 "" 2
 #NO_APP
	addi	a6,a0,8
 #APP
# 163 "./533_cpu.h" 1
	sd	a7,0(a6)
# 0 "" 2
 #NO_APP
	addi	a6,a0,16
 #APP
# 163 "./533_cpu.h" 1
	sd	a5,0(a6)
# 0 "" 2
 #NO_APP
	addi	a5,a0,24
 #APP
# 178 "./533_cpu.h" 1
	sd	a1,0(a5)
# 0 "" 2
 #NO_APP
	addi	a5,a0,32
 #APP
# 186 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a2)
	addi	a5,a0,40
 #APP
# 193 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a3)
	addi	a0,a0,48
 #APP
# 200 "./533_cpu.h" 1
	ld	a0,0(a0)
# 0 "" 2
 #NO_APP
	sd	a0,0(a4)
	ret
	.cfi_endproc
.LFE29:
	.size	_Z9parse_tlvyyRyS_S_, .-_Z9parse_tlvyyRyS_S_
	.align	2
	.globl	_Z13wait_for_fullRyS_
	.type	_Z13wait_for_fullRyS_, @function
_Z13wait_for_fullRyS_:
.LFB30:
	.cfi_startproc
	li	a5,4194304
	addi	a5,a5,3
	slli	a5,a5,13
.L32:
 #APP
# 104 "./533_cpu.h" 1
	ld	a4,0(a5)
# 0 "" 2
 #NO_APP
	beq	a4,zero,.L32
	li	a5,2097152
	addi	a5,a5,1
	slli	a5,a5,14
 #APP
# 74 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a1)
	li	a5,8388608
	addi	a5,a5,5
	slli	a5,a5,12
 #APP
# 89 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	sd	a5,0(a0)
	ret
	.cfi_endproc
.LFE30:
	.size	_Z13wait_for_fullRyS_, .-_Z13wait_for_fullRyS_
	.align	2
	.globl	_Z13wait_for_donev
	.type	_Z13wait_for_donev, @function
_Z13wait_for_donev:
.LFB31:
	.cfi_startproc
	li	a5,2097152
	addi	a5,a5,1
	slli	a5,a5,14
 #APP
# 74 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	li	a4,8388608
	addi	a4,a4,5
	slli	a4,a4,12
.L36:
 #APP
# 89 "./533_cpu.h" 1
	ld	a3,0(a4)
# 0 "" 2
 #NO_APP
	bne	a5,a3,.L36
	ret
	.cfi_endproc
.LFE31:
	.size	_Z13wait_for_donev, .-_Z13wait_for_donev
	.align	2
	.globl	_Z13wait_for_syncy
	.type	_Z13wait_for_syncy, @function
_Z13wait_for_syncy:
.LFB32:
	.cfi_startproc
	li	a4,0
.L39:
 #APP
# 12 "./533_cpu.h" 1
	ld	a5,0(a4)
# 0 "" 2
 #NO_APP
	bne	a0,a5,.L39
	ret
	.cfi_endproc
.LFE32:
	.size	_Z13wait_for_syncy, .-_Z13wait_for_syncy
	.align	2
	.globl	_Z8set_syncy
	.type	_Z8set_syncy, @function
_Z8set_syncy:
.LFB33:
	.cfi_startproc
	li	a5,0
 #APP
# 20 "./533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE33:
	.size	_Z8set_syncy, .-_Z8set_syncy
	.align	2
	.globl	_Z12skip_headersyyRy
	.type	_Z12skip_headersyyRy, @function
_Z12skip_headersyyRy:
.LFB34:
	.cfi_startproc
	li	a4,8388608
	addi	a4,a4,3
	slli	a5,a0,3
	slli	a4,a4,12
	add	a5,a5,a4
 #APP
# 58 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	li	a1,4096
	li	a3,0
	addi	a1,a1,-8
.L43:
	bne	a5,zero,.L44
	sd	a3,0(a2)
	ret
.L44:
	addi	a3,a3,1
	add	a5,a3,a0
	slli	a5,a5,3
	and	a5,a5,a1
	add	a5,a5,a4
 #APP
# 58 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	j	.L43
	.cfi_endproc
.LFE34:
	.size	_Z12skip_headersyyRy, .-_Z12skip_headersyyRy
	.align	2
	.globl	_Z14capture_packetv
	.type	_Z14capture_packetv, @function
_Z14capture_packetv:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a1,sp
	addi	a0,sp,8
	sd	ra,24(sp)
	.cfi_offset 1, -8
	call	_Z13wait_for_fullRyS_
	ld	a4,0(sp)
	ld	a5,8(sp)
	sub	a4,a4,a5
	bge	a4,zero,.L46
	addi	a4,a4,512
.L46:
	li	a3,8388608
	li	a5,4096
	addi	a3,a3,3
	li	a6,1
	addi	a1,a5,-2048
	li	a2,0
	addi	a0,a5,-8
	slli	a3,a3,12
	slli	a6,a6,35
.L47:
	bne	a2,a4,.L48
	li	a0,1
	call	_Z13wait_for_syncy
	li	a5,0
 #APP
# 20 "./533_cpu.h" 1
	sd	a5,0(a5)
# 0 "" 2
 #NO_APP
	ld	ra,24(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L48:
	.cfi_restore_state
	ld	a5,8(sp)
	add	a5,a2,a5
	slli	a5,a5,3
	and	a5,a5,a0
	add	a7,a5,a3
 #APP
# 58 "./533_cpu.h" 1
	ld	a7,0(a7)
# 0 "" 2
 #NO_APP
	add	a5,a5,a6
 #APP
# 41 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
# 20 "./533_cpu.h" 1
	sd	a7,0(a1)
# 0 "" 2
 #NO_APP
	addi	a7,a1,1024
 #APP
# 20 "./533_cpu.h" 1
	sd	a5,0(a7)
# 0 "" 2
 #NO_APP
	addi	a2,a2,1
	addi	a1,a1,8
	j	.L47
	.cfi_endproc
.LFE35:
	.size	_Z14capture_packetv, .-_Z14capture_packetv
	.align	2
	.globl	_Z10align_nameRyS_yy
	.type	_Z10align_nameRyS_yy, @function
_Z10align_nameRyS_yy:
.LFB36:
	.cfi_startproc
	ld	a4,0(a1)
	slli	a2,a2,3
	li	a5,64
	subw	a5,a5,a2
	srl	a4,a4,a5
	sd	a4,0(a1)
	ld	a5,0(a0)
	sll	a5,a5,a2
	add	a5,a5,a4
	sd	a5,0(a0)
	li	a5,7
	bgtu	a3,a5,.L50
 #APP
# 101 "./router.cpp" 1
	#Small name
# 0 "" 2
 #NO_APP
	slliw	a3,a3,3
 #APP
# 103 "./router.cpp" 1
	li	a5,-1
# 0 "" 2
 #NO_APP
	srl	a5,a5,a3
	ld	a3,0(a0)
	not	a4,a5
	and	a4,a4,a3
	add	a5,a4,a5
	sd	a5,0(a0)
.L50:
	ret
	.cfi_endproc
.LFE36:
	.size	_Z10align_nameRyS_yy, .-_Z10align_nameRyS_yy
	.align	2
	.globl	_Z14update_dest_ipyyy
	.type	_Z14update_dest_ipyyy, @function
_Z14update_dest_ipyyy:
.LFB37:
	.cfi_startproc
	addi	a5,a2,16
	srli	a5,a5,3
	add	a1,a5,a1
	andi	a1,a1,511
	li	a5,1
	andi	a3,a2,7
	slli	a6,a1,3
	slli	a5,a5,35
	li	a4,4
	mv	a2,a3
	add	a6,a6,a5
	bgtu	a3,a4,.L53
 #APP
# 41 "./533_cpu.h" 1
	ld	a3,0(a6)
# 0 "" 2
 #NO_APP
	subw	a4,a4,a2
	slliw	a4,a4,3
	li	a5,-1
	sllw	a5,a5,a4
	not	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	and	a5,a5,a3
	sll	a4,a0,a4
	add	a0,a5,a4
 #APP
# 49 "./533_cpu.h" 1
	sd	a0,0(a6)
# 0 "" 2
 #NO_APP
	ret
.L53:
 #APP
# 41 "./533_cpu.h" 1
	ld	t1,0(a6)
# 0 "" 2
 #NO_APP
	addi	a1,a1,1
	slli	a1,a1,3
	add	a1,a1,a5
 #APP
# 41 "./533_cpu.h" 1
	ld	a7,0(a1)
# 0 "" 2
 #NO_APP
	li	a3,8
	subw	a3,a3,a2
	slliw	a3,a3,3
	li	a5,-1
	srlw	a4,a5,a3
	not	a4,a4
	slli	a4,a4,32
	srli	a4,a4,32
	and	a4,a4,t1
	srl	a3,a0,a3
	addiw	a2,a2,-4
	slliw	a2,a2,3
	add	a4,a4,a3
 #APP
# 49 "./533_cpu.h" 1
	sd	a4,0(a6)
# 0 "" 2
 #NO_APP
	srlw	a5,a5,a2
	not	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	and	a5,a5,a7
	sll	a0,a0,a2
	add	a0,a5,a0
 #APP
# 49 "./533_cpu.h" 1
	sd	a0,0(a1)
# 0 "" 2
 #NO_APP
	ret
	.cfi_endproc
.LFE37:
	.size	_Z14update_dest_ipyyy, .-_Z14update_dest_ipyyy
	.align	2
	.globl	_Z16forward_interestyyy
	.type	_Z16forward_interestyyy, @function
_Z16forward_interestyyy:
.LFB38:
	.cfi_startproc
	li	a5,1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	slli	a5,a5,62
	mv	t3,a0
	li	t4,-1
	li	a0,49152
	sd	s0,24(sp)
	sd	s1,16(sp)
	sd	s2,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	li	a4,128
	li	t1,0
	addi	a0,a0,-1324
	addi	t0,a5,16
	addi	t2,a5,24
	addi	s0,a5,32
	li	s1,16
	srli	t4,t4,8
	li	t6,192
.L58:
 #APP
# 148 "./router.cpp" 1
	#Reading IP Table
# 0 "" 2
# 12 "./533_cpu.h" 1
	ld	a3,0(a4)
# 0 "" 2
 #NO_APP
	addi	a6,a4,8
 #APP
# 12 "./533_cpu.h" 1
	ld	a6,0(a6)
# 0 "" 2
# 225 "./533_cpu.h" 1
	sd	t3,0(a5)
# 0 "" 2
# 240 "./533_cpu.h" 1
	sd	a3,0(t0)
# 0 "" 2
 #NO_APP
	srli	a3,a6,32
 #APP
# 255 "./533_cpu.h" 1
	sd	a3,0(t2)
# 0 "" 2
# 263 "./533_cpu.h" 1
	ld	s2,0(s0)
# 0 "" 2
 #NO_APP
	li	a7,0
	li	a3,0
.L56:
	srl	t5,s2,a7
	andi	t5,t5,1
	addi	a7,a7,1
	add	a3,a3,t5
	bne	a7,s1,.L56
	bleu	a3,t1,.L57
	and	a0,a6,t4
	mv	t1,a3
.L57:
	addi	a4,a4,16
	bne	a4,t6,.L58
	li	a5,24
 #APP
# 20 "./533_cpu.h" 1
	sd	a0,0(a5)
# 0 "" 2
 #NO_APP
	li	a5,32
 #APP
# 20 "./533_cpu.h" 1
	sd	t1,0(a5)
# 0 "" 2
 #NO_APP
	ld	s0,24(sp)
	.cfi_restore 8
	ld	s1,16(sp)
	.cfi_restore 9
	ld	s2,8(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	tail	_Z14update_dest_ipyyy
	.cfi_endproc
.LFE38:
	.size	_Z16forward_interestyyy, .-_Z16forward_interestyyy
	.align	2
	.globl	_Z10update_pityyyRy
	.type	_Z10update_pityyyRy, @function
_Z10update_pityyyRy:
.LFB39:
	.cfi_startproc
	addi	a2,a2,12
	andi	a5,a2,7
	srli	a2,a2,3
	add	a2,a2,a1
	andi	a2,a2,511
	li	a1,1
	slli	a4,a2,3
	slli	a1,a1,35
	add	a4,a4,a1
 #APP
# 41 "./533_cpu.h" 1
	ld	a4,0(a4)
# 0 "" 2
 #NO_APP
	slliw	a7,a5,3
	sll	a4,a4,a7
	li	a7,4
	sext.w	a6,a5
	srli	a4,a4,32
	bleu	a5,a7,.L63
	addi	a5,a2,1
	li	a2,4096
	addi	a2,a2,-8
	slli	a5,a5,3
	and	a5,a5,a2
	add	a5,a5,a1
 #APP
# 41 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	li	a2,12
	subw	a2,a2,a6
	slliw	a2,a2,3
	srl	a5,a5,a2
	add	a4,a4,a5
.L63:
	sd	zero,0(a3)
	li	a1,32
	li	a5,256
	li	a7,1
	li	a6,160
.L68:
 #APP
# 12 "./533_cpu.h" 1
	ld	a2,0(a5)
# 0 "" 2
 #NO_APP
	beq	a2,zero,.L64
	bne	a0,a2,.L64
 #APP
# 197 "./router.cpp" 1
	#Existed
# 0 "" 2
 #NO_APP
	sd	a7,0(a3)
	addi	a2,a5,8
	addi	t1,a5,64
.L67:
 #APP
# 12 "./533_cpu.h" 1
	ld	t3,0(a2)
# 0 "" 2
 #NO_APP
	bne	t3,zero,.L65
 #APP
# 203 "./router.cpp" 1
	#Entry Added
# 0 "" 2
# 20 "./533_cpu.h" 1
	sd	a4,0(a2)
# 0 "" 2
 #NO_APP
	ret
.L65:
	addi	a2,a2,8
	bne	a2,t1,.L67
.L64:
	addi	a1,a1,8
	addi	a5,a5,64
	bne	a1,a6,.L68
	ld	a5,0(a3)
	bne	a5,zero,.L62
 #APP
# 211 "./router.cpp" 1
	#Didn't Exist
# 0 "" 2
 #NO_APP
	li	a5,32
	li	a1,160
.L73:
	slli	a2,a5,3
 #APP
# 12 "./533_cpu.h" 1
	ld	a6,0(a2)
# 0 "" 2
 #NO_APP
	bne	a6,zero,.L70
 #APP
# 218 "./router.cpp" 1
	#New Entry Made
# 0 "" 2
# 20 "./533_cpu.h" 1
	sd	a0,0(a2)
# 0 "" 2
 #NO_APP
	addi	a5,a5,1
	slli	a5,a5,3
 #APP
# 20 "./533_cpu.h" 1
	sd	a4,0(a5)
# 0 "" 2
 #NO_APP
	li	a5,2
	li	a1,0
	li	a3,8
.L71:
	slli	a4,a5,3
	add	a4,a4,a2
 #APP
# 20 "./533_cpu.h" 1
	sd	a1,0(a4)
# 0 "" 2
 #NO_APP
	addi	a5,a5,1
	bne	a5,a3,.L71
	ret
.L70:
	addi	a5,a5,8
	bne	a5,a1,.L73
	li	a5,1
	sd	a5,0(a3)
.L62:
	ret
	.cfi_endproc
.LFE39:
	.size	_Z10update_pityyyRy, .-_Z10update_pityyyRy
	.align	2
	.globl	_Z11resolve_pityyy
	.type	_Z11resolve_pityyy, @function
_Z11resolve_pityyy:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s0,80(sp)
	sd	s10,0(sp)
	.cfi_offset 8, -16
	.cfi_offset 26, -96
	li	s0,1048576
	li	s10,8388608
	sd	s7,24(sp)
	addi	s0,s0,1
	.cfi_offset 23, -72
	addi	s7,s10,7
	sd	s1,72(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	ra,88(sp)
	sd	s2,64(sp)
	sd	s8,16(sp)
	sd	s9,8(sp)
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	mv	s5,a0
	mv	s3,a1
	mv	s6,a2
	li	s4,32
	li	s1,256
	slli	s0,s0,15
	slli	s7,s7,12
.L85:
 #APP
# 12 "./533_cpu.h" 1
	ld	a5,0(s1)
# 0 "" 2
 #NO_APP
	addi	s9,s1,64
	bne	s5,a5,.L82
 #APP
# 239 "./router.cpp" 1
	#Found PI to Resolve
# 0 "" 2
 #NO_APP
	addi	s8,s10,5
	addi	s2,s1,8
	slli	s8,s8,12
.L84:
 #APP
# 12 "./533_cpu.h" 1
	ld	a0,0(s2)
# 0 "" 2
 #NO_APP
	beq	a0,zero,.L83
	mv	a2,s6
	mv	a1,s3
	call	_Z14update_dest_ipyyy
	li	a5,1
 #APP
# 126 "./533_cpu.h" 1
	sd	a5,0(s0)
# 0 "" 2
# 118 "./533_cpu.h" 1
	sd	zero,0(s7)
# 0 "" 2
 #NO_APP
	call	_Z13wait_for_donev
 #APP
# 96 "./533_cpu.h" 1
	sd	s3,0(s8)
# 0 "" 2
 #NO_APP
	li	a5,0
 #APP
# 126 "./533_cpu.h" 1
	sd	a5,0(s0)
# 0 "" 2
# 20 "./533_cpu.h" 1
	sd	a5,0(s2)
# 0 "" 2
 #NO_APP
.L83:
	addi	s2,s2,8
	bne	s2,s9,.L84
	li	a5,0
 #APP
# 20 "./533_cpu.h" 1
	sd	a5,0(s1)
# 0 "" 2
 #NO_APP
.L82:
	addi	s4,s4,8
	li	a5,160
	mv	s1,s9
	bne	s4,a5,.L85
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	ld	s3,56(sp)
	.cfi_restore 19
	ld	s4,48(sp)
	.cfi_restore 20
	ld	s5,40(sp)
	.cfi_restore 21
	ld	s6,32(sp)
	.cfi_restore 22
	ld	s7,24(sp)
	.cfi_restore 23
	ld	s8,16(sp)
	.cfi_restore 24
	ld	s9,8(sp)
	.cfi_restore 25
	ld	s10,0(sp)
	.cfi_restore 26
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	_Z11resolve_pityyy, .-_Z11resolve_pityyy
	.align	2
	.globl	_Z16int_name_handleryyyy
	.type	_Z16int_name_handleryyyy, @function
_Z16int_name_handleryyyy:
.LFB41:
	.cfi_startproc
	srli	a5,a0,3
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	add	a5,a5,a2
	sd	s3,56(sp)
	andi	a5,a5,511
	.cfi_offset 19, -40
	li	s3,1
	sd	s2,64(sp)
	slli	a4,a5,3
	.cfi_offset 18, -32
	slli	s2,s3,35
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	ra,88(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	mv	s0,a2
	mv	s1,a3
	add	a4,a4,s2
 #APP
# 41 "./533_cpu.h" 1
	ld	a4,0(a4)
# 0 "" 2
 #NO_APP
	addi	a5,a5,1
	slli	a5,a5,3
	sd	a4,24(sp)
	add	a5,a5,s2
 #APP
# 41 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	mv	a3,a1
	andi	a2,a0,7
	addi	a1,sp,32
	addi	a0,sp,24
	sd	a5,32(sp)
	call	_Z10align_nameRyS_yy
	ld	a5,24(sp)
	li	a4,16
 #APP
# 20 "./533_cpu.h" 1
	sd	a5,0(a4)
# 0 "" 2
 #NO_APP
	ld	a0,24(sp)
	addi	a3,sp,40
	mv	a2,s1
	mv	a1,s0
	sd	a0,8(sp)
	call	_Z10update_pityyyRy
	ld	a5,40(sp)
	ld	a0,8(sp)
	bne	a5,zero,.L93
	mv	a1,s0
	ld	s0,80(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s2,64(sp)
	.cfi_restore 18
	ld	s3,56(sp)
	.cfi_restore 19
	mv	a2,s1
	ld	s1,72(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	tail	_Z16forward_interestyyy
.L93:
	.cfi_restore_state
	li	a5,8388608
	addi	a5,a5,3
	slli	a4,s0,3
	slli	a5,a5,12
	add	a5,a4,a5
 #APP
# 66 "./533_cpu.h" 1
	sd	s3,0(a5)
# 0 "" 2
 #NO_APP
	li	a5,0
	add	a4,a4,s2
 #APP
# 49 "./533_cpu.h" 1
	sd	a5,0(a4)
# 0 "" 2
 #NO_APP
	li	a5,2097152
	addi	a5,a5,1
	addi	s0,s0,1
	slli	a5,a5,14
 #APP
# 81 "./533_cpu.h" 1
	sd	s0,0(a5)
# 0 "" 2
 #NO_APP
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	ld	s3,56(sp)
	.cfi_restore 19
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	_Z16int_name_handleryyyy, .-_Z16int_name_handleryyyy
	.align	2
	.globl	_Z17data_name_handleryyyy
	.type	_Z17data_name_handleryyyy, @function
_Z17data_name_handleryyyy:
.LFB42:
	.cfi_startproc
	srli	a5,a0,3
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	add	a5,a5,a2
	sd	s3,24(sp)
	andi	a5,a5,511
	.cfi_offset 19, -40
	li	s3,1
	sd	s1,40(sp)
	slli	a4,a5,3
	.cfi_offset 9, -24
	slli	s1,s3,35
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	mv	s0,a2
	mv	s2,a3
	add	a4,a4,s1
 #APP
# 41 "./533_cpu.h" 1
	ld	a4,0(a4)
# 0 "" 2
 #NO_APP
	addi	a5,a5,1
	slli	a5,a5,3
	sd	a4,0(sp)
	add	a5,a5,s1
 #APP
# 41 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	mv	a3,a1
	andi	a2,a0,7
	addi	a1,sp,8
	mv	a0,sp
	sd	a5,8(sp)
	call	_Z10align_nameRyS_yy
	ld	a5,0(sp)
	li	a4,16
 #APP
# 20 "./533_cpu.h" 1
	sd	a5,0(a4)
# 0 "" 2
 #NO_APP
	ld	a0,0(sp)
	mv	a2,s2
	mv	a1,s0
	call	_Z11resolve_pityyy
	li	a5,8388608
	addi	a5,a5,3
	slli	a4,s0,3
	slli	a5,a5,12
	add	a5,a4,a5
 #APP
# 66 "./533_cpu.h" 1
	sd	s3,0(a5)
# 0 "" 2
 #NO_APP
	li	a5,0
	add	a4,a4,s1
 #APP
# 49 "./533_cpu.h" 1
	sd	a5,0(a4)
# 0 "" 2
 #NO_APP
	li	a5,2097152
	addi	a5,a5,1
	addi	s0,s0,1
	slli	a5,a5,14
 #APP
# 81 "./533_cpu.h" 1
	sd	s0,0(a5)
# 0 "" 2
 #NO_APP
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	_Z17data_name_handleryyyy, .-_Z17data_name_handleryyyy
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB43:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	sd	s6,80(sp)
	sd	s7,72(sp)
	sd	s8,64(sp)
	sd	s9,56(sp)
	sd	s10,48(sp)
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
 #APP
# 8 "./533_cpu.h" 1
	mv	a5,tp
# 0 "" 2
 #NO_APP
	bne	a5,zero,.L128
	li	s1,8388608
	li	s2,1
	addi	s1,s1,7
	slli	s3,s2,35
	slli	s1,s1,12
.L98:
	mv	a1,sp
	addi	a0,sp,8
	call	_Z13wait_for_fullRyS_
	ld	s0,8(sp)
	ld	a1,0(sp)
	addi	a2,sp,16
	mv	a0,s0
	sd	zero,16(sp)
	call	_Z12skip_headersyyRy
	ld	s6,16(sp)
	add	a5,s0,s6
	andi	a5,a5,511
	addi	a5,a5,1
	slli	a5,a5,3
	add	a5,a5,s3
 #APP
# 41 "./533_cpu.h" 1
	ld	a5,0(a5)
# 0 "" 2
 #NO_APP
	srli	a5,a5,48
	andi	a5,a5,255
	li	a4,252
	bne	a5,a4,.L102
	slli	s6,s6,3
	addi	s0,s6,20
	addi	s5,s6,21
	li	s7,0
	li	s8,5
	li	s9,6
	li	s4,8
	li	s10,21
.L103:
	bgeu	s0,s5,.L102
	ld	a5,8(sp)
	srli	a0,s0,3
	sd	a0,16(sp)
	add	a0,a0,a5
	addi	a4,sp,40
	addi	a3,sp,32
	addi	a2,sp,24
	andi	a1,s0,7
	andi	a0,a0,511
	call	_Z9parse_tlvyyRyS_S_
	ld	a5,24(sp)
	bne	a5,s8,.L104
 #APP
# 20 "./533_cpu.h" 1
	sd	s8,0(s4)
# 0 "" 2
 #NO_APP
	ld	a5,40(sp)
	ld	s5,32(sp)
	li	s7,1
	add	s0,s0,a5
	add	s5,s0,s5
	j	.L103
.L128:
	li	a4,1
	bne	a5,a4,.L99
.L100:
	call	_Z14capture_packetv
	j	.L100
.L99:
 #APP
# 322 "./router.cpp" 1
	nop
# 0 "" 2
 #NO_APP
	j	.L99
.L104:
	bne	a5,s9,.L106
 #APP
# 20 "./533_cpu.h" 1
	sd	s9,0(s4)
# 0 "" 2
 #NO_APP
	ld	a5,40(sp)
	ld	s5,32(sp)
	li	s7,0
	add	s0,s0,a5
	add	s5,s0,s5
	j	.L103
.L106:
	beq	s7,zero,.L107
	beq	a5,s4,.L108
	bgtu	a5,s4,.L109
.L135:
	beq	a5,s2,.L122
	li	a4,7
	bne	a5,a4,.L121
	ld	a5,40(sp)
.L131:
	add	s0,s0,a5
	j	.L121
.L109:
	li	a4,10
	beq	a5,a4,.L122
	li	a4,18
	beq	a5,a4,.L122
.L121:
	ld	a5,24(sp)
	bne	a5,s4,.L103
.L102:
	li	a5,0
 #APP
# 20 "./533_cpu.h" 1
	sd	s2,0(a5)
# 0 "" 2
 #NO_APP
	li	a0,0
	call	_Z13wait_for_syncy
 #APP
# 118 "./533_cpu.h" 1
	sd	zero,0(s1)
# 0 "" 2
 #NO_APP
	j	.L98
.L108:
	ld	a0,40(sp)
	ld	a2,8(sp)
	ld	a1,32(sp)
	mv	a3,s6
	add	a0,s0,a0
	call	_Z16int_name_handleryyyy
.L122:
	ld	a5,40(sp)
	ld	a4,32(sp)
	add	a5,a5,a4
	j	.L131
.L107:
	beq	a5,s4,.L117
	bleu	a5,s4,.L135
	beq	a5,s10,.L122
	j	.L121
.L117:
	ld	a0,40(sp)
	ld	a2,8(sp)
	ld	a1,32(sp)
	mv	a3,s6
	add	a0,s0,a0
	call	_Z17data_name_handleryyyy
	j	.L122
	.cfi_endproc
.LFE43:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.1.0"
