// new_component.v

// This file was auto-generated as a prototype implementation of a module
// created in component editor.  It ties off all outputs to ground and
// ignores all inputs.  It needs to be edited to make it do something
// useful.
// 
// This file will not be automatically regenerated.  You should check it in
// to your version control system if you want to keep it.

`timescale 1 ps / 1 ps
module ethernet_master (
		output wire        avalon_master_read,                    //           avalon_master.read
		output wire        avalon_master_write,                   //                        .write
		input  wire [31:0] avalon_master_readdata,                //                        .readdata
		output wire [31:0] avalon_master_writedata,               //                        .writedata
		output wire [31:0] avalon_master_address,                 //                        .address
		input  wire        avalon_master_waitrequest, 		  		//                        .waitrequest
		
		input  wire [31:0] avalon_streaming_sink_data,            //   avalon_streaming_sink.data
		input  wire [1:0]  avalon_streaming_sink_empty,           //                        .empty
		input  wire        avalon_streaming_sink_endofpacket,     //                        .endofpacket
		input  wire [5:0]  avalon_streaming_sink_error,           //                        .error
		output wire        avalon_streaming_sink_ready,           //                        .ready
		input  wire        avalon_streaming_sink_startofpacket,   //                        .startofpacket
		input  wire        avalon_streaming_sink_valid,           //                        .valid
		
		output wire [31:0] avalon_streaming_source_data,          // avalon_streaming_source.data
		output wire [1:0]  avalon_streaming_source_empty,         //                        .empty
		output wire        avalon_streaming_source_endofpacket,   //                        .endofpacket
		output wire [1:0]  avalon_streaming_source_error,         //                        .error
		input  wire        avalon_streaming_source_ready,         //                        .ready
		output wire        avalon_streaming_source_startofpacket, //                        .startofpacket
		output wire        avalon_streaming_source_valid,         //                        .valid
		
		input  wire        clock_sink_clk,                        //              clock_sink.clk
		input  wire        reset_sink_reset                       //              reset_sink.reset
	);

	// TODO: Auto-generated HDL template
	assign avalon_master_read = 1'b0;
	assign avalon_master_address = 32'b0;
	assign avalon_master_write = 1'b0;
	assign avalon_master_writedata = 32'b0;
	
	assign avalon_streaming_sink_ready = 1'b0;
	
	assign avalon_streaming_source_valid = 1'b0;
	assign avalon_streaming_source_data = 32'b0;
	assign avalon_streaming_source_startofpacket = 1'b0;
	assign avalon_streaming_source_endofpacket = 1'b0;
	assign avalon_streaming_source_error = 2'b00;
	assign avalon_streaming_source_empty = 2'b00;
	
	parameter DATA_SIZE_BYTES = 4;
	parameter NUM_DATA_POINTS = 8;
	
	logic [15:0] source_port;
	logic [15:0] destination_port;
	logic [15:0] udp_length = 2*4 + 32;
	logic [15:0] checksum;
	logic [31:0] data[8] ;
	
	logic [15:0] counter;
	logic clock_500hz;
	
	
	

endmodule
