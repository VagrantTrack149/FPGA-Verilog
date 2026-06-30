module Sumador_n_bits(A,B,CI,CO,S);
input [3:0] A,B;
input CI;
output CO;
output [3:0] S;
wire [2:0] c;

Sumador_completo inst0(A[0],B[0],CI,c[0],S[0]);
Sumador_completo inst1(A[1],B[1],c[0],c[1],S[1]);
Sumador_completo inst2(A[2],B[2],c[1],c[2],S[2]);
Sumador_completo inst3(A[3],B[3],c[2],CO,S[3]);



endmodule