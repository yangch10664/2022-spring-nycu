// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module stereolbm_accel_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        imgInputR_436_dout,
        imgInputR_436_empty_n,
        imgInputR_436_read,
        in_sobel_x_i_43_din,
        in_sobel_x_i_43_full_n,
        in_sobel_x_i_43_write,
        in_sobel_y_i_44_din,
        in_sobel_y_i_44_full_n,
        in_sobel_y_i_44_write,
        img_height,
        img_width
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] imgInputR_436_dout;
input   imgInputR_436_empty_n;
output   imgInputR_436_read;
output  [15:0] in_sobel_x_i_43_din;
input   in_sobel_x_i_43_full_n;
output   in_sobel_x_i_43_write;
output  [15:0] in_sobel_y_i_44_din;
input   in_sobel_y_i_44_full_n;
output   in_sobel_y_i_44_write;
input  [15:0] img_height;
input  [15:0] img_width;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg imgInputR_436_read;
reg[15:0] in_sobel_x_i_43_din;
reg in_sobel_x_i_43_write;
reg[15:0] in_sobel_y_i_44_din;
reg in_sobel_y_i_44_write;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in_sobel_x_i_43_blk_n;
wire    ap_CS_fsm_state7;
reg    in_sobel_y_i_44_blk_n;
wire   [16:0] op2_assign_fu_219_p2;
reg   [16:0] op2_assign_reg_506;
wire    ap_CS_fsm_state4;
reg   [1:0] bottom_V_reg_517;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln1072_fu_232_p2;
reg   [1:0] mid_V_reg_522;
reg   [1:0] tp_V_reg_527;
wire   [0:0] cmp_i_i517_i_fu_343_p2;
reg   [0:0] cmp_i_i517_i_reg_532;
wire   [1:0] empty_95_fu_349_p1;
reg   [1:0] empty_95_reg_537;
reg    buf_V_ce0;
wire   [7:0] buf_V_q0;
reg   [10:0] buf_V_address1;
reg    buf_V_ce1;
reg    buf_V_we1;
reg   [7:0] buf_V_d1;
reg    buf_V_1_ce0;
wire   [7:0] buf_V_1_q0;
reg   [10:0] buf_V_1_address1;
reg    buf_V_1_ce1;
reg    buf_V_1_we1;
reg   [7:0] buf_V_1_d1;
wire   [7:0] buf_V_2_q0;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_start;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_done;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_idle;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_ready;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_imgInputR_436_read;
wire   [10:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_address1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_ce1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_we1;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_d1;
wire   [10:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_address1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_ce1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_we1;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_d1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_start;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_done;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_idle;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_ready;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_imgInputR_436_read;
wire   [15:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_x_i_43_din;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_x_i_43_write;
wire   [15:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_y_i_44_din;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_y_i_44_write;
wire   [10:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_address0;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_ce0;
wire   [10:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_address1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_ce1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_we1;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_d1;
wire   [10:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_address0;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_ce0;
wire   [10:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_address1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_ce1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_we1;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_d1;
wire   [10:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_address0;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_ce0;
wire   [10:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_address1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_ce1;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_we1;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_d1;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf3_V_1_out;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf3_V_1_out_ap_vld;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_17_out;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_17_out_ap_vld;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_16_out;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_16_out_ap_vld;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf1_V_1_out;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf1_V_1_out_ap_vld;
wire   [7:0] grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_out;
wire    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_out_ap_vld;
wire    tmp_xFGradientX3x3_0_3_s_fu_181_ap_ready;
wire   [10:0] tmp_xFGradientX3x3_0_3_s_fu_181_ap_return;
wire    tmp_30_xFGradientY3x3_0_3_s_fu_194_ap_ready;
wire   [10:0] tmp_30_xFGradientY3x3_0_3_s_fu_194_ap_return;
reg    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [12:0] row_ind_V_fu_70;
wire   [12:0] row_ind_V_2_fu_366_p3;
wire   [12:0] row_ind_V_load_1_load_fu_237_p1;
reg   [12:0] row_V_fu_74;
wire   [12:0] row_V_3_fu_374_p2;
reg   [1:0] bottom_fu_78;
wire   [1:0] bottom_1_fu_289_p3;
reg   [1:0] ap_sig_allocacmp_bottom_V;
reg   [1:0] mid_fu_82;
wire   [1:0] mid_1_fu_297_p3;
reg   [1:0] ap_sig_allocacmp_mid_V;
reg   [1:0] tp_fu_86;
wire   [1:0] tp_1_fu_305_p3;
reg   [1:0] ap_sig_allocacmp_tp_V;
wire  signed [15:0] sext_ln413_fu_412_p1;
reg    ap_block_state7;
wire  signed [15:0] sext_ln413_1_fu_417_p1;
wire   [16:0] img_height_cast_fu_216_p1;
wire   [16:0] zext_ln1072_fu_228_p1;
wire   [0:0] icmp_ln1064_fu_283_p2;
wire   [15:0] zext_ln1072_1_fu_240_p1;
wire   [12:0] row_ind_V_1_fu_354_p2;
wire   [0:0] icmp_ln1064_1_fu_360_p2;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_start_reg = 1'b0;
#0 grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_start_reg = 1'b0;
end

stereolbm_accel_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_s_buf_V_RAM_S2P_BRAM_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 1280 ),
    .AddressWidth( 11 ))
buf_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_address0),
    .ce0(buf_V_ce0),
    .q0(buf_V_q0),
    .address1(buf_V_address1),
    .ce1(buf_V_ce1),
    .we1(buf_V_we1),
    .d1(buf_V_d1)
);

stereolbm_accel_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_s_buf_V_RAM_S2P_BRAM_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 1280 ),
    .AddressWidth( 11 ))
buf_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_address0),
    .ce0(buf_V_1_ce0),
    .q0(buf_V_1_q0),
    .address1(buf_V_1_address1),
    .ce1(buf_V_1_ce1),
    .we1(buf_V_1_we1),
    .d1(buf_V_1_d1)
);

stereolbm_accel_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_s_buf_V_RAM_S2P_BRAM_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 1280 ),
    .AddressWidth( 11 ))
