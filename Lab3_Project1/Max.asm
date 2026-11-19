// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/6/max/Max.asm

// Computes R2 = max(R0, R1)  (R0,R1,R2 refer to RAM[0],RAM[1],RAM[2])
// Usage: Before executing, put two values in R0 and R1.

  // D = R0 - R1
  @R0
  D=M
  @R1
  D=D-M
  @BIG
  D;JGT
  @R1
  D=M
  @R2
  M=D
  @END
  0;JMP
  (BIG)
  @R0
  D=M
  @R2
  M=D
  (END)
  @END
  0;JMP
