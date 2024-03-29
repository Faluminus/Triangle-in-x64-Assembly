includelib ucrt.lib
includelib legacy_stdio_definitions.lib

extern printf:PROC

.DATA
starFormat DB "%s",0
star DB "*",0
emptyFormat DB " ",10,0

.CODE



main PROC

	xor ebx,ebx
	xor esi,esi
	sub rsp ,20h
	mov esi,10
	MyLoop1:
		lea rcx,emptyFormat
		call printf
		dec esi
		mov ebx,esi
		cmp esi,0
		jnz MyLoop2
		jmp EndTriangles

	MyLoop2:
		lea rcx, starFormat
		lea rdx, star
		call printf
		dec ebx
		cmp ebx,0
		jnz myLoop2
		jmp MyLoop1

	EndTriangles:
		add rsp,20h
		ret

main ENDP


END