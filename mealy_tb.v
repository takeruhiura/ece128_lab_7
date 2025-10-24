`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 02:19:32 PM
// Design Name: 
// Module Name: mealy_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mealy_tb(

    );

    reg P1;
    reg clk;
    reg reset;
    wire z;
    
    mealy uut(.P1(P1),.clk(clk),.reset(reset),.z(z));
    
    initial
        begin
            clk=1'b0;
            reset=1'b1;
            #15 reset=1'b0;
        end
    always #5 clk=~clk;
    
    initial begin
        #10 P1=1;
        #10 P1=1;
        #10 P1=1;
        #10 P1=0;
        #10 P1=1;
        #10 P1 = 1;
        #10 $finish;
        end
endmodule
