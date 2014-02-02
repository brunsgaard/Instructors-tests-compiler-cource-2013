	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$3, Expecti_5_
# was:	la	Expecti_5__addr, Expecti_5_
	ori	$4, $0, 23
# was:	ori	Expecti_5__init, 0, 23
	sw	$4, 0($3)
# was:	sw	Expecti_5__init, 0(Expecti_5__addr)
	addi	$4, $3, 8
# was:	addi	Expecti_5__init, Expecti_5__addr, 8
	sw	$4, 4($3)
# was:	sw	Expecti_5__init, 4(Expecti_5__addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function main
main:
	sw	$31, -4($29)
	addi	$29, $29, -24
	sw	$20, 16($29)
	sw	$19, 12($29)
	sw	$18, 8($29)
	sw	$17, 4($29)
	sw	$16, 0($29)
	la	$18, Expecti_5_
# was:	la	_dat__4_, Expecti_5_
# Expecti_5_: string "Expecting shape error\n\n"
	lw	$17, 0($18)
# was:	lw	_arr_end__6_, 0(_dat__4_)
	lw	$18, 4($18)
# was:	lw	_dat__4_, 4(_dat__4_)
	add	$17, $17, $18
# was:	add	_arr_end__6_, _arr_end__6_, _dat__4_
_write_loop_beg_7_:
	beq	$18, $17, _write_loop_end_8_
# was:	beq	_dat__4_, _arr_end__6_, _write_loop_end_8_
	lb	$2, 0($18)
# was:	lb	2, 0(_dat__4_)
	jal	writeChar
# was:	jal	writeChar, 2
	addi	$18, $18, 1
# was:	addi	_dat__4_, _dat__4_, 1
	j	_write_loop_beg_7_
_write_loop_end_8_:
	ori	$2, $28, 0
# was:	ori	_assign__9_, 28, 0
	addi	$28, $28, 20
# was:	addi	28, 28, 20
	ori	$4, $2, 0
# was:	ori	_tmp__10_, _assign__9_, 0
	ori	$3, $0, 3
# was:	ori	_tmp__11_, 0, 3
	sw	$3, 0($4)
# was:	sw	_tmp__11_, 0(_tmp__10_)
	addi	$4, $4, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	addi	$4, $4, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	sw	$4, -4($4)
# was:	sw	_tmp__10_, -4(_tmp__10_)
	ori	$3, $0, 1
# was:	ori	_tmp__11_, 0, 1
	sw	$3, 0($4)
# was:	sw	_tmp__11_, 0(_tmp__10_)
	addi	$4, $4, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	ori	$3, $0, 2
# was:	ori	_tmp__11_, 0, 2
	sw	$3, 0($4)
# was:	sw	_tmp__11_, 0(_tmp__10_)
	addi	$4, $4, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	ori	$3, $0, 3
# was:	ori	_tmp__11_, 0, 3
	sw	$3, 0($4)
# was:	sw	_tmp__11_, 0(_tmp__10_)
	addi	$4, $4, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	ori	$17, $2, 0
# was:	ori	a_local__3_, _assign__9_, 0
	ori	$2, $28, 0
# was:	ori	_assign__12_, 28, 0
	addi	$28, $28, 12
# was:	addi	28, 28, 12
	ori	$4, $2, 0
# was:	ori	_tmp__13_, _assign__12_, 0
	ori	$3, $0, 4
# was:	ori	_tmp__14_, 0, 4
	sw	$3, 0($4)
# was:	sw	_tmp__14_, 0(_tmp__13_)
	addi	$4, $4, 4
# was:	addi	_tmp__13_, _tmp__13_, 4
	addi	$4, $4, 4
# was:	addi	_tmp__13_, _tmp__13_, 4
	sw	$4, -4($4)
# was:	sw	_tmp__13_, -4(_tmp__13_)
	ori	$3, $0, 97
# was:	ori	_tmp__14_, 0, 97
	sb	$3, 0($4)
# was:	sb	_tmp__14_, 0(_tmp__13_)
	addi	$4, $4, 1
# was:	addi	_tmp__13_, _tmp__13_, 1
	ori	$3, $0, 98
# was:	ori	_tmp__14_, 0, 98
	sb	$3, 0($4)
# was:	sb	_tmp__14_, 0(_tmp__13_)
	addi	$4, $4, 1
# was:	addi	_tmp__13_, _tmp__13_, 1
	ori	$3, $0, 99
# was:	ori	_tmp__14_, 0, 99
	sb	$3, 0($4)
# was:	sb	_tmp__14_, 0(_tmp__13_)
	addi	$4, $4, 1
# was:	addi	_tmp__13_, _tmp__13_, 1
	ori	$3, $0, 100
# was:	ori	_tmp__14_, 0, 100
	sb	$3, 0($4)
