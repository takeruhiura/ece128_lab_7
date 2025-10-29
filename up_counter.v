`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 02:28:31 PM
// Design Name: 
// Module Name: up_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 12-bit up counter
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module up_counter(
    input clk,
    output done,
    output [11:0] bin_cnt);
    
    parameter c_reg_size = 12;
    
    reg [c_reg_size-1:0] count = 0;
    reg fin = 0;
    
    always @(posedge clk)
        begin
            count <= count + 1;
                    fin <= 1;
        end
    
    assign bin_cnt = count;  
    assign done = fin;
    
endmodule
