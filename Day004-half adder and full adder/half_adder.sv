
module half_adder(input logic a,b,output logic sum,ca

    );
    always_comb begin
     sum=a^b;
     ca=a&b;
     end
endmodule
