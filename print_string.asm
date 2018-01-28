
PRINT_MESSAGE:
pusha  				;push all register values to the stack
call PRINT_STRING
popa 				;Restore orignal register values
ret 				;Returns to the main function

PRINT_STRING:
mov al, [bx]		;bx has the address of the input string lable(i.e address of the 1st character in the string)
cmp al, 0x0 		;Looking for the exit null character in the string
jz EXIT
mov ah, 0x0e
int 0x10
inc bx				;point to the next character
jmp PRINT_STRING

EXIT:
ret 				;Returns to the next instruction after the "call PRINT_STRING"
