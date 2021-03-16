include 'emu8086.inc' 
org 100h

.data
suma db 2 dup (?)
mag db "**** Programa escrito en ensamblador para sumar 2 numeros ****$"

.code
main proc
    mov dx,offset mag
    mov ah,09h
    int 21h
        
    printn "" 
    print ""
        
    printn "" 
    print "----------------------------------------"
    
    printn ""
    print "Digite el primer numero para operar: "
    call scan_num
    mov suma[0],cl
    
    printn ""
    print "Digite el segundo numero para operar: "
    call scan_num
    mov suma[1],cl
    
    xor ax,ax
    
    add al,suma[0]
    add al,suma[1]
    
    printn "" 
    print "----------------------------------------"
    
    printn ""
    print "El resultado de la suma es: "  
    call print_num

main endp
    exit:
    
    printn ""
    printn ""
    print "Presione enter en su teclado para finalizar la ejecucion del programa..."
    mov ah,0
    int 16h
    ret
    
    define_print_string
    define_print_num
    define_print_num_uns
    define_scan_num
    