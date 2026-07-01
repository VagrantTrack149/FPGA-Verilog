`timescale 1ns/1ps

module Lab_4_part_1_tb;

reg CLOCK;
reg [1:0] SW;

wire [6:0] HEX0;
wire [6:0] HEX1;

initial
begin
    CLOCK = 0;
    forever #10 CLOCK = ~CLOCK;
end

initial
begin

    SW = 2'b00;      // Clear activo
    #40;

    SW = 2'b11;      // Enable=1 Clear=1
    #400;

    SW = 2'b01;      // Pause
    #100;

    SW = 2'b11;
    #200;

    SW = 2'b10;      // Reset
    #40;

    SW = 2'b11;
    #200;

    $stop;

end


Lab_4_part_1 Prueba(.CLOCK(CLOCK), .SW(SW), .HEX0(HEX0), .HEX1(HEX1));

endmodule