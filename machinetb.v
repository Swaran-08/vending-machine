`timescale 1ns/1ps
module machinetest;
reg rst,clk;
reg [2:0]fi,ten;
wire [3:0]chn;
wire[2:0]items;
venmachine DUT(.reset(rst),.clk(clk),.fives(fi),.tens(ten),.change(chn),.items(items));
always #2 clk=~clk;
initial
begin
    $dumpfile("machinedump.vcd");     // waveform file name is digidump
    $dumpvars(0,machinetest);
    rst=1;#2;
    rst=0;clk=1;#2;
    fi=3'd2;ten=3'd2;#6;
    rst=1;#1;
    rst=0;fi=3'd5;ten=3'd6;#10;
    $finish;
end
endmodule