buf_V_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_address0),
    .ce0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_ce0),
    .q0(buf_V_2_q0),
    .address1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_address1),
    .ce1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_ce1),
    .we1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_we1),
    .d1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_d1)
);

stereolbm_accel_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_start),
    .ap_done(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_done),
    .ap_idle(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_idle),
    .ap_ready(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_ready),
    .imgInputR_436_dout(imgInputR_436_dout),
    .imgInputR_436_empty_n(imgInputR_436_empty_n),
    .imgInputR_436_read(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_imgInputR_436_read),
    .img_width(img_width),
    .buf_V_address1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_address1),
    .buf_V_ce1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_ce1),
    .buf_V_we1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_we1),
    .buf_V_d1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_d1),
    .buf_V_1_address1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_address1),
    .buf_V_1_ce1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_ce1),
    .buf_V_1_we1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_we1),
    .buf_V_1_d1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_d1)
);

stereolbm_accel_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_start),
    .ap_done(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_done),
    .ap_idle(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_idle),
    .ap_ready(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_ready),
    .imgInputR_436_dout(imgInputR_436_dout),
    .imgInputR_436_empty_n(imgInputR_436_empty_n),
    .imgInputR_436_read(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_imgInputR_436_read),
    .in_sobel_x_i_43_din(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_x_i_43_din),
    .in_sobel_x_i_43_full_n(in_sobel_x_i_43_full_n),
    .in_sobel_x_i_43_write(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_x_i_43_write),
    .in_sobel_y_i_44_din(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_y_i_44_din),
    .in_sobel_y_i_44_full_n(in_sobel_y_i_44_full_n),
    .in_sobel_y_i_44_write(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_y_i_44_write),
    .img_width(img_width),
    .buf_V_address0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_address0),
    .buf_V_ce0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_ce0),
    .buf_V_q0(buf_V_q0),
    .buf_V_address1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_address1),
    .buf_V_ce1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_ce1),
    .buf_V_we1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_we1),
    .buf_V_d1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_d1),
    .buf_V_1_address0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_address0),
    .buf_V_1_ce0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_ce0),
    .buf_V_1_q0(buf_V_1_q0),
    .buf_V_1_address1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_address1),
    .buf_V_1_ce1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_ce1),
    .buf_V_1_we1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_we1),
    .buf_V_1_d1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_d1),
    .buf_V_2_address0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_address0),
    .buf_V_2_ce0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_ce0),
    .buf_V_2_q0(buf_V_2_q0),
    .buf_V_2_address1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_address1),
    .buf_V_2_ce1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_ce1),
    .buf_V_2_we1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_we1),
    .buf_V_2_d1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_2_d1),
    .tp_V(tp_V_reg_527),
    .mid_V(mid_V_reg_522),
    .bottom_V(bottom_V_reg_517),
    .row_ind_V_cast(empty_95_reg_537),
    .cmp_i_i517_i(cmp_i_i517_i_reg_532),
    .src_buf3_V_1_out(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf3_V_1_out),
    .src_buf3_V_1_out_ap_vld(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf3_V_1_out_ap_vld),
    .p_Val2_17_out(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_17_out),
    .p_Val2_17_out_ap_vld(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_17_out_ap_vld),
    .p_Val2_16_out(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_16_out),
    .p_Val2_16_out_ap_vld(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_16_out_ap_vld),
    .src_buf1_V_1_out(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf1_V_1_out),
    .src_buf1_V_1_out_ap_vld(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf1_V_1_out_ap_vld),
    .p_Val2_out(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_out),
    .p_Val2_out_ap_vld(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_out_ap_vld)
);

