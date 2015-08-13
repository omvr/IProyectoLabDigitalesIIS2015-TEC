timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnológico de Costa Rica
//	Curso: Laboratorio de Diseño de Sistemas Digitales
// Estudiantes: 
// 					Luis C. Espinoza Ortiz	201095991
//						Omar Vargas Ruiz			200840415

// Create Date:    15:32:28 08/09/2015 
// Design Name: 	
// Module Name:    top_module 
// Project Name:	Proyecto 1: Maquina de Estados Compleja
// Target Devices: Nexys 3
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_module(
		input wire clk, reset,
		input wire t_25, t_27, t_30, t_corp,
		output wire notif,aban,alarm,clock,a,b,c,d,e,f,g,dp,an0,an1,
		wire [2:0]	state1
	);
	
	
		
	M_Estados hipertermia(
    .clk(s_clk), 
    .reset(reset), 
    .t_25(t_25), 
    .t_27(t_27), 
    .t_30(t_30), 
    .t_corp(t_corp), 
    .notif(notif), 
    .aban(aban), 
    .alarm(alarm),
	 .state1(state1)
    );
	 
	 Divisor div_100hz(
    .clk(clk), 
    .reset(reset), 
    .s_clk(s_clk)
    );

	div_800kHZ Display (
    .clk(clk), 
    .reset(reset), 
    .s1_clk(s1_clk)
    );

display7seg Muestra_estado (
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .e(e), 
    .f(f), 
    .g(g), 
    .dp(dp), 
    .an0(an0), 
    .an1(an1), 
    .clk(s1_clk), 
    .state1(state1)
    );

	 
	
assign clock = s_clk;







endmodule
