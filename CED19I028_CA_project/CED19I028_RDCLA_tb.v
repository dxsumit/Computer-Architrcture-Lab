`include "CED19I028_RDCLA.v"

module top;
reg [63:0] in1, in2;
reg cin;

wire [63:0] sum;
wire cout;

RDCLA r1 (in1, in2, cin, sum, cout);

initial
begin
    #0; in1 = 64'b1001101001101111000010110110111; in2 = 64'b1001010011101011111000110010100011; cin = 1'b0;
    #10; in1 = 64'd000000000004; in2 = 64'd0000000003; cin = 1'b0;	
    #10; in1 = 64'd000000000001; in2 = 64'd100000000101; cin = 1'b0;	
    #10; in1 = 64'b000100101010101101000111; in2 = 64'b00111010101011011000110000011100;
    #10; in1 = 64'b0000000000000000000000000000000000000000000000000000000000000011;in2=64'b1111111111111111111111111111111111111111111111111111111111111111;
end

initial
	$monitor ("in1 = %d; in2 = %d; carry_in = %d; sum = %d; carry_out = %d;", in1, in2, cin, sum, cout);
endmodule