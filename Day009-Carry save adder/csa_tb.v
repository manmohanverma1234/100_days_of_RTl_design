`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 23:07:14
// Design Name: 
// Module Name: csa_tb
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


module csa_tb(

    );
    reg [3:0]a,b,c;

    wire[4:0]sum;
    wire cout;
   carry_save_adder c1(a,b,c,sum,cout);
   initial begin

     a=4'd4;b=4'd5;c=4'd5;
     #10 a=4'd8;b=4'd8;c=4'd8;
     #10 a=4'd10;b=4'd8;c=4'd2;
     #10 a=4'd4;b=4'd9;c=4'd4;
     #10 a=4'd11;b=4'd14;c=4'd3;
     #10 $stop;
     end
endmodule
