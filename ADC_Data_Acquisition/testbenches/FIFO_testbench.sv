

module FIFO_testbench;

    logic clear;
    logic rdreq, rdclk, [63:0] rd_data, rdfull,rdempty;
    logic wrreq, wrclk, [63:0] wr_data, wfull, wrempty;

    FIFO	FIFO_inst (
	.data ( wr_data ),
	.rdclk ( rdclk ),
	.rdreq ( rdreq ),
	.wrclk ( wrclk ),
	.wrreq ( wrreq ),
	.q ( rd_data ),
	.rdempty ( rdempty),
	.rdfull ( rdfull ),
	.wrempty ( wrempty ),
	.wrfull ( wrfull )
	);

    initial begin
        
        
    end

endmodule