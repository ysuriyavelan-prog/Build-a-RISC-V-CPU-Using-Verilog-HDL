module full_adder_8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg Cin;

wire [7:0] Sum;
wire Cout;

full_adder_8bit uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    $monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",
             $time, A, B, Cin, Sum, Cout);

    // Test 1
    A = 8'b00000101;
    B = 8'b00000011;
    Cin = 0;
    #20;

    // Test 2
    A = 8'b11111111;
    B = 8'b00000001;
    Cin = 0;
    #20;

    // Test 3
    A = 8'b00001111;
    B = 8'b00000001;
    Cin = 1;
    #20;

    // Test 4
    A = 8'b10101010;
    B = 8'b01010101;
    Cin = 1;
    #20;

    $finish;

end

endmodule
