/* Wrapper for FSM
Codigo realizado por Enrique Zetina Martinez
Correo: enrique.zetina@iteso.mx
	
*/
module wrapperFSM(

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW


);

//=======================================================
//  Structural coding
//=======================================================

FSM A1(.reset(SW[0]), .clk(KEY[0]), .w(SW[1]), .z(LEDR[9]), .Y(LEDR[8:0]));


endmodule
