/* Lab Part 3
	Codigo realizado por Enrique Zetina Martinez
	Correo: enrique.zetina@iteso.mx
	
	two-bit wide 4-to-1 multiplexer.
*/
module part3 (SW, LEDR);


	input [9:0] SW; // toggle switches
	output [9:0] LEDR; // red LEDs


wire [1:0] V;
wire [1:0] W;
wire [1:0] X;
wire [1:0] Y;
reg [1:0] M;
wire [1:0] S;

assign S = SW[9:8];

assign Y = SW[1:0];
assign X = SW[3:2];
assign W = SW[5:4];
assign V = SW[7:6];


assign LEDR [1:0] = M;
assign LEDR [9:8] = S;

always @(V or W or X or Y or S)
begin

if(S==2'b00)
	M=V;

else if (S==2'b01)
	M=W;
	
else if (S==2'b10)
	M=X;
	
else 
	M=Y;


end

endmodule