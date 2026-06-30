module mux4a1(u,v,w,x,s,m);
input u;
input v;
input w;
input x;
input [1:0] s;
output m;

wire a, b;

mux2a1 M0(u, v, s[0], a);
mux2a1 M1(w, x, s[0], b);
mux2a1 M2(a, b, s[1], m);
	 

endmodule