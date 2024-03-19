module SevenSegDecWithEnAndDigitSel(
    input en,
    input [3:0] num,
    input [1:0] digit_sel,
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
    case(digit_sel)
        2'b00: anode_active <= 4'b1110; // Enable 1st digit from the right
        2'b01: anode_active <= 4'b1101; // Enable 2nd digit from the right
        2'b10: anode_active <= 4'b1011; // Enable 3rd digit from the right
        2'b11: anode_active <= 4'b0111; // Enable 4th digit from the right
        default: anode_active <= 4'b1111; // Enable all digits by default
    endcase
end

endmodule
