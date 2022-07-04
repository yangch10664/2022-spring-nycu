// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="stereolbm_accel_stereolbm_accel,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xck26-sfvc784-2LV-c,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.268500,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=26,HLS_SYN_DSP=0,HLS_SYN_FF=46495,HLS_SYN_LUT=84890,HLS_VERSION=2021_2}" *)

module stereolbm_accel (
        ap_local_block,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        stream_inL_TDATA,
        stream_inR_TDATA,
        stream_inL_TVALID,
        stream_inL_TREADY,
        stream_inR_TVALID,
        stream_inR_TREADY
);

parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

output   ap_local_block;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
input  [15:0] stream_inL_TDATA;
input  [15:0] stream_inR_TDATA;
input   stream_inL_TVALID;
output   stream_inL_TREADY;
input   stream_inR_TVALID;
output   stream_inR_TREADY;

wire   [0:0] ap_local_deadlock;
 reg    ap_rst_n_inv;
wire   [31:0] height;
wire   [31:0] width;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire    Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start;
wire    Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done;
wire    Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_continue;
wire    Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_idle;
wire    Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_ready;
wire   [31:0] Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_0;
wire   [31:0] Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_1;
wire   [31:0] Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_2;
wire   [31:0] Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_3;
wire   [31:0] Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_4;
wire   [31:0] Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_5;
wire    ap_channel_done_imgInputR_cols_c16_channel;
wire    imgInputR_cols_c16_channel_full_n;
reg    ap_sync_reg_channel_write_imgInputR_cols_c16_channel;
wire    ap_sync_channel_write_imgInputR_cols_c16_channel;
wire    ap_channel_done_imgInputR_rows_c15_channel;
wire    imgInputR_rows_c15_channel_full_n;
reg    ap_sync_reg_channel_write_imgInputR_rows_c15_channel;
wire    ap_sync_channel_write_imgInputR_rows_c15_channel;
wire    ap_channel_done_imgInputL_cols_c14_channel;
wire    imgInputL_cols_c14_channel_full_n;
reg    ap_sync_reg_channel_write_imgInputL_cols_c14_channel;
wire    ap_sync_channel_write_imgInputL_cols_c14_channel;
wire    ap_channel_done_imgInputL_rows_c13_channel;
wire    imgInputL_rows_c13_channel_full_n;
reg    ap_sync_reg_channel_write_imgInputL_rows_c13_channel;
wire    ap_sync_channel_write_imgInputL_rows_c13_channel;
wire    ap_channel_done_imgOutput_cols_channel;
wire    imgOutput_cols_channel_full_n;
reg    ap_sync_reg_channel_write_imgOutput_cols_channel;
wire    ap_sync_channel_write_imgOutput_cols_channel;
wire    ap_channel_done_imgOutput_rows_channel;
wire    imgOutput_rows_channel_full_n;
reg    ap_sync_reg_channel_write_imgOutput_rows_channel;
wire    ap_sync_channel_write_imgOutput_rows_channel;
wire    AXIstream2xfMat_0_720_1280_1_U0_ap_start;
wire    AXIstream2xfMat_0_720_1280_1_U0_ap_done;
wire    AXIstream2xfMat_0_720_1280_1_U0_ap_continue;
wire    AXIstream2xfMat_0_720_1280_1_U0_ap_idle;
wire    AXIstream2xfMat_0_720_1280_1_U0_ap_ready;
wire    AXIstream2xfMat_0_720_1280_1_U0_start_out;
wire    AXIstream2xfMat_0_720_1280_1_U0_start_write;
wire    AXIstream2xfMat_0_720_1280_1_U0_stream_inL_TREADY;
wire   [7:0] AXIstream2xfMat_0_720_1280_1_U0_imgInputL_435_din;
wire    AXIstream2xfMat_0_720_1280_1_U0_imgInputL_435_write;
wire   [31:0] AXIstream2xfMat_0_720_1280_1_U0_imgInputL_rows_c_din;
wire    AXIstream2xfMat_0_720_1280_1_U0_imgInputL_rows_c_write;
wire   [31:0] AXIstream2xfMat_0_720_1280_1_U0_imgInputL_cols_c_din;
wire    AXIstream2xfMat_0_720_1280_1_U0_imgInputL_cols_c_write;
wire    AXIstream2xfMat_0_720_1280_1_1_U0_ap_start;
wire    AXIstream2xfMat_0_720_1280_1_1_U0_ap_done;
wire    AXIstream2xfMat_0_720_1280_1_1_U0_ap_continue;
wire    AXIstream2xfMat_0_720_1280_1_1_U0_ap_idle;
wire    AXIstream2xfMat_0_720_1280_1_1_U0_ap_ready;
wire    AXIstream2xfMat_0_720_1280_1_1_U0_stream_inR_TREADY;
wire   [7:0] AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_436_din;
wire    AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_436_write;
wire   [31:0] AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_rows_c_din;
wire    AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_rows_c_write;
wire   [31:0] AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_cols_c_din;
wire    AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_cols_c_write;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_start;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_done;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_continue;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_idle;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_ready;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_left_mat_rows_read;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_left_mat_cols_read;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgInputL_435_read;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_right_mat_rows_read;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_right_mat_cols_read;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgInputR_436_read;
wire   [15:0] StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgOutput_437_din;
wire    StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgOutput_437_write;
wire    xfMat2AXILaser_1_720_1280_1_U0_ap_start;
wire    xfMat2AXILaser_1_720_1280_1_U0_ap_done;
wire    xfMat2AXILaser_1_720_1280_1_U0_ap_continue;
wire    xfMat2AXILaser_1_720_1280_1_U0_ap_idle;
wire    xfMat2AXILaser_1_720_1280_1_U0_ap_ready;
wire    xfMat2AXILaser_1_720_1280_1_U0_start_out;
wire    xfMat2AXILaser_1_720_1280_1_U0_start_write;
wire    xfMat2AXILaser_1_720_1280_1_U0_imgOutput_437_read;
wire   [8:0] xfMat2AXILaser_1_720_1280_1_U0_AXI_Laser_din;
wire    xfMat2AXILaser_1_720_1280_1_U0_AXI_Laser_write;
wire    AXILaser2Cmd_U0_ap_start;
wire    AXILaser2Cmd_U0_ap_done;
wire    AXILaser2Cmd_U0_ap_continue;
wire    AXILaser2Cmd_U0_ap_idle;
wire    AXILaser2Cmd_U0_ap_ready;
wire    AXILaser2Cmd_U0_AXI_Laser_read;
wire   [63:0] AXILaser2Cmd_U0_Cmd;
wire    AXILaser2Cmd_U0_Cmd_ap_vld;
wire   [31:0] imgOutput_rows_channel_dout;
wire    imgOutput_rows_channel_empty_n;
wire   [31:0] imgOutput_cols_channel_dout;
wire    imgOutput_cols_channel_empty_n;
wire   [31:0] imgInputL_rows_c13_channel_dout;
wire    imgInputL_rows_c13_channel_empty_n;
wire   [31:0] imgInputL_cols_c14_channel_dout;
wire    imgInputL_cols_c14_channel_empty_n;
wire   [31:0] imgInputR_rows_c15_channel_dout;
wire    imgInputR_rows_c15_channel_empty_n;
wire   [31:0] imgInputR_cols_c16_channel_dout;
wire    imgInputR_cols_c16_channel_empty_n;
wire    imgInputL_data_full_n;
wire   [7:0] imgInputL_data_dout;
wire    imgInputL_data_empty_n;
wire    imgInputL_rows_c_full_n;
wire   [31:0] imgInputL_rows_c_dout;
wire    imgInputL_rows_c_empty_n;
wire    imgInputL_cols_c_full_n;
wire   [31:0] imgInputL_cols_c_dout;
wire    imgInputL_cols_c_empty_n;
wire    imgInputR_data_full_n;
wire   [7:0] imgInputR_data_dout;
wire    imgInputR_data_empty_n;
wire    imgInputR_rows_c_full_n;
wire   [31:0] imgInputR_rows_c_dout;
wire    imgInputR_rows_c_empty_n;
wire    imgInputR_cols_c_full_n;
wire   [31:0] imgInputR_cols_c_dout;
wire    imgInputR_cols_c_empty_n;
wire    imgOutput_data_full_n;
wire   [15:0] imgOutput_data_dout;
wire    imgOutput_data_empty_n;
wire    AXI_Laser_full_n;
wire   [8:0] AXI_Laser_dout;
wire    AXI_Laser_empty_n;
wire   [0:0] start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_din;
wire    start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_full_n;
wire   [0:0] start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_dout;
wire    start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_empty_n;
wire   [0:0] start_for_AXILaser2Cmd_U0_din;
wire    start_for_AXILaser2Cmd_U0_full_n;
wire   [0:0] start_for_AXILaser2Cmd_U0_dout;
wire    start_for_AXILaser2Cmd_U0_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_imgInputR_cols_c16_channel = 1'b0;
#0 ap_sync_reg_channel_write_imgInputR_rows_c15_channel = 1'b0;
#0 ap_sync_reg_channel_write_imgInputL_cols_c14_channel = 1'b0;
#0 ap_sync_reg_channel_write_imgInputL_rows_c13_channel = 1'b0;
#0 ap_sync_reg_channel_write_imgOutput_cols_channel = 1'b0;
#0 ap_sync_reg_channel_write_imgOutput_rows_channel = 1'b0;
end

