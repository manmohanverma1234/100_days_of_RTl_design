`timescale 1ns / 1ps



module ripple_tb(

    );
     logic [3:0]a,b; 
     logic [3:0]sum;
     logic carry;
     day005_ripple_ca_adder r1(.*);
   initial begin
     a=4'b0000;b=4'b1000;
     #10 a=4'b0001;b=4'b1110;
     #10 a=4'b0010;b=4'b1100;
     #10 a=4'b0011;b=4'b1000;
     #10 a=4'b0100;b=4'b1011;
     #10 a=4'b0101;b=4'b0110;
     #10 a=4'b0110;b=4'b0001;
     #10 a=4'b0111;b=4'b1001;
     #10 $stop;
     
   end
endmodule
