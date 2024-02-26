`timescale 1ns / 1ps


module day005_ripple_ca_adder(input logic [3:0]a,b,output logic [3:0]sum,output logic carry

    );
    supply0 c;
    logic w1,w2,w3;
    full_adder f1( a[0],b[0],c, sum[0],w1);
    full_adder f2( a[1],b[1],w1, sum[1],w2);
    full_adder f3( a[2],b[2],w2, sum[2],w3);
    full_adder f4( a[3],b[3],w3, sum[3],carry);
   endmodule
