`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 10:19:11
// Design Name: 
// Module Name: gates_gatelevel_tb
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


module gates_gatelevel_tb(

    );
   logic a,b; 
   logic an_d,o_r,no_t,no_t_b,xo_r,na_nd,no_r,xn_or;
   gates_gateslevel_1 g1(.*);
    initial begin
    a=0;b=0;
    #10 a=0;b=1; 
    #10 a=1;b=0; 
    #10 a=1;b=1;
    #50 $stop; 
    end

endmodule
