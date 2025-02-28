module ALU(
    input [7:0] A,
    input [7:0] B,
    input [2:0] ALUOp,
    output reg [7:0] Result
);
    always @(*) begin
        case (ALUOp)
            3'b000: Result = A + B;  // ADD
            3'b001: Result = A - B;  // SUB
            3'b010: Result = A & B;  // AND
            3'b011: Result = A | B;  // OR
            3'b100: Result = A ^ B;  // XOR
            default: Result = 8'b0;  // Default
        endcase
    end
endmodule
