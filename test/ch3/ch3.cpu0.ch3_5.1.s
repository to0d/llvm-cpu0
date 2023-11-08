	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch3.cpp"
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
	.ent	main                            # @main
main:
	.frame	$fp,8,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$sp, $sp, -8
	addiu	$2, $zero, 0
	st	$2, 4($sp)
	addiu	$sp, $sp, 8
	ret	$lr
	.set	macro
	.set	reorder
	.end	main
$func_end0:
	.size	main, ($func_end0)-main
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project 7c1423373ee6abc448f85b39c815d6cb57f0f0df)"
	.section	".note.GNU-stack","",@progbits
