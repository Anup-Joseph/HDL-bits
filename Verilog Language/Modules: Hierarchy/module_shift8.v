module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] wire1, wire2, wire3;
    my_dff8 inst1(.clk(clk), .d(d), .q(wire1));
    my_dff8 inst2(.clk(clk), .d(wire1), .q(wire2));
    my_dff8 inst3(.clk(clk), .d(wire2), .q(wire3));
    
    always@(*) begin
        case(sel)
            2'b00 : q = d;
            2'b01 : q = wire1;
            2'b10 : q = wire2;
            2'b11 : q = wire3;
        endcase
    end
endmodule
