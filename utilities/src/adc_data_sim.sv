module adc_data_out(input CLK, nRST,nSYNC_IN ,[31:0] NEXT_DATA [7:0], output logic nDRDY,[3:0]DOUT);

        enum int unsigned {S0 = 0, S1 = 1, S2 = 2, S3 = 4, S4 = 8} state, next_state;

        logic [11:0] SYNC_IN_COUNTER = 0;
        logic [63:0] DATA [3:0];
		logic [3:0]  dout;
		logic ndrdy;
	
	typedef logic [63:0] data_array[3:0];
	function data_array shift_array;
		input [63:0] DATA [3:0];
		for (int i = 0;i < 4;i++) begin
			DATA[i][63:0] = DATA[i][63:0] >> 1;
		end

		shift_array = DATA;

	endfunction
endmodule