stereolbm_accel_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .height(height),
    .width(width),
    .Cmd(AXILaser2Cmd_U0_Cmd),
    .Cmd_ap_vld(AXILaser2Cmd_U0_Cmd_ap_vld),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_local_deadlock(ap_local_deadlock)
);

stereolbm_accel_Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start),
    .ap_done(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done),
    .ap_continue(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_continue),
    .ap_idle(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_idle),
    .ap_ready(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_ready),
    .height(height),
    .width(width),
    .ap_return_0(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_0),
    .ap_return_1(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_1),
    .ap_return_2(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_2),
    .ap_return_3(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_3),
    .ap_return_4(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_4),
    .ap_return_5(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_5)
);

stereolbm_accel_AXIstream2xfMat_0_720_1280_1_s AXIstream2xfMat_0_720_1280_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIstream2xfMat_0_720_1280_1_U0_ap_start),
    .start_full_n(start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_full_n),
    .ap_done(AXIstream2xfMat_0_720_1280_1_U0_ap_done),
    .ap_continue(AXIstream2xfMat_0_720_1280_1_U0_ap_continue),
    .ap_idle(AXIstream2xfMat_0_720_1280_1_U0_ap_idle),
    .ap_ready(AXIstream2xfMat_0_720_1280_1_U0_ap_ready),
    .start_out(AXIstream2xfMat_0_720_1280_1_U0_start_out),
    .start_write(AXIstream2xfMat_0_720_1280_1_U0_start_write),
    .stream_inL_TDATA(stream_inL_TDATA),
    .stream_inL_TVALID(stream_inL_TVALID),
    .stream_inL_TREADY(AXIstream2xfMat_0_720_1280_1_U0_stream_inL_TREADY),
    .p_read(imgInputL_rows_c13_channel_dout),
    .p_read1(imgInputL_cols_c14_channel_dout),
    .imgInputL_435_din(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_435_din),
    .imgInputL_435_full_n(imgInputL_data_full_n),
    .imgInputL_435_write(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_435_write),
    .imgInputL_rows_c_din(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_rows_c_din),
    .imgInputL_rows_c_full_n(imgInputL_rows_c_full_n),
    .imgInputL_rows_c_write(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_rows_c_write),
    .imgInputL_cols_c_din(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_cols_c_din),
    .imgInputL_cols_c_full_n(imgInputL_cols_c_full_n),
    .imgInputL_cols_c_write(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_cols_c_write)
);

