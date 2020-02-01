module pulse_50_hz(input CLK,  nRST,
				   output PULSE_50_HZ);

//Expect 3.2768 MHz CLK Signal
//At 3.2768 MHz, incrementing counter by 1 will cause it to overflow every 20ms
parameter integer INCREMENT = 1;
parameter integer COUNTER_BIT_SIZE = 16;
parameter integer COUNTER_MAX = (2**COUNTER_BIT_SIZE) - 1;
parameter integer COUNTER_INITIAL_VALUE = 0;

logic [(COUNTER_BIT_SIZE - 1):0] counter = COUNTER_INITIAL_VALUE;
logic [0:0] overflow = 0;

always_ff @(posedge CLK or negedge nRST) begin

	if (~nRST) begin
		overflow <= 0;
		counter  <= COUNTER_MAX;	
	end
	else {overflow, counter} <= counter + INCREMENT;

end

assign PULSE_50_HZ = overflow;

endmodule