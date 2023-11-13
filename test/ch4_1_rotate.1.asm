	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_1_rotate.cpp"
	.globl	_Z16test_rotate_leftv           # -- Begin function _Z16test_rotate_leftv
	.p2align	1
	.type	_Z16test_rotate_leftv,@function
	.ent	_Z16test_rotate_leftv           # @_Z16test_rotate_leftv
_Z16test_rotate_leftv:
	.frame	$fp,8,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -8
	addiu	$2, $zero, 8
	st	$2, 4($sp)
	ld	$2, 4($sp)
	rol	$2, $2, 30
	st	$2, 0($sp)
	ld	$2, 0($sp)
	addiu	$sp, $sp, 8
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z16test_rotate_leftv
$func_end0:
	.size	_Z16test_rotate_leftv, ($func_end0)-_Z16test_rotate_leftv
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project eb697db36f2129f1e3cbe7e6888c2c7bde83f812)"
	.section	".note.GNU-stack","",@progbits
