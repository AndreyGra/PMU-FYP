module shift_reg_4x64 (input  CLK, nRST, [3:0] DIN,
                       output [63:0] DATA [3:0] );

    logic [63:0] shift_reg [3:0];

    always_ff@(posedge CLK) begin
        if (~nRST) begin
            shift_reg <= '{{63'b0},{63'b0},{63'b0},{63'b0}};
        end
        else begin
            for(int i = 0; i < 4; i++) begin
                shift_reg[i] <= {shift_reg[i][62:0], DIN[i]};
            end
        end
    end

	assign DATA = shift_reg;

endmodule 