module fifo_writer(input clk, rst, empty, full, output write_req, output[31:0]data);

    enum int unsigned { S0 = 1 , S1 = 2, S2 = 4} state, next_state;

    logic shift_reg_reset;
	 logic write_request;

    logic [31:0] ROM [8] = {64'd1,64'd2,64'd3,64'd4,64'd5,64'd6,64'd7,64'd8};
    logic [31:0] RAM [8];

    //Seq logic for shift register
    always_ff@(posedge clk) begin
        if (rst || shift_reg_reset) begin
            RAM <= ROM;
        end
        else begin
            RAM <= '{RAM[7], RAM[0:6]};
        end
    end
	 
	 assign data = RAM[7];

    //State comb logic
    always_comb begin
    next_state = S0;
    case (state)
        S0: next_state = empty ? S1 : S0;
        S1: next_state = full ? S2: S1;
        S2: next_state = empty ? S1: S2;
    endcase
    end

    //Output comb logic
    always_comb begin
    case (state)
        S0:  begin
            shift_reg_reset = 1;
			write_request = 0;
        end
        S1: begin
            write_request = ~full;
			shift_reg_reset = 0;
        end
        S2: begin
            write_request = ~empty;
			shift_reg_reset = 1;
        end
    endcase
        
    end

	assign write_req = write_request;

    //State change seq logic
    always_ff@(posedge clk) begin
    
    if (rst) state <= S0;
    else     state <= next_state;

    end


endmodule