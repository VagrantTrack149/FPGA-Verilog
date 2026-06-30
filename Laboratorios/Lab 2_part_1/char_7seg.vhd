module char_7seg(input  [3:0] X, output [6:0] HEX);


wire a,b,c,d,e,f,g;

assign a = X[3] | X[1] | (X[2] & X[0]) | (~X[2] & ~X[0]);

assign b = ~X[2] | (~X[1] & ~X[0]) | (X[1] & X[0]);

assign c = X[2] | X[0] | ~X[1];

assign d = X[3]
         | (~X[2] & X[1])
         | (~X[2] & ~X[0])
         | (X[1] & ~X[0])
         | (X[2] & ~X[1] & X[0]);

assign e = ~X[0] | (X[1] & X[0]);

assign f = X[3]
         | (~X[1] & ~X[0])
         | (X[2] & ~X[1])
         | (X[2] & ~X[0]);

assign g = X[3]
         | (~X[2] & X[1])
         | (X[2] & ~X[1])
         | (X[2] & ~X[0]);

assign HEX[0] = ~a;
assign HEX[1] = ~b;
assign HEX[2] = ~c;
assign HEX[3] = ~d;
assign HEX[4] = ~e;
assign HEX[5] = ~f;
assign HEX[6] = ~g;

endmodule