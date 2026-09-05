`timescale 1ns / 1ps


module ripple_carry_adder_tb;
    reg [3:0] a_rca_tb,b_rca_tb;
    reg cin_rca_tb;
    wire [3:0] sum_rca_tb;
    wire cout_rca_tb;
    
    ripple_carry_adder dut (a_rca_tb,b_rca_tb,cin_rca_tb,sum_rca_tb,cout_rca_tb);

    initial begin
        $dumpfile("ripple_carry_adder.vcd");
        $dumpvars(0,ripple_carry_adder_tb);
    end
    
    initial begin 
        $monitor("sum : %d  carry : %d ",sum_rca_tb,cout_rca_tb);
        {a_rca_tb,b_rca_tb,cin_rca_tb}={4'b0000,4'b0000,1'b0};#10;
        {a_rca_tb,b_rca_tb,cin_rca_tb}={4'b1111,4'b0000,1'b1};#10;
        {a_rca_tb,b_rca_tb,cin_rca_tb}={4'b1111,4'b1111,1'b1};#10;
    end         
       
endmodule