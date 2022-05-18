#Mbiet Uko
#Conor McCloskey
#Alejandro Silva

.global _start
.text
_start:
        #open frame buffer 1
        mov r0,#1
        bl openfb
        cmp r0,#0
        blt _start_exit
        
        
        mov r0,#1
loop:
        cmp r0,#7
        add r0,r0,#1
        B loop
        endLoop
        
        
        
        #cleanup the data structures created by openfb and close the framebuffer device
        bl closefb

_start_exit:
        #clean exit
        mov r7,#1
        svc #0
