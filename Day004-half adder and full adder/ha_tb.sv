`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 11:16:08
// Design Name: 
// Module Name: ha_tb
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


module ha_tb(

    );
    logic a,b;
    logic sum,ca;
    half_adder h1(.*);
    initial begin
    a=0;b=0;
    #10 a=0;b=1; 
    #10 a=1;b=0; 
    #10 a=1;b=1;
    #50 $stop; 
    end

endmodule
