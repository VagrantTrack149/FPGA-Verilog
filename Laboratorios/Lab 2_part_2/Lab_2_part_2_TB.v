module Lab_2_part_2_TB;

reg  [3:0] SW;

wire [6:0] HEX0;
wire [6:0] HEX1;

initial
$monitor("SW=%b -> HEX1=%b HEX0=%b",
          SW, HEX1, HEX0);

initial
begin

#0
    SW = 4'b0000;   // 00

#10 SW = 4'b0001;  // 01

#10 SW = 4'b0010;  // 02

#10 SW = 4'b0011;  // 03

#10 SW = 4'b0100;  // 04

#10 SW = 4'b0101;  // 05

#10 SW = 4'b0110;  // 06

#10 SW = 4'b0111;  // 07

#10 SW = 4'b1000;  // 08

#10 SW = 4'b1001;  // 09

#10 SW = 4'b1010;  // 10

#10 SW = 4'b1011;  // 11

#10 SW = 4'b1100;  // 12

#10 SW = 4'b1101;  // 13

#10 SW = 4'b1110;  // 14

#10 SW = 4'b1111;  // 15

#10 $stop;

end

Lab_2_part_2 inst0(SW,HEX0,HEX1);

endmodule