stereolbm_accel_AXIstream2xfMat_0_720_1280_1_1 AXIstream2xfMat_0_720_1280_1_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIstream2xfMat_0_720_1280_1_1_U0_ap_start),
    .ap_done(AXIstream2xfMat_0_720_1280_1_1_U0_ap_done),
    .ap_continue(AXIstream2xfMat_0_720_1280_1_1_U0_ap_continue),
    .ap_idle(AXIstream2xfMat_0_720_1280_1_1_U0_ap_idle),
    .ap_ready(AXIstream2xfMat_0_720_1280_1_1_U0_ap_ready),
    .stream_inR_TDATA(stream_inR_TDATA),
    .stream_inR_TVALID(stream_inR_TVALID),
    .stream_inR_TREADY(AXIstream2xfMat_0_720_1280_1_1_U0_stream_inR_TREADY),
    .p_read(imgInputR_rows_c15_channel_dout),
    .p_read1(imgInputR_cols_c16_channel_dout),
    .imgInputR_436_din(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_436_din),
    .imgInputR_436_full_n(imgInputR_data_full_n),
    .imgInputR_436_write(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_436_write),
    .imgInputR_rows_c_din(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_rows_c_din),
    .imgInputR_rows_c_full_n(imgInputR_rows_c_full_n),
    .imgInputR_rows_c_write(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_rows_c_write),
    .imgInputR_cols_c_din(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_cols_c_din),
    .imgInputR_cols_c_full_n(imgInputR_cols_c_full_n),
    .imgInputR_cols_c_write(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_cols_c_write)
);

