`timescale 1ns / 1ps

module CLA(input logic [3:0]a,b,input logic cin ,output logic[3:0] s,output logic cout

    );
    logic [3:0]p,g;
    logic [3:0]c;
    always_comb
    begin
     for(int i=0;i<=3;i=i+1)
     begin
      p[i]=a[i]^b[i];
      g[i]=a[i]&b[i];
      end
     c[0]=g[0]|p[0]&cin; 
     for(int j=0;j<3;j=j+1)
      begin
      c[j+1]=g[j+1]|p[j+1]&c[j];
     
      end
   end  
   assign s[0]=p[0]^cin;
   assign s[1]=p[1]^c[0];
   assign s[2]=p[2]^c[1];
   assign s[3]=p[3]^c[2];
   assign cout=c[3];
endmodule
