

module full_subb(input  a,b,bin,output diff,bo

    );
    assign diff=a^b^bin;
    assign bo=((~a)&b)|(bin&((~a)|b));
endmodule
