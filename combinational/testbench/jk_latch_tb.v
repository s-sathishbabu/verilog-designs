`timescale 1ns / 1ps


module jk_latch_tb;
    reg rst,enb,j,k;
    wire q,qbar;
    integer i;
    
    jk_latch dut (rst,enb,j,k,q,qbar);

    initial
        begin
            $dumpfile("jk_latch.vcd");
            $dumpvars(0,jk_latch_tb);
        end
    
    initial
        begin
            $monitor("rst : %d  enb : %d    j : %d  k: %d   q : %d  qbar : %d",rst,enb,j,k,q,qbar);
            rst = 1'b1; #10;
            
            enb=1'b0; rst=1'b0; #10;
            
            enb=1'b1;
            for (i=0;i<4;i=i+1) begin
                {j,k}=i; #10;
            end
        end
endmodule