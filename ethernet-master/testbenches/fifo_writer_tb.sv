`timescale 1ns/1ns
module tb;

logic CLK, RST, EMPTY, FULL, WR;
logic [31:0] DATA;

fifo_writer f1(.clk(CLK), .rst(RST), .empty(EMPTY), .full(FULL), .write_req(WR), .data(DATA));

always begin
    #5; CLK = ~CLK;
end

initial begin
	CLK = 0;
    RST = 1; EMPTY =1; FULL = 0;
    #22;
    RST = 0;
    #10;
    EMPTY = 0;
    #70;
    FULL = 1;
end

endmodule