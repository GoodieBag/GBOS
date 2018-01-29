[org 0x7c00]
mov dx, 0x1fb6
call print_hex
jmp $

print_hex:
mov bx, HEX_OUT + 5;
loop:
mov cx, dx
and cx, 0x000F
cmp cx, 9
jle LESSER_THAN_9
add cx, 0x37
BACK :
mov [bx], cl
dec bx
shr dx, 4
cmp dx, 0x0
je print
jmp loop

print :
mov bx, HEX_OUT
call PRINT_MESSAGE
ret

%include "print_string.asm"

HEX_OUT:
db '0x0000',0

LESSER_THAN_9:
add cx, 0x30
jmp BACK;

times 510-($-$$) db 0
dw 0xaa55
