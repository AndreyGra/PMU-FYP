`timescale 1ns/1ns;
package my_utils;
    class Clock;
        real    frequency_mhz  ;
        real 	period_ns ;
        real 	clock_delay ;
		integer clock_state;

        function new(real freq_mhz);
            begin 
                this.frequency_mhz = freq_mhz;
                this.period_ns = (1/freq_mhz)*(10**3);
                this.clock_delay = this.period_ns/2;
				this.clock_state = 0;
            end
		endfunction

        task run_forever(ref logic CLK); 
			begin
				forever begin
				#(this.clock_delay); 
				this.clock_state = ~(this.clock_state);
				CLK = this.clock_state;
				end
			end
		endtask 

    endclass

endpackage