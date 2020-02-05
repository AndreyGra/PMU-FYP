package fifo_utilities;

typedef struct {
        logic clk;
        logic req;
        logic full;
        logic empty;
        logic clear;
        logic [63:0] data;
    } fifo_signals_t;


endpackage