stereolbm_accel_StereoBM_11_32_32_0_1_720_1280_1_false_s StereoBM_11_32_32_0_1_720_1280_1_false_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_start),
    .ap_done(StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_done),
    .ap_continue(StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_continue),
    .ap_idle(StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_idle),
    .ap_ready(StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_ready),
    .p_left_mat_rows_dout(imgInputL_rows_c_dout),
    .p_left_mat_rows_empty_n(imgInputL_rows_c_empty_n),
    .p_left_mat_rows_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_left_mat_rows_read),
    .p_left_mat_cols_dout(imgInputL_cols_c_dout),
    .p_left_mat_cols_empty_n(imgInputL_cols_c_empty_n),
    .p_left_mat_cols_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_left_mat_cols_read),
    .imgInputL_435_dout(imgInputL_data_dout),
    .imgInputL_435_empty_n(imgInputL_data_empty_n),
    .imgInputL_435_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgInputL_435_read),
    .p_right_mat_rows_dout(imgInputR_rows_c_dout),
    .p_right_mat_rows_empty_n(imgInputR_rows_c_empty_n),
    .p_right_mat_rows_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_right_mat_rows_read),
    .p_right_mat_cols_dout(imgInputR_cols_c_dout),
    .p_right_mat_cols_empty_n(imgInputR_cols_c_empty_n),
    .p_right_mat_cols_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_right_mat_cols_read),
    .imgInputR_436_dout(imgInputR_data_dout),
    .imgInputR_436_empty_n(imgInputR_data_empty_n),
    .imgInputR_436_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgInputR_436_read),
    .imgOutput_437_din(StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgOutput_437_din),
    .imgOutput_437_full_n(imgOutput_data_full_n),
    .imgOutput_437_write(StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgOutput_437_write)
);

