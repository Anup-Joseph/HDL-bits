module fadd(
    input a,b,cin,
    output sum,cout );
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a^b));
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
	
    fadd inst1(.a(a[0]), .b(b[0]), .cin(cin), .cout(cout[0]), .sum(sum[0]));
    
    genvar i;
    generate
        for(i = 1; i < 100 ; i=i+1) begin: adder_generate
            fadd insts(.a(a[i]), .b(b[i]), .cin(cout[i-1]), .cout(cout[i]), .sum(sum[i]));
        end
    endgenerate
                
endmodule

