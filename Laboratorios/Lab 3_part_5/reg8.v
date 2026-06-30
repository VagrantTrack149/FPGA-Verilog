module reg8(Clk,Reset,D,Q);

input Clk;
input Reset;

input [7:0] D;
output reg [7:0] Q;

always @(posedge Clk or negedge Reset)
begin

    if(!Reset)
        Q <= 8'b00000000;
    else
        Q <= D;

end

endmodule