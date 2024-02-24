

module gate_dataflow(input logic a,b,output logic an_d,o_r,no_t,no_t_b,na_nd,no_r,ex_or,ex_nor

    );
    assign  an_d=a&b;
    assign o_r=a|b;
    assign no_t=!a;
    assign no_t_b=!b;
    assign na_nd=!(a&b);
    assign no_r=!(a|b);
    assign ex_or=a^b; 
    assign ex_nor=!(a^b);
endmodule
