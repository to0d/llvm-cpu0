	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch3.cpp"
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
	.ent	main                            # @main
main:
	.frame	$sp,0,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:
	addiu	$2, $zero, 0
	ret	$lr
	.set	macro
	.set	reorder
	.end	main
$func_end0:
	.size	main, ($func_end0)-main
                                        # -- End function
	.ident	"clang version 12.0.1 (git@github.com:llvm/llvm-project 8fa9f1b08bbabc25c22030100fadf4b30bc4759d)"
	.section	".note.GNU-stack","",@progbits
