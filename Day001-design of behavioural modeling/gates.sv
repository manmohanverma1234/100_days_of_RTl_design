module gates(input logic a,b,output logic an_d,o_r,no_t,xo_r,na_nd,no_r,xn_or

    );
    always_comb
    begin
    an_d=a&b;
    o_r=a|b;
    no_t=~a; 
    xo_r=a^b;
    na_nd=~(a&b);
    no_r=~(a|b);
    xn_or=~(a^b);
    end
endmodule
