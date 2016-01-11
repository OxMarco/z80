; DESCRIPTION: this program reads a value from a keyboard input device (binary encoded),
; prints its value onto the screen and finally sends it to a peripheral DAC
; WIRING: Q0 to the buffer clock input pin, Q1 I/O bus to the display and Q2 to the keyboard
; use a DAC08 with a 74LS374 as middle flip-flop edge-triggered buffer

start:
in A, (02)
inc A
out (00), A
out (01), A
jp start

; this program generates a rising triangle wave

start:
in A, (02)
inc A
out (00), A
out (01), A
jp start

; this program generates a falling triangle wave

start:
in A, (02)
dec A
out (00), A
out (01), A
jp start

; this program generates a triangular wave
in A, (02)
up:
  inc A
  out (00), A
  cp oxFF
  jpz up
  down:
    dec A
    out (00), A
    jpnz down
jp up
