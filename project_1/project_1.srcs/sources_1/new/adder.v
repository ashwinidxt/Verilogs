module siso_shift ( input clk,  input sin, output reg QA, output reg QB, output reg QC, output reg QD);
 always @(posedge clk)
  begin QD = QC; QC = QB; QB = QA; QA = sin; 
  end 
  endmodule