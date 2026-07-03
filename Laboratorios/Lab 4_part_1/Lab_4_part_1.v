//module Lab_4_part_1(KEY,SW,HEX0,HEX1);
module Lab_4_part_1(CLOCK,SW,HEX0,HEX1);
input CLOCK;
//input [0:0] KEY;
input [1:0] SW;
output [6:0] HEX0;
output [6:0] HEX1;
wire [7:0] Q;

counter8 C0(
	 .Clock(~CLOCK),
    //.Clock(~KEY[0]),
    .Enable(SW[1]),
    .Clear(SW[0]),
    .Q(Q)
);

char_7seg H0(Q[3:0], HEX0);
char_7seg H1(Q[7:4], HEX1);

endmodule