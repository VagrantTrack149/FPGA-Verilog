module Lab_4_part_4(
    input CLOCK_50,
    input [0:0] KEY,
    output [6:0] HEX0,
    output [6:0] HEX1,
    output [6:0] HEX2,
    output [6:0] HEX3
);

reg [25:0] div;
reg tick;
reg [1:0] count;

reg [2:0] H0,H1,H2,H3;

// Divisor de 1 segundo
always @(posedge CLOCK_50 or negedge KEY[0])
begin
    if(!KEY[0])
    begin
        div  <= 0;
        tick <= 0;
    end
    else if(div == 26'd49999999)
    begin
        div  <= 0;
        tick <= 1;
    end
    else
    begin
        div  <= div + 1;
        tick <= 0;
    end
end

// Contador de rotación
always @(posedge CLOCK_50 or negedge KEY[0])
begin
    if(!KEY[0])
        count <= 0;
    else if(tick)
        count <= count + 1;
end

// Seleccion de caracteres
always @(*)
begin
    case(count)

    2'b00:
    begin
        H3=0;
        H2=1;
        H1=2;
        H0=3;
    end

    2'b01:
    begin
        H3=1;
        H2=2;
        H1=3;
        H0=0;
    end

    2'b10:
    begin
        H3=2;
        H2=3;
        H1=0;
        H0=1;
    end

    default:
    begin
        H3=3;
        H2=0;
        H1=1;
        H0=2;
    end

    endcase
end

// Displays
char_7seg C0(H0,HEX3);
char_7seg C1(H1,HEX2);
char_7seg C2(H2,HEX1);
char_7seg C3(H3,HEX0);

endmodule