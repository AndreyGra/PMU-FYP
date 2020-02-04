module bit_serializer(CLK, nRST, LOAD, [63:0] DATA [3:0], output logic LSB,[3:0] DOUT);

    enum unsigned int { S0 = 1, S1 = 2, S2 = 4} next_state, state;

    logic [63:0] data [3:0];

    logic [5:0] bit_count;


    always_comb begin
        next_state <= S0;
        case (state) begin
            S0: next_state = S1;
            S1: next_state = (LOAD) ? S2 : S1;
            S2: next_state = (LOAD) ? S2 : S3;
            S3: next_state = (LOAD) ? S2 : ( (!bit_count) ? S3 : S4);
             
        end
    end

endmodule