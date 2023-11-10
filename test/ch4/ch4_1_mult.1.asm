	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_1_mult.cpp"
	.globl	_Z9test_multv                   # -- Begin function _Z9test_multv
	.p2align	1
	.type	_Z9test_multv,@function
	.ent	_Z9test_multv                   # @_Z9test_multv
_Z9test_multv:
	.frame	$fp,8,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -8
	addiu	$2, $zero, 11
	st	$2, 4($sp)
	ld	$2, 4($sp)
	addiu	$2, $2, 1
	lui	$3, 10922
	ori	$3, $3, 43691
	mult	$2, $3
	mfhi	$3
	addiu	$4, $zero, 31
	shrv	$4, $3, $4
	addiu	$5, $zero, 1
	srav	$3, $3, $5
	addu	$3, $3, $4
	addiu	$4, $zero, 12
	mul	$3, $3, $4
	subu	$2, $2, $3
	st	$2, 4($sp)
	ld	$2, 4($sp)
	addiu	$sp, $sp, 8
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z9test_multv
$func_end0:
	.size	_Z9test_multv, ($func_end0)-_Z9test_multv
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project 34e8ac96de24733c39ed63d89fd30537e733e798)"
	.section	".note.GNU-stack","",@progbits
