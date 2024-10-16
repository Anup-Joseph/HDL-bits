module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    assign p1y = (p1a & p1b & p1c) | (p1d & p1e & p1f);
    assign p2y = (p2a & p2b) | (p2c & p2d);
endmodule

//Uncomment for second implementation using intermediate wires
/*
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire wire1, wire2, wire3, wire4;
    assign wire1 = p1a & p1b & p1c;
    assign wire2 = p1d & p1e & p1f;
    assign wire3 = p2a & p2b;
    assign wire4 = p2c & p2d;
    assign p1y = wire1 | wire2;
    assign p2y = wire3 | wire4;
endmodule
*/
