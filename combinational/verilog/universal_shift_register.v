`timescale 1ns / 1ps

module usr(
    input clk,
    input rst,
    input s_in,
    input load,
    input shift,
    input [1:0] mode,
    input [3:0] p_in,
    output reg s_out,
    output reg [3:0] p_out
);

reg [3:0] temp;

always @(posedge clk) begin

    if (rst) begin
        temp  <= 4'b0000;
        s_out <= 1'b0;
        p_out <= 4'b0000;
    end

    else if (shift) begin

        case (mode)

            2'b00: begin
                // SISO
                if (load)
                    temp <= {s_in, temp[3:1]};

                s_out <= temp[0];
            end

            2'b01: begin
                // SIPO
                if (load)
                    temp <= {s_in, temp[3:1]};

                p_out <= load ? {s_in, temp[3:1]} : temp;
            end

            2'b10: begin
                // PISO
                if (load) begin
                    temp <= p_in;
                end
                else begin
                    s_out <= temp[0];
                    temp <= {1'b0, temp[3:1]};
                end
            end

            2'b11: begin
                // PIPO
                if (load)
                    temp <= p_in;

                p_out <= load ? p_in : temp;
            end

        endcase

    end

end

endmodule