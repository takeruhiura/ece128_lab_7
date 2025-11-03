`timescale 1ns / 1ps

module top_module_tb;

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
