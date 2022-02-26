module MyDesign
(   
    
	input wire dut_run,
	output reg dut_busy,
	input wire reset_b,
	input wire clk,
	
	
	
	output reg [11:0]	dut_sram_write_address,
	output wire [15:0]	dut_sram_write_data,
	output reg          dut_sram_write_enable,
	
	
	output reg [11:0]	dut_sram_read_address,
	input wire [15:0]	sram_dut_read_data,
	
	output reg [11:0]	dut_wmem_read_address,
	input wire [15:0]	wmem_dut_read_data
	
	//input wire [15:0]	Address,
	//input wire [15:0]	weight,	//SRAM read address
	 // select line for input registers 
			//Calculation result
);

reg [15:0] dataAA;
reg [15:0] dataBB;
reg [15:0] dataCC;
reg [15:0] dataA;
reg [15:0] dataB;
reg [15:0] dataC;
reg [15:0] weight_matrix;
reg [15:0] weight;
reg [1:0] select;
reg [1:0] weight_select;
reg [15:0]		SizeCount;
reg [1:0]		read_addr_sel;	
reg [1:0]		wread_addr_sel;	
reg [1:0]		wwread_addr_sel;
reg [15:0] matrix_size;	
reg [1:0]  sel_matrix_size;
wire [13:0] comparator;	
parameter N=14;


//sizecount 

//read address select
//weight address select
//wire []1:0] enable;

