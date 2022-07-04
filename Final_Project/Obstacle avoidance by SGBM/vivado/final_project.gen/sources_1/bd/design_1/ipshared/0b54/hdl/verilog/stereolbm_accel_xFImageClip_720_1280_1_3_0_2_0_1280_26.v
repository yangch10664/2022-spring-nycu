// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module stereolbm_accel_xFImageClip_720_1280_1_3_0_2_0_1280_26 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        in_sobel_x_i3_41_dout,
        in_sobel_x_i3_41_empty_n,
        in_sobel_x_i3_41_read,
        left_clipped5_din,
        left_clipped5_full_n,
        left_clipped5_write,
        height_dout,
        height_empty_n,
        height_read,
        width_dout,
        width_empty_n,
        width_read,
        height_c_din,
        height_c_full_n,
        height_c_write,
        width_c_din,
        width_c_full_n,
        width_c_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [15:0] in_sobel_x_i3_41_dout;
input   in_sobel_x_i3_41_empty_n;
output   in_sobel_x_i3_41_read;
output  [7:0] left_clipped5_din;
input   left_clipped5_full_n;
output   left_clipped5_write;
input  [9:0] height_dout;
input   height_empty_n;
output   height_read;
input  [10:0] width_dout;
input   width_empty_n;
output   width_read;
output  [9:0] height_c_din;
input   height_c_full_n;
output   height_c_write;
output  [10:0] width_c_din;
input   width_c_full_n;
output   width_c_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg in_sobel_x_i3_41_read;
reg left_clipped5_write;
reg height_read;
reg width_read;
reg height_c_write;
reg width_c_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    height_blk_n;
reg    width_blk_n;
reg    height_c_blk_n;
reg    width_c_blk_n;
reg   [10:0] width_read_reg_131;
reg   [9:0] height_read_reg_136;
reg   [9:0] i_6_reg_142;
wire    ap_CS_fsm_state2;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_start;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_done;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_idle;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_ready;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_in_sobel_x_i3_41_read;
wire   [7:0] grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_left_clipped5_din;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_left_clipped5_write;
reg    grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_start_reg;
wire   [0:0] icmp_ln615_fu_108_p2;
wire    ap_CS_fsm_state3;
reg   [9:0] i_fu_56;
wire   [9:0] i_7_fu_113_p2;
reg    ap_block_state1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_start_reg = 1'b0;
end

stereolbm_accel_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_start),
    .ap_done(grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_done),
    .ap_idle(grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_idle),
    .ap_ready(grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_ready),
    .in_sobel_x_i3_41_dout(in_sobel_x_i3_41_dout),
    .in_sobel_x_i3_41_empty_n(in_sobel_x_i3_41_empty_n),
    .in_sobel_x_i3_41_read(grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_in_sobel_x_i3_41_read),
    .left_clipped5_din(grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_left_clipped5_din),
    .left_clipped5_full_n(left_clipped5_full_n),
    .left_clipped5_write(grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_left_clipped5_write),
    .width_load(width_read_reg_131),
    .i(i_6_reg_142),
    .height_load(height_read_reg_136)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln615_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln615_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_ready == 1'b1)) begin
            grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_56 <= 10'd0;
    end else if (((icmp_ln615_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_56 <= i_7_fu_113_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        height_read_reg_136 <= height_dout;
        width_read_reg_131 <= width_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_6_reg_142 <= i_fu_56;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln615_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_blk_n = height_empty_n;
    end else begin
        height_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_c_blk_n = height_c_full_n;
    end else begin
        height_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_c_write = 1'b1;
    end else begin
        height_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_read = 1'b1;
    end else begin
        height_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_sobel_x_i3_41_read = grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_in_sobel_x_i3_41_read;
    end else begin
        in_sobel_x_i3_41_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln615_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        left_clipped5_write = grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_left_clipped5_write;
    end else begin
        left_clipped5_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_blk_n = width_empty_n;
    end else begin
        width_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_c_blk_n = width_c_full_n;
    end else begin
        width_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_c_write = 1'b1;
    end else begin
        width_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_read = 1'b1;
    end else begin
        width_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln615_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
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

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_start = grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_ap_start_reg;

assign height_c_din = height_dout;

assign i_7_fu_113_p2 = (i_fu_56 + 10'd1);

assign icmp_ln615_fu_108_p2 = ((i_fu_56 == height_read_reg_136) ? 1'b1 : 1'b0);

assign left_clipped5_din = grp_xFImageClip_720_1280_1_3_0_2_0_1280_26_Pipeline_loop_col_clip_fu_88_left_clipped5_din;

assign start_out = real_start;

assign width_c_din = width_dout;

endmodule //stereolbm_accel_xFImageClip_720_1280_1_3_0_2_0_1280_26
