`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 22:50:15
// Design Name: 
// Module Name: carr_skip_tb
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


module carr_skip_tb(

    );
    reg [3:0]a,b;
    reg cin ;
    wire[3:0] s;
    wire cout;
   carr_skip_add c1(a,b,cin,s,cout);
   initial begin

     a=4'd4;b=4'd15;cin=1'b0;
     #10 a=4'd8;b=4'd8;cin=1'b1;
     #10 a=4'd10;b=4'd8;cin=1'b1;
     #10 a=4'd4;b=4'd9;cin=1'b0;
     #10 a=4'd11;b=4'd14;cin=1'b1;
     #10 $stop;
     end
endmodule

