# Serial Adder

This repository contains behavioral code for [Serial Adder](https://en.wikipedia.org/wiki/Serial_binary_adder).
The following individual components have been modeled and have been provided
with their corresponding test benches:
- Parrallel Input Serial Output Shift register (PISO) (`piso.v`)
- D Flip Flop (`d_flipflop.v`)
- Full Adder (`full_adder.v`)

File `serial_adder.v` is the master node, the corresponding testbench is
`serial_adder_tb.v`. To compile and visualise the waveforms (using [iverilog](http://iverilog.icarus.com/)
and [gtkwave](http://gtkwave.sourceforge.net/)), follow these steps:

- Install `iverilog` and `gtkwave` using the instructions given [here](http://iverilog.wikia.com/wiki/Installation_Guide).
- Clone this repository using the command `git clone https://github.com/RJ722/serial-adder-verilog`.
- `cd serial-adder-verilog`
- `iverilog -o serial_adder.out serial_adder_tb.v`
- `./serial_adder.out`
- `gtkwave serial_adder_tb.vcd # Visualise waveforms`

For changing the input values to the adder, please make changes in `serial_adder_tb.v`.