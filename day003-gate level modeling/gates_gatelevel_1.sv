`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 10:16:24
// Design Name: 
// Module Name: gates_gatelevel_1
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


`timescale 1ns / 1ps

module gates_gateslevel_1(input logic a,b,output logic an_d,o_r,no_t,no_t_b,xo_r,na_nd,no_r,xn_or
);

and(an_d,a,b);
or(o_r,a,b);
not(no_t,a);
not(no_t_b,b);
nand(na_nd,a,b);
nor(no_r,a,b); 
xor(xo_r,a,b);    
xnor(xn_or,a,b);
endmodule
