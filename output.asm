; runs an infinite loop and prints, after 1400*T seconds (T = clock period)
; and it increments the value of A every external cycle iteration
; then it prints out the value stored in A on the default output pin (Q1)

ld A, 0h
start:
ld B, 64h
    loop:
    dec B
    jp nz, loop
add A, 01h
out(01), A
jp start
