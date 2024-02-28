`timescale 1ns / 1ps



module riple_ca_add_sub(input logic sub,input logic [3:0]a,b,output logic [3:0]sum,output logic ca

    );
    logic w1,w2,w3,w4;
    logic c1,c2,c3,c4;
   xor x1(w1,b[0],sub);
   full_adder f1(a[0],w1,sub,sum[0],c1);
   xor x2(w2,b[1],sub);
   full_adder f2(a[1],w2,c1,sum[1],c2);
   xor x3(w3,b[2],sub);
   full_adder f3(a[2],w3,c2,sum[2],c3);
   xor x4(w4,b[3],sub);
   full_adder f4(a[3],w4,c3,sum[3],ca);
 
endmodule
