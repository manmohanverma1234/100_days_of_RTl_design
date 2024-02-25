`timescale 1ns / 1ps


module full_adder(input logic a,b,c,output logic sum,ca

    );
    logic w1,w2,w3;
    half_adder h1(a,b,w1,w2);
    half_adder h2(c,w1,sum,w3);
    or(ca,w2,w3);
    
endmodule


//code for full adder 
//module full_adder(input logic a,b,c,output logic sum,ca

//    );
//    always_comb 
//    begin
//    sum=a^b^c; 
//    ca=(a&b)|(b&c)|(a&c);
//    end
//    endmodule