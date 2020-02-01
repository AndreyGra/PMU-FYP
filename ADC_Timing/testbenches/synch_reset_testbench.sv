`timescale 1ns/1ns;
import my_utils::*;

module synch_reset_testbench;

    parameter real FREQ_MHZ = 32.768;
    Clock clock_32mhz;

    logic clk_32mhz, nRST, GPS_PPS, sync_8mhz;

    synch_reset RS1(.CLK(clk_32mhz),.nRST(nRST),.GPS_PPS(GPS_PPS),.SYNCH_nRST(sync_8mhz));

    initial begin
       clock_32mhz = new(FREQ_MHZ);
       clock_32mhz.run_forever(clk_32mhz);
    end

    initial begin
        nRST <= 0; #100
        nRST <= 1; 
		GPS_PPS <= 0; #10000;
		GPS_PPS <= 1; #100000;
    end

endmodule