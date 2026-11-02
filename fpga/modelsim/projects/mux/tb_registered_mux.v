module tb_registered_mux;

reg clk, rst;
reg [7:0] D;
reg [2:0] S;

wire Q;

registered_mux DUT(
    .clk(clk),
    .rst(rst),
    .D(D),
    .S(S),
    .Q(Q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    D = 8'b10110110;
    S = 0;

    #10 rst = 0;

    S = 3'b000;
    #10;

    S = 3'b001;
    #10;

    S = 3'b010;
    #10;

    S = 3'b011;
    #10;

    S = 3'b100;
    #10;

    S = 3'b101;
    #10;

    S = 3'b110;
    #10;

    S = 3'b111;
    #10;

    $finish;
end

initial
begin
    $monitor("Time=%0t D=%b S=%b Q=%b",
             $time, D, S, Q);
end

endmodule