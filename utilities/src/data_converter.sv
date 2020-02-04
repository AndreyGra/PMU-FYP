module data_converter(input CLK, nRST, CVRT, [31:0] DIN [7:0], output logic CVRT_END, [63:0] DOUT [3:0]);

    always_ff@(posedge CLK) begin
        if (~nRST) begin
            CVRT_END <= 0;
            DOUT <= {{63'b0},{63'b0},{63'b0},{63'b0}};
        end
        else if (CVRT) begin
            DOUT <= { {NEXT_DATA[0][31:0],NEXT_DATA[1][31:0]},
                      {NEXT_DATA[2][31:0],NEXT_DATA[3][31:0]},
                      {NEXT_DATA[4][31:0],NEXT_DATA[5][31:0]},
                      {NEXT_DATA[6][31:0],NEXT_DATA[7][31:0]} };
            
            CVRT_END <= 1;
        end
        else begin
            CVRT_END <= 0;
        end
    end


endmodule