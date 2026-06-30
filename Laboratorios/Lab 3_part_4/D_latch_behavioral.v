module D_latch_behavioral(D,Clk,Q);

input D;
input Clk;
output reg Q;

always @(D,Clk)
begin
    if(Clk)
        Q = D;
end

endmodule