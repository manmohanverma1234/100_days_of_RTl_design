module counter_1(input logic clk,rst,output logic [3:0]q

    );
    always_ff@(posedge clk)
    
    if(!rst)
    begin
    q<=4'b0000;
    end 
    else
    begin
    q<=q+1;
    end
    
endmodule
