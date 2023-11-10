	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_math.ll"
	.globl	_Z9test_mathv                   # -- Begin function _Z9test_mathv
	.p2align	1
	.type	_Z9test_mathv,@function
	.ent	_Z9test_mathv                   # @_Z9test_mathv
_Z9test_mathv:
	.cfi_startproc
	.frame	$sp,8,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -8
	.cfi_def_cfa_offset 8
	ld	$2, 0($sp)
	ld	$3, 4($sp)
	subu	$4, $3, $2
	addu	$5, $3, $2
	addu	$4, $5, $4
	mul	$5, $3, $2
	addu	$4, $4, $5
	addiu	$5, $zero, 128
	shrv	$5, $5, $2
	addiu	$t9, $zero, 1
	shlv	$t9, $t9, $2
	srav	$2, $3, $2
	addiu	$7, $zero, 30
	shrv	$7, $3, $7
	addiu	$8, $zero, 2
	srav	$8, $3, $8
	shl	$3, $3, 2
	addu	$3, $4, $3
	addu	$3, $3, $8
	addu	$3, $3, $7
	addu	$3, $3, $t9
	addu	$3, $3, $5
	addu	$2, $3, $2
	addiu	$sp, $sp, 8
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z9test_mathv
$func_end0:
	.size	_Z9test_mathv, ($func_end0)-_Z9test_mathv
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
