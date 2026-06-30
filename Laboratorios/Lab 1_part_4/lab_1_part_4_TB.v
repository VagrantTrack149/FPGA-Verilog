module lab_1_part_4_TB;

reg  [1:0] SW;
wire [6:0] HEX0;

initial
$monitor("SW=%b -> HEX0=%b", SW, HEX0);

initial
begin

#0
    SW = 00;   // N

#10 SW = 01;  // E

#10 SW = 10;  // I

#10 SW = 11;  // L

#10 $stop;

end

lab_1_part_4 inst0(SW, HEX0);

endmodule