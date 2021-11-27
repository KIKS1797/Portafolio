/* Lab Part 4
Codigo realizado por Enrique Zetina Martinez
Correo: enrique.zetina@iteso.mx
	
		HEX-to-seven-segment decoder
*/


module part4(SW, HEX0);


input  [3:0] SW;
output [6:0] HEX0;

// Assign the unused pins to "input tri-stated"

// segment encoding
//      0
//     //-  
//  5 |   | 1
//     //-   <- 6
//  4 |   | 2
//     //-
//      3


wire [3:0] BCD;
reg  [6:0] SEG; //Only use 0-7 to ignore the point in the display

assign BCD = SW;
assign HEX0 = SEG;
 
always @(BCD)	//Pendiente de los cambios de BCD
begin
   case (BCD)
       4'b0000 : SEG = 7'b0001001;   //H
       4'b0001 : SEG = 7'b0000110;   //E
       4'b0010 : SEG = 7'b1000111;   //L
       4'b0011 : SEG = 7'b0001100;   //P
		 endcase
end
 


endmodule