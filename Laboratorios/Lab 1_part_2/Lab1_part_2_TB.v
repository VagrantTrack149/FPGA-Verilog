module Lab1_part_2_TB;
reg  [3:0] X, Y;
reg        s;
wire [3:0] m;
initial
$monitor ("x=%b,s=%b,y=%b",X,s,Y);
initial
begin

#0 X = 4'b0101;
   Y = 4'b1010;
   s = 0;
#10
	s=1;
#10 $stop;

end

Lab1_part_2 inst0(X,Y,s,m);
endmodule
