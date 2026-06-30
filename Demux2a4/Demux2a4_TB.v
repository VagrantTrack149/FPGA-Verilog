module Demux2a4_TB;
reg x;
reg [1:0] s;
wire [3:0] y;

initial
$monitor ("x=%b,s=%b,y=%b",x,s,y);

initial
begin

#0 x=1;
	s=00;
#10 s=01;
#10 s=10;
#10 s=11;
#10 $stop;

end

Demux2a4 inst0 (.x(x),.s(s),.y(y));

endmodule
