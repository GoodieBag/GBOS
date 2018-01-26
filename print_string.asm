
PRINT_MESSAGE:
pusha
call PRINT_STRING

;mov bx, MY_MESSAGE
;call PRINT_MESSAGE

jmp EXIT

PRINT_STRING:
mov al, [bx]
inc bx
cmp al, 0x0
jz EXIT
mov ah, 0x0e
int 0x10
jmp PRINT_STRING


MY_MESSAGE :
db 'Hello Kai', 0

EXIT:
popa
ret

;times 510-($-$$) db 0
;dw 0xaa55
