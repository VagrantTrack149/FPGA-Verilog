module Lab1_part_2(X,Y,s,M);
input  [3:0] X;
input  [3:0] Y;
input        s;
output [3:0] M;

mux2to1 inst0(X[0], Y[0], s, M[0]);
mux2to1 inst1(X[1], Y[1], s, M[1]);
mux2to1 inst2(X[2], Y[2], s, M[2]);
mux2to1 inst3(X[3], Y[3], s, M[3]);

endmodule