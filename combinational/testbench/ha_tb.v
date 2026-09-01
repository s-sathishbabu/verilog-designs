`timescale 1ns / 1ps

module half_adder_tb;

    reg a_tb;
    reg b_tb;
    wire sum_tb;
    wire carry_tb;

    // Device Under Test (DUT)
    half_adder dut (
        .A(a_tb),
        .B(b_tb),
        .Sum(sum_tb),
        .Carry(carry_tb)
    );

    // Generate VCD waveform file
    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0,half_adder_tb);
    end

    // Apply test inputs
    initial begin
        $monitor("Time=%0t | A=%b B=%b | Sum=%b Carry=%b",
                 $time, a_tb, b_tb, sum_tb, carry_tb);

        a_tb = 0; b_tb = 0; #1;
        a_tb = 0; b_tb = 1; #1;
        a_tb = 1; b_tb = 0; #1;
        a_tb = 1; b_tb = 1; #1;

        $finish;
    end

endmodule