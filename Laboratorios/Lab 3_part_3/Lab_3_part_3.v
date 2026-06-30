module Lab_3_part_3(Clk,D,Q);

input Clk;
input D;
output Q;

wire Qm;
wire Clk_n;

assign Clk_n = ~Clk;

D_latch MASTER(Clk_n, D, Qm);

D_latch SLAVE(Clk, Qm, Q);

endmodule