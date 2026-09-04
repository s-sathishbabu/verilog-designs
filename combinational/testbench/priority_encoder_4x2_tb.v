`timescale 1ns / 1ps

module priority_encoder_4x2_tb;
   reg [3:0] i_tb;
   wire [1:0] y_tb;
   
   priority_encoder_4x2 dut (i_tb,y_tb);
   
   initial begin
      $dumpfile("priority_encoder_4x2.vcd");
      $dumpvars(0,priority_encoder_4x2_tb);
   end
   initial begin 
      $monitor("i : %b y : %b",i_tb,y_tb);
      i_tb = 4'b0001; #10;
      i_tb = 4'b0011; #10;
      i_tb = 4'b0101; #10;
      i_tb = 4'b1010; #10;
    end
endmodule