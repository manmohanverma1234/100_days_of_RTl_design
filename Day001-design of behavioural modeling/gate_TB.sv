`timescale 1ns / 1ps



module gate_TB(

    );
    logic an_d,o_r,no_t,xo_r,na_nd,no_r,xn_or;
    logic a,b;
    gates g1(.*);
    initial begin
    a=0;b=0;
    #10 a=0;b=1; 
    #10 a=1;b=0; 
    #10 a=1;b=1;
    #50 $stop; 
    end
   
endmodule
