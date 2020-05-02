; CallProc_64.asm

ExitProcess proto
WriteInt64 proto
Crlf proto

.code
main proc
	sub rsp, 8
	sub rsp, 20h

	mov rcx, 1
	mov rdx, 2
	mov r8, 3
	mov r9, 4
	call AddFour
	call WriteInt64
	call Crlf

	; mov ecx, 0
	; call ExitProcess
	add rsp, 28h
	mov ecx, 0
	ret
main endp

AddFour proc
	mov rax, rcx
	add rax, rdx
	add rax, r8
	add rax, r9
	ret
AddFour endp
end 