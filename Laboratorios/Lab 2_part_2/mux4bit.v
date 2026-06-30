module mux4bit(I0,I1,S,M);

input [3:0] I0;
input [3:0] I1;
input S;
output [3:0] M;

assign M[0] = (~S & I0[0]) | (S & I1[0]);
assign M[1] = (~S & I0[1]) | (S & I1[1]);
assign M[2] = (~S & I0[2]) | (S & I1[2]);
assign M[3] = (~S & I0[3]) | (S & I1[3]);

endmodule