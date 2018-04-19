// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Apr 17 15:53:16 2018
// Host        : enrico running 64-bit Ubuntu 17.10
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /media/psf/Home/VivadoProjects/earl/earl.sim/sim_1/impl/timing/xsim/testacontatore_time_impl.v
// Design      : contatore
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "cd4c96dc" *) 
(* NotValidForBitStream *)
module contatore
   (clk,
    res,
    init,
    enable,
    count,
    tc);
  input clk;
  input res;
  input init;
  input enable;
  output [7:0]count;
  output tc;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]count;
  wire [7:0]count_OBUF;
  wire enable;
  wire enable_IBUF;
  wire init;
  wire init_IBUF;
  wire res;
  wire res_IBUF;
  wire tc;
  wire \temp_count[0]_i_1_n_0 ;
  wire \temp_count[1]_i_1_n_0 ;
  wire \temp_count[2]_i_1_n_0 ;
  wire \temp_count[3]_i_1_n_0 ;
  wire \temp_count[4]_i_1_n_0 ;
  wire \temp_count[5]_i_1_n_0 ;
  wire \temp_count[6]_i_1_n_0 ;
  wire \temp_count[7]_i_1_n_0 ;
  wire \temp_count[7]_i_2_n_0 ;
  wire \temp_count[7]_i_3_n_0 ;
  wire \temp_count[7]_i_4_n_0 ;

initial begin
 $sdf_annotate("testacontatore_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \count_OBUF[0]_inst 
       (.I(count_OBUF[0]),
        .O(count[0]));
  OBUF \count_OBUF[1]_inst 
       (.I(count_OBUF[1]),
        .O(count[1]));
  OBUF \count_OBUF[2]_inst 
       (.I(count_OBUF[2]),
        .O(count[2]));
  OBUF \count_OBUF[3]_inst 
       (.I(count_OBUF[3]),
        .O(count[3]));
  OBUF \count_OBUF[4]_inst 
       (.I(count_OBUF[4]),
        .O(count[4]));
  OBUF \count_OBUF[5]_inst 
       (.I(count_OBUF[5]),
        .O(count[5]));
  OBUF \count_OBUF[6]_inst 
       (.I(count_OBUF[6]),
        .O(count[6]));
  OBUF \count_OBUF[7]_inst 
       (.I(count_OBUF[7]),
        .O(count[7]));
  IBUF enable_IBUF_inst
       (.I(enable),
        .O(enable_IBUF));
  IBUF init_IBUF_inst
       (.I(init),
        .O(init_IBUF));
  IBUF res_IBUF_inst
       (.I(res),
        .O(res_IBUF));
  OBUF tc_OBUF_inst
       (.I(1'b1),
        .O(tc));
  LUT2 #(
    .INIT(4'h1)) 
    \temp_count[0]_i_1 
       (.I0(init_IBUF),
        .I1(count_OBUF[0]),
        .O(\temp_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \temp_count[1]_i_1 
       (.I0(count_OBUF[1]),
        .I1(count_OBUF[0]),
        .I2(init_IBUF),
        .O(\temp_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \temp_count[2]_i_1 
       (.I0(count_OBUF[2]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[1]),
        .I3(init_IBUF),
        .O(\temp_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \temp_count[3]_i_1 
       (.I0(count_OBUF[3]),
        .I1(count_OBUF[1]),
        .I2(count_OBUF[0]),
        .I3(count_OBUF[2]),
        .I4(init_IBUF),
        .O(\temp_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \temp_count[4]_i_1 
       (.I0(count_OBUF[4]),
        .I1(count_OBUF[2]),
        .I2(count_OBUF[0]),
        .I3(count_OBUF[1]),
        .I4(count_OBUF[3]),
        .I5(init_IBUF),
        .O(\temp_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \temp_count[5]_i_1 
       (.I0(count_OBUF[5]),
        .I1(\temp_count[7]_i_4_n_0 ),
        .I2(count_OBUF[4]),
        .I3(init_IBUF),
        .O(\temp_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \temp_count[6]_i_1 
       (.I0(count_OBUF[6]),
        .I1(count_OBUF[5]),
        .I2(count_OBUF[4]),
        .I3(\temp_count[7]_i_4_n_0 ),
        .I4(init_IBUF),
        .O(\temp_count[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_count[7]_i_1 
       (.I0(init_IBUF),
        .I1(enable_IBUF),
        .O(\temp_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \temp_count[7]_i_2 
       (.I0(count_OBUF[7]),
        .I1(count_OBUF[4]),
        .I2(count_OBUF[5]),
        .I3(count_OBUF[6]),
        .I4(\temp_count[7]_i_4_n_0 ),
        .I5(init_IBUF),
        .O(\temp_count[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_count[7]_i_3 
       (.I0(res_IBUF),
        .O(\temp_count[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \temp_count[7]_i_4 
       (.I0(count_OBUF[2]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[1]),
        .I3(count_OBUF[3]),
        .O(\temp_count[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_count[7]_i_1_n_0 ),
        .CLR(\temp_count[7]_i_3_n_0 ),
        .D(\temp_count[0]_i_1_n_0 ),
        .Q(count_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_count[7]_i_1_n_0 ),
        .CLR(\temp_count[7]_i_3_n_0 ),
        .D(\temp_count[1]_i_1_n_0 ),
        .Q(count_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_count[7]_i_1_n_0 ),
        .CLR(\temp_count[7]_i_3_n_0 ),
        .D(\temp_count[2]_i_1_n_0 ),
        .Q(count_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_count[7]_i_1_n_0 ),
        .CLR(\temp_count[7]_i_3_n_0 ),
        .D(\temp_count[3]_i_1_n_0 ),
        .Q(count_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_count[7]_i_1_n_0 ),
        .CLR(\temp_count[7]_i_3_n_0 ),
        .D(\temp_count[4]_i_1_n_0 ),
        .Q(count_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_count[7]_i_1_n_0 ),
        .CLR(\temp_count[7]_i_3_n_0 ),
        .D(\temp_count[5]_i_1_n_0 ),
        .Q(count_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_count[7]_i_1_n_0 ),
        .CLR(\temp_count[7]_i_3_n_0 ),
        .D(\temp_count[6]_i_1_n_0 ),
        .Q(count_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_count[7]_i_1_n_0 ),
        .CLR(\temp_count[7]_i_3_n_0 ),
        .D(\temp_count[7]_i_2_n_0 ),
        .Q(count_OBUF[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
