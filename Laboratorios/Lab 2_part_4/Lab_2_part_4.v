module Lab_2_part_4(SW,LEDR,HEX5,HEX3,HEX1,HEX0);

input [8:0] SW;
output [9:0] LEDR;
output [6:0] HEX5;
output [6:0] HEX3;
output [6:0] HEX1;
output [6:0] HEX0;
wire errorX;
wire errorY;

assign errorX = SW[7] & (SW[6] | SW[5]);
assign errorY = SW[3] & (SW[2] | SW[1]);

assign LEDR[9] = errorX | errorY;

// SUMADOR

wire c1,c2,c3,cout;
wire [3:0] SUM;

full_adder FA0(
    .a(SW[4]),
    .b(SW[0]),
    .ci(SW[8]),
    .s(SUM[0]),
    .co(c1)
);

full_adder FA1(
    .a(SW[5]),
    .b(SW[1]),
    .ci(c1),
    .s(SUM[1]),
    .co(c2)
);

full_adder FA2(
    .a(SW[6]),
    .b(SW[2]),
    .ci(c2),
    .s(SUM[2]),
    .co(c3)
);

full_adder FA3(
    .a(SW[7]),
    .b(SW[3]),
    .ci(c3),
    .s(SUM[3]),
    .co(cout)
);

// LED

assign LEDR[3:0] = SUM;
assign LEDR[4] = cout;

// Conversión 0-15

wire z;
wire [3:0] A;
wire [3:0] D0;

assign z = SUM[3] & (SUM[2] | SUM[1]);

assign A[3] = 1'b0;
assign A[2] = SUM[3] & SUM[2] & SUM[1];
assign A[1] = SUM[3] & SUM[2] & ~SUM[1];
assign A[0] = SUM[0];

mux4bit M0(
    .I0(SUM),
    .I1(A),
    .S(z),
    .M(D0)
);

// Corrección 16-19

wire [3:0] FIX;


over15_fix FIXER(
    .V(SUM),
    .A(FIX)
);
// Selecciono final

wire [3:0] UNIT;

mux4bit M1(
    .I0(D0),
    .I1(FIX),
    .S(cout),
    .M(UNIT)
);

//decena

wire tens;

assign tens =
       (SUM[3] & SUM[2])
     | (SUM[3] & SUM[1])
     | cout;

// 7seg

char_7seg HX(
    .X(SW[7:4]),
    .HEX(HEX5)
);

char_7seg HY(
    .X(SW[3:0]),
    .HEX(HEX3)
);

char_7seg HS0(
    .X(UNIT),
    .HEX(HEX0)
);

char_7seg HS1(
    .X({3'b000,tens}),
    .HEX(HEX1)
);

endmodule