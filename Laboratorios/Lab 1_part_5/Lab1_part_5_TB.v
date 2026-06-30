module Lab1_part_5_TB;

reg  [9:0] SW;
wire [9:0] LEDR;
wire [6:0] HEX0;

initial
$monitor("S=%b HEX0=%b", SW[9:8], HEX0);

initial
begin

#0
    SW[7:6] = 00; // N
    SW[5:4] = 01; // E
    SW[3:2] = 10; // I
    SW[1:0] = 11; // L

#10 SW[9:8] = 00;
#10 SW[9:8] = 01;
#10 SW[9:8] = 10;
#10 SW[9:8] = 11;

#10 $stop;

end

Lab_1_part_5 inst0(SW,LEDR,HEX0);

endmodule