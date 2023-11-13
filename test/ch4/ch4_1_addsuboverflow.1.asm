	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_1_addsuboverflow.cpp"
	.globl	_Z17test_add_overflowv          # -- Begin function _Z17test_add_overflowv
	.p2align	1
	.type	_Z17test_add_overflowv,@function
	.ent	_Z17test_add_overflowv          # @_Z17test_add_overflowv
_Z17test_add_overflowv:
	.frame	$fp,16,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -16
	lui	$2, 28672
	st	$2, 12($sp)
	lui	$2, 8192
	st	$2, 8($sp)
	addiu	$2, $zero, 0
	st	$2, 4($sp)
	ld	$3, 12($sp)
	ld	$4, 8($sp)
	addu	$3, $3, $4
	st	$3, 4($sp)
	addiu	$sp, $sp, 16
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z17test_add_overflowv
$func_end0:
	.size	_Z17test_add_overflowv, ($func_end0)-_Z17test_add_overflowv
                                        # -- End function
	.globl	_Z17test_sub_overflowv          # -- Begin function _Z17test_sub_overflowv
	.p2align	1
	.type	_Z17test_sub_overflowv,@function
	.ent	_Z17test_sub_overflowv          # @_Z17test_sub_overflowv
_Z17test_sub_overflowv:
	.frame	$fp,16,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -16
	lui	$2, 36864
	st	$2, 12($sp)
	lui	$2, 8192
	st	$2, 8($sp)
	addiu	$2, $zero, 0
	st	$2, 4($sp)
	ld	$3, 12($sp)
	ld	$4, 8($sp)
	subu	$3, $3, $4
	st	$3, 4($sp)
	addiu	$sp, $sp, 16
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z17test_sub_overflowv
$func_end1:
	.size	_Z17test_sub_overflowv, ($func_end1)-_Z17test_sub_overflowv
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project eb697db36f2129f1e3cbe7e6888c2c7bde83f812)"
	.section	".note.GNU-stack","",@progbits
