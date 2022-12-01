`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2022 10:09:26 AM
// Design Name: 
// Module Name: top_file
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


module top_file(
        input clk,
        input rst
        //input en
    );
    
    wire [7:0]a,b;
    reg [7:0] a_regd,b_regd;
    //reg inp_data_reg;
    wire [7:0] inp_data;
    wire ready_a,valid_a;
    wire ready_b,valid_b;
    wire [7:0]out_data;
    wire valid_out,ready_out;
    wire ready, valid;
    //reg [7:0] mem [31:0];
    
    driver d1(
        .clk(clk),
        .rst(rst),
       // .en(en),
        .ready(ready),
        .valid_out(valid_out),
        .out_data(out_data),
        .inp_data(inp_data),
        .valid(valid),
        .ready_out(ready_out)
       // .mem(mem[31:0])
    );
    
    test_adder a1(
        .clk(clk),
        .rst(rst),
        //.en(en),
        .ready(ready),
        .valid_out(valid_out),
        .out(out_data),
        .inp_data(inp_data),
        .valid(valid),
        .ready_out(ready_out)
    );
    
endmodule
