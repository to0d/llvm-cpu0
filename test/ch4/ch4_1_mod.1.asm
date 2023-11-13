	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_1_mod.cpp"
	.globl	_Z8test_modv                    # -- Begin function _Z8test_modv
	.p2align	1
	.type	_Z8test_modv,@function
	.ent	_Z8test_modv                    # @_Z8test_modv
_Z8test_modv:
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
	.end	_Z8test_modv
$func_end0:
	.size	_Z8test_modv, ($func_end0)-_Z8test_modv
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project eb697db36f2129f1e3cbe7e6888c2c7bde83f812)"
	.section	".note.GNU-stack","",@progbits
