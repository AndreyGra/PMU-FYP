`timescale 1ns/1ns;

import my_utils::*;

module pll_32_MHZ_testbench;

    parameter real FREQ_32MHZ = 32.768;
	
    logic refclk, rst;
    logic clkout_32mhz, clkout_3mhz;
    logic pll_locked;

    Clock clock_32mhz;

    PLL_32_MHZ_SRC pll_32_mhz(
	    .refclk(refclk),   
		.rst(rst),      
		.outclk_0(clkout_32mhz),
		.outclk_1(clkout_3mhz),
		.locked(pll_locked)    
	);

    initial begin
        clock_32mhz = new(FREQ_32MHZ);
        clock_32mhz.run_forever(refclk);
    end

	initial begin
		rst <= 1; #1020;
		rst <= 0; #1000;
	end

endmodule