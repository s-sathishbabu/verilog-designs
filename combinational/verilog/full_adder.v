`timescale 1ns / 1ps

// Gate level modelling 
module full_adder(input a,b,cin,output sum,carry);

wire w1,w2,w3;

xor x1(sum,a,b,cin);

and a1(w1,a,b);
and a2(w2,a,cin);
and a3(w3,b,cin);

or o1(carry,w1,w2,w3);c:\Users\sathi\Music\vivado\project_3\project_3.srcs\sim_1\new\full_adder_tb.v
endmodule
