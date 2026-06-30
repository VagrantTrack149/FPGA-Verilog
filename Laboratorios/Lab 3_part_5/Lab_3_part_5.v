module Lab_3_part_5(SW,KEY, LEDR,HEX0, HEX1,HEX2,HEX3,HEX4,HEX5);

input [7:0] SW;
input [1:0] KEY;

output [9:0] LEDR;

output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;
output [6:0] HEX3;
output [6:0] HEX4;
output [6:0] HEX5;

wire [7:0] A;
wire [7:0] B;
wire [8:0] SUM;

reg8 REG_A(
    KEY[1],
    KEY[0],
    SW,
    A
);

assign B = SW;

assign SUM = A + B;

assign LEDR[0] = SUM[8];
assign LEDR[9:1] = 9'b000000000;

char_7seg H0(
    B[3:0],
    HEX0
);

char_7seg H1(
    B[7:4],
    HEX1
);

char_7seg H2(
    A[3:0],
    HEX2
);

char_7seg H3(
    A[7:4],
    HEX3
);

char_7seg H4(
    SUM[3:0],
    HEX4
);

char_7seg H5(
    SUM[7:4],
    HEX5
);

endmodule