module registered_mux(
    input clk,
    input rst,
    input [7:0] D,
    input [2:0] S,
    output Q
);

wire mux_out;

mux_8to1 MUX(
    .D(D),
    .S(S),
    .Y(mux_out)
);

dff DFF(
    .clk(clk),
    .rst(rst),
    .D(mux_out),
    .Q(Q)
);

endmodule