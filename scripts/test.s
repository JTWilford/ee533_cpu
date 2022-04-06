	.file	"test.cpp"
	.option nopic
	.attribute arch, "rv64i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	li	a5,-255
	sd	ra,88(sp)
	sd	s1,72(sp)
	li	a6,4194304
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	li	s1,8388608
	li	ra,2097152
	slli	t2,a5,48
	slli	t0,a5,40
	slli	t6,a5,32
	sd	s0,80(sp)
	sd	s2,64(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	addi	s0,s1,5
	li	t4,1
	slli	a5,a5,24
	addi	a7,s1,3
	li	s2,16384
	addi	a6,a6,3
	addi	ra,ra,1
 #APP
# 20 "test.cpp" 1
	mv	t3,tp
# 0 "" 2
 #NO_APP
	slli	a4,t3,3
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	sd	s8,16(sp)
	sd	s9,8(sp)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	add	s2,s2,a4
	slli	a6,a6,13
	slli	ra,ra,14
	slli	s0,s0,12
	slli	t1,t4,35
	addi	t2,t2,-1
	addi	t0,t0,-1
	addi	t6,t6,-1
	addi	t5,a5,-1
	slli	a7,a7,12
.L31:
 #APP
# 23 "test.cpp" 1
	# Loop until the fifo is full
# 0 "" 2
 #NO_APP
	ld	a5,0(a6)
	bne	a5,zero,.L5
.L2:
 #APP
# 26 "test.cpp" 1
	nop
# 0 "" 2
 #NO_APP
	ld	a5,0(a6)
	beq	a5,zero,.L2
.L5:
 #APP
# 29 "test.cpp" 1
	# Calculate how large the packet is
# 0 "" 2
 #NO_APP
	ld	a0,0(ra)
	ld	a3,0(s0)
	sub	a0,a0,a3
	bge	a0,zero,.L4
	addi	a0,a0,512
.L4:
 #APP
# 36 "test.cpp" 1
	# Loop over the packet
# 0 "" 2
 #NO_APP
	li	a1,1
	add	a3,t3,a3
	mv	a2,t3
	ble	a0,t3,.L21
	li	s3,51
	li	s6,-1
	li	s5,-16711680
	li	s4,-65536
	srli	s6,s6,8
	slli	s8,s3,56
	slli	s7,s3,48
	addi	s5,s5,-1
	addi	s4,s4,255
	j	.L20
.L11:
	addi	a2,a2,4
	addi	a3,a3,4
	ble	a0,a2,.L21
.L20:
	li	a4,511
	mv	a5,a3
	ble	a3,a4,.L9
	addi	a5,a3,-512
.L9:
 #APP
# 43 "test.cpp" 1
	# Skip Header Segments
# 0 "" 2
 #NO_APP
	slli	a5,a5,3
	beq	a1,zero,.L10
	add	a4,a5,a7
	ld	a4,0(a4)
	bne	a4,zero,.L11
.L10:
 #APP
# 49 "test.cpp" 1
	# Grab the Data from the FIFO
# 0 "" 2
 #NO_APP
	add	a4,a5,t1
	ld	a5,0(a4)
 #APP
# 54 "test.cpp" 1
	# Loop over the data and check for 'e'
# 0 "" 2
 #NO_APP
	li	a1,101
	andi	s9,a5,255
	bne	s9,a1,.L12
 #APP
# 57 "test.cpp" 1
	# Found an 'e'
# 0 "" 2
 #NO_APP
	andi	a5,a5,-256
	addi	a5,a5,51
.L12:
	srai	a1,a5,8
	andi	a1,a1,255
	li	s9,101
	bne	a1,s9,.L13
 #APP
# 57 "test.cpp" 1
	# Found an 'e'
# 0 "" 2
 #NO_APP
	li	a1,12288
	and	a5,a5,s4
	addi	a1,a1,768
	add	a5,a5,a1
.L13:
	srai	a1,a5,16
	andi	a1,a1,255
	li	s9,101
	bne	a1,s9,.L14
 #APP
# 57 "test.cpp" 1
	# Found an 'e'
# 0 "" 2
 #NO_APP
	li	a1,3342336
	and	a5,a5,s5
	add	a5,a5,a1
.L14:
	srliw	a1,a5,24
	li	s9,101
	bne	a1,s9,.L15
 #APP
# 57 "test.cpp" 1
	# Found an 'e'
# 0 "" 2
 #NO_APP
	li	a1,855638016
	and	a5,a5,t5
	add	a5,a5,a1
.L15:
	srai	a1,a5,32
	andi	a1,a1,255
	li	s9,101
	bne	a1,s9,.L16
 #APP
# 57 "test.cpp" 1
	# Found an 'e'
# 0 "" 2
 #NO_APP
	and	a5,a5,t6
	slli	a1,s3,32
	add	a5,a5,a1
.L16:
	srai	a1,a5,40
	andi	a1,a1,255
	li	s9,101
	bne	a1,s9,.L17
 #APP
# 57 "test.cpp" 1
	# Found an 'e'
# 0 "" 2
 #NO_APP
	and	a5,a5,t0
	slli	a1,s3,40
	add	a5,a5,a1
.L17:
	srai	a1,a5,48
	andi	a1,a1,255
	li	s9,101
	bne	a1,s9,.L18
 #APP
# 57 "test.cpp" 1
	# Found an 'e'
# 0 "" 2
 #NO_APP
	and	a5,a5,t2
	add	a5,a5,s7
.L18:
	srli	a1,a5,56
	li	s9,101
	bne	a1,s9,.L19
 #APP
# 57 "test.cpp" 1
	# Found an 'e'
# 0 "" 2
 #NO_APP
	and	a5,a5,s6
	add	a5,a5,s8
.L19:
 #APP
# 61 "test.cpp" 1
	# Save the data back to the FIFO
# 0 "" 2
 #NO_APP
	sd	a5,0(a4)
	addi	a2,a2,4
	li	a1,0
	addi	a3,a3,4
	bgt	a0,a2,.L20
.L21:
	bne	t3,zero,.L56
 #APP
# 66 "test.cpp" 1
	# Main thread - wait for other threads to finish
# 0 "" 2
 #NO_APP
	li	a4,16384
	ld	a2,8(a4)
	ld	a5,16(a4)
	ld	a3,24(a4)
	and	a5,a5,a2
	and	a5,a5,a3
	bne	a5,zero,.L25
.L22:
 #APP
# 68 "test.cpp" 1
	nop
# 0 "" 2
 #NO_APP
	ld	a5,8(a4)
	ld	a2,16(a4)
	ld	a3,24(a4)
	and	a5,a5,a2
	and	a5,a5,a3
	beq	a5,zero,.L22
.L25:
 #APP
# 71 "test.cpp" 1
	# Main thread - Clear the FIFO_DONE signal
# 0 "" 2
 #NO_APP
	addi	a5,s1,7
	slli	a5,a5,12
	sd	zero,0(a5)
 #APP
# 74 "test.cpp" 1
	# Main thread - Signal that all threads have finished
# 0 "" 2
 #NO_APP
	li	a4,16384
	sd	t4,0(a4)
 #APP
# 77 "test.cpp" 1
	# Main thread - Wait for all other threads to clear
# 0 "" 2
 #NO_APP
	ld	a2,8(a4)
	ld	a5,16(a4)
	ld	a3,24(a4)
	or	a5,a5,a2
	or	a5,a5,a3
	beq	a5,zero,.L24
.L23:
 #APP
# 79 "test.cpp" 1
	nop
# 0 "" 2
 #NO_APP
	ld	a5,8(a4)
	ld	a2,16(a4)
	ld	a3,24(a4)
	or	a5,a5,a2
	or	a5,a5,a3
	bne	a5,zero,.L23
.L24:
	li	a5,16384
	sd	zero,0(a5)
.L26:
 #APP
# 97 "test.cpp" 1
	# Loop forever
# 0 "" 2
 #NO_APP
	j	.L31
.L56:
 #APP
# 85 "test.cpp" 1
	# Sub thread - Signal that this thread has finished
# 0 "" 2
 #NO_APP
	sd	t4,0(s2)
 #APP
# 88 "test.cpp" 1
	# Sub thread - Wait for Main's signal
# 0 "" 2
 #NO_APP
	li	a5,16384
	ld	a5,0(a5)
	li	a4,16384
	bne	a5,zero,.L30
.L27:
 #APP
# 90 "test.cpp" 1
	nop
# 0 "" 2
 #NO_APP
	ld	a5,0(a4)
	beq	a5,zero,.L27
.L30:
	sd	zero,0(s2)
	li	a5,16384
	ld	a5,0(a5)
	li	a4,16384
	bne	a5,t4,.L26
.L28:
 #APP
# 94 "test.cpp" 1
	nop
# 0 "" 2
 #NO_APP
	ld	a5,0(a4)
	beq	a5,t4,.L28
 #APP
# 97 "test.cpp" 1
	# Loop forever
# 0 "" 2
 #NO_APP
	j	.L31
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: () 11.1.0"
