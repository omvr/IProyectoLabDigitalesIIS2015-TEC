`timescale 1s / 1ms

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:27:24 08/08/2015
// Design Name:   M_Estados
// Module Name:   D:/Documents/Xilinx Projects/M_estadospy1/M_Estados_sim.v
// Project Name:  M_estadospy1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: M_Estados
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module M_Estados_sim;

	// Inputs
	reg clk;
	reg reset;
	reg t_25;
	reg t_27;
	reg t_30;
	reg t_corp;

	// Outputs
	wire notif;
	wire aban;
	wire alarm;

	// Instantiate the Unit Under Test (UUT)
	M_Estados uut (
		.clk(clk), 
		.reset(reset), 
		.t_25(t_25), 
		.t_27(t_27), 
		.t_30(t_30), 
		.t_corp(t_corp), 
		.notif(notif), 
		.aban(aban), 
		.alarm(alarm)
	);
	initial forever #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		t_25 = 0;
		t_27 = 0;
		t_30 = 0;
		t_corp = 0;

		// Wait 100 ns for global reset to finish
		#10
		reset = 0;
		
		#100
		
		t_corp = 0;
		t_30 = 0;
		t_27 = 0;      
		t_25 = 1;
		
		#300
		
		t_corp = 0;
		t_30 = 0;
		t_27 = 1;      
		t_25 = 0;
		
		
		#500
	
		t_corp = 0;
		t_30 = 1;
		t_27 = 0;      
		t_25 = 0;
	
		
		
		#600
		t_corp = 1;
		t_30 = 0;
		t_27 = 0;      
		t_25 = 0;
		
		
		$stop;
		// Add stimulus here

	end
      
endmodule