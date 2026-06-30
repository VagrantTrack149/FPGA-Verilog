module implementacion(SW,LEDR);
input [9:0] SW;
output [4:0] LEDR;

Sumador_n_bits imp0 (SW[3:0],SW[7:4],SW[9],LEDR[4],LEDR[3:0]);


endmodule