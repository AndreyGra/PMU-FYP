module adc_data_input(input  MCLK, nRST, nSYNC_IN, nDRDY, [3:0] DOUT,
                      output  DATA_READY, [63:0] DATA [3:0]);

    enum int unsigned { S0 = 1, S1 = 2, S2 = 4, S3 = 8, S4 = 16} state, next_state;
    
    logic [63:0] buffer[4];
	logic [5:0]  count;
    logic counter_nRST, data_ready;

    counter_n_bits #(6) counter64(.CLK(MCLK), .nRST(~(~counter_nRST | ~nRST)), .COUNT(count));
	shift_reg_4x64 SR1(.CLK(MCLK), .nRST(nRST), .DIN(DOUT), .DATA(buffer));

    always_comb begin
        next_state = S0;
        case (state) 
            S0: next_state = S1;
            S1: next_state = ~(nDRDY) ? S2 : S1;
            S2: next_state = S3;
            S3: next_state = (count == 63) ? S4 : S3;
            S4: next_state = ~(nDRDY) ? S2 : S1;
      endcase
	end 

    always_comb begin
        case (state)
            S0: begin
				data = '{{63'b0},{63'b0},{63'b0},{63'b0}};
				counter_nRST = 0;
                data_ready = 0;				
            end
            S1:  ;
            S2: begin
                counter_nRST = 1;
				data_ready = 1;
            end
            S3: ;
			S4: begin
				data = buffer;
                data_ready = 0;
                counter_nRST = 0;
				
            end
        endcase
        
    end

    always_ff@(posedge MCLK) begin
        if (~nRST) begin
            state <= S0;
        end
        else begin
            state <= next_state;
        end
    end

 assign DATA = data;
 assign DATA_READY = data_ready;
	 
endmodule