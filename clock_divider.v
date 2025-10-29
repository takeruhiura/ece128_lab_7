`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:40:47 PM
// Design Name: 
// Module Name: three_bit_counter
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
module clock_divider(clock_in,clock_out);
input clock_in;
output reg clock_out = 1'b0;
reg[26:0] counter=27'd0;
 always @(posedge clock_in) begin
 counter <= counter + 1;
 if (counter == 27'd10000000) begin
 clock_out <= ~clock_out;
 counter <= 0;
 end
 end
 endmodule