; 数组求和		(SumArray_64.asm)

ExitProcess proto

.data
intArray qword 1000000000000000h, 2000000000000000h,
			   3000000000000000h, 4000000000000000h

.code
main proc
	mov rdi, offset intArray
	mov rcx, lengthof intArray
	mov rax, 0
	L1:
		add rax, [rdi]
		add rdi, type intArray
	loop L1

	mov ecx, 0
	call ExitProcess
main endp
end