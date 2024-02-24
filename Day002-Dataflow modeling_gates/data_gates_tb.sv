`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2024 15:25:39
// Design Name: 
// Module Name: data_gates_tb
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


module data_gates_tb(

    );
   logic a,b;
   logic an_d,o_r,no_t,no_t_b,na_nd,no_r,ex_or,ex_nor;
   gate_dataflow g1(.*);
    initial begin
    a=0;b=0;
    #10 a=0;b=1; 
    #10 a=1;b=0; 
    #10 a=1;b=1;
    #50 $stop; 
    end

endmodule
