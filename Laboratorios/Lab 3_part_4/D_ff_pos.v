module D_ff_pos(D,Clk,Q);

input D;
input Clk;
output reg Q;

always @(posedge Clk)
begin
    Q <= D;
end

endmodule