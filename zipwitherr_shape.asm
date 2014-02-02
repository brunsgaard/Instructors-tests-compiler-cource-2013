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
	la	$17, Expecti_5_
# was:	la	_dat__4_, Expecti_5_
# Expecti_5_: string "Expecting shape error\n\n"
	lw	$16, 0($17)
# was:	lw	_arr_end__6_, 0(_dat__4_)
	lw	$17, 4($17)
# was:	lw	_dat__4_, 4(_dat__4_)
	add	$16, $16, $17
# was:	add	_arr_end__6_, _arr_end__6_, _dat__4_
_write_loop_beg_7_:
	beq	$17, $16, _write_loop_end_8_
# was:	beq	_dat__4_, _arr_end__6_, _write_loop_end_8_
	lb	$2, 0($17)
# was:	lb	2, 0(_dat__4_)
	jal	writeChar
# was:	jal	writeChar, 2
	addi	$17, $17, 1
# was:	addi	_dat__4_, _dat__4_, 1
	j	_write_loop_beg_7_
_write_loop_end_8_:
	ori	$4, $28, 0
# was:	ori	_assign__9_, 28, 0
	addi	$28, $28, 20
# was:	addi	28, 28, 20
	ori	$3, $4, 0
# was:	ori	_tmp__10_, _assign__9_, 0
	ori	$2, $0, 3
# was:	ori	_tmp__11_, 0, 3
	sw	$2, 0($3)
# was:	sw	_tmp__11_, 0(_tmp__10_)
	addi	$3, $3, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	addi	$3, $3, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	sw	$3, -4($3)
# was:	sw	_tmp__10_, -4(_tmp__10_)
	ori	$2, $0, 1
# was:	ori	_tmp__11_, 0, 1
	sw	$2, 0($3)
# was:	sw	_tmp__11_, 0(_tmp__10_)
	addi	$3, $3, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	ori	$2, $0, 2
# was:	ori	_tmp__11_, 0, 2
	sw	$2, 0($3)
# was:	sw	_tmp__11_, 0(_tmp__10_)
	addi	$3, $3, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	ori	$2, $0, 3
# was:	ori	_tmp__11_, 0, 3
	sw	$2, 0($3)
# was:	sw	_tmp__11_, 0(_tmp__10_)
	addi	$3, $3, 4
# was:	addi	_tmp__10_, _tmp__10_, 4
	ori	$2, $4, 0
# was:	ori	a_local__3_, _assign__9_, 0
	ori	$5, $28, 0
# was:	ori	_assign__12_, 28, 0
	addi	$28, $28, 12
# was:	addi	28, 28, 12
	ori	$4, $5, 0
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
# 	ori	areg1__16_,a_local__3_,0
	ori	$3, $5, 0
# was:	ori	areg2__17_, b_local__2_, 0
	ori	$17, $28, 0
# was:	ori	_assign__15_, 28, 0
	addi	$28, $28, 8
# was:	addi	28, 28, 8
	ori	$16, $0, 1
# was:	ori	tmp__21_, 0, 1
	lw	$19, 0($2)
# was:	lw	it1__18_, 0(areg1__16_)
	lw	$18, 0($3)
# was:	lw	it2__19_, 0(areg2__17_)
	ori	$5, $0, 15
# was:	ori	5, 0, 15
	bne	$19, $18, _ShapeMismatchError
# was:	bne	it1__18_, it2__19_, _ShapeMismatchError
	mul	$16, $16, $19
# was:	mul	tmp__21_, tmp__21_, it1__18_
	sw	$19, 0($17)
# was:	sw	it1__18_, 0(_assign__15_)
	ori	$20, $28, 0
# was:	ori	it3__20_, 28, 0
	sw	$20, 4($17)
# was:	sw	it3__20_, 4(_assign__15_)
	add	$28, $28, $16
# was:	add	28, 28, tmp__21_
	addi	$28, $28, 3
# was:	addi	28, 28, 3
	sll	$28, $28, 2
# was:	sll	28, 28, 2
	sra	$28, $28, 2
# was:	sra	28, 28, 2
	add	$16, $16, $20
# was:	add	tmp__21_, tmp__21_, it3__20_
	lw	$19, 4($2)
# was:	lw	it1__18_, 4(areg1__16_)
	lw	$18, 4($3)
# was:	lw	it2__19_, 4(areg2__17_)
body__25_:
	lw	$2, 0($19)
# was:	lw	v1__22_, 0(it1__18_)
	lw	$3, 0($18)
# was:	lw	v2__23_, 0(it2__19_)
# 	ori	_funarg__29_,v1__22_,0
# 	ori	_funarg__30_,v2__23_,0
# 	ori	3,_funarg__30_,0
# 	ori	2,_funarg__29_,0
	jal	c_fun
# was:	jal	c_fun, 23
# 	ori	res__24_,2,0
	sb	$2, 0($20)
# was:	sb	res__24_, 0(it3__20_)
	addi	$19, $19, 4
# was:	addi	it1__18_, it1__18_, 4
	addi	$18, $18, 4
# was:	addi	it2__19_, it2__19_, 4
	addi	$20, $20, 1
# was:	addi	it3__20_, it3__20_, 1
cond__26_:
	bne	$20, $16, body__25_
# was:	bne	it3__20_, tmp__21_, body__25_
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
# 	ori	a_arg__31_,2,0
# 	ori	b_arg__32_,3,0
	ori	$16, $2, 0
# was:	ori	plus1__34_, a_arg__31_, 0
	ori	$2, $3, 0
# was:	ori	_funarg__36_, b_arg__32_, 0
# 	ori	2,_funarg__36_,0
	jal	ord
# was:	jal	ord, 2
# 	ori	plus2__35_,2,0
	add	$2, $16, $2
# was:	add	_return__33_, plus1__34_, plus2__35_
# 	ori	2,_return__33_,0
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
_IllegalExponentError_:
	la	$4, _IllegalExponentString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
_ShapeMismatchError:
	la	$4, _IllegalExponentString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
	.align	2
_cr_:
	.asciiz	"\n"
	.align	2
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
	.align	2
_IllegalArrIndexString_:
	.asciiz	"Error: Array index out of bounds at line "
	.align	2
_IllegalExponentString_:
	.asciiz	"Error: Exponent negative at line "
# String Literals
	.align	2
Expecti_5_:
	.space	8
	.ascii	"Expecting shape error\n\n"
	.align	2
_heap_:
	.space	100000
