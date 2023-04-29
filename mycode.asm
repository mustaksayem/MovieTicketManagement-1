.model small
.data
.code
main proc
    mov ax,@data
    mov ds,ax
    mov bl,00h
    xor bx,ax
    mov ah,1
    int 21h
    
    top:
    cmp al,0dh
    je exit
    and al,0fh
    shl al,1
    jc aa
    mov ah,2
    mov dl,'0'
    int 21h
    jmp top
    
    bottom:
    
    mov ah,2
    mov dl,'1'
    int 21h
    
    jmp top
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main