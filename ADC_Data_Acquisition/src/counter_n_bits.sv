module counter_n_bits #(parameter N)(
                     input CLK, nRST, 
                     output logic [N-1:0]COUNT);

parameter integer COUNTER_MAX= (2**N);

logic [N-1:0] counter = 0;

always_ff @(posedge CLK or negedge nRST) 
	begin
        if (~nRST) begin 
            counter <= 0;
        end
        
        else 
            counter <= counter+1;
	end

assign COUNT = counter;

endmodule
