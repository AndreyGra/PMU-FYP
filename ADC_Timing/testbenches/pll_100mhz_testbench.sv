`timescale 1ns/1ns;

import my_utils::*;

module pll_100_MHZ_testbench;

    parameter real FREQ_100MHZ = 100.00;

    logic refclk, rst;
    logic clkout_32mhz, clkout_3mhz;
    logic pll_locked;

    Clock clock_100mhz;

    PPL_100_MHZ_SRC pll_100_mhz(
	    .refclk(refclk),   
		.rst(rst),      
		.outclk_0(clkout_32mhz),
		.outclk_1(clkout_3mhz),
		.locked(pll_locked)    
	);

    initial begin
        clock_100mhz = new(FREQ_100MHZ);
        clock_100mhz.run_forever(refclk);
    end

	initial begin
		rst <= 1; #100;
		rst <= 0; #100;
	end

endmodule