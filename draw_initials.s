.global _start
.text
_start:
        #open frame buffer 1
        mov r0,#1
        bl openfb
        cmp r0,#0
        blt _start_exit

        #get the color purple and store it in r6
        mov r0,#31
        mov r1,#0
        mov r2,#31
        bl getColor
        mov r6,r0

        #first intital
        #set pixel 0,0 to the blue color stored in r6
        mov r2,r6
        mov r0,#0
        mov r1,#0
        bl setPixel
        
        
        #set pixel 1,0 to the blue color stored in r6
        mov r2,r6
        mov r0,#1
        mov r1,#0
        bl setPixel
        
        
        #set pixel 2,0 to the blue color stored in r6
        mov r2,r6
        mov r0,#2
        mov r1,#0
        bl setPixel
        
        
        #set pixel 3,0 to the blue color stored in r6
        mov r2,r6
        mov r0,#3
        mov r1,#0
        bl setPixel
        
        
        #set pixel 4,0 to the blue color stored in r6
        mov r2,r6
        mov r0,#4
        mov r1,#0
        bl setPixel
       
        
        #set pixel 5,0 to the blue color stored in r6
        mov r2,r6
        mov r0,#5
        mov r1,#0
        bl setPixel
        
       
        #set pixel 6,0 to the blue color stored in r6
        mov r2,r6
        mov r0,#6
        mov r1,#0
        bl setPixel
        
        
        #set pixel 7,0 to the blue color stored in r6
        mov r2,r6
        mov r0,#7
        mov r1,#0
        bl setPixel
        
        
        
        #set pixel 7,3 to the blue color stored in r6
        mov r2,r6
        mov r0,#7
        mov r1,#3
        bl setPixel
        
        
        #set pixel 6,3 to the blue color stored in r6
        mov r2,r6
        mov r0,#6
        mov r1,#3
        bl setPixel
        
        
        #set pixel 5,3 to the blue color stored in r6
        mov r2,r6
        mov r0,#5
        mov r1,#3
        bl setPixel
        
        
        #set pixel 4,3 to the blue color stored in r6
        mov r2,r6
        mov r0,#4
        mov r1,#3
        bl setPixel
        
        
        #set pixel 3,3 to the blue color stored in r6
        mov r2,r6
        mov r0,#3
        mov r1,#3
        bl setPixel
        
        
        #set pixel 2,3 to the blue color stored in r6
        mov r2,r6
        mov r0,#2
        mov r1,#3
        bl setPixel
        
        
        #set pixel 1,3 to the blue color stored in r6
        mov r2,r6
        mov r0,#1
        mov r1,#3
        bl setPixel
        
        
        #set pixel 0,3 to the blue color stored in r6
        mov r2,r6
        mov r0,#0
        mov r1,#3
        bl setPixel
        
        
        #set pixel 4,2 to the blue color stored in r6
        mov r2,r6
        mov r0,#4
        mov r1,#2
        bl setPixel
        
        
        
        #second initial
        #set pixel 0,4 to the blue color stored in r6
        mov r2,r6
        mov r0,#0
        mov r1,#4
        bl setPixel
        
        
        #set pixel 1,4 to the blue color stored in r6
        mov r2,r6
        mov r0,#1
        mov r1,#4
        bl setPixel
        
        
        #set pixel 2,4 to the blue color stored in r6
        mov r2,r6
        mov r0,#2
        mov r1,#4
        bl setPixel
        
        
        #set pixel 3,4 to the blue color stored in r6
        mov r2,r6
        mov r0,#3
        mov r1,#4
        bl setPixel
        
        
        #set pixel 4,4 to the blue color stored in r6
        mov r2,r6
        mov r0,#4
        mov r1,#4
        bl setPixel
        
        
        #set pixel 5,4 to the blue color stored in r6
        mov r2,r6
        mov r0,#5
        mov r1,#4
        bl setPixel
        
        
        #set pixel 6,4 to the blue color stored in r6
        mov r2,r6
        mov r0,#6
        mov r1,#4
        bl setPixel
        
        
        #set pixel 7,4 to the blue color stored in r6
        mov r2,r6
        mov r0,#7
        mov r1,#4
        bl setPixel
        
        
        #set pixel 7,5 to the blue color stored in r6
        mov r2,r6
        mov r0,#7
        mov r1,#5
        bl setPixel
        
        
        #set pixel 7,6 to the blue color stored in r6
        mov r2,r6
        mov r0,#7
        mov r1,#6
        bl setPixel
        
        
        #set pixel 7,7 to the blue color stored in r6
        mov r2,r6
        mov r0,#7
        mov r1,#7
        bl setPixel
        
        
        #set pixel 6,7 to the blue color stored in r6
        mov r2,r6
        mov r0,#6
        mov r1,#7
        bl setPixel
        
        
        #set pixel 5,7 to the blue color stored in r6
        mov r2,r6
        mov r0,#5
        mov r1,#7
        bl setPixel
        
        
        #set pixel 4,7 to the blue color stored in r6
        mov r2,r6
        mov r0,#4
        mov r1,#7
        bl setPixel
        
        
        #set pixel 3,7 to the blue color stored in r6
        mov r2,r6
        mov r0,#3
        mov r1,#7
        bl setPixel
        
        
        #set pixel 2,7 to the blue color stored in r6
        mov r2,r6
        mov r0,#2
        mov r1,#7
        bl setPixel
        
        
        #set pixel 1,7 to the blue color stored in r6
        mov r2,r6
        mov r0,#1
        mov r1,#7
        bl setPixel
        
        
        #set pixel 0,7 to the blue color stored in r6
        mov r2,r6
        mov r0,#0
        mov r1,#7
        bl setPixel

        #cleanup the data structures created by openfb and close the framebuffer device
        bl closefb

_start_exit:
        #clean exit
        mov r7,#1
        svc #0