stereolbm_accel_xFGradientX3x3_0_3_s tmp_xFGradientX3x3_0_3_s_fu_181(
    .ap_ready(tmp_xFGradientX3x3_0_3_s_fu_181_ap_ready),
    .t0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_out),
    .t2(8'd0),
    .m0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_16_out),
    .m2(8'd0),
    .b0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_17_out),
    .b2(8'd0),
    .ap_return(tmp_xFGradientX3x3_0_3_s_fu_181_ap_return)
);

stereolbm_accel_xFGradientY3x3_0_3_s tmp_30_xFGradientY3x3_0_3_s_fu_194(
    .ap_ready(tmp_30_xFGradientY3x3_0_3_s_fu_194_ap_ready),
    .t0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_out),
    .t1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf1_V_1_out),
    .t2(8'd0),
    .b0(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_p_Val2_17_out),
    .b1(grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_src_buf3_V_1_out),
    .b2(8'd0),
    .ap_return(tmp_30_xFGradientY3x3_0_3_s_fu_194_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_start_reg <= 1'b1;
        end else if ((grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_ready == 1'b1)) begin
            grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_start_reg <= 1'b1;
        end else if ((grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_ready == 1'b1)) begin
            grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        if ((~(row_ind_V_load_1_load_fu_237_p1 == 13'd2) & ~(row_ind_V_load_1_load_fu_237_p1 == 13'd0))) begin
            bottom_fu_78 <= bottom_1_fu_289_p3;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd2)) begin
            bottom_fu_78 <= 2'd2;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd0)) begin
            bottom_fu_78 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        if ((~(row_ind_V_load_1_load_fu_237_p1 == 13'd2) & ~(row_ind_V_load_1_load_fu_237_p1 == 13'd0))) begin
            mid_fu_82 <= mid_1_fu_297_p3;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd2)) begin
            mid_fu_82 <= 2'd1;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd0)) begin
            mid_fu_82 <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        row_V_fu_74 <= 13'd1;
    end else if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        row_V_fu_74 <= row_V_3_fu_374_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        row_ind_V_fu_70 <= 13'd2;
    end else if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        row_ind_V_fu_70 <= row_ind_V_2_fu_366_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        if ((~(row_ind_V_load_1_load_fu_237_p1 == 13'd2) & ~(row_ind_V_load_1_load_fu_237_p1 == 13'd0))) begin
            tp_fu_86 <= tp_1_fu_305_p3;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd2)) begin
            tp_fu_86 <= 2'd0;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd0)) begin
            tp_fu_86 <= 2'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        bottom_V_reg_517 <= ap_sig_allocacmp_bottom_V;
        cmp_i_i517_i_reg_532 <= cmp_i_i517_i_fu_343_p2;
        empty_95_reg_537 <= empty_95_fu_349_p1;
        mid_V_reg_522 <= ap_sig_allocacmp_mid_V;
        tp_V_reg_527 <= ap_sig_allocacmp_tp_V;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        op2_assign_reg_506 <= op2_assign_fu_219_p2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if (((in_sobel_y_i_44_full_n == 1'b0) | (in_sobel_x_i_43_full_n == 1'b0))) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln1072_fu_232_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1072_fu_232_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        if ((~(row_ind_V_load_1_load_fu_237_p1 == 13'd2) & ~(row_ind_V_load_1_load_fu_237_p1 == 13'd0))) begin
            ap_sig_allocacmp_bottom_V = bottom_1_fu_289_p3;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd2)) begin
            ap_sig_allocacmp_bottom_V = 2'd2;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd0)) begin
            ap_sig_allocacmp_bottom_V = 2'd0;
        end else begin
            ap_sig_allocacmp_bottom_V = bottom_fu_78;
        end
    end else begin
        ap_sig_allocacmp_bottom_V = bottom_fu_78;
    end
