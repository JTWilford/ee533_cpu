module perf_mux(
    input [63:0] cpu_din,
    input [63:0] cpu_ain,
    input cpu_wren,
    output [63:0] cpu_dout,
    output [63:0] dout0,
    output [63:0] aout0,
    output wrout0,
    output [63:0] dout1,
    output [63:0] aout1,
    output wrout1,
    input [63:0] din0,
    input [63:0] din1,
    input clk,
    input rst
);
    reg [63:0] addr_last;
    reg [63:0] cpu_data;
    assign cpu_dout = cpu_data;

    reg [63:0] data0;
    reg [63:0] addr0;
    reg wren0;
    assign dout0 = data0;
    assign aout0 = addr0;
    assign wrout0 = wren0;

    reg [63:0] data1;
    reg [63:0] addr1;
    reg wren1;
    assign dout1 = data1;
    assign aout1 = addr1;
    assign wrout1 = wren1;

    always @ (*) begin
        case (addr_last[63])
            1'd0: begin
                cpu_data = din0;
            end
            1'd1: begin
                cpu_data = din1;
            end
        endcase
        case (cpu_ain[63])
            1'd0: begin
                data0 = cpu_din;
                addr0 = {3'd0, cpu_ain[63:3]};
                wren0 = cpu_wren;
                data1 = 0;
                addr1 = 0;
                wren1 = 0;
            end
            1'd1: begin
                data0 = 0;
                addr0 = 0;
                wren0 = 0;
                data1 = cpu_din;
                addr1 = {3'd0, cpu_ain[63:3]};
                wren1 = cpu_wren;
            end
        endcase
    end

    always @ (posedge clk) begin
        if (rst) begin
            addr_last <= 0;
        end
        else begin
            addr_last <= cpu_ain;
        end
    end
endmodule