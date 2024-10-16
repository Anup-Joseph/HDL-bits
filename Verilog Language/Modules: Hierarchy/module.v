module top_module ( input a, input b, output out );
	  //Instantiate by position
    mod_a inst1 (a, b, out);
	
    //Instantiate by name
    //mod_a inst1 (.in1(a), .in2(b), .out(out));
endmodule
