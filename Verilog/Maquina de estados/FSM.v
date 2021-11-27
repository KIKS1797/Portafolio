/* Finite State Machine
Codigo realizado por Enrique Zetina Martinez
Correo: enrique.zetina@iteso.mx
	
*/
module FSM(


input reset, clk,w,
output reg z, 
output reg [8:0] Y 
);



	reg [3:0] change;
	reg [8:0] State;

	always @(posedge clk or posedge reset) begin
		if (reset) begin
			z <= 1'b0;
			change <= 4'b0101;
		end
		else begin
			if ((change == 4'b0000)|(change == 4'b1111))
				z <= 1'b1;
			else
				z <= 1'b0;
			change[3:0] <= { change[2:0] , w };
		end
	end

	parameter A=0, B=1, C=2, D=3, E=4, F=5, G=6, H=7, I=8;
	always @ (State) begin
		case(State)
			A: Y = 9'b000000001;
			B: Y = 9'b000000010;
			C: Y = 9'b000000100;
			D: Y = 9'b000001000;
			E: Y = 9'b000010000;
			F: Y = 9'b000100000;
			G: Y = 9'b001000000;
			H: Y = 9'b010000000;
			I: Y = 9'b100000000;
			default: Y = 9'b000000000;
		endcase
	end
	
	always @(posedge clk or posedge reset) begin
		if (reset) begin
			State = A;
		end
		else begin
			case(State)
				A:
					if (w)
						State = F;
					else
						State = B;
				B: 
					if (w)
						State = F;
					else
						State = C;
				C:
					if (w)
						State = F;
					else
						State = D;
				D:
					if (w)
						State = F;
					else
						State = E;
				E:
					if (w)
						State = F;
					else
						State = E;
				F:
					if (w)
						State = G;
					else
						State = B;
				G:
					if (w)
						State = H;
					else
						State = B;
				H:
					if (w)
						State = I;
					else
						State = B;
				I:
					if (w)
						State = I;
					else
						State = B;
			endcase
		end
	end
	
endmodule