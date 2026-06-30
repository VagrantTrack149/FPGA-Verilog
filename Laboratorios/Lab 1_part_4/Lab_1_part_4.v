module lab_1_part_4(SW,HEX0);
input [1:0] SW;
output [6:0] HEX0;

char_7seg inst0(SW,HEX0);

endmodule