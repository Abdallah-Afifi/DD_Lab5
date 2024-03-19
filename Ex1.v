module SevenSegDec (input [3:0] num, output [6:0] segments);

    // Boolean equations for seven-segment decoder
    assign segments[6] = ~(num == 4'b0000 || num == 4'b0001 || num == 4'b1011 || num == 4'b1100 || num == 4'b1101 || num == 4'b1110 || num == 4'b1111);
    assign segments[5] = ~(num == 4'b0000 || num == 4'b0001 || num == 4'b0010 || num == 4'b0011 || num == 4'b0100 || num == 4'b0101 || num == 4'b0111 || num == 4'b1000 || num == 4'b1011 || num == 4'b1101);
    assign segments[4] = ~(num == 4'b0000 || num == 4'b0001 || num == 4'b0010 || num == 4'b0111 || num == 4'b1000 || num == 4'b1001 || num == 4'b1010);
    assign segments[3] = ~(num == 4'b0000 || num == 4'b001 || num == 4'b010 || num == 4'b011 || num == 4'b100 || num == 4'b101 || num == 4'b110);
    assign segments[2] = ~(num == 4'b000 || num == 4'b001 || num == 4'b011 || num == 4'b100 || num == 4'b101 || num == 4'b110 || num == 4'b111);
    assign segments[1] = ~(num == 4'b001 || num == 4'b010 || num == 4'b011 || num == 4'b100 || num == 4'b101 || num == 4'b110 || num == 4'b111);
    assign segments[0] = ~(num == 4'b000 || num == 4'b100 || num == 4'b110 || num == 4'b111);

endmodule
