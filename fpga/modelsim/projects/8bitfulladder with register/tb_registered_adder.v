module tb_registered_adder;

reg clk, rst;
reg [7:0] A, B;
reg Cin;

wire [7:0] Sum;
wire Cout;

registered_adder DUT(
    .clk(clk),
    .rst(rst),
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    A = 0;
    B = 0;
    Cin = 0;

    #10 rst = 0;

    A = 8'd10;
    B = 8'd20;
    Cin = 0;
    #10;

    A = 8'd100;
    B = 8'd50;
    Cin = 1;
    #10;

    A = 8'd255;
    B = 8'd1;
    Cin = 0;
    #10;

    $finish;
end

initial
begin
    $monitor("Time=%0t A=%d B=%d Cin=%b Sum=%d Cout=%b",
              $time, A, B, Cin, Sum, Cout);
end

endmodule