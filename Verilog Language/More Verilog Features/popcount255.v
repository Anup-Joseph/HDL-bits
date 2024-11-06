module top_module( 
    input [254:0] in,
    output [7:0] out );
	
    integer i;
    always@(*) begin
        out = 8'h0;
        for(i=0 ; i<$bits(in) ; i=i+1) begin
            if(in[i])
                out = out + 1;
            else 
                out = out;
        end
    end
        
endmodule
