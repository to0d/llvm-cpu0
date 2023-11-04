	.text
	.section .mdebug.abiO32
	.previous
	.file	"ch8_2_phinode.cpp"
	.globl	_Z12test_phinodeiii             # -- Begin function _Z12test_phinodeiii
	.p2align	1
	.type	_Z12test_phinodeiii,@function
	.ent	_Z12test_phinodeiii             # @_Z12test_phinodeiii
_Z12test_phinodeiii:
	.frame	$sp,0,$lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# %bb.0:                                # %entry
	addiu	$2, $zero, 1
	addiu	$3, $zero, 0
	cmp	$sw, $4, $3
	jeq	$sw, $BB0_4
	nop
# %bb.1:                                # %if.else
	cmp	$sw, $5, $3
	jeq	$sw, $BB0_3
	nop
# %bb.2:                                # %if.then2
	addiu	$2, $4, -1
	jmp	$BB0_4
$BB0_3:                                 # %if.else3
	ld	$2, 8($sp)
	addiu	$3, $4, 2
	movz	$4, $3, $2
	addu	$2, $zero, $4
$BB0_4:                                 # %if.end8
	addu	$2, $2, $5
	ret	$lr
	nop
	.set	macro
	.set	reorder
	.end	_Z12test_phinodeiii
$func_end0:
	.size	_Z12test_phinodeiii, ($func_end0)-_Z12test_phinodeiii
                                        # -- End function
	.ident	"clang version 12.0.1"
	.section	".note.GNU-stack","",@progbits
