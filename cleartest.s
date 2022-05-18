.data
        FILENAME: .asciz "/dev/fb1"
        FD: .word 0
        FB: .word 0

.global openfb
.global closefb
.global getColor
.global setPixel

.text
.global _start
_start:

#open frame buffer
mov r0, #1
bl openfb
cmp r0, #0
blt _start_exit

#set pi blank
mov r8, r0
mov r0,#0
mov r2, #0
bl getColor
mov r6, r0

#initialization
mov r0, #0
mov r1, #0
mov r2, r6
mov r3, #0
mov r4, #0
b l2

l1:
    cmp r0, #8
    beq _start_exit
    add r4, #1
    mov r1, #0
    add r3, #0
    b l2

l2:
    cmp r1, #0
    beq l1
    bl setPixel
    mov r0, r12
    add r3, #1
    mov r1, r3
    b l2

    bl closefb

_start_exit:
    mov r7, #1
    svc #0

