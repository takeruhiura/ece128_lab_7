`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2025 04:17:27 PM
// Design Name: 
// Module Name: top_module_tb
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


`timescale 1ns / 1ps

module top_module_tb();

    reg mclk;
    wire [6:0] seg;
    wire [3:0] an;
    
    top_module uut (
        .mclk(mclk),
        .seg(seg),
        .an(an)
    );
    
    initial begin
        mclk = 0;
        forever #5 mclk = ~mclk;
    end
    
    initial begin
        #1000000;
        
        $finish;
    end
    
endmodule
