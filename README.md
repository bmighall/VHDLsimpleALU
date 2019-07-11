VHDL Switch-Based ALU System (with Binary LED Output) (Artix-7 family Nexys 4 FPGA)

Creator: Ben Mighall

All of this VHDL code was written for an Artix-7 family Nexys 4 FPGA board. Constraints file is included in this repository.

This code was written as part of coursework for University of Mississippi class El E 386 (Advanced Digital Systems Lab).

This program runs an "ALU"-type system that compares two four-bit binary numbers from two sets of four switches. (Number A is switches 12-15; number B is switches 8-11), reads a two-bit opcode from switches 0 and 1, and then performs operations depending on the opcode. The result is then displayed in binary format on LEDs 4 through 0.

Switches 1 and 0 determine the operation: 00 = add, 01 = subtract, 10 = and, 11 = or

