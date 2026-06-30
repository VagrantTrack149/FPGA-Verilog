`timescale 1ns / 1ns

module Lab_3_part_5_tb();

    reg [7:0] SW;
    reg [1:0] KEY;

    wire [9:0] LEDR;

    wire [6:0] HEX0;
    wire [6:0] HEX1;
    wire [6:0] HEX2;
    wire [6:0] HEX3;
    wire [6:0] HEX4;
    wire [6:0] HEX5;

    initial
    begin

        KEY[0] = 0;
        KEY[1] = 0;
        SW = 8'h00;

        #10;

        // liberar reset
        KEY[0] = 1;

        // A = 25
        SW = 8'h19;

        // pulso de clock
        #10 KEY[1] = 1;
        #10 KEY[1] = 0;

        // B = 12
        #20 SW = 8'h0C;

        #50 $stop;

    end

    Lab_3_part_5 DUT(SW, KEY,LEDR, HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);

endmodule