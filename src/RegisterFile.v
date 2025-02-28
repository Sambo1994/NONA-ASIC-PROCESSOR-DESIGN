module RegisterFile(
    input clk,
    input [2:0] read_addr1,
    input [2:0] read_addr2,
    input [2:0] write_addr,
    input [7:0] write_data,
    input write_enable,
    output reg [7:0] read_data1,
    output reg [7:0] read_data2
);
    reg [7:0] registers [0:7];

    always @(posedge clk) begin
        if (write_enable)
            registers[write_addr] <= write_data;
    end

    always @(*) begin
        read_data1 = registers[read_addr1];
        read_data2 = registers[read_addr2];
    end
endmodule
