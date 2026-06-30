module part1(Clk,R,S,Q);

input Clk;
input R;
input S;
output Q;

wire R_g;
wire S_g;

wire Qa;
wire Qb;

assign R_g = R & Clk;
assign S_g = S & Clk;

assign Qa = ~(R_g | Qb);
assign Qb = ~(S_g | Qa);

assign Q = Qa;

endmodule