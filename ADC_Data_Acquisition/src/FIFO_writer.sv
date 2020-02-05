module FIFO_writer(input CLK, nRST, DRDY, WRFULL, WREMPTY,[63:0] DATA [3:0],
                   output logic WRREQ,[63:0] WRDATA);

    enum int unsigned {S0 = 1, S1 = 2, S2 = 4, S3 = 8, S4 = 16, S5 = 32} state, next_state;
	logic load;
	logic [63:0] data [3:0];

	shift_reg_4x64_PISO PISO1(.CLK(CLK), .nRST(nRST), .LOAD(load), .DIN(data), .DOUT(WRDATA)); 

    always_comb begin
        next_state = S0;
        case(state) 
            S0: next_state = (~DRDY) ? S2 : S1;
            S1: next_state = (~DRDY) ? S2 : S1;
            S2: next_state = (DRDY) ? S3 : S2;
            S3: next_state = (WREMPTY) ? S4 : S3;
            S4: next_state = (WRFULL) ? S1 : S4;
        endcase
    end


    always_comb begin
        case(state)
            S0: begin
                WRREQ = 0;
				load = 0;
            end
            S1: /* The outputs are empty*/;
			S2: /* The outputs are empty*/;
			S3: begin
                load = 1;
                data = DATA;
            end
            S4: begin
                load = 0;
                WRREQ = ~WRFULL;
            end

        endcase
    end


    always_ff@(posedge CLK) begin
        if (~nRST) begin
            state <= S0;
        end
        else begin
            state <= next_state;
        end
    end


endmodule