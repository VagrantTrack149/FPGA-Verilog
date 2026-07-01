module counter8(Clock,Enable,Clear,Q);

input Clock;
input Enable;
input Clear;
output [7:0] Q;

wire [7:0] T;

assign T[0] = Enable;
assign T[1] = Enable & Q[0];
assign T[2] = Enable & Q[0] & Q[1];
assign T[3] = Enable & Q[0] & Q[1] & Q[2];
assign T[4] = Enable & Q[0] & Q[1] & Q[2] & Q[3];
assign T[5] = Enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4];
assign T[6] = Enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4] & Q[5];
assign T[7] = Enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4] & Q[5] & Q[6];

T_ff FF0(T[0],Clock,Clear,Q[0]);
T_ff FF1(T[1],Clock,Clear,Q[1]);
T_ff FF2(T[2],Clock,Clear,Q[2]);
T_ff FF3(T[3],Clock,Clear,Q[3]);
T_ff FF4(T[4],Clock,Clear,Q[4]);
T_ff FF5(T[5],Clock,Clear,Q[5]);
T_ff FF6(T[6],Clock,Clear,Q[6]);
T_ff FF7(T[7],Clock,Clear,Q[7]);

endmodule