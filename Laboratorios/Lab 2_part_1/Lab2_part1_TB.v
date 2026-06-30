module Lab_2_part_1_TB;

reg  [7:0] SW;

wire [6:0] HEX0;
wire [6:0] HEX1;

initial
$monitor("SW=%b -> HEX1=%b HEX0=%b",
          SW, HEX1, HEX0);

initial
begin

#0
    SW = 8'b0000_0000;   // 00

#10 SW = 8'b0000_0001;   // 01

#10 SW = 8'b0000_0010;   // 02

#10 SW = 8'b0000_0011;   // 03

#10 SW = 8'b0000_0100;   // 04

#10 SW = 8'b0000_0101;   // 05

#10 SW = 8'b0000_0110;   // 06

#10 SW = 8'b0000_0111;   // 07

#10 SW = 8'b0000_1000;   // 08

#10 SW = 8'b0000_1001;   // 09

#10 SW = 8'b0001_0000;   // 10

#10 SW = 8'b0010_0001;   // 21

#10 SW = 8'b0100_0011;   // 43

#10 SW = 8'b1001_1001;   // 99

#10 $stop;

end

Lab_2_part_1 inst0(
    SW,
    HEX0,
    HEX1
);

endmodule