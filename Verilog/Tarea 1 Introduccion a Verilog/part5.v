/* Lab Part 5
Codigo realizado por Enrique Zetina Martinez
Correo: enrique.zetina@iteso.mx
	

	Multiplexing the display outputs according to SW[9:8]
*/

module part5 (SW, HEX0, HEX1, HEX2, HEX3);


	input [9:8] SW; // toggle switches
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;

wire [1:0] S;
reg  [6:0] SEG0;
reg  [6:0] SEG1;
reg  [6:0] SEG2;
reg  [6:0] SEG3;

assign S = SW[9:8];
assign HEX0 = SEG0;
assign HEX1 = SEG1;
assign HEX2 = SEG2;
assign HEX3 = SEG3;



// segment encoding
//      0
//     //-  
//  5 |   | 1
//     //-   <- 6
//  4 |   | 2
//     //-
//      3


always @(*)	// to detect any change just put "*"
begin
//The if and if else work like a case comparing the switches 9-8 and
//print in the displays the letter that corresponds
if(S==2'b00) begin	//to use an if its nesessary to start with "begin"
       SEG3 = 7'b0001001;   //H
       SEG2 = 7'b0000110;   //E
       SEG1 = 7'b1000111;   //L
       SEG0 = 7'b0001100;   //P
		 end	//To end an if its nesessary to finish with "end"

else if (S==2'b01) begin
       SEG3 = 7'b0000110;   //E
		 SEG2 = 7'b1000111;   //L
		 SEG1 = 7'b0001100;   //P
		 SEG0 = 7'b0001001;   //H
		 end
	
else if (S==2'b10) begin
       SEG3 = 7'b1000111;   //L
		 SEG2 = 7'b0001100;   //P
       SEG1 = 7'b0001001;   //H
       SEG0 = 7'b0000110;   //E
       
		 end
	
else begin
       SEG3 = 7'b0001100;   //P
       SEG2 = 7'b0001001;   //H
       SEG1 = 7'b0000110;   //E
       SEG0 = 7'b1000111;   //L

		 end


end
endmodule
