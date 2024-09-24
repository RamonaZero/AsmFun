	global _start

	section .data
msg:	db	"Test Pass!",0xA,0
len:	equ	$-msg
	
	section .text
_start:
	mov rax, 100
	mov rbx, 101
	cmp rax, rbx
	jne _pass

	
	
	mov rax, 60
	mov rdi, 0
	syscall

_pass:
	mov rax, 1
	mov rdi, 0
	mov rsi, msg
	mov rdx, len
	syscall
	ret
