`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
module carry_save_adder(input [3:0]a,b,c,output [4:0]sum,output cout

    );
    wire s1,s2,s3,s4;
    wire c1,c2,c3,c4,c5,c6,c7,cout1;
    wire [4:0]k; 
    supply0 gnd;
    full_adder f1(a[0],b[0],c[0],sum[0],c1);
    full_adder f2(a[1],b[1],c[1],s1,c2);
    full_adder f3(a[2],b[2],c[2],s2,c3);
    full_adder f4(a[3],b[3],c[3],s3,c4);
    
    
    
    full_adder f5(c1,s1,gnd,sum[1],c5);
    full_adder f6(c2,s2,c5,sum[2],c6);
    full_adder f7(c3,s3,c6,sum[3],c7);
    full_adder f8(c4,gnd,c7,sum[4],cout);
    
endmodule
