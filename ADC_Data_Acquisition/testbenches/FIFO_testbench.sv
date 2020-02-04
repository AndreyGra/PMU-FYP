module FIFO_testbench;

    logic clear;
    logic rdreq, rdclk, [63:0] rd_data, rdfull;
    logic wrreq, wrclk, [63:0] wr_data, wfull;

    FIFO	FIFO_inst (
	.data ( wr_data ),
	.rdclk ( rdclk_sig ),
	.rdreq ( rdreq_sig ),
	.wrclk ( wrclk_sig ),
	.wrreq ( wrreq_sig ),
	.q ( q_sig ),
	.rdempty ( rdempty_sig ),
	.rdfull ( rdfull_sig ),
	.wrempty ( wrempty_sig ),
	.wrfull ( wrfull_sig )
	);


endmodule