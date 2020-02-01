`timescale 1ns/1ns;
import my_utils::*;

module generator_50_hz_testbench;
//EXPECT: 50 PULSES IN A SECOND

    //Parameters
    parameter real CLOCK_FREQ_MHZ = 3.2768;
    
	//Utility objects
	Clock clock_3MHz;

	//Logic Signals
    logic clk, nrst;
	logic pulse_50_hz;

	//COUNTER FOR PULSES
    logic [6:0] pulse_counter = 0;

    pulse_50_hz pulse(.CLK(clk), .nRST(nrst), .PULSE_50_HZ(pulse_50_hz));

    always @(posedge pulse_50_hz ) begin
        pulse_counter = pulse_counter + 1;
        if (pulse_counter == 51)  $display("The time of 51st counter is %d", $time);
    end

     initial begin
        clock_3MHz = new(CLOCK_FREQ_MHZ);
        clock_3MHz.run_forever(clk);
    end

	initial begin
		nrst = 0; #1ms;
		nrst = 1; #999ms;
        $display("The time is %d", $time);
	end

endmodule 	 