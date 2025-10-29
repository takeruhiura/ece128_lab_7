`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 02:31:51 PM
// Design Name: 
// Module Name: up_counter_tb
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


module up_counter_tb();
    reg clk, rstn;
    wire [11:0] q;
    wire done;
    
    up_counter dut(.clk(clk), .bin_cnt(q), .done(done));
    
    initial begin
        clk=0;
        forever #1 clk=~clk;
    end
    
    initial begin
        rstn = 0;
        
        @(posedge clk);
            @(negedge clk);
            @(negedge clk);
            wait (q == 12'd4095);
            #8;
            
        $stop;
    end
endmodule
