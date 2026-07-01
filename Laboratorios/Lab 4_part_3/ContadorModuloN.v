module ContadorModuloN
#(parameter n=10, parameter width=4)
    (CLK,RST,Q,enable,tick);

input CLK,RST,enable;
output reg [width-1:0] Q;
output tick;

//Pulso cuando el contador llega al ultimo valor
assign tick = enable && (Q == n-1);

always @(negedge RST, posedge CLK)
begin
    if(RST==0)
        Q <= 0;

    else if(enable)
    begin
        if(Q == n-1)
            Q <= 0;
        else
            Q <= Q + 1;
    end
end

endmodule