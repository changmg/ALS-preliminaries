module test_fixture;
	reg		clock100 = 0 ;
	reg		latch = 0;
	reg 	dec = 0;
	reg		[31:0] in = 32'h5555_5555;
	wire	zero;   
	
	initial	//following block executed only once
	  begin
		//$dumpfile("count.vcd"); // waveforms in this file.. 
  		//$dumpvars; // saves all waveforms
		$read_lib_saif("./Library_fwd.saif");
		$set_toggle_region(test_fixture.DUT); 
		#16 latch = 1;		// wait 16 ns
		#10 latch = 0;		// wait 10 ns
		$toggle_start(); 
		#10 dec = 1;
		#1000 
		$toggle_stop(); 
		$toggle_report("./counter_back.saif", 1.0e-9,"test_fixture.DUT");
		$finish;		//finished with simulation
  	end
	always #5 clock100 = ~clock100;	// 10ns clock

	// instantiate modules -- call this counter u1
	 counter DUT(  .clock(clock100), .in(in), .latch(latch), .dec(dec), 	 		
	 			  .zero(zero));
endmodule  /*test_fixture*/
