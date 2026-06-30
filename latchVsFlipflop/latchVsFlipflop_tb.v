module latchVsFlipflop_tb;
reg CLK,RST,D;
wire QL,Qff;
//reset
initial
begin
#0	RST=0;
#10 RST=1;
end

//reloj
initial
begin
#0 CLK=0;
forever #5 CLK=!CLK;
end

//Data
initial
begin
#0 D=0;
#10 D=1;
#10 D=0;
#10 D=1;
#5 D=0;
#3 D=1;
#1 D=0;
#2 D=1;
#4 D=0;
#2 D=1;
#5 $stop;

end

latchVsFlipflop inst0 (CLK,RST,D,QL,Qff);

endmodule