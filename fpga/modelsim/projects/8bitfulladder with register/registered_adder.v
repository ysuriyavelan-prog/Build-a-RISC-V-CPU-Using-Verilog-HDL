module registered_adder(
    input clk,
    input rst,
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] Sum,
    output Cout
);

wire [7:0] temp_sum;
wire temp_carry;

wire [8:0] result;
wire [8:0] stored_result;

full_adder_8bit FA(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(temp_sum),
    .Cout(temp_carry)
);

assign result = {temp_carry, temp_sum};

dff_9bit DFF(
    .clk(clk),
    .rst(rst),
    .D(result),
    .Q(stored_result)
);

assign Sum = stored_result[7:0];
assign Cout = stored_result[8];

endmodule