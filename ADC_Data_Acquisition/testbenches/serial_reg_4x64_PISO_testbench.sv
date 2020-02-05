`timescale 1ns/1ns
module serial_reg_PISO_testbench;

    logic clk, nrst,load;
    logic [63:0] wrdata;
    logic [63:0] data [3:0];

    shift_reg_4x64_PISO PISO1(.CLK(clk), .nRST(nrst), .LOAD(load), .DIN(data), .DOUT(wrdata)); 

    initial begin
        clk = 1; nrst = 0; load = 0;
        data = {{63'hA},{63'hB},{63'hC},{63'hD}};
        #40;
        nrst = 1;
        load = 1;
        #20;
        load = 0;
		#100;
		load = 1;
		#20;
		load = 0;

    end

    always #10 clk = ~clk;


endmodule