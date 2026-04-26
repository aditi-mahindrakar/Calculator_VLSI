module calculator(
    input [3:0] a, b,
    input [1:0] op,
    output reg [7:0] res
);
    always @(*) begin
        case(op)
            2'b00: res = a + b;   // Add
            2'b01: res = a - b;   // Sub
            2'b10: res = a * b;   // Mul
            default: res = 8'b0;
        endcase
    end
endmodule
