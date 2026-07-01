module Lab_4_part_3
#( parameter n1 = 50000000,
    parameter n2 = 10,
    parameter width1 = 26,
    parameter width2 = 4)
    (CLK_50,KEY,HEX0);

input CLK_50;
input [0:0] KEY;
output [6:0] HEX0;

wire [width1-1:0] Q;
wire [width2-1:0] Q1;
wire tick;

//instancias

//Divisor de frecuencia
ContadorModuloN #( .n(n1), .width(width1)) Contador0( .CLK(CLK_50), .RST(KEY[0]), .enable(1'b1), .Q(Q), .tick(tick));

//Contador decimal
ContadorModuloN #( .n(n2), .width(width2)) Contador1( .CLK(CLK_50), .RST(KEY[0]), .enable(tick), .Q(Q1), .tick());

//Display
char_7seg seg7(Q1,HEX0);

endmodule