`timescale 1ns/1ps
module parity_function;
reg [7:0] data;
reg parity_bit;
//
// Function for parity calculation
//
function parity;
input [7:0] x;
begin
parity = ^x;
end
endfunction
initial begin
data = 8'b10101110;
parity_bit = parity(data);
$display("--------------------------------");
$display("Parity Calculation");
$display("--------------------------------");
$display("Data = %b", data);
$display("Parity = %b", parity_bit);
data = 8'b11110001;
parity_bit = parity(data);
$display("Data = %b", data);
$display("Parity = %b", parity_bit);
$finish;
end
endmodule