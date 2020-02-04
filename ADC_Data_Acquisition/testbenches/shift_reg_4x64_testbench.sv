module shift_reg_4x64_testbench;
    logic clk, nrst;
	logic  [3:0] din;
    logic [63:0] data [3:0];

    shift_reg_4x64 SR1(.CLK(clk), .nRST(nrst), .DIN(din), .DATA(data));

    always begin
        clk = 0; #10;
        clk = 1; #10;  
    end

    initial begin
        nrst = 0;
        din = 4'b1010;
        #20;
        nrst = 1;
    end

endmodule