module venmachine(input reset,
input [2:0]fives,
input [2:0]tens,
input clk, 
output reg[2:0]items,
output reg[3:0]change);
reg [6:0]total;
reg [6:0]sum;
integer i;
always @(*)
begin
sum[6:0]=(reset)?7'd0:3'd5*fives[2:0]+4'd10*tens[2:0];
end
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
    change<=4'd0;
    items<=3'd0;
    end
    else
    begin
        if(sum>=7'd15)
        begin 
        change<=sum[6:0]%6'd15;
        items<=sum[6:0]/6'd15;
        end
        else begin
        change[3:0]<=sum[3:0];
        items<=3'd0;
        end
    end
end
endmodule

