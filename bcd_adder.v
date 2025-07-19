`timescale 1ns / 1ps

// Author: Mahdi Kodoori
// GitHub: https://github.com/MahdiKodoori
// Description:
// This module implements a 4-bit BCD (Binary Coded Decimal) adder.
// It adds two 4-bit BCD inputs and outputs a 5-bit BCD result.
// If the binary sum exceeds 9 (invalid BCD), the module adds 6 to correct it,
// producing a valid BCD output along with a carry if needed.

module bcd_adder(
    input [3:0] a, b,             // 4-bit BCD inputs
    output reg [4:0] sum          // 5-bit BCD sum output (includes carry)
);

    reg [4:0] temp_sum;           // Temporary variable for sum calculation
    reg cout;                     // Carry flag (internal use)

    always @(a or b) begin
        // Calculate simple binary sum
        temp_sum = a + b;

        // If sum is greater than 9, correct BCD by adding 6
        if (temp_sum > 9) begin
            temp_sum = temp_sum + 6;
            cout = 1;             // Indicate carry out
            sum = temp_sum[4:0];  // Output corrected BCD sum
        end else begin
            cout = 0;             // No carry
            sum = temp_sum[3:0];  // Output sum as is
        end
    end

endmodule
