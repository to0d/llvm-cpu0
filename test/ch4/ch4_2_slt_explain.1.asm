	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch4_2_slt_explain.cpp"
	.globl	_Z11test_OptSltv                # -- Begin function _Z11test_OptSltv
	.p2align	1
	.type	_Z11test_OptSltv,@function
	.ent	_Z11test_OptSltv                # @_Z11test_OptSltv
_Z11test_OptSltv:
	.frame	$fp,24,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -24
	addiu	$2, $zero, 3
	st	$2, 20($sp)
	addiu	$2, $zero, 1
	st	$2, 16($sp)
	addiu	$3, $zero, 0
	st	$3, 12($sp)
	st	$3, 8($sp)
	st	$3, 4($sp)
	ld	$3, 20($sp)
	slt	$2, $3, $2
	andi	$2, $2, 1
	st	$2, 12($sp)
	ld	$2, 16($sp)
	addiu	$3, $zero, 2
	slt	$2, $2, $3
	andi	$2, $2, 1
	st	$2, 8($sp)
	ld	$2, 12($sp)
	ld	$3, 8($sp)
	addu	$2, $2, $3
	st	$2, 4($sp)
	ld	$2, 4($sp)
	addiu	$sp, $sp, 24
	ret	$lr
	.set	macro
	.set	reorder
	.end	_Z11test_OptSltv
$func_end0:
	.size	_Z11test_OptSltv, ($func_end0)-_Z11test_OptSltv
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project eb697db36f2129f1e3cbe7e6888c2c7bde83f812)"
	.section	".note.GNU-stack","",@progbits
