module Lab_4_part_4(CLOCK_50,HEX0,HEX1,HEX2,HEX3);

input CLOCK_50;
output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;
output [6:0] HEX3;
reg [25:0] div;
reg tick;

always @(posedge CLOCK_50)
begin

    if(div==26'd49999999)
    begin
        div<=0;
        tick<=1;
    end
    else
    begin
        div<=div+1;
        tick<=0;
    end

end

reg [1:0] count;

always @(posedge CLOCK_50)
begin

    if(tick)
        count<=count+1;

end

wire [2:0] H0,H1,H2,H3;

assign H3=(count==0)?0:
          (count==1)?1:
          (count==2)?2:3;

assign H2=(count==0)?1:
          (count==1)?2:
          (count==2)?3:0;

assign H1=(count==0)?2:
          (count==1)?3:
          (count==2)?0:1;

assign H0=(count==0)?3:
          (count==1)?0:
          (count==2)?1:2;

char_7seg C0(H0,HEX0);
char_7seg C1(H1,HEX1);
char_7seg C2(H2,HEX2);
char_7seg C3(H3,HEX3);

endmodule