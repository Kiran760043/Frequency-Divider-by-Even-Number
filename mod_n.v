///////////////////////////////////////////////////////////////////////////////////////////
// Design Name: Mod N Counter for Clock Divider
// Engineer: kiran
///////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module mod_n(clk, rst, out);
    
    parameter N = 2;       //frequency divider number
    
    input  wire clk;
    input  wire rst;
    output reg  [0 : $clog2(N)-1] out;  
    
    always@(posedge clk, posedge rst)
        begin
            if(rst)begin
                out <= 0;
            end else begin
                if(out == N-1)begin
                    out <= 0;
                end else begin
                    out <= out + 1;
                end   
            end
        end  
endmodule
