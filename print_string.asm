
PRINT_MESSAGE:
pusha
call PRINT_STRING
ret

PRINT_STRING:
mov al, [bx]
inc bx
cmp al, 0x0
jz EXIT
mov ah, 0x0e
int 0x10
jmp PRINT_STRING

EXIT:
popa
ret
