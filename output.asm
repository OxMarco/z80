start:
ld A, 0
ld B, 100
loop:
dec B
jp nz, loop
add A, 10
out(01), A
jp start
