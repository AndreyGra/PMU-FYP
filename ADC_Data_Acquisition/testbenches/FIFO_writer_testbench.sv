`timescale 1ns/1ns;
import fifo_utilities::fifo_signals_t;
import my_utils::*;
module FIFO_writer_testbench;

    fifo_signals_t writer;
    logic nrst, drdy;
    logic [63:0] data [3:0];

    FIFO_writer FW1(.CLK(writer.clk), .nRST(nrst), .DRDY(drdy), .WRFULL(writer.full), .WREMPTY(writer.empty), .DATA(data),
				.WRREQ(writer.req),.WRDATA(writer.data));

    initial begin
        data = {{63'hA},{63'hB},{63'hC},{63'hD}};
        writer.clk = 0;
        writer.full = 0;
        writer.empty = 1;
        drdy = 0;
        nrst = 0;
        #20;
        nrst = 1;
        #20;
        drdy = 1;
        #20;


    end

    always #5 writer.clk = ~writer.clk;
	
	always@(posedge writer.clk) begin
		if (writer.data == 64'hB) begin
		writer.full = 1; #20;
		end
		else writer.full = 0;
	end
    
endmodule