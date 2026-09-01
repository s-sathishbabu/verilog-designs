`timescale 1ns / 1ps


module encoder_4x2_tb;
   reg [3:0] i_tb;
   wire [1:0] y_tb;
   
   encoder_4x2 dut (i_tb,y_tb);

   initial begin
      $dumpfile("encoder_4x2.vcd");
      $dumpvars(0,encoder_4x2_tb);
   end
   
   initial begin 
      $monitor("i : %b y : %b",i_tb,y_tb);
      i_tb = 4'b0001; #10;
      i_tb = 4'b0010; #10;
      i_tb = 4'b0100; #10;
      i_tb = 4'b1000; #10;
    end
endmodule