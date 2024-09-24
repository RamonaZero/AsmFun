	global _start

	section .data
vec1:	dd	1.0, 2.0, 3.0, 4.0
vec2:	dd 	1.0, 1.0, 1.0, 1.0
	
	section .text
_start:
	movaps xmm0, [vec1]
	movaps xmm1, [vec2]

	addps xmm0, xmm1

	mulps xmm0, xmm0
	
	icebp
	
	mov rax, 60
	mov rdi, 0
	syscall
