module Encoder(
    input  wire [7:0] in,   // 4 input lines
    output reg  [2:0] out   // 2 output lines
);
    always @(*) begin
        case (in)
            8'b00000001: out = 2'b000;
            8'b00000010: out = 2'b001;
            8'b00000100: out = 2'b010;
            8'b00001000: out = 2'b011;
				8'b00010000: out = 2'b100;
				8'b00100000: out = 2'b101;
				8'b01000000: out = 2'b110;
				8'b10000000: out = 2'b111;
            default: out = 2'bxxx;  // Invalid case
        endcase
    end
endmodule