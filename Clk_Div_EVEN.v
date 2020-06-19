///////////////////////////////////////////////////////////////////////////////////////////
// Design Name: Clock Frequency Divider using Even number with 50% duty cycle
// Engineer: kiran
// Note: The code is designed for clock frequency divide by 2.
///////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module Clk_Div_EVEN(clk,rst,clk_out);

    parameter N = 2;       //frequency divider number
    
    input  wire clk;
    input  wire rst;
    output wire clk_out;
    
    wire [0 : $clog2(N)-1]state;
    
    mod_n COUNTER (.clk(clk), .rst(rst), .out(state));
    
    assign clk_out = state[0];

endmodule
    
