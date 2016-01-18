; DESCRIPTION: this program reads a value from a keyboard input device (binary encoded),
; prints its value onto the screen and finally sends it to a peripheral DAC
; WIRING: Q0 to the buffer clock input pin, Q1 I/O bus to the display and Q2 to the keyboard
; use a DAC08 with a 74LS374 as middle flip-flop edge-triggered buffer

;calibrazione
start:
in A, (02)
out (00), A
out (01), A
jp start

;rampa positiva
start:
in A, (02)
inc A
out (00), A
out (01), A
jp start

;rampa negativa
start:
in A, (02)
dec A
out (00), A
out (01), A
jp start

;segnale triangolare
in A, (02)
up:
inc A
out (00), A
cp 255
jpz up
	down:
	dec A
	out (00), A
	jpnz down
jp up

;segnale triangolare (periodo diverso)
in A, (02)
up:
inc A
out (00), A
cp 128
jpz up
	down:
	dec A
	out (00), A
	jpnz down
jp up

; forma d'onda qualsiasi
; P.ti: 00 - 10 - 40 - 04
start:
ld B, 4
ld HL, 0010
	loop:
	ld A, (HL)
	out (0n), A
	inc HL
	dec B
	jpnz loop
jp start
;p.ti
00
10
40
04
