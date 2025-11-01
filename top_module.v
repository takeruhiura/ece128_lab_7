`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 01:34:57 PM
// Design Name: 
// Module Name: top_module
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

module top_module(
    input mclk,
    output [6:0] seg,
    output [3:0] an);
    
    reg [15:0] stat_bcd = 16'b0;
    
    wire en;
    wire [11:0] bin_d_in;
    wire [15:0] bcd_d_out;
    wire rdy;
    wire clock_out;
    
    clock_divider uut4(.clock_in(mclk), .clock_out(clock_out));
    
    up_counter uut1(.clk(clock_out), .done(en), .bin_cnt(bin_d_in));
    
    double_dabble uut2(.clk(mclk), .en(en), .bin_d_in(bin_d_in), .bcd_d_out(bcd_d_out), .rdy(rdy));
    
    multiseg_driver uut3(.clk(mclk), .bcd_in(stat_bcd), .seg_anode(an), .seg_cathode(seg));
    
    always @(posedge mclk)
        begin
            if (rdy)
                begin
                    stat_bcd <= bcd_d_out;
                end
        end
        
endmodule


