module adder_tb;
reg a,b; 
wire s,c; 
adder u1(a,b,s,c); 
initial 
begin 
a=1'b0; b=1'b1; #10;
a=1'b1; b=1'b1; #10;
$finish;
end
endmodule