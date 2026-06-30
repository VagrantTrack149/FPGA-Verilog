module Lab_1_part_5(SW,LEDR,HEX0,HEX1,HEX2,HEX3);
//vamos a usar los proyectos 3 y 4 para facilitar

input [9:0] SW;
output [9:0] LEDR;
output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;
output [6:0] HEX3;

wire [1:0] M0;
wire [1:0] M1;
wire [1:0] M2;
wire [1:0] M3;

assign LEDR=SW;

// HEX0
Lab1_part_3 mux0(
    SW[7:6],   // U
    SW[5:4],   // V
    SW[3:2],   // W
    SW[1:0],   // X
    SW[9:8],   // S
    M0
);

// HEX1
Lab1_part_3 mux1(
    SW[5:4],   // V
    SW[3:2],   // W
    SW[1:0],   // X
    SW[7:6],   // U
    SW[9:8],   // S
    M1
);

// HEX2
Lab1_part_3 mux2(
    SW[3:2],   // W
    SW[1:0],   // X
    SW[7:6],   // U
    SW[5:4],   // V
    SW[9:8],   // S
    M2
);

// HEX3
Lab1_part_3 mux3(
    SW[1:0],   // X
    SW[7:6],   // U
    SW[5:4],   // V
    SW[3:2],   // W
    SW[9:8],   // S
    M3
);

char_7seg seg0(M0,HEX0);
char_7seg seg1(M1,HEX1);
char_7seg seg2(M2,HEX2);
char_7seg seg3(M3,HEX3);

endmodule