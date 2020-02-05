
`timescale 1ns/1ns;
module FIFO_testbench;

    typedef struct {
        logic clk;
        logic req;
        logic full;
        logic empty;
        logic clear;
        logic [63:0] data;
    } fifo_signals_t;

    fifo_signals_t reader, writer;

    FIFO	FIFO_inst (
	.data       ( writer.data ),
	.wrclk      ( writer.clk ),
	.wrreq      ( writer.req),
    .wrempty    ( writer.empty ),
	.wrfull     ( writer.full ),

	.q          ( reader.data ),
	.rdempty    ( reader.empty),
	.rdfull     ( reader.full),
    .rdclk      ( reader.clk ),
	.rdreq      ( reader.req ),
    .aclr       ( reader.clear ) );

    initial begin        
        writer.clk = 0;
        writer.req = 0;
        reader.clear = 1;
        reader.req = 0;
        writer.data = 64'hF;
        #20;
        reader.clear = 0;
        writer.clk = 1;
		#10;
		writer.req = 1;
        #10;
        writer.clk = 0;
        #20;
        writer.clk = 1;
        #20;
        writer.clk = 0;
		#20
		writer.clk = 1;
        #20;
        writer.clk = 0;
		#20
		writer.clk = 1;
        #20;
        writer.clk = 0;
		#20
		writer.clk = 1;
        #20;
        writer.clk = 0;
        writer.req = 0;
		#20
		writer.clk = 1;
        #20;
        writer.clk = 0;
		#20;
		writer.clk = 1;
        #20;
        writer.clk = 0;
		#20;
		reader.req = 1;
    end
	
    always begin
        reader.clk = 0; #5;
        reader.clk = 1; #5;
    end

endmodule