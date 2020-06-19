///////////////////////////////////////////////////////////////////////////////////////////
// Design Name: Clock Frequency Divider using Odd number with 50% duty cycle
// Engineer: kiran
///////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module test_bench();
    //inputs for the DUT
        reg clk;
        reg rst;
    // outputs from DUT
        wire clk_out;
        
    Clk_Div_EVEN DUT (.clk(clk),.rst(rst),.clk_out(clk_out));
    
    initial 
        begin
            $display($time," << Simulation Results >> ");
            $monitor($time,"clk = %b, rst = %b, clk_out = %b",clk,rst,clk_out);
        end
    
    always #5 clk = ~clk;
    
    initial
        begin
            rst = 1;
            clk = 0;
            #20
            rst = 0;
            #80
            $finish;
            
        end
endmodule
