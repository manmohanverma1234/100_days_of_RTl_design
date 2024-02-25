`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 11:31:29
// Design Name: 
// Module Name: fa_tb
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


module fa_tb(

    );
    logic a,b,c;
    logic sum,ca;
    full_adder f1(.*);
    initial begin
    a=0;b=0;c=0;
    #10 a=0;b=0;c=1; 
    #10 a=0;b=1;c=0; 
    #10 a=0;b=1;c=1;
    #10 a=1;b=0;c=0;
    #10 a=1;b=0;c=1;
    #10 a=1;b=1;c=0;
    #10 a=1;b=1;c=1;
    #100 $stop; 
    end
endmodule
