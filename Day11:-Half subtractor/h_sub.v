`timescale 1ns / 1ps



module h_sub(input  a,b,output diff,bo

    );
    assign diff=a^b;
    assign bo=((~a)&b);
endmodule
