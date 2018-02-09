`timescale 1ns / 1ps

module bin_to_bcd(bin,ONES,TENS,HUNDREDS,TH);

input [15:0] bin;
output [3:0] ONES, TENS ,HUNDREDS ,TH;
reg [3:0] ONES, TENS ,HUNDREDS ,TH;
integer i;
always @(bin)
begin
	ONES=0; 
	TENS=0;	
	HUNDREDS=0;
	TH=0;
for(i=12;i>=0;i=i-1) 
begin
	if(TH>=5)
	TH=TH+3;
	if(HUNDREDS>=5)
	HUNDREDS=HUNDREDS+3;
	if(TENS>=5)
	TENS=TENS+3;
	if(ONES>=5)
	ONES =ONES+3;

	
	TH= TH <<1;
	TH[0]= HUNDREDS [3];
	
	HUNDREDS = HUNDREDS<<1;
	HUNDREDS[0] = TENS[3];
	
	TENS = TENS <<1;
	TENS[0] = ONES[3];
	
	ONES = ONES <<1;
	ONES[0] = bin[i];
end //for loop end
end//always end

endmodule