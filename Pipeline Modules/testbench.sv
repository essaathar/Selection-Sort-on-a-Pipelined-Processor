module tb();
  reg clk, reset;
//   wire [63:0] element;
//   wire [63:0] x_10;
wire [63:0] element1;
wire [63:0] element2;
wire [63:0] element3;
wire [63:0] element4;
wire [63:0] element5;
wire [63:0] element6;
wire [63:0] element7;
wire [63:0] element8;

wire stall;
wire flush;

// needed for CPU Time calculation
reg [63:0] clock_cycle = 0;

  RISC_V_Processor r1
  (
    .clk(clk),
    .reset(reset),
//    .element(element),
//    .x_10(x_10),
    .element1(element1),
    .element2(element2),
    .element3(element3),
    .element4(element4),
    .element5(element5),
    .element6(element6),
    .element7(element7),
    .element8(element8),
    .stall(stall),
    .flush(flush)
  );
  

initial
 begin

clk = 0;
reset = 1;

// #2.8 reset = 0;
#7 reset = 0;

 end
// always #5 clk = ~clk;

// assuming latency of each stage = 800 ps  ->  0.8 ns
always #0.8 clk = ~clk; 

always @(posedge clk) begin
  clock_cycle = clock_cycle + 1;
end

endmodule
