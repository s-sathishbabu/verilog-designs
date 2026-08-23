`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2026 20:57:23
// Design Name: 
// Module Name: ha_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_adder_tb;

reg A, B;
wire Sum, Carry;

// Instantiate the Half Adder
half_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $display("A B | Sum Carry");
    $display("----------------");

    A = 0; B = 0; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    A = 0; B = 1; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    A = 1; B = 0; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    A = 1; B = 1; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    $finish;
end

endmodule