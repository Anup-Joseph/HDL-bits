module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel;
    wire [15:0] in1,in2;
    add16 inst1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(sel), .sum(sum[15:0]));
    add16 inst2(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .cout(1'bx), .sum(in1));
    add16 inst3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .cout(1'bx), .sum(in2));
    always@(*) begin
        if(sel)
            sum[31:16] = in2;
        else
            sum[31:16] = in1;
    end
            
endmodule
