# BCD Adder Module

## Author
Mahdi Kodoori  
GitHub: [https://github.com/MahdiKodoori](https://github.com/MahdiKodoori)

## Description
This Verilog module implements a 4-bit BCD (Binary Coded Decimal) adder. It adds two 4-bit BCD inputs and produces a 5-bit BCD output.

Since BCD digits range from 0 to 9, if the binary sum exceeds 9, the module adds 6 to the sum to correct it, ensuring a valid BCD output. This method also handles the carry generation.

## Ports
| Port Name | Direction | Width | Description           |
|-----------|-----------|-------|-----------------------|
| a         | input     | 4     | First BCD digit       |
| b         | input     | 4     | Second BCD digit      |
| sum       | output    | 5     | 5-bit BCD sum output  |

## Usage
- Provide two 4-bit BCD inputs `a` and `b`.
- The output `sum` is the BCD addition result including the carry bit.

## Example
- Input: a = 4'b0101 (5 decimal), b = 4'b0110 (6 decimal)
- Output: sum = 5'b01011 (11 decimal corrected as BCD)

## License
This project is open-source and free to use.

