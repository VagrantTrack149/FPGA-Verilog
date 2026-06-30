module Lab_4_part_3
# ( parameter n1 = 50000000,
    parameter n2 = 10,
    parameter width1 = 26,
    parameter width2 = 4)
	(CLK_50,KEY,HEX0);


input  CLK_50;
input [0:0] KEY;
output  [6:0] HEX0;


wire [width1-1:0] Q;
wire enable;
wire [3:0] Q1;

//instancias 
ContadorModuloN #(.n(n1), .width(width1)) Contador0 (.CLK(CLK_50),.RST(KEY[0]),.enable(1'b1),.Q(Q)  );

assign enable=~|(Q);

//ContadorModuloN #(.n(n2), .width(width2)) Contador1 (.CLK(CLK_50),.RST(KEY[0]),.enable(enable),.Q(Q1));
ContadorModuloN #(n2, width2) Contador1 (CLK_50,KEY[0],enable,Q1);

char_7seg seg7 (Q1,HEX0);


endmodule