	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_2_logic.cpp"
	.globl	_Z26test_andorxornotcomplementv # -- Begin function _Z26test_andorxornotcomplementv
	.p2align	1
	.type	_Z26test_andorxornotcomplementv,@function
	.ent	_Z26test_andorxornotcomplementv # @_Z26test_andorxornotcomplementv
_Z26test_andorxornotcomplementv:
	.frame	$fp,32,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -32
	addiu	$2, $zero, 5
	st	$2, 28($sp)
	addiu	$2, $zero, 3
	st	$2, 24($sp)
	addiu	$2, $zero, 0
	st	$2, 20($sp)
	st	$2, 16($sp)
	st	$2, 12($sp)
	st	$2, 8($sp)
	st	$2, 4($sp)
	ld	$3, 28($sp)
	ld	$4, 24($sp)
	and	$3, $3, $4
	st	$3, 20($sp)
	ld	$3, 28($sp)
	ld	$4, 24($sp)
	or	$3, $3, $4
	st	$3, 16($sp)
	ld	$3, 28($sp)
	ld	$4, 24($sp)
	xor	$3, $3, $4
	st	$3, 12($sp)
	ld	$3, 28($sp)
	cmp	$sw, $3, $2
	andi	$2, $sw, 2
	shr	$2, $2, 1
	andi	$2, $2, 1
	st	$2, 24($sp)
	ld	$2, 8($sp)
	addiu	$3, $zero, -1
	xor	$2, $2, $3
	st	$2, 4($sp)
	ld	$2, 20($sp)
	ld	$3, 16($sp)
	addu	$2, $2, $3
	ld	$3, 12($sp)
	addu	$2, $2, $3
	ld	$3, 24($sp)
	addu	$2, $2, $3
	ld	$3, 4($sp)
	addu	$2, $2, $3
	addiu	$sp, $sp, 32
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z26test_andorxornotcomplementv
$func_end0:
	.size	_Z26test_andorxornotcomplementv, ($func_end0)-_Z26test_andorxornotcomplementv
                                        # -- End function
	.globl	_Z10test_setxxv                 # -- Begin function _Z10test_setxxv
	.p2align	1
	.type	_Z10test_setxxv,@function
	.ent	_Z10test_setxxv                 # @_Z10test_setxxv
_Z10test_setxxv:
	.frame	$fp,32,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -32
	addiu	$2, $zero, 5
	st	$2, 28($sp)
	addiu	$2, $zero, 3
	st	$2, 24($sp)
	ld	$2, 28($sp)
	ld	$3, 24($sp)
	cmp	$sw, $2, $3
	andi	$2, $sw, 2
	shr	$2, $2, 1
	andi	$2, $2, 1
	st	$2, 20($sp)
	ld	$2, 28($sp)
	ld	$3, 24($sp)
	cmp	$sw, $2, $3
	andi	$2, $sw, 2
	shr	$2, $2, 1
	xori	$2, $2, 1
	andi	$2, $2, 1
	st	$2, 16($sp)
	ld	$2, 28($sp)
	ld	$3, 24($sp)
	slt	$2, $2, $3
	andi	$2, $2, 1
	st	$2, 12($sp)
	ld	$2, 28($sp)
	ld	$3, 24($sp)
	slt	$2, $3, $2
	xori	$2, $2, 1
	andi	$2, $2, 1
	st	$2, 8($sp)
	ld	$2, 28($sp)
	ld	$3, 24($sp)
	slt	$2, $3, $2
	andi	$2, $2, 1
	st	$2, 4($sp)
	ld	$2, 28($sp)
	ld	$3, 24($sp)
	slt	$2, $2, $3
	xori	$2, $2, 1
	andi	$2, $2, 1
	st	$2, 0($sp)
	ld	$2, 20($sp)
	ld	$3, 16($sp)
	addu	$2, $2, $3
	ld	$3, 12($sp)
	addu	$2, $2, $3
	ld	$3, 8($sp)
	addu	$2, $2, $3
	ld	$3, 4($sp)
	addu	$2, $2, $3
	ld	$3, 0($sp)
	addu	$2, $2, $3
	addiu	$sp, $sp, 32
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z10test_setxxv
$func_end1:
	.size	_Z10test_setxxv, ($func_end1)-_Z10test_setxxv
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project eb697db36f2129f1e3cbe7e6888c2c7bde83f812)"
	.section	".note.GNU-stack","",@progbits