stereolbm_accel_xfMat2AXILaser_1_720_1280_1_s xfMat2AXILaser_1_720_1280_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(xfMat2AXILaser_1_720_1280_1_U0_ap_start),
    .start_full_n(start_for_AXILaser2Cmd_U0_full_n),
    .ap_done(xfMat2AXILaser_1_720_1280_1_U0_ap_done),
    .ap_continue(xfMat2AXILaser_1_720_1280_1_U0_ap_continue),
    .ap_idle(xfMat2AXILaser_1_720_1280_1_U0_ap_idle),
    .ap_ready(xfMat2AXILaser_1_720_1280_1_U0_ap_ready),
    .start_out(xfMat2AXILaser_1_720_1280_1_U0_start_out),
    .start_write(xfMat2AXILaser_1_720_1280_1_U0_start_write),
    .p_read(imgOutput_rows_channel_dout),
    .p_read1(imgOutput_cols_channel_dout),
    .imgOutput_437_dout(imgOutput_data_dout),
    .imgOutput_437_empty_n(imgOutput_data_empty_n),
    .imgOutput_437_read(xfMat2AXILaser_1_720_1280_1_U0_imgOutput_437_read),
    .AXI_Laser_din(xfMat2AXILaser_1_720_1280_1_U0_AXI_Laser_din),
    .AXI_Laser_full_n(AXI_Laser_full_n),
    .AXI_Laser_write(xfMat2AXILaser_1_720_1280_1_U0_AXI_Laser_write)
);

stereolbm_accel_AXILaser2Cmd AXILaser2Cmd_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXILaser2Cmd_U0_ap_start),
    .ap_done(AXILaser2Cmd_U0_ap_done),
    .ap_continue(AXILaser2Cmd_U0_ap_continue),
    .ap_idle(AXILaser2Cmd_U0_ap_idle),
    .ap_ready(AXILaser2Cmd_U0_ap_ready),
    .AXI_Laser_dout(AXI_Laser_dout),
    .AXI_Laser_empty_n(AXI_Laser_empty_n),
    .AXI_Laser_read(AXILaser2Cmd_U0_AXI_Laser_read),
    .Cmd(AXILaser2Cmd_U0_Cmd),
    .Cmd_ap_vld(AXILaser2Cmd_U0_Cmd_ap_vld)
);

stereolbm_accel_fifo_w32_d4_S imgOutput_rows_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_0),
    .if_full_n(imgOutput_rows_channel_full_n),
    .if_write(ap_channel_done_imgOutput_rows_channel),
    .if_dout(imgOutput_rows_channel_dout),
    .if_empty_n(imgOutput_rows_channel_empty_n),
    .if_read(xfMat2AXILaser_1_720_1280_1_U0_ap_ready)
);

stereolbm_accel_fifo_w32_d4_S imgOutput_cols_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_1),
    .if_full_n(imgOutput_cols_channel_full_n),
    .if_write(ap_channel_done_imgOutput_cols_channel),
    .if_dout(imgOutput_cols_channel_dout),
    .if_empty_n(imgOutput_cols_channel_empty_n),
    .if_read(xfMat2AXILaser_1_720_1280_1_U0_ap_ready)
);

stereolbm_accel_fifo_w32_d2_S imgInputL_rows_c13_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_2),
    .if_full_n(imgInputL_rows_c13_channel_full_n),
    .if_write(ap_channel_done_imgInputL_rows_c13_channel),
    .if_dout(imgInputL_rows_c13_channel_dout),
    .if_empty_n(imgInputL_rows_c13_channel_empty_n),
    .if_read(AXIstream2xfMat_0_720_1280_1_U0_ap_ready)
);

stereolbm_accel_fifo_w32_d2_S imgInputL_cols_c14_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_3),
    .if_full_n(imgInputL_cols_c14_channel_full_n),
    .if_write(ap_channel_done_imgInputL_cols_c14_channel),
    .if_dout(imgInputL_cols_c14_channel_dout),
    .if_empty_n(imgInputL_cols_c14_channel_empty_n),
    .if_read(AXIstream2xfMat_0_720_1280_1_U0_ap_ready)
);

stereolbm_accel_fifo_w32_d2_S imgInputR_rows_c15_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_4),
    .if_full_n(imgInputR_rows_c15_channel_full_n),
    .if_write(ap_channel_done_imgInputR_rows_c15_channel),
    .if_dout(imgInputR_rows_c15_channel_dout),
    .if_empty_n(imgInputR_rows_c15_channel_empty_n),
    .if_read(AXIstream2xfMat_0_720_1280_1_1_U0_ap_ready)
);