# was:	sb	_tmp__14_, 0(_tmp__13_)
	addi	$4, $4, 1
# was:	addi	_tmp__13_, _tmp__13_, 1
# 	ori	b_local__2_,_assign__12_,0
# 	ori	armem_16_,a_local__3_,0
	ori	$18, $2, 0
# was:	ori	armem_17_, b_local__2_, 0
	add	$20, $16, $28
# was:	add	_assign__15_, $zero, 28
	addi	$19, $16, 1
# was:	addi	element_20_, $zero, 1
	lw	$3, 0($17)
# was:	lw	dimar1_18_, 0(armem_16_)
	lw	$2, 0($18)
# was:	lw	dimar2_19_, 0(armem_17_)
	bne	$3, $2, _ShapeNotEqualError_
# was:	bne	dimar1_18_, dimar2_19_, _ShapeNotEqualError_
	addi	$17, $17, 4
# was:	addi	armem_16_, armem_16_, 4
	addi	$18, $18, 4
# was:	addi	armem_17_, armem_17_, 4
	sw	$3, 0($28)
# was:	sw	dimar1_18_, 0(28)
	addi	$28, $28, 4
# was:	addi	28, 28, 4
	mul	$19, $19, $3
# was:	mul	element_20_, element_20_, dimar1_18_
	lw	$17, 0($17)
# was:	lw	armem_16_, 0(armem_16_)
	lw	$18, 0($18)
# was:	lw	armem_17_, 0(armem_17_)
	addi	$2, $28, 4
# was:	addi	temp_21_, 28, 4
	sw	$2, 0($28)
# was:	sw	temp_21_, 0(28)
	addi	$28, $28, 4
# was:	addi	28, 28, 4
labelzip_25_:
	lw	$2, 0($17)
# was:	lw	arg1_22_, 0(armem_16_)
	lb	$3, 0($18)
# was:	lb	arg2_23_, 0(armem_17_)
# 	ori	_funarg__28_,arg1_22_,0
# 	ori	_funarg__29_,arg2_23_,0
# 	ori	3,_funarg__29_,0
# 	ori	2,_funarg__28_,0
	jal	c_fun
# was:	jal	c_fun, 23
# 	ori	res_24_,2,0
	sw	$2, 0($28)
# was:	sw	res_24_, 0(28)
	addi	$28, $28, 4
# was:	addi	28, 28, 4
	addi	$17, $17, 4
# was:	addi	armem_16_, armem_16_, 4
	addi	$18, $18, 1
# was:	addi	armem_17_, armem_17_, 1
	addi	$19, $19, -1
# was:	addi	element_20_, element_20_, -1
	bne	$19, $16, labelzip_25_
# was:	bne	element_20_, $zero, labelzip_25_
# 	ori	c_local__1_,_assign__15_,0
main_exit:
	lw	$20, 16($29)
	lw	$19, 12($29)
	lw	$18, 8($29)
	lw	$17, 4($29)
	lw	$16, 0($29)
	addi	$29, $29, 24
	lw	$31, -4($29)
	jr	$31
# Function c_fun
c_fun:
	sw	$31, -4($29)
	addi	$29, $29, -8
	sw	$16, 0($29)
# 	ori	a_arg__30_,2,0
# 	ori	b_arg__31_,3,0
	ori	$16, $2, 0
# was:	ori	plus1__33_, a_arg__30_, 0
	ori	$2, $3, 0
# was:	ori	_funarg__35_, b_arg__31_, 0
# 	ori	2,_funarg__35_,0
	jal	ord
# was:	jal	ord, 2
# 	ori	plus2__34_,2,0
	add	$2, $16, $2
# was:	add	_return__32_, plus1__33_, plus2__34_
# 	ori	2,_return__32_,0
	j	c_fun_exit
c_fun_exit:
	lw	$16, 0($29)
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
ord:
	andi	$2, $2, 255
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
len:
	lw	$2, 0($2)
	jr	$31
writeInt:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
readInt:
	ori	$2, $0, 5
	syscall
	jr	$31
writeChar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
readChar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
_IllegalArrIndexError_:
	la	$4, _IllegalArrIndexString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
_NegativeExponentError_:
	la	$4, _NegativeExponent_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
_ShapeNotEqualError_:
	la	$4, _ShapeNotEqual_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
	.align	2
_cr_:
	.asciiz	"\n"
	.align	2
_NegativeExponent_:
	.asciiz	"Error: Exponent is negative with value "
_ShapeNotEqual_:
	.asciiz	"Error: Shapes are not equal "
	.align	2
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
	.align	2
_IllegalArrIndexString_:
	.asciiz	"Error: Array index out of bounds at line "
# String Literals
	.align	2
Expecti_5_:
	.space	8
	.ascii	"Expecting shape error\n\n"
	.align	2
_heap_:
	.space	100000
