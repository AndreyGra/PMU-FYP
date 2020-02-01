module reset_posedge_synchronisor(input CLK, nRST, POSEDGE, 
                                  output SYNCnRESET);

	enum int unsigned { S0 = 0, S1 = 2, S2 = 4} state, next_state;
	
	logic sync_reset = 0;

	always_comb begin
		next_state = S0;
		case(state)
			S0:  next_state = POSEDGE  ? S1 :  S2 ;
			S1:  next_state = S2;
			S2:  next_state = POSEDGE ? S1 :  S2 ;
		endcase
	end

	always_comb begin
		case(state)
			S0: sync_reset = 0;
			S1: sync_reset = 1;
			S2: sync_reset = 0;
		endcase
	end

	always_ff@(posedge CLK or negedge nRST) begin
		if(~nRST)
			state <= S0;
		else
			state <= next_state;
		end

	assign SYNCnRESET = ~(~nRST | sync_reset);

endmodule 