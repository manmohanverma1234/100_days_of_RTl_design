module mode_10_counter_b(input logic clk,rst,output logic [3:0]q

    );
    always_ff @(posedge clk)
    if(!rst)
    begin 
    q<=4'b0000;
    end
    else if(q==9)begin
    q<=0; 
    end 
    else
    begin 
    q<=q+1;
    end
endmodule
