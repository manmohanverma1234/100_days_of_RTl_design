`timescale 1ns / 1ps



module carr_skip_add(input  [3:0]a,b,input cin,output [3:0]s,output  cout

    );
    reg [3:0]p;
    integer i;
    always@(a or b)
    begin
    for(i=0;i<=3;i=i+1)
         p[i]=a[i]^b[i];
    end
    wire w1,w2,w3,w4,y,ck;
    wire [3:0]k;
    full_adder f1(a[0],b[0],cin,k[0],w1);
    full_adder f2(a[1],b[1],w1,k[1],w2);
    full_adder f3(a[2],b[2],w2,k[2],w3);
    full_adder f4(a[3],b[3],w3,k[3],w4);
    
   and(y,p[0],p[1],p[2],p[3]);
   mux m1(cin,w4,y,ck);
   assign s[3:0]=k[3:0];
   assign cout=ck;
endmodule
