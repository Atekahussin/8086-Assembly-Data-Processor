[ORG 0x2000]

            jmp	start

num1:      dw    16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32
even:      dw    0, 0, 0, 0, 0, 0, 0, 0, 0
sumEven:   dw    0
avg:       dw    0
num2:      dw    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
sort:      dw    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0


EvenNum:
   mov bx, num1
   mov bp, even
   mov cx,17 
loopeven:
   mov ax,[bx]
   and ax,1
   jnz skip
   mov ax,[bx]
   mov [bp], ax
   add bp, 2
skip:
   add bx,2
   loop loopeven 
ret 	


sum:
    mov ax, 0         
    mov cx, 9         
sum_loop:
    add ax, [bx]      
    add bx, 2         
    loop sum_loop     
    ret

average:
    mov cx, 9         
    mov bx, ax        
    xor dx, dx        
    div cx            
    ret
		


DecOrder:
    push cx
    push bx

    mov di, sort            

FindPosition:
    cmp di, sort + 20       
    jge InsertValue         

    mov dx, [di]            
    cmp dx, ax              
    jl  ShiftRight          
    jmp InsertValue         

ShiftRight:
    mov [di + 2], dx        
    add di, 2               
    jmp FindPosition        

InsertValue:
    mov [di], ax            
    pop bx                  
    pop cx
    ret  

start:	
    call  EvenNum

    mov bx, even       
    call sum           
    mov [sumEven], ax  

    call average       
    mov [avg], ax

    mov  bx, num2 + 20      
    mov  ax, [bx]           
    mov  [sort], ax         

    sub  bx, 2              
    mov  cx, 10             

SortLoop:
    mov  ax, [bx]           
    call DecOrder           

    sub  bx, 2              
    loop SortLoop  
    
    mov  ax, 0x4c00         
    int  0x21


