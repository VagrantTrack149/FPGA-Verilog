`timescale 1ns/1ps

module Lab_4_part_4_tb;

reg CLOCK_50;

wire [6:0] HEX0;
wire [6:0] HEX1;
wire [6:0] HEX2;
wire [6:0] HEX3;

initial
begin
    CLOCK_50 = 0;
    forever #10 CLOCK_50 = ~CLOCK_50;
end

initial
begin

    #800;

    $stop;

end


Lab_4_part_4 prueba(.CLOCK_50(CLOCK_50),.HEX0(HEX0), .HEX1(HEX1),.HEX2(HEX2), .HEX3(HEX3));

endmodule