	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_1_mult2.cpp"
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
	addiu	$2, $zero, 12
	st	$2, 0($sp)
	ld	$2, 4($sp)
	addiu	$2, $2, 1
	ld	$3, 0($sp)
	div	$2, $3
	mfhi	$2
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
