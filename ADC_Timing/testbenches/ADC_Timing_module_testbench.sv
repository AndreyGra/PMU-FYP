`timescale 1ns/1ns ;
import my_utils::* ;
 
module adc_timing_module_testbench;

    parameter real BASE_FREQ_MHZ = 100.00;

    Clock clock_100MHz;

    logic nrst, clk;
    logic gps_pps;

    logic mclk, pulse_50_Hz;

    ADC_Timing_module T1(.CLK_100MHZ(clk),.nRST(nrst), .GPS_PPS(gps_pps),.MCLK(mclk), .PULSE_50_HZ(pulse_50_Hz));
	
	initial begin
		clock_100MHz = new(BASE_FREQ_MHZ);
		clock_100MHz.run_forever(clk);
	end

	initial begin
		gps_pps <= 0;
		nrst <= 0; #1000;
		nrst <= 1; #(30*(10**6));
		gps_pps <= 1;
	end
endmodule