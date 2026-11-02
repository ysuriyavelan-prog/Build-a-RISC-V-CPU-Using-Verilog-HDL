module dff_9bit(
    input clk,
    input rst,
    input [8:0] D,
    output reg [8:0] Q
);

always @(posedge clk)
begin
    if (rst)
        Q <= 9'b0;
    else
        Q <= D;
end

endmodule