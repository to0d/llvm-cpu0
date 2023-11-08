	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch3_2.cpp"
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
	.ent	main                            # @main
main:
	.frame	$fp,24,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -24
	addiu	$2, $zero, 0
	st	$2, 20($sp)
	addiu	$2, $zero, 5
	st	$2, 16($sp)
	addiu	$2, $zero, 2
	st	$2, 12($sp)
	ld	$2, 16($sp)
	ld	$3, 12($sp)
	addu	$2, $2, $3
	st	$2, 8($sp)
	ld	$2, 12($sp)
	addiu	$2, $2, 1
	st	$2, 4($sp)
	ld	$2, 8($sp)
	ld	$3, 4($sp)
	addu	$2, $2, $3
	addiu	$sp, $sp, 24
	ret	$lr
	.set	macro
	.set	reorder
	.end	main
$func_end0:
	.size	main, ($func_end0)-main
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project abd01c685fdf89c9a8a332b865be9a212078aed3)"
	.section	".note.GNU-stack","",@progbits
