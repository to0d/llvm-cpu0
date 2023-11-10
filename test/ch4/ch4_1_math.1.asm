	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_1_math.cpp"
	.globl	_Z9test_mathv                   # -- Begin function _Z9test_mathv
	.p2align	1
	.type	_Z9test_mathv,@function
	.ent	_Z9test_mathv                   # @_Z9test_mathv
_Z9test_mathv:
	.frame	$fp,64,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -64
	addiu	$2, $zero, 5
	st	$2, 60($sp)
	addiu	$2, $zero, 2
	st	$2, 56($sp)
	addiu	$3, $zero, -5
	st	$3, 52($sp)
	ld	$3, 60($sp)
	ld	$4, 56($sp)
	addu	$3, $3, $4
	st	$3, 48($sp)
	ld	$3, 60($sp)
	ld	$4, 56($sp)
	subu	$3, $3, $4
	st	$3, 44($sp)
	ld	$3, 60($sp)
	ld	$4, 56($sp)
	mul	$3, $3, $4
	st	$3, 40($sp)
	ld	$3, 60($sp)
	shl	$3, $3, 2
	st	$3, 36($sp)
	ld	$3, 52($sp)
	shl	$3, $3, 1
	st	$3, 16($sp)
	ld	$3, 60($sp)
	srav	$2, $3, $2
	st	$2, 32($sp)
	ld	$2, 52($sp)
	addiu	$3, $zero, 30
	shrv	$2, $2, $3
	st	$2, 12($sp)
	ld	$2, 60($sp)
	addiu	$3, $zero, 1
	shlv	$2, $3, $2
	st	$2, 28($sp)
	ld	$2, 56($sp)
	shlv	$2, $3, $2
	st	$2, 8($sp)
	ld	$2, 60($sp)
	addiu	$3, $zero, 128
	shrv	$2, $3, $2
	st	$2, 24($sp)
	ld	$2, 56($sp)
	ld	$3, 60($sp)
	srav	$2, $2, $3
	st	$2, 4($sp)
	addiu	$2, $zero, -6
	st	$2, 20($sp)
	ld	$2, 48($sp)
	ld	$3, 44($sp)
	addu	$2, $2, $3
	ld	$3, 40($sp)
	addu	$2, $2, $3
	ld	$3, 36($sp)
	addu	$2, $2, $3
	ld	$3, 16($sp)
	addu	$2, $2, $3
	ld	$3, 32($sp)
	addu	$2, $2, $3
	ld	$3, 12($sp)
	addu	$2, $2, $3
	ld	$3, 28($sp)
	addu	$2, $2, $3
	ld	$3, 8($sp)
	addu	$2, $2, $3
	ld	$3, 24($sp)
	addu	$2, $2, $3
	ld	$3, 4($sp)
	addu	$2, $2, $3
	ld	$3, 20($sp)
	addu	$2, $2, $3
	addiu	$sp, $sp, 64
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z9test_mathv
$func_end0:
	.size	_Z9test_mathv, ($func_end0)-_Z9test_mathv
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project abd01c685fdf89c9a8a332b865be9a212078aed3)"
	.section	".note.GNU-stack","",@progbits
