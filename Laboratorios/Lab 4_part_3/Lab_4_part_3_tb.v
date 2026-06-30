module Lab_4_part_3_tb;
reg CLK_50;
reg[0:0] KEY;
wire[6:0] HEX0;

initial
begin
		KEY=0;
		#10 KEY=1;
		#2000 $stop;
end
initial
begin
	CLK_50=0;
	forever #10 CLK_50=~CLK_50;
end

		
Lab_4_part_3 #(20,10,5,4) inst1 	(CLK_50,KEY,HEX0);



endmodule