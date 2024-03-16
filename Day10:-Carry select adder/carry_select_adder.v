`timescale 1ns / 1ps

module carry_select_adder(input [4:0]a,b,input cin ,output [4:0]s,output cout

    );
    supply0 cin0;
    supply1 cin1;
    wire [3:0]sum0;
    wire [3:0]sum1;
   
    wire fout,cout0,cout1;
    full_adder f(a[0],b[0],cin,s[0],fout);
    day005_ripple_ca_adder ra1(a[4:1],b[4:1],cin0,sum0[3:0],cout0);
    day005_ripple_ca_adder ra2(a[4:1],b[4:1],cin1,sum1[3:0],cout1);
    mux m1(cout1,cout0,fout,cout);
    mux m2(sum1[0],sum0[0],fout,s[1]); 
    mux m3(sum1[1],sum0[1],fout,s[2]);
    mux m4(sum1[2],sum0[2],fout,s[3]);
    mux m5(sum1[3],sum0[3],fout,s[4]);
endmodule
