`timescale 1ns / 1ps
module CLA_tb(

    );
    logic [3:0]a,b;
    logic cin ;
    logic[3:0] s;
    logic cout;
    CLA c1(.*);
   initial begin

     a=4'd4;b=4'd15;cin=1'b0;
     #10 a=4'd8;b=4'd8;cin=1'b1;
     #10 a=4'd10;b=4'd8;cin=1'b1;
     #10 a=4'd4;b=4'd9;cin=1'b0;
     #10 a=4'd11;b=4'd14;cin=1'b1;
     #10 $stop;
     end
endmodule
