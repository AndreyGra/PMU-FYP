//Dont forget to reference the design reference
module pos_edge_detector ( input  SIG,            	// Input signal for which positive edge has to be detected
                           input  CLK,            	// Input signal for clock
                           output POSEDGE);         // Output signal that gives a pulse when a positive edge occurs
 
  logic   prev_sig = 0;

  // This always block ensures that sig_dly is exactly 1 clock behind sig
  always_ff@(posedge CLK) begin
    prev_sig <= SIG;
  end
 
    // Combinational logic where sig is AND with delayed, inverted version of sig
    // Assign statement assigns the evaluated expression in the RHS to the internal net pe
    assign POSEDGE = SIG & ~prev_sig;  

endmodule 