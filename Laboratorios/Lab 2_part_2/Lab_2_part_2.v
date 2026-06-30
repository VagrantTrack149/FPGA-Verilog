module Lab_2_part_2(SW,HEX0,HEX1);

input [3:0] SW;
output [6:0] HEX0;
output [6:0] HEX1;
wire z;

wire [3:0] A;
wire [3:0] D0;

assign z = SW[3] & (SW[2] | SW[1]);

circuitoA C1(
    .V(SW),
    .A(A)
);

mux4bit M1(
    .I0(SW),
    .I1(A),
    .S(z),
    .M(D0)
);

char_7seg H0(
    .X(D0),
    .HEX(HEX0)
);

char_7seg H1(
    .X({3'b000,z}),
    .HEX(HEX1)
);

endmodule