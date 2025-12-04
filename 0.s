.text
.global main

main:
	STP fp, lr, [sp, 16]
	MOV fp, sp
	ADR x0,  fmt_in
	ADD x1, sp, 0
	ADD x2, sp, 8
	bl scanf
	LDR x3, [sp]
	LDR x4, [sp, 8]
	SUB x5, x3, x4
	ADR x0, fmt_out
	MOV x1, x5
	BL printf
	ADD sp, sp, 16
	MOV x0, #0
	LDP fr, lr, [sp], 16
	RET
fmt_in:
	.asciz "%lld%lld"
fmt_our:
	.asciz "%lld\n"

