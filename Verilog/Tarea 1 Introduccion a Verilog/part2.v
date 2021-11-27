/* Lab Part 2
	Codigo realizado por Enrique Zetina Martinez
	Correo: enrique.zetina@iteso.mx
	
	four-bit wide 2-to-1 multiplexer
*/
	
module part2 (SW, LEDR);


	input [9:0] SW; // toggle switches
	output [9:0] LEDR; // red LEDs



wire [3:0] X; 	
wire [3:0] Y;	//interconnection within the architecture internally
reg [3:0] M;	//variable that allows the description to be made in procedures
wire S;

assign S = SW[9];	//just a simple assignation
assign X = SW[3:0];
assign Y = SW[7:4];
assign LEDR = M;


always @(X or Y or S)	//to star a case or a coindition need to be in an always
begin
if(S==0)
	M=X;
	
else 
	M=Y;


end

endmodule