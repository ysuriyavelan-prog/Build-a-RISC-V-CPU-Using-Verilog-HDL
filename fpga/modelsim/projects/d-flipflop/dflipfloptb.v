module dflipfloptb;

reg D, clk;
wire Q;

dflipflop uut(D,clk,Q);

initial 
begin 
	clk = 0;
	D = 0;
	
	#10 D = 1;
	#10 D = 0;
	#10 D = 1;
	#10 D = 1;
	#10 D = 0;

	#10 $finish;
end 

always #5 clk = ~clk;

initial 
begin 
	$monitor("Time =%0t D=%b CLK =%b Q=%b",
		  $time,D,clk,Q);
end 

endmodule
