`timescale 1ns / 1ps



module add_sub_tb(

    );
    logic sub;
    logic [3:0]a,b;
    logic [3:0]sum;
    logic ca;
    riple_ca_add_sub r1(.*);
    initial begin
     sub=1'b0;
     a=4'b0000;b=4'b1000;
     #10 a=4'b0001;b=4'b1110;
     #10 a=4'b0010;b=4'b1100;
     #10 a=4'b0011;b=4'b1000;
     #10 sub=1'b1;
     #10 a=4'b0100;b=4'b1011;
     #10 a=4'b0101;b=4'b0110;
     #10 a=4'b0110;b=4'b0001;
     #10 a=4'b0111;b=4'b1001;
     #10 $stop;
     end
endmodule
