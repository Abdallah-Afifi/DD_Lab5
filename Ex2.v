module SevenSegDecWithEn(
    input en,
    input [3:0] num,
    output reg [6:0] segments,
    output reg [3:0] anode_active
);

always @ (en, num) begin
    if (en) begin
        case(num)
            4'b0000: segments = 7'b1000000; // Display 0
            4'b0001: segments = 7'b1111001; // Display 1
            4'b0010: segments = 7'b0100100; // Display 2
            4'b0011: segments = 7'b0110000; // Display 3
            4'b0100: segments = 7'b0011001; // Display 4
            4'b0101: segments = 7'b0010010; // Display 5
            4'b0110: segments = 7'b0000010; // Display 6
            4'b0111: segments = 7'b1111000; // Display 7
            4'b1000: segments = 7'b0000000; // Display 8
            4'b1001: segments = 7'b0010000; // Display 9
            default: segments = 7'b1111111;  // Turn off all segments if num is out of range
        endcase
        anode_active = 4'b0001; // Enable only the rightmost 7-segment decoder
    end
    else begin
        segments = 7'b1111111;  // Turn off all segments when enable is off
        anode_active = 4'b0000; // Disable all 7-segment decoders
    end
end

endmodule
