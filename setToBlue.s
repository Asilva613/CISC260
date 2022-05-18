.text
.global _start
_start:

    #open frame buffer 1
    mov r0, #1
    bl openfb
    cmp r0, #0
    mov r5, #8
    mov r6, #7
    blt _start_exit
    
    
    #get the color blue and store it in r6
    mov r0,#0
    mov r1,#0
    mov r2,#31
    bl getColor
    mov r10,r0

l1:
    cmp r5, #0
    beq _start_exit
    sub r5, r5, #1
    mov r6, #7
    b l2
    b l1

l2:
    cmp r6, #-1
    beq l1
    mov r0, r5
    mov r1, r6
    mov r2, r10
    bl setPixel
    sub r6, r6, #1
    b l2

    bl closefb

_start_exit:
    mov r7, #1
    svc #0
