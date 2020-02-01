module freq_divisor #(parameter N)(
                     input CLK, nRST, 
                     output logic CLKOUT);

parameter integer FREQ_DIVISOR = (2**N);

logic [N-1:0] counter = 0;
logic clock_strobe;


always_ff @(posedge CLK or negedge nRST) 
	begin
        clock_strobe <= (counter === FREQ_DIVISOR-1'b1);

        if (~nRST) begin 
            CLKOUT  <= 0;
            counter <= 0;
        end 
        
        else if (clock_strobe) begin
            CLKOUT <= ~CLKOUT;
            counter <=  0;
        end
        
        else 
            counter <= counter+1;
	end

endmodule