stereolbm_accel_fifo_w32_d2_S imgInputR_cols_c16_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_return_5),
    .if_full_n(imgInputR_cols_c16_channel_full_n),
    .if_write(ap_channel_done_imgInputR_cols_c16_channel),
    .if_dout(imgInputR_cols_c16_channel_dout),
    .if_empty_n(imgInputR_cols_c16_channel_empty_n),
    .if_read(AXIstream2xfMat_0_720_1280_1_1_U0_ap_ready)
);

stereolbm_accel_fifo_w8_d2_S_x imgInputL_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_435_din),
    .if_full_n(imgInputL_data_full_n),
    .if_write(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_435_write),
    .if_dout(imgInputL_data_dout),
    .if_empty_n(imgInputL_data_empty_n),
    .if_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgInputL_435_read)
);

stereolbm_accel_fifo_w32_d2_S imgInputL_rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_rows_c_din),
    .if_full_n(imgInputL_rows_c_full_n),
    .if_write(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_rows_c_write),
    .if_dout(imgInputL_rows_c_dout),
    .if_empty_n(imgInputL_rows_c_empty_n),
    .if_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_left_mat_rows_read)
);

stereolbm_accel_fifo_w32_d2_S imgInputL_cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_cols_c_din),
    .if_full_n(imgInputL_cols_c_full_n),
    .if_write(AXIstream2xfMat_0_720_1280_1_U0_imgInputL_cols_c_write),
    .if_dout(imgInputL_cols_c_dout),
    .if_empty_n(imgInputL_cols_c_empty_n),
    .if_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_left_mat_cols_read)
);

stereolbm_accel_fifo_w8_d2_S_x imgInputR_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_436_din),
    .if_full_n(imgInputR_data_full_n),
    .if_write(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_436_write),
    .if_dout(imgInputR_data_dout),
    .if_empty_n(imgInputR_data_empty_n),
    .if_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgInputR_436_read)
);

stereolbm_accel_fifo_w32_d2_S imgInputR_rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_rows_c_din),
    .if_full_n(imgInputR_rows_c_full_n),
    .if_write(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_rows_c_write),
    .if_dout(imgInputR_rows_c_dout),
    .if_empty_n(imgInputR_rows_c_empty_n),
    .if_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_right_mat_rows_read)
);

stereolbm_accel_fifo_w32_d2_S imgInputR_cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_cols_c_din),
    .if_full_n(imgInputR_cols_c_full_n),
    .if_write(AXIstream2xfMat_0_720_1280_1_1_U0_imgInputR_cols_c_write),
    .if_dout(imgInputR_cols_c_dout),
    .if_empty_n(imgInputR_cols_c_empty_n),
    .if_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_p_right_mat_cols_read)
);

stereolbm_accel_fifo_w16_d2_S_x imgOutput_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgOutput_437_din),
    .if_full_n(imgOutput_data_full_n),
    .if_write(StereoBM_11_32_32_0_1_720_1280_1_false_U0_imgOutput_437_write),
    .if_dout(imgOutput_data_dout),
    .if_empty_n(imgOutput_data_empty_n),
    .if_read(xfMat2AXILaser_1_720_1280_1_U0_imgOutput_437_read)
);

stereolbm_accel_fifo_w9_d2_S AXI_Laser_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xfMat2AXILaser_1_720_1280_1_U0_AXI_Laser_din),
    .if_full_n(AXI_Laser_full_n),
    .if_write(xfMat2AXILaser_1_720_1280_1_U0_AXI_Laser_write),
    .if_dout(AXI_Laser_dout),
    .if_empty_n(AXI_Laser_empty_n),
    .if_read(AXILaser2Cmd_U0_AXI_Laser_read)
);

