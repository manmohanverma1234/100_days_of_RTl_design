`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 18:40:40
// Design Name: 
// Module Name: dadda_multipliers
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dadda_multipliers(input logic [3:0]a,b,input rst,output logic [7:0]y

    );
    logic p[3:0][3:0];
    logic [11:0]s,c; 
    
    always_comb
    begin
      for(int i=0;i<=3;i++)begin
         for(int j=0;j<=3;j++)begin
              p[j][i]<=a[j]&b[i];
         end
      end
      end
      //step-1
      ha h1(p[2][0],p[1][1],rst,c[0],s[0]);
      fa f1(p[3][0],p[2][1],p[1][2],rst,c[1],s[1]);
      ha h2(p[3][1],p[2][2],rst,c[2],s[2]);
      
     //step-2
     ha h3(c[0],s[1],rst,c[3],s[3]);
      fa f2(c[1],s[2],p[1][3],rst,c[4],s[4]);
     fa f3(c[2],p[3][2],p[2][3],rst,c[5],s[5]);
     //step-3
     ha h4(p[1][0],p[0][1],rst,c[6],s[6]);
     fa f4(c[6],s[0],p[0][2],rst,c[7],s[7]);
     fa f5(c[7],s[3],p[0][3],rst,c[8],s[8]);
     fa f6(c[8],c[3],s[4],rst,c[9],s[9]);
     fa f7(c[9],c[4],s[5],rst,c[10],s[10]);
     fa f8(c[10],c[5],p[3][3],rst,c[11],s[11]);
     
     assign y[0]=p[0][0];
     assign y[1]=s[6];
     assign y[2]=s[7];
     assign y[3]=s[8];
     assign y[4]=s[9];
     assign y[5]=s[10];
     assign y[6]=s[11];
     assign y[7]=c[11];
     
endmodule
