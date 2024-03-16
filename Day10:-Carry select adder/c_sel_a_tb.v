`timescale 1ns / 1ps


module c_sel_a_tb(

    );
    reg [4:0]a,b;  
    reg cin  ;
    wire[4:0]s;
    wire cout;
carry_select_adder c1(a,b,cin,s,cout);
 initial begin

     a=4'd4;b=4'd15;cin=1'b0;
     #10 a=4'd8;b=4'd8;cin=1'b1;
     #10 a=4'd10;b=4'd8;cin=1'b1;
     #10 a=4'd4;b=4'd9;cin=1'b0;
     #10 a=4'd11;b=4'd14;cin=1'b1;
     #10 $stop;
     end
endmodule
