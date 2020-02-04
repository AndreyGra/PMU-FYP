module testbench;

	logic [3:0] array [6:0] = {4,5,6,7,1,2,3};
	logic [3:0] rarray [6:0];

	initial begin
		rarray = {  {<<{array[0]}},
					{<<{array[1]}},
					{<<{array[2]}},
					{<<{array[3]}},
					{<<{array[4]}},
					{<<{array[5]}},
					{<<{array[6]}}};
	end

endmodule 