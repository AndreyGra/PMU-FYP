`timescale 1ns/1ns;
import my_utils::*;

module adc_data_out_testbench;

    Clock clk_8mhz;

	parameter real FREQ_MHz = 8.192;

    logic clk, nrst, nsync_in;
    
    integer data_file;
    integer scan_file;

    logic unsigned [31:0] next_data [7:0];
	logic unsigned [3:0]  dout;
	logic ndrdy;

	adc_data_out ADO1(.CLK(clk),.nRST(nrst),.nSYNC_IN(nsync_in),.NEXT_DATA(next_data),.DOUT(dout),.nDRDY(ndrdy));
    
    initial begin
        data_file = $fopen("../data/ADC_Sample.txt","r");
        if (data_file == 0) $error("Failed to read the file");

        for (int i = 0; i < 8; i++) begin
            scan_file = $fscanf(data_file, "%h", next_data[i]);
        end
		
		clk_8mhz = new(FREQ_MHz);

		fork
		clk_8mhz.run_forever(clk);
		begin 
			nrst = 0; #1000
			nrst = 1;
		end

		begin
			nsync_in = 1;
		end
		join_none

    end
	

endmodule