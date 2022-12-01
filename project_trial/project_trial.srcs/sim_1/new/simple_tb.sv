`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2022 11:19:55 AM
// Design Name: 
// Module Name: simple_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module simple_tb();
reg clk;
reg rst;
reg [7:0] mem [31:0];
//reg en;

top_file dut(
    .clk(clk),
    .rst(rst)
    //.en(en)
    );         
    
always #5 clk = ~clk;

initial begin
    clk = 0;
    #5 dut.d1.mem[0] = 8'd24;
        dut.d1.mem[1] = 8'd25;
        dut.d1.mem[2] = 8'b00110011;
    #10 rst = 1;
    #15 rst = 0;

     
     #100 $finish; 
end      

endmodule
