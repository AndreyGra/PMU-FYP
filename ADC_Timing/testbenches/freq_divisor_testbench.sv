`timescale 1ns/1ns;
import my_utils::*;

module freq_divisor_testbench;
	
	//Parameters
    parameter real CLOCK_FREQ_MHZ = 32.768;
    
	//Utility objects
	Clock clock_32MHz;

	//Logic Signals
    logic clk, nrst;
	logic clkOut;
	
	logic [2:0] counter = 0;

	freq_divisor #(2) FD4(.CLK(clk),.nRST(nrst),.CLKOUT(clkOut));

    initial begin
        clock_32MHz = new(CLOCK_FREQ_MHZ);
        clock_32MHz.run_forever(clk);
    end

	initial begin
		nrst = 0;
		#(clock_32MHz.period_ns*10);
		nrst = 1;
	end

endmodule