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
        mov r1,#1
startLoop:
        cmp r0,#7
        add r0,r0,#1
        
        bgt startLoop2
        b startLoop
        
startLoop2:
        cmp r1,#7
        add r1,r1,#1
        
        #get the color blue 
        mov r3,#0
        mov r4,#0
        mov r5,#31
        bl getColor
        
        bgt _start_exit
        b startLoop2
        
        
        #cleanup the data structures created by openfb and close the framebuffer device
        bl closefb
         

_start_exit:
        #clean exit
        mov r7,#1
        svc #0
