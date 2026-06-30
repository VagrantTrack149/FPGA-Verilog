module Lab1_part_3_TB;
reg  [1:0] U, V, W, X;
reg  [1:0] S;
wire [1:0] M;


initial 
$monitor("S=%b U=%b V=%b W=%b X=%b -> M=%b",S,U,V,W,X,M);

initial	
begin
#0
	 U = 2'b00;
    V = 2'b01;
    W = 2'b10;
    X = 2'b11;

#10    S = 2'b00; #10;
#10    S = 2'b01; #10;
#10    S = 2'b10; #10;
#10    S = 2'b11; #10;


	
#10 $stop;

end

Lab1_part_3 inst0(U, V, W, X, S, M);
endmodule
