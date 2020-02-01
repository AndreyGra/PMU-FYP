`timescale 1ns/1ns
import my_utils::*;

module pos_edge_detector_testbench;

   //Parameters
    parameter real CLOCK_FREQ_MHZ = 3.2768;
    
	//Utility objects
	Clock clock_3MHz;

	//Logic Signals
    logic clk, signal;
    logic pos_edge_pulse;

    pos_edge_detector det1(.SIG(signal), .CLK(clk), .POSEDGE(pos_edge_pulse));

    initial begin
        clock_3MHz = new(CLOCK_FREQ_MHZ);
        clock_3MHz.run_forever(clk);
    end
	
	always begin
		signal <= 0; #($urandom_range(10000,100));
		signal <= 1; #1;

        assert(pos_edge_pulse == 1) $display("Pulse triggered"); else $error("Pulse was not triggered");

        #($urandom_range(10000,100));
    end

endmodule