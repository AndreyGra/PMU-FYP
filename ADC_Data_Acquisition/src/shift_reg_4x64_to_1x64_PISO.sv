module shift_reg_4x64_PISO(input CLK, nRST, LOAD, [63:0]DIN [3:0], output logic [63:0] DOUT);

    logic [63:0] DATA [3:0];

    always_ff@(posedge CLK) begin
        if (~nRST) begin
            DATA <= {{63'b0},{63'b0},{63'b0},{63'b0}};
            DOUT <= {63'b0};
        end
        else if (LOAD) begin
            DATA <= DIN;
        end
        else begin
            DOUT <= DATA[0];
            DATA <= {{63'b0},DATA[3:1]};
        end
    end

endmodule 