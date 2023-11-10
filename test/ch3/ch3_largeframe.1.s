	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch3_largeframe.cpp"
	.globl	_Z16test_largegframev           # -- Begin function _Z16test_largegframev
	.p2align	1
	.type	_Z16test_largegframev,@function
	.ent	_Z16test_largegframev           # @_Z16test_largegframev
_Z16test_largegframev:
	.frame	$fp,1879015424,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	lui	$1, 36865
	addiu	$1, $1, -32768
	addu	$sp, $sp, $1
	addiu	$2, $zero, 0
	lui	$1, 28672
	addiu	$1, $1, -32768
	addu	$sp, $sp, $1
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z16test_largegframev
$func_end0:
	.size	_Z16test_largegframev, ($func_end0)-_Z16test_largegframev
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project abd01c685fdf89c9a8a332b865be9a212078aed3)"
	.section	".note.GNU-stack","",@progbits
