start:
ld B, 100
loop:
dec B
jp nz loop
in A, (00)
add A, C
nop
ld C, A
out (01), A
jp start
