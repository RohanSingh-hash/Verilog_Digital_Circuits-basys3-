`timescale 1ns / 1ps

module comparator(A,B, less, equal, greater);
	input [1:0]A,B;
	output less, equal, greater;
	reg less, equal, greater;
always@(A or B)
	begin	
	if (A>B) 
	begin
	less = 0;
	equal = 0;
	greater = 1 ;
	end
else if (A<B)
	begin
	less = 1;
	equal = 0;
	greater = 0 ;
	end
else
	begin
	less = 0;
	equal = 1;
	greater = 0 ;
	end
end
endmodule