stereolbm_accel_start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0 start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_din),
    .if_full_n(start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_full_n),
    .if_write(AXIstream2xfMat_0_720_1280_1_U0_start_write),
    .if_dout(start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_dout),
    .if_empty_n(start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_empty_n),
    .if_read(StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_ready)
);

stereolbm_accel_start_for_AXILaser2Cmd_U0 start_for_AXILaser2Cmd_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_AXILaser2Cmd_U0_din),
    .if_full_n(start_for_AXILaser2Cmd_U0_full_n),
    .if_write(xfMat2AXILaser_1_720_1280_1_U0_start_write),
    .if_dout(start_for_AXILaser2Cmd_U0_dout),
    .if_empty_n(start_for_AXILaser2Cmd_U0_empty_n),
    .if_read(AXILaser2Cmd_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_imgInputL_cols_c14_channel <= 1'b0;
    end else begin
        if (((Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_imgInputL_cols_c14_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_imgInputL_cols_c14_channel <= ap_sync_channel_write_imgInputL_cols_c14_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_imgInputL_rows_c13_channel <= 1'b0;
    end else begin
        if (((Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_imgInputL_rows_c13_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_imgInputL_rows_c13_channel <= ap_sync_channel_write_imgInputL_rows_c13_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_imgInputR_cols_c16_channel <= 1'b0;
    end else begin
        if (((Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_imgInputR_cols_c16_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_imgInputR_cols_c16_channel <= ap_sync_channel_write_imgInputR_cols_c16_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_imgInputR_rows_c15_channel <= 1'b0;
    end else begin
        if (((Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_imgInputR_rows_c15_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_imgInputR_rows_c15_channel <= ap_sync_channel_write_imgInputR_rows_c15_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_imgOutput_cols_channel <= 1'b0;
    end else begin
        if (((Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_imgOutput_cols_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_imgOutput_cols_channel <= ap_sync_channel_write_imgOutput_cols_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_imgOutput_rows_channel <= 1'b0;
    end else begin
        if (((Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_imgOutput_rows_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_imgOutput_rows_channel <= ap_sync_channel_write_imgOutput_rows_channel;
        end
    end
end

assign AXILaser2Cmd_U0_ap_continue = 1'b1;

assign AXILaser2Cmd_U0_ap_start = start_for_AXILaser2Cmd_U0_empty_n;

assign AXIstream2xfMat_0_720_1280_1_1_U0_ap_continue = 1'b1;

assign AXIstream2xfMat_0_720_1280_1_1_U0_ap_start = (imgInputR_rows_c15_channel_empty_n & imgInputR_cols_c16_channel_empty_n);

assign AXIstream2xfMat_0_720_1280_1_U0_ap_continue = 1'b1;

assign AXIstream2xfMat_0_720_1280_1_U0_ap_start = (imgInputL_rows_c13_channel_empty_n & imgInputL_cols_c14_channel_empty_n);

assign Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_continue = (ap_sync_channel_write_imgOutput_rows_channel & ap_sync_channel_write_imgOutput_cols_channel & ap_sync_channel_write_imgInputR_rows_c15_channel & ap_sync_channel_write_imgInputR_cols_c16_channel & ap_sync_channel_write_imgInputL_rows_c13_channel & ap_sync_channel_write_imgInputL_cols_c14_channel);

assign Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_start = ap_start;

assign StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_continue = 1'b1;

assign StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_start = start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_empty_n;

assign ap_channel_done_imgInputL_cols_c14_channel = ((ap_sync_reg_channel_write_imgInputL_cols_c14_channel ^ 1'b1) & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done);

assign ap_channel_done_imgInputL_rows_c13_channel = ((ap_sync_reg_channel_write_imgInputL_rows_c13_channel ^ 1'b1) & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done);

assign ap_channel_done_imgInputR_cols_c16_channel = ((ap_sync_reg_channel_write_imgInputR_cols_c16_channel ^ 1'b1) & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done);

assign ap_channel_done_imgInputR_rows_c15_channel = ((ap_sync_reg_channel_write_imgInputR_rows_c15_channel ^ 1'b1) & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done);

assign ap_channel_done_imgOutput_cols_channel = ((ap_sync_reg_channel_write_imgOutput_cols_channel ^ 1'b1) & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done);

assign ap_channel_done_imgOutput_rows_channel = ((ap_sync_reg_channel_write_imgOutput_rows_channel ^ 1'b1) & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_done);

assign ap_done = AXILaser2Cmd_U0_ap_done;

assign ap_idle = (xfMat2AXILaser_1_720_1280_1_U0_ap_idle & (imgInputR_cols_c16_channel_empty_n ^ 1'b1) & (imgInputR_rows_c15_channel_empty_n ^ 1'b1) & (imgInputL_cols_c14_channel_empty_n ^ 1'b1) & (imgInputL_rows_c13_channel_empty_n ^ 1'b1) & (imgOutput_cols_channel_empty_n ^ 1'b1) & (imgOutput_rows_channel_empty_n ^ 1'b1) & StereoBM_11_32_32_0_1_720_1280_1_false_U0_ap_idle & Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_idle & AXIstream2xfMat_0_720_1280_1_U0_ap_idle & AXIstream2xfMat_0_720_1280_1_1_U0_ap_idle & AXILaser2Cmd_U0_ap_idle);



assign ap_ready = Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_channel_write_imgInputL_cols_c14_channel = ((imgInputL_cols_c14_channel_full_n & ap_channel_done_imgInputL_cols_c14_channel) | ap_sync_reg_channel_write_imgInputL_cols_c14_channel);

assign ap_sync_channel_write_imgInputL_rows_c13_channel = ((imgInputL_rows_c13_channel_full_n & ap_channel_done_imgInputL_rows_c13_channel) | ap_sync_reg_channel_write_imgInputL_rows_c13_channel);

assign ap_sync_channel_write_imgInputR_cols_c16_channel = ((imgInputR_cols_c16_channel_full_n & ap_channel_done_imgInputR_cols_c16_channel) | ap_sync_reg_channel_write_imgInputR_cols_c16_channel);

assign ap_sync_channel_write_imgInputR_rows_c15_channel = ((imgInputR_rows_c15_channel_full_n & ap_channel_done_imgInputR_rows_c15_channel) | ap_sync_reg_channel_write_imgInputR_rows_c15_channel);

assign ap_sync_channel_write_imgOutput_cols_channel = ((imgOutput_cols_channel_full_n & ap_channel_done_imgOutput_cols_channel) | ap_sync_reg_channel_write_imgOutput_cols_channel);

assign ap_sync_channel_write_imgOutput_rows_channel = ((imgOutput_rows_channel_full_n & ap_channel_done_imgOutput_rows_channel) | ap_sync_reg_channel_write_imgOutput_rows_channel);

assign start_for_AXILaser2Cmd_U0_din = 1'b1;

assign start_for_StereoBM_11_32_32_0_1_720_1280_1_false_U0_din = 1'b1;

assign stream_inL_TREADY = AXIstream2xfMat_0_720_1280_1_U0_stream_inL_TREADY;

assign stream_inR_TREADY = AXIstream2xfMat_0_720_1280_1_1_U0_stream_inR_TREADY;

assign xfMat2AXILaser_1_720_1280_1_U0_ap_continue = 1'b1;

assign xfMat2AXILaser_1_720_1280_1_U0_ap_start = (imgOutput_rows_channel_empty_n & imgOutput_cols_channel_empty_n);


reg find_df_deadlock = 0;
assign ap_local_deadlock = find_df_deadlock;
// synthesis translate_off
`include "stereolbm_accel_hls_deadlock_detector.vh"
// synthesis translate_on

reg find_kernel_block = 0;
assign ap_local_block = find_kernel_block | find_df_deadlock;
// synthesis translate_off
`include "stereolbm_accel_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //stereolbm_accel
