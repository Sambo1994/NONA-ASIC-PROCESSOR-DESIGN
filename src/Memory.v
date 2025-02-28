module Memory(
    input clk,
    input [7:0] addr,
    input [7:0] data_in,
    input write_enable,
    output reg [7:0] data_out
);
    reg [7:0] memory [0:255];

    always @(posedge clk) begin
        if (write_enable)
            memory[addr] <= data_in;
    end

    always @(*) begin
        data_out = memory[addr];
    end
endmodule
