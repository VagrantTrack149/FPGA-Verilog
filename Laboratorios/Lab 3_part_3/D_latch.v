module D_latch(Clk,D,Q);

input Clk;
input D;
output Q;

wire R;
wire S;
wire R_g;
wire S_g;
wire Qa;
wire Qb;

assign S = D;
assign R = ~D;

assign S_g = S & Clk;
assign R_g = R & Clk;

assign Qa = ~(R_g | Qb);
assign Qb = ~(S_g | Qa);

assign Q = Qa;

endmodule