module ADC_Timing_module(input CLK_100MHZ, nRST, GPS_PPS,
                        output MCLK, PULSE_50_HZ);

    //Logic Signals
    logic clkout_32mhz,clkout_3mhz, clkout_8mhz, pulse_50_hz;
    logic posEdge, sync_8mhz, sync_50hz;
    logic pll_locked;

    //Instantiating a PLL to generate 32.678 MHz and 3.678 MHz
    PPL_100_MHZ_SRC pll_100_mhz(
            .refclk(CLK_100MHZ),   
            .rst(~nRST),      
            .outclk_0(clkout_32mhz),
            .outclk_1(clkout_3mhz),
            .locked(pll_locked)    
        );


    synch_reset RS1(.CLK(clkout_32mhz),.nRST(nRST),.GPS_PPS(GPS_PPS),.SYNCH_nRST(sync_8mhz));
	freq_divisor #(2) FD4(.CLK(clkout_32mhz),.nRST(sync_8mhz),.CLKOUT(clkout_8mhz));

    synch_reset RS2(.CLK(clkout_3mhz),.nRST(nRST),.GPS_PPS(GPS_PPS),.SYNCH_nRST(sync_50hz));
    pulse_50_hz P50H(.CLK(clkout_3mhz),.nRST(sync_50hz) ,.PULSE_50_HZ(pulse_50_hz));


    assign MCLK = clkout_8mhz;
    assign PULSE_50_HZ = pulse_50_hz;

endmodule