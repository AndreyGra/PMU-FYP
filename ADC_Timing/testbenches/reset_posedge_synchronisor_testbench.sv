`timescale 1ns/1ns
import my_utils::*;

module reset_posedge_synchronisor_testbench;

    //Parameters
    parameter real FREQ_32MHZ = 32.768;
    parameter real FREQ_3MHZ  = 3.2768;

    //Utility objects
    Clock clock_32MHz, clock_3MHz;

    //Logic Level Signals
    logic nrst, signal, posEdge, sync;
    logic clk_8MHz, clk_32MHz, clk_3MHz, pulse_50Hz;
		
	//pos_edge_detector POD1(.CLK(clk_32MHz), .SIG(signal), .POSEDGE(posEdge));
	//reset_posedge_synchronisor RPS1(.CLK(clk_32MHz), .nRST(nrst), .POSEDGE(posEdge), .SYNCnRESET(sync));
	//freq_divisor #(2) FD4(.CLK(clk_32MHz),.nRST(sync),.CLKOUT(clk_8MHZ));

	pos_edge_detector POD2(.CLK(clk_3MHz), .SIG(signal), .POSEDGE(posEdge));
	reset_posedge_synchronisor RPS2(.CLK(clk_3MHz), .nRST(nrst), .POSEDGE(posEdge), .SYNCnRESET(sync));
	pulse_50_hz P50HZ1(.CLK(clk_3MHz),.nRST(sync), .PULSE_50_HZ(pulse_50Hz));

	initial begin
        clock_32MHz = new(FREQ_32MHZ);
        clock_3MHz  = new(FREQ_3MHZ);

        fork
			clock_3MHz.run_forever(clk_3MHz);
            clock_32MHz.run_forever(clk_32MHz);            
        join_any
    end

	initial begin
		nrst <= 0; #200;
		nrst <= 1; #1;
	end

	always begin
		#($urandom_range(100000,10000));
		signal <= 0; #($urandom_range(10000,1000));
		signal <= 1; 
	end 


endmodule