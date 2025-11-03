`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 03:28:08 PM
// Design Name: 
// Module Name: double_dabble_tb
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


module double_dabble_tb();

reg clk;
reg en;
reg [11:0] bin_d_in;
wire [15:0] bcd_d_out;
wire rdy;

double_dabble uut(.clk(clk),.en(en),.bin_d_in(bin_d_in),.bcd_d_out(bcd_d_out),.rdy(rdy));

always #5 clk=~clk;

initial begin
    clk = 0;
    en = 0;
    bin_d_in = 0;
    #20;
    bin_d_in = 12'd1234;
    en = 1;
    #10;  
    en = 0;
    
    wait(rdy == 1); 
    #20;
    
    bin_d_in = 12'd3598;  
    en = 1;
    #10;
    en = 0;
    
    wait(rdy == 1);
    #20;
    
    $finish;
    end
endmodule
