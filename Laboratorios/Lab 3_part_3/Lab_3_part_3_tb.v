`timescale 1ns / 1ns

module Lab_3_part_3_tb();

    reg Clk_tb;
    reg D_tb;
    wire Q_tb;

    initial
    begin : CLOCK_GENERATOR
        Clk_tb = 0;

        forever
        begin
            #5 Clk_tb = ~Clk_tb;
        end
    end

    initial
    begin
        D_tb = 0;

        #12 D_tb = 1;
        #10 D_tb = 0;
        #8  D_tb = 1;
        #15 D_tb = 0;
        #20 D_tb = 1;

        #40 $stop;
    end

    Lab_3_part_3 p3(Clk_tb, D_tb, Q_tb);

endmodule