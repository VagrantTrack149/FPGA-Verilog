module Lab1_part_3(U,V,W,X,S,M);
input  [1:0] U;
input  [1:0] V;
input  [1:0] W;
input  [1:0] X;
input  [1:0] S;
output [1:0] M;


mux4a1 bit0(U[0], V[0], W[0], X[0], S, M[0]);
mux4a1 bit1(U[1], V[1], W[1], X[1], S, M[1]);

endmodule