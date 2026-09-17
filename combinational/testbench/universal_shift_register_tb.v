`timescale 1ns / 1ps

module usr_tb();

reg clk;
reg rst;
reg s_in;
reg load;
reg shift;

reg [1:0] mode;
reg [3:0] p_in;

wire s_out;
wire [3:0] p_out;


// DUT
usr dut (
    .clk(clk),
    .rst(rst),
    .s_in(s_in),
    .load(load),
    .shift(shift),
    .mode(mode),
    .p_in(p_in),
    .s_out(s_out),
    .p_out(p_out)
);


// Clock generation
always #5 clk = ~clk;


// Initial values
initial
begin
    clk   = 1'b0;
    rst   = 1'b0;
    s_in  = 1'b0;
    load  = 1'b0;
    shift = 1'b0;
    mode  = 2'b00;
    p_in  = 4'b0000;
end


// VCD waveform dump
initial
begin
    $dumpfile("usr.vcd");
    $dumpvars(0, usr_tb);
end


// Test sequence
initial
begin

    // ==========================================
    // RESET
    // ==========================================

    rst = 1'b1;
    #10;
    rst = 1'b0;


    // ==========================================
    // SISO
    // ==========================================

    shift = 1'b1;
    mode  = 2'b00;
    load  = 1'b1;

    s_in = 1'b1;
    #10;

    s_in = 1'b0;
    #10;

    s_in = 1'b1;
    #10;

    s_in = 1'b1;
    #10;

    load = 1'b0;
    #20;


    // ==========================================
    // RESET
    // ==========================================

    rst = 1'b1;
    #10;
    rst = 1'b0;


    // ==========================================
    // SIPO
    // ==========================================

    shift = 1'b1;
    mode  = 2'b01;
    load  = 1'b1;

    s_in = 1'b1;
    #10;

    s_in = 1'b0;
    #10;

    s_in = 1'b1;
    #10;

    s_in = 1'b1;
    #10;

    load = 1'b0;
    #20;


    // ==========================================
    // RESET
    // ==========================================

    rst = 1'b1;
    #10;
    rst = 1'b0;


    // ==========================================
    // PISO
    // ==========================================

    shift = 1'b1;
    mode  = 2'b10;

    // Parallel load
    load = 1'b1;
    p_in = 4'b1011;
    #10;

    // Shift out
    load = 1'b0;

    #10;
    #10;
    #10;
    #10;

    #10;


    // ==========================================
    // RESET
    // ==========================================

    rst = 1'b1;
    #10;
    rst = 1'b0;


    // ==========================================
    // PIPO
    // ==========================================

    shift = 1'b1;
    mode  = 2'b11;

    // Parallel load
    load = 1'b1;
    p_in = 4'b1010;
    #10;

    // Hold
    load = 1'b0;
    #20;


    // ==========================================
    // END SIMULATION
    // ==========================================

    $finish;

end

endmodule