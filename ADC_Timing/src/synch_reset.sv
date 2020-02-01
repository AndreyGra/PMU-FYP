module synch_reset(input  CLK, nRST, GPS_PPS,
                   output SYNCH_nRST);

    logic pos_edge;
    logic sync_and_nreset;


    pos_edge_detector POD1(.CLK(CLK), .SIG(GPS_PPS), .POSEDGE(pos_edge));
	reset_posedge_synchronisor RPS1(.CLK(CLK), .nRST(nRST), .POSEDGE(pos_edge), .SYNCnRESET(sync_and_nreset));

    assign SYNCH_nRST = sync_and_nreset;

endmodule