`timescale 1ns/1ns;
import my_utils::* ;

module adc_data_input_testbench;
    Clock clk_8mhz;

	parameter real FREQ_MHz = 8.192;

    logic clk, nrst, nsync_in;
    
    integer data_file;
    integer scan_file;

    logic unsigned [31:0] next_data [7:0];
	logic unsigned [3:0]  dout;
	logic ndrdy, data_ready;
    logic [63:0] data [3:0];
	
    adc_data_input DI1(.MCLK(clk), .nRST(nrst), .nSYNC_IN(nsync_in), .nDRDY(ndrdy), .DOUT(dout), .DATA_READY(data_ready), .DATA(data));

      initial begin
		clk_8mhz = new(FREQ_MHz);

		fork
		clk_8mhz.run_forever(clk);
		begin 
			nrst = 0; #1000;
			nrst = 1; #1000;
			ndrdy = 1; #1000;
			ndrdy = 0; #(clk_8mhz.period_ns);
			ndrdy = 1; #(clk_8mhz.period_ns*64);
			ndrdy = 0; #(clk_8mhz.period_ns);
			dout = 4'b1111; #100;
			ndrdy = 1; #(clk_8mhz.period_ns*64);
			ndrdy = 0; #(clk_8mhz.period_ns);
			dout = 4'b1000; #100;
			ndrdy = 1; #(clk_8mhz.period_ns*64*1000);
			ndrdy = 0; #(clk_8mhz.period_ns);
			dout = 4'b1110; #100;
			ndrdy = 1; #(clk_8mhz.period_ns*64*1000);
			ndrdy = 0; #(clk_8mhz.period_ns);
			ndrdy = 1;
			

			 
		end

		begin
			nsync_in = 1;
		end
        
        begin
            dout = 4'b1010;
        end

		join_none

	end
endmodule