end

always @ (*) begin
    if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        if ((~(row_ind_V_load_1_load_fu_237_p1 == 13'd2) & ~(row_ind_V_load_1_load_fu_237_p1 == 13'd0))) begin
            ap_sig_allocacmp_mid_V = mid_1_fu_297_p3;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd2)) begin
            ap_sig_allocacmp_mid_V = 2'd1;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd0)) begin
            ap_sig_allocacmp_mid_V = 2'd2;
        end else begin
            ap_sig_allocacmp_mid_V = mid_fu_82;
        end
    end else begin
        ap_sig_allocacmp_mid_V = mid_fu_82;
    end
end

always @ (*) begin
    if (((icmp_ln1072_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        if ((~(row_ind_V_load_1_load_fu_237_p1 == 13'd2) & ~(row_ind_V_load_1_load_fu_237_p1 == 13'd0))) begin
            ap_sig_allocacmp_tp_V = tp_1_fu_305_p3;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd2)) begin
            ap_sig_allocacmp_tp_V = 2'd0;
        end else if ((row_ind_V_load_1_load_fu_237_p1 == 13'd0)) begin
            ap_sig_allocacmp_tp_V = 2'd1;
        end else begin
            ap_sig_allocacmp_tp_V = tp_fu_86;
        end
    end else begin
        ap_sig_allocacmp_tp_V = tp_fu_86;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_1_address1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_1_address1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_address1;
    end else begin
        buf_V_1_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_1_ce0 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_ce0;
    end else begin
        buf_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_1_ce1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_1_ce1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_ce1;
    end else begin
        buf_V_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_1_d1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_1_d1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_d1;
    end else begin
        buf_V_1_d1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_1_we1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_1_we1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_1_we1;
    end else begin
        buf_V_1_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_address1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_address1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_address1;
    end else begin
        buf_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_ce0 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_ce0;
    end else begin
        buf_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_ce1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_ce1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_ce1;
    end else begin
        buf_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_d1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_d1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_d1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_d1;
    end else begin
        buf_V_d1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_we1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_buf_V_we1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_we1 = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_buf_V_we1;
    end else begin
        buf_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        imgInputR_436_read = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_imgInputR_436_read;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        imgInputR_436_read = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_imgInputR_436_read;
    end else begin
        imgInputR_436_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        in_sobel_x_i_43_blk_n = in_sobel_x_i_43_full_n;
    end else begin
        in_sobel_x_i_43_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((in_sobel_y_i_44_full_n == 1'b0) | (in_sobel_x_i_43_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        in_sobel_x_i_43_din = sext_ln413_fu_412_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        in_sobel_x_i_43_din = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_x_i_43_din;
    end else begin
        in_sobel_x_i_43_din = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_x_i_43_din;
    end
end

always @ (*) begin
    if ((~((in_sobel_y_i_44_full_n == 1'b0) | (in_sobel_x_i_43_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        in_sobel_x_i_43_write = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        in_sobel_x_i_43_write = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_x_i_43_write;
    end else begin
        in_sobel_x_i_43_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        in_sobel_y_i_44_blk_n = in_sobel_y_i_44_full_n;
    end else begin
        in_sobel_y_i_44_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((in_sobel_y_i_44_full_n == 1'b0) | (in_sobel_x_i_43_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        in_sobel_y_i_44_din = sext_ln413_1_fu_417_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        in_sobel_y_i_44_din = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_y_i_44_din;
    end else begin
        in_sobel_y_i_44_din = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_y_i_44_din;
    end
end

always @ (*) begin
    if ((~((in_sobel_y_i_44_full_n == 1'b0) | (in_sobel_x_i_43_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        in_sobel_y_i_44_write = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        in_sobel_y_i_44_write = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_in_sobel_y_i_44_write;
    end else begin
        in_sobel_y_i_44_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln1072_fu_232_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if ((~((in_sobel_y_i_44_full_n == 1'b0) | (in_sobel_x_i_43_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state7 = ((in_sobel_y_i_44_full_n == 1'b0) | (in_sobel_x_i_43_full_n == 1'b0));
end

assign bottom_1_fu_289_p3 = ((icmp_ln1064_fu_283_p2[0:0] == 1'b1) ? 2'd1 : bottom_fu_78);

assign cmp_i_i517_i_fu_343_p2 = ((zext_ln1072_1_fu_240_p1 < img_height) ? 1'b1 : 1'b0);

assign empty_95_fu_349_p1 = row_ind_V_fu_70[1:0];

assign grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_start = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148_ap_start_reg;

assign grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_start = grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157_ap_start_reg;

assign icmp_ln1064_1_fu_360_p2 = ((row_ind_V_1_fu_354_p2 == 13'd3) ? 1'b1 : 1'b0);

assign icmp_ln1064_fu_283_p2 = ((row_ind_V_fu_70 == 13'd1) ? 1'b1 : 1'b0);

assign icmp_ln1072_fu_232_p2 = ((zext_ln1072_fu_228_p1 < op2_assign_reg_506) ? 1'b1 : 1'b0);

assign img_height_cast_fu_216_p1 = img_height;

assign mid_1_fu_297_p3 = ((icmp_ln1064_fu_283_p2[0:0] == 1'b1) ? 2'd0 : mid_fu_82);

assign op2_assign_fu_219_p2 = (img_height_cast_fu_216_p1 + 17'd1);

assign row_V_3_fu_374_p2 = (row_V_fu_74 + 13'd1);

assign row_ind_V_1_fu_354_p2 = (row_ind_V_fu_70 + 13'd1);

assign row_ind_V_2_fu_366_p3 = ((icmp_ln1064_1_fu_360_p2[0:0] == 1'b1) ? 13'd0 : row_ind_V_1_fu_354_p2);

assign row_ind_V_load_1_load_fu_237_p1 = row_ind_V_fu_70;

assign sext_ln413_1_fu_417_p1 = $signed(tmp_30_xFGradientY3x3_0_3_s_fu_194_ap_return);

assign sext_ln413_fu_412_p1 = $signed(tmp_xFGradientX3x3_0_3_s_fu_181_ap_return);

assign tp_1_fu_305_p3 = ((icmp_ln1064_fu_283_p2[0:0] == 1'b1) ? 2'd2 : tp_fu_86);

assign zext_ln1072_1_fu_240_p1 = row_V_fu_74;

assign zext_ln1072_fu_228_p1 = row_V_fu_74;

endmodule //stereolbm_accel_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_s
