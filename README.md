# ECE 128 Lab 7 README File


## Project Description
The first part of the lab introduces the concept of state machines. Two types, mealy and moore, were analyzed and implemented into Verilog with the overlapping method. The second portion of the lab involved hardware implementation as well as modules created in previous labs, such as clock_divider, multiseg_driver, and seven_seg_decoder. The goal of this portion of the lab is to implement the double dabble algorithm, which is used to convert binary values into BCD, which is then used alongside a counter to output values that count up from 0 to 4095 on the seven segment display. 

## How to simulate the program and implement it on the FPGA 
To simulate the program, ensure that each model file is located in the design sources, the constraints file is in the constraints directory, and the testbench file is in the simulation sources directory. Since there are multiple modules and testbenches, make sure the modules you want to simulate are set to the top in Vivado. To run the simulation, go to the navigator on the left side of Vivado and click run simulation, then run behavioral simulation to output the waveforms of the testbench. 

To program the FPGA with the top_module, make sure the proper module, testbench, and constraint file are selected. Then run the synthesis, implementation, and generate the bitstream. Once the bitstream is generated, open the hardware manager and program the board using the .bit file. 
