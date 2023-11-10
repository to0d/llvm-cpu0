	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_overflow.ll"
	.globl	_Z17test_add_overflowv          # -- Begin function _Z17test_add_overflowv
	.p2align	1
	.type	_Z17test_add_overflowv,@function
	.ent	_Z17test_add_overflowv          # @_Z17test_add_overflowv
_Z17test_add_overflowv:
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
	addu	$2, $3, $2
	addu	$2, $2, $4
	addiu	$sp, $sp, 8
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z17test_add_overflowv
$func_end0:
	.size	_Z17test_add_overflowv, ($func_end0)-_Z17test_add_overflowv
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
