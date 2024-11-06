module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
	
    wire [7:0] res1,res2,result;

  	assign res1 = (a < b) ? a : b;
  	assign res2 = (res1 < c) ? res1 : c;
  	assign result = (res2 < d) ? res2 : d;
  	assign min = result;
    // assign intermediate_result1 = compare? true: false;

endmodule
