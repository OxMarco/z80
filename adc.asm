;adc tracking software, to convert an analog voltage coming from a trimmer to a a digital value, to be read by the z80
;using a 74LS365 tri-state buffer

ld D, 00
loop:
  ld A, D
  out (01), A
  out (00), A
  in A, 03
  and 01
  jpz up
  down:
  inc D
  jp loop
  up:
  dec D
jp loop
