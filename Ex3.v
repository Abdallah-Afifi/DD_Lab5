module SevenSegDecWithEn(
    input en,
    input [3:0] num,
    output reg [6:0] segments,
    output reg [3:0] anode_active
);

always @(*) begin
    case(num)
        4'b1010: segments = 7'b1001110; // Hexadecimal A
        4'b1011: segments = 7'b1001000; // Hexadecimal B
        4'b1100: segments = 7'b1100011; // Hexadecimal C
        4'b1101: segments = 7'b1000100; // Hexadecimal D
        4'b1110: segments = 7'b1100001; // Hexadecimal E
        4'b1111: segments = 7'b1100111; // Hexadecimal F
        default: segments = 7'b1111111; // All segments off for invalid input
    endcase
end

always @(posedge en) begin
    if (num == 4'b1111)
        anode_active <= 4'b1110; // Enable only the rightmost 7-segment decoder for F
    else
        anode_active <= 4'b1111; // Enable all 7-segment decoders
end

endmodule
