; DESCRIPTION: this program reads a value from a keyboard input device (binary encoded),
; prints its value onto the screen and finally sends it to a peripheral DAC
; WIRING: Q0 to the buffer clock input pin, Q1 I/O bus to the display and Q2 to the keyboard
; use a DAC08 with a 74LS374 as middle flip-flop edge-triggered buffer

db 02
d3 00
d3 01
c3 00 00
