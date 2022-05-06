module tlv_decoder(
    input [63:0] cpu_din,
    input [63:0] cpu_ain,
    input cpu_wren,
    output [63:0] cpu_dout,
    input clk,
    input rst
);

    reg [191:0] data;
    reg [191:0] shift_data;
    reg [127:0] buffer_data;
    reg [31:0] tlv_type;
    reg [3:0] tlv_type_var;
    reg [63:0] tlv_length;
    reg [3:0] tlv_length_var;
    reg [7:0] tlv_value_offset;

    reg [71:0] length_buffer;

    reg [2:0] byte_offset;

    reg [63:0] out;
    assign cpu_dout = out;

    always @ (*) begin
        // Fix Byte offset
        shift_data = data<<(8*byte_offset);
        buffer_data = shift_data[191:64];
        // Parse TLV Type
        if (buffer_data[127:120] == 8'hFE) begin
            tlv_type = buffer_data[119:88];
            tlv_type_var = 4'd5;
            length_buffer = buffer_data[87:16];
        end
        else if (buffer_data[127:120] == 8'hFD) begin
            tlv_type = {16'd0, buffer_data[119:104]};
            tlv_type_var = 4'd3;
            length_buffer = buffer_data[103:32];
        end
        else begin
            tlv_type = {24'd0, buffer_data[127:120]};
            tlv_type_var = 4'd1;
            length_buffer = buffer_data[119:48];
        end
        /*
        case (tlv_type_var)
            2'd0: begin
                if (buffer_data[15:8] == 8'hFF) begin
                    tlv_length = buffer_data[79:16];
                    tlv_length_var = 2'd3;
                    tlv_value_offset = 10;
                end
                if (buffer_data[15:8] == 8'hFE) begin
                    tlv_length = buffer_data[47:16];
                    tlv_length_var = 2'd2;
                    tlv_value_offset = 6;
                end
                if (buffer_data[15:8] == 8'hFD) begin
                    tlv_length = buffer_data[31:16];
                    tlv_length_var = 2'd1;
                    tlv_value_offset = 4;
                end
                else begin
                    tlv_length = buffer_data[15:8];
                    tlv_length_var = 2'd0;
                    tlv_value_offset = 2;
                end
            end
            2'd1: begin
            end
            2'd2: begin
            end
            default: begin
            end
        endcase
        */
        // Parse TLV Length
        if (length_buffer[71:64] == 8'hFF) begin
            tlv_length = length_buffer[63:0];
            tlv_length_var = 4'd9;
        end
        else if (length_buffer[71:64] == 8'hFE) begin
            tlv_length = length_buffer[63:32];
            tlv_length_var = 4'd5;
        end
        else if (length_buffer[71:64] == 8'hFD) begin
            tlv_length = length_buffer[63:48];
            tlv_length_var = 4'd3;
        end
        else begin
            tlv_length = length_buffer[71:64];
            tlv_length_var = 4'd1;
        end

        // Calculate Value Offset
        tlv_value_offset = tlv_length_var + tlv_type_var;
    end

    always @ (posedge clk) begin
        if (rst) begin
            data <= 0;
            out <= 0;
				byte_offset <= 0;
        end
        else begin
            // Access data buffer
            if (cpu_ain[2] == 0) begin
                if (cpu_wren) begin
                    case(cpu_ain[1:0])
						2'd3: byte_offset <= cpu_din[2:0];
                        2'd2: data[63:0] <= cpu_din;
                        2'd1: data[127:64] <= cpu_din;
                        2'd0: data[191:128] <= cpu_din;
                    endcase
                end
                case(cpu_ain[1:0])
					2'd3: out <= {61'd0, byte_offset[2:0]};
                    2'd2: out <= data[191:128];
                    2'd1: out <= data[127:64];
                    2'd0: out <= data[63:0];
                endcase
            end
            // Access results
            else begin
                case(cpu_ain[1:0])
                    2'd2: out[63:0] <= tlv_value_offset;
                    2'd1: out[63:0] <= tlv_length;
                    2'd0: out[63:0] <= tlv_type;
                endcase
            end
        end
    end
endmodule