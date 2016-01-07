; this code execution time is 10 seconds, due to the three nested loops 
; 100*[100*[70*14+14]+14]*T = 10 sec where T is the clock set at 1 MHz

ld a, 64h
loop1:
   ld b, 64h
   loop2:
      ld c, 46h
         loop3:
         dec c
         jnz c, loop3
   dec b
   jnz b, loop2
dec a
jnz a, loop1
halt
