module PE
(   
   
	input wire [2:0]	dataA,
	input wire [2:0]	dataB,
	input wire [2:0]	dataC,	//SRAM read data
	input wire [8:0]	weight_matrix,	//SRAM read address
	output reg  comparator		//Calculation result
);

	reg [8:0] concat;
	reg [3:0] verify; 
	reg [8:0] XNB;
	//reg [3:0] result;
	
	integer i;
	
	always@(*)
	begin
	  concat={dataC,dataB,dataA};
	end 
	
	always@(*)
	begin
	  XNB=~(concat ^ weight_matrix);
	end
	
	always@(*)
	begin
	   verify=0;
		for(i=0;i<9;i=i+1)
		    verify=verify+XNB[i];
	end
	
	always@(*)
	begin
	   if (verify>4)
		    comparator=1;
			 else 
			 comparator=0;
		
	end
	
endmodule	//SK


