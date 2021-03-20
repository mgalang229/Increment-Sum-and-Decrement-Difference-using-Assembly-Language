.model small 
                       
.data
   
   heading db 10, 13, "Increment and Decrement Operations$"
   
   message1 db 10, 13, 10, 13, "Sum of Two Numbers Before Increment: $"
   message2 db 10, 13, "Sum of Two Numbers After Increment: $"
   
   message3 db 10, 13, 10, 13, "Difference of Two Numbers Before Decrement: $"
   message4 db 10, 13, "Difference of Two Numbers After Decrement: $"
   
   x db ?
   y db ?
   z db ?   
 
.code           

main proc far 
    
   mov ax, @data
   mov ds, ax
   
   lea dx, heading ; print heading
   mov ah, 09h
   int 21h 
   
   IncrementSum:
   
   lea dx, message1 ; print message 1 (for sum)
   mov ah, 09h
   int 21h
   
   mov x, 4         ; store 4 to x
   mov y, 4         ; store 4 to y 
   
   mov dl, x        ; copy x to dl
   add dl, y        ; add y to dl
   add dl, 48       ; add 48 to dl
   
   mov ah, 02h      ; print dl (value)
   int 21h
   
   mov z, dl        ; copy dl to z
   inc z            ; increment z
   
   lea dx, message2 ; print message 2 (for sum)
   mov ah, 09h
   int 21h
   
   mov dl, z        ; copy z to dl
   
   mov ah, 02h      ; print dl (value)
   int 21h
   
   DecrementDifference:
   
   lea dx, message3 ; print message 3 (for difference)
   mov ah, 09h
   int 21h
   
   mov x, 5         ; store 4 to x
   mov y, 4         ; store 4 to y 
   
   mov dl, x        ; copy x to dl
   sub dl, y        ; subtract y to dl
   add dl, 48       ; add 48 to dl
   
   mov ah, 02h      ; print dl (value)
   int 21h
   
   mov z, dl        ; copy dl to z
   dec z            ; decrement z
   
   lea dx, message4 ; print message 4 (for difference)
   mov ah, 09h
   int 21h
   
   mov dl, z        ; copy z to dl
   
   mov ah, 02h      ; print dl (value)
   int 21h
    
   mov ah, 4ch      ; end program
   int 21h
      
    
endp    
