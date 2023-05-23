module registerFile(
  input clk,
  input reset,
  input [4:0] rs1,
  input [4:0] rs2,
  input [4:0] rd,
  input [63:0] writedata,
  input reg_write,
  output reg [63:0] readdata1,
  output reg[63:0] readdata2,
  output  [63:0] x_10
);
  integer i;
  reg [63:0] registers [31:0];
  initial
    begin
    
    // REGISTER FILE for Testing Hazard Detection Unit ///
    
//    registers[0] = 64'd0;    
//    registers[1] = 64'd2;    
//    registers[2] = 64'd3;    
//    registers[3] = 64'd4;    
//    registers[4] = 64'd5;    
//    registers[5] = 64'd6;    
//    registers[6] = 64'd7;    
//    registers[7] = 64'd8;    
//    registers[8] = 64'd9;
//    registers[9] = 64'd10;    
//    registers[10] = 64'd11;    
//    registers[11] = 64'd12;    
//    registers[12] = 64'd13;    
//    registers[13] = 64'd14;    
//    registers[14] = 64'd15;    
//    registers[15] = 64'd16;    
//    registers[16] = 64'd17;    
//    registers[17] = 64'd18;    
//    registers[18] = 64'd19;    
//    registers[19] = 64'd20;    
//    registers[20] = 64'd21;    
//    registers[21] = 64'd22;    
//    registers[22] = 64'd23;    
//    registers[23] = 64'd24;    
//    registers[24] = 64'd25;    
//    registers[25] = 64'd26;    
//    registers[26] = 64'd27;    
//    registers[27] = 64'd28;    
//    registers[28] = 64'd29;    
//    registers[29] = 64'd30;    
//    registers[30] = 64'd31;    
//    registers[31] = 64'd32;  
    
    
    /////// ACTUAL REGISTER FILE ////// 
    
        registers[0] = 64'd0;
      registers[1] = 64'd0;
      registers[2] = 64'd0;
      registers[3] = 64'd0;
      registers[4] = 64'd0;
      registers[5] = 64'd0;
      registers[6] = 64'd0;
      registers[7] = 64'd0;
      registers[8] = 64'd0;
      registers[9] = 64'd0;
      registers[10] = 64'd0;
      registers[11] = 64'd7;
      registers[12] = 64'd0;
      registers[13] = 64'd0;
      registers[14] = 64'd0;
      registers[15] = 64'd0;
      registers[16] = 64'd0;
      registers[17] = 64'd0;
      registers[18] = 64'd0;
      registers[19] = 64'd0;
      registers[20] = 64'd0;
      registers[21] = 64'd0;
      registers[22] = 64'd0;
      registers[23] = 64'd0;
      registers[24] = 64'd0;
      registers[25] = 64'd0;
      registers[26] = 64'd0;
      registers[27] = 64'd0;
      registers[28] = 64'd0;
      registers[29] = 64'd0;
      registers[30] = 64'd0;
      registers[31] = 64'd0;  
    end


 assign x_10 = registers[10];  // testing load instruction!
 
 
  always @ (*)
    begin
      if (reset == 1'b1)
        begin
          readdata1 = 64'd0;
          readdata2 = 64'd0;
        end
      else
        begin
          readdata1 = registers[rs1];
          readdata2 = registers[rs2];
        end
    end
  always@(negedge clk)
    begin
      if (reg_write == 1)
        registers[rd] = writedata;
    end
endmodule