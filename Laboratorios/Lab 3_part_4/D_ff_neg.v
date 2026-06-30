module D_ff_neg(D,Clk,Q);

input D;
input Clk;
output reg Q;

always @(negedge Clk)
begin
    Q <= D;
end

endmodule