//Parameters
	localparam s0  = 5'b00000;
	localparam s1  = 5'b00001;
	localparam s2  = 5'b00010;
	localparam s3  = 5'b00011;
	localparam s4  = 5'b00100;
	localparam s5  = 5'b00101;
	localparam s6  = 5'b00110;
	localparam s7  = 5'b00111;
	localparam s8  = 5'b01000;
	localparam s9  = 5'b01001;
	localparam s10  = 5'b01010;
	localparam s11  = 5'b01011;
	localparam s12  = 5'b01100;
	localparam s13  = 5'b01101;
	localparam s14  = 5'b01110;
	localparam s15  = 5'b01111;
	
	
	
	
	
	reg [5:0]		current_state;
	reg [5:0]		next_state;
	reg [1:0]		size_count_sel;
	
	
	
	always @(posedge clk or negedge reset_b) begin
		if (!reset_b)
			current_state <= 4'b0;
		else
			current_state <= next_state;
	end
	
	always @(*) begin
		casex (current_state)
			s0 : begin
			    select=2'b10;
				weight_select=2'b10;
				size_count_sel 	= 2'b10;
				dut_busy=1'b0;
				read_addr_sel 	= 2'b10;
				wread_addr_sel 	= 2'b10;
				wwread_addr_sel=2'b10;
				dut_sram_write_enable=1'b0;
				
				sel_matrix_size = 2'b01;
                                
				if (dut_run == 1'b1)
					next_state = s1;
				else
				    begin
					next_state = s0;	
				    end
				
			end
			s1 : begin
			   select=2'b10;
			   weight_select=2'b10;
			   size_count_sel 	= 2'b10;
                dut_busy=1'b0;
				read_addr_sel 	= 2'b00;
				wread_addr_sel 	= 2'b00;
				wwread_addr_sel=2'b10;
                dut_sram_write_enable=1'b0;				
				sel_matrix_size =2'b01;
				
				next_state = s2;
				
				
				
			end
                        s2 : begin
			    select=2'b10;
				weight_select=2'b10;
				size_count_sel 	= 2'b10;
				dut_busy=1'b0;
				 read_addr_sel 	= 2'b01;
				 wread_addr_sel 	= 2'b01;
				 wwread_addr_sel=2'b10;
				 dut_sram_write_enable=1'b0;
				 sel_matrix_size = 2'b10;
                            next_state = s3;
				
				
				
			end
			s3 : begin
			     select=2'b10;
				 weight_select=2'b10;
				 size_count_sel 	= 2'b10;
				dut_busy=1'b0;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				wwread_addr_sel=2'b10;
				dut_sram_write_enable=1'b0;
				sel_matrix_size = 2'b00;
				next_state = s4;
				
				
			end
                s4 : begin
			    select=2'b10;
				weight_select=2'b00;
				size_count_sel 	= 2'b10;
				dut_busy=1'b0;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				wwread_addr_sel=2'b10;
				dut_sram_write_enable=1'b0;
				sel_matrix_size = 2'b10;
				next_state = s5;
				end

                s5 : begin
			    select=2'b10;
				weight_select=2'b10;
				size_count_sel 	= 2'b10;
				dut_busy=1'b1;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				wwread_addr_sel=2'b10;
				dut_sram_write_enable=1'b0;
				sel_matrix_size = 2'b10;
				next_state = s6;

				end
				s6 : begin
			    select=2'b10;
				weight_select=2'b10;
				size_count_sel 	= 2'b00;
				dut_busy=1'b1;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				wwread_addr_sel=2'b10;
				dut_sram_write_enable=1'b0;
				sel_matrix_size = 2'b10;
				next_state = s7;

				end
				s7 : begin
			    select=2'b10;
				weight_select=2'b10;
				size_count_sel 	= 2'b01;
				dut_busy=1'b1;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				wwread_addr_sel=2'b10;
				dut_sram_write_enable=1'b0;
				sel_matrix_size = 2'b10;
				next_state = s8;

				end
				s8 : begin
			    select=2'b00;
				weight_select=2'b10;
				size_count_sel 	= 2'b01;
				dut_busy=1'b1;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				
				wwread_addr_sel=2'b00;
				dut_sram_write_enable=1'b0;
				
				
				
				sel_matrix_size = 2'b10;
				next_state = s9;

				end
				s9 : begin
			    select=2'b00;
				weight_select=2'b10;
				size_count_sel 	= 2'b01;
				dut_busy=1'b1;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				
				dut_sram_write_enable=1'b1;

				wwread_addr_sel=2'b01;
				
				
				
				
				sel_matrix_size = 2'b10;
				if(SizeCount==16'b10)
			
				next_state = s10;
				else
				next_state = s9;

				end
				
				s10 : begin
			     select=2'b10;
				 weight_select=2'b10;
				 size_count_sel 	= 2'b01;
				 dut_busy=1'b1;
				 read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				wwread_addr_sel=2'b01;
				dut_sram_write_enable=1'b1;
				
				
				
				sel_matrix_size = 2'b00;
				next_state = s11;
				

				end
				
				s11 : begin
			    select=2'b10;
				weight_select=2'b10;
				size_count_sel 	= 2'b01;
				dut_busy=1'b1;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				
			    dut_sram_write_enable=1'b0;
                wwread_addr_sel=2'b10;
				
				
				
				sel_matrix_size = 2'b10;
				if(dataCC==16'b0)
				begin
				dut_busy=1'b0;
				next_state = s0;
				end
				else
				next_state = s12;
				

				end
				
				s12 : begin
			    
				 select=2'b10;
				 weight_select=2'b10;
				 size_count_sel 	= 2'b00;
				dut_busy=1'b1;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				wwread_addr_sel=2'b10;
				dut_sram_write_enable=1'b0;
				
				
				
				sel_matrix_size = 2'b10;
				next_state = s13;
				

				end
				
				s13: begin
			    
				 select=2'b01;
				 weight_select=2'b10;
				 size_count_sel 	= 2'b01;
				dut_busy=1'b1;
				read_addr_sel 	= 2'b01;
				wread_addr_sel 	= 2'b01;
				wwread_addr_sel=2'b10;
				dut_sram_write_enable=1'b0;
				
				sel_matrix_size = 2'b10;
				next_state = s14;
				

				end
				
				s14: begin
			    
				 select=2'b00;
				 weight_select=2'b10;
				 size_count_sel 	= 2'b01;
				 dut_busy=1'b1;
				 read_addr_sel 	= 2'b01;
				 wread_addr_sel 	= 2'b01;
                wwread_addr_sel=2'b10;
				dut_sram_write_enable=1'b0;
				
				
				
				sel_matrix_size = 2'b10;
				
				next_state = s15;
				

				end
				
				s15: begin
			    
				 select=2'b00;
				 weight_select=2'b10;
				 size_count_sel 	= 2'b01;
				 dut_busy=1'b1;
				 read_addr_sel 	= 2'b01;
				 wread_addr_sel 	= 2'b01;
				 
				dut_sram_write_enable=1'b1;
                wwread_addr_sel=2'b01;
				
				
				
				sel_matrix_size = 2'b10;
				if(SizeCount==16'b10)
			
				next_state = s10;
				else
				next_state = s15;
				

				end

				default : begin
				select=2'b10;
				weight_select=2'b10;
				size_count_sel 	= 2'b10;
				dut_busy=1'b0;
				read_addr_sel 	= 2'b10;
				wread_addr_sel 	= 2'b10;
				
				sel_matrix_size = 2'b01;
                
                dut_sram_write_enable=1'b0;
                wwread_addr_sel=2'b10;
				next_state=s0;
				
			    end
				
			
                         
                      endcase
                end
                
//Read address register
	always @(posedge clk) begin
			if (read_addr_sel == 2'b0)
				dut_sram_read_address <= 12'b0;
			else if (read_addr_sel == 2'b01)
				dut_sram_read_address <= dut_sram_read_address + 12'b1;
			else if (read_addr_sel == 2'b10)
				dut_sram_read_address <= dut_sram_read_address;
	end
	 //weight 
	always @(posedge clk) begin
			if (wread_addr_sel == 2'b0)
				dut_wmem_read_address <= 12'b0;
			else if (wread_addr_sel == 2'b01)
				dut_wmem_read_address <= dut_wmem_read_address + 12'b1;
			else if (wread_addr_sel == 2'b10)
				dut_wmem_read_address <= dut_wmem_read_address;
	end
	//write 
	always @(posedge clk) begin
			if (wwread_addr_sel == 2'b0)
				dut_sram_write_address <= 12'b0;
			else if (wwread_addr_sel == 2'b01)
				dut_sram_write_address <= dut_sram_write_address+ 12'b1;
			else if (wwread_addr_sel == 2'b10)
				dut_sram_write_address <= dut_sram_write_address;
	end

    always @(posedge clk) begin
			if (size_count_sel == 2'b0)
				SizeCount <= dataAA ;
			else if (size_count_sel == 2'b01)
				SizeCount <= SizeCount - 16'b1;
			else if (size_count_sel == 2'b10)
				SizeCount <= SizeCount;
	end
	//matrix_size
	always @(posedge clk) begin
			if (sel_matrix_size == 2'b0)
				matrix_size <= sram_dut_read_data-(2'b10);
			else if (sel_matrix_size == 2'b01)
				matrix_size <= 0;
			else if (sel_matrix_size == 2'b10)
				matrix_size <= matrix_size;
	end
	
	//weight
	always @(posedge clk) begin
			if (weight_select == 2'b00)
			    weight_matrix<=wmem_dut_read_data;
			else if (weight_select == 2'b01)
				weight_matrix <= 0;
			else if (weight_select == 2'b10)
				weight_matrix <= weight_matrix;
	end

always@(posedge clk)
   begin
       dataCC<=sram_dut_read_data;
	   dataBB<=dataCC;
	   dataAA<=dataBB;
	   //weight_matrix<=wmem_dut_read_data;
   end

always@(posedge clk)
   begin
       if(select==0)
	   begin
	      dataA<=dataAA;
		  dataB<=dataBB;
		  dataC<=dataCC;
		  weight<=weight_matrix;
	   end
	   else
	   begin
          dataA<=0;
		  dataB<=0;
		  dataC<=0;	      
	   end
   end 
  




PE u0 (.dataA(dataA[2:0]),.dataB(dataB[2:0]),.dataC(dataC[2:0]),.weight_matrix(weight[8:0]),.comparator(comparator[0]));
PE u1 (.dataA(dataA[3:1]),.dataB(dataB[3:1]),.dataC(dataC[3:1]),.weight_matrix(weight[8:0]),.comparator(comparator[1]));
PE u2 (.dataA(dataA[4:2]),.dataB(dataB[4:2]),.dataC(dataC[4:2]),.weight_matrix(weight[8:0]),.comparator(comparator[2]));
PE u3 (.dataA(dataA[5:3]),.dataB(dataB[5:3]),.dataC(dataC[5:3]),.weight_matrix(weight[8:0]),.comparator(comparator[3]));
PE u4 (.dataA(dataA[6:4]),.dataB(dataB[6:4]),.dataC(dataC[6:4]),.weight_matrix(weight[8:0]),.comparator(comparator[4]));
PE u5 (.dataA(dataA[7:5]),.dataB(dataB[7:5]),.dataC(dataC[7:5]),.weight_matrix(weight[8:0]),.comparator(comparator[5]));
PE u6 (.dataA(dataA[8:6]),.dataB(dataB[8:6]),.dataC(dataC[8:6]),.weight_matrix(weight[8:0]),.comparator(comparator[6]));
PE u7 (.dataA(dataA[9:7]),.dataB(dataB[9:7]),.dataC(dataC[9:7]),.weight_matrix(weight[8:0]),.comparator(comparator[7]));
PE u8 (.dataA(dataA[10:8]),.dataB(dataB[10:8]),.dataC(dataC[10:8]),.weight_matrix(weight[8:0]),.comparator(comparator[8]));
PE u9 (.dataA(dataA[11:9]),.dataB(dataB[11:9]),.dataC(dataC[11:9]),.weight_matrix(weight[8:0]),.comparator(comparator[9]));
PE u10 (.dataA(dataA[12:10]),.dataB(dataB[12:10]),.dataC(dataC[12:10]),.weight_matrix(weight[8:0]),.comparator(comparator[10]));
PE u11 (.dataA(dataA[13:11]),.dataB(dataB[13:11]),.dataC(dataC[13:11]),.weight_matrix(weight[8:0]),.comparator(comparator[11]));
PE u12 (.dataA(dataA[14:12]),.dataB(dataB[14:12]),.dataC(dataC[14:12]),.weight_matrix(weight[8:0]),.comparator(comparator[12]));
PE u13 (.dataA(dataA[15:13]),.dataB(dataB[15:13]),.dataC(dataC[15:13]),.weight_matrix(weight[8:0]),.comparator(comparator[13]));







assign dut_sram_write_data= (matrix_size==16'd14)? {{2{1'b0}},comparator[13:0]}:((matrix_size==16'd10)? {{6{1'b0}},comparator[9:0]}:{{8{1'b0}},comparator[7:0]});

endmodule


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


