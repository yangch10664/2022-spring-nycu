// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module stereolbm_accel_xFImageClip_720_1280_1_3_0_2_0_1280_127 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in_sobel_x_i_43_dout,
        in_sobel_x_i_43_empty_n,
        in_sobel_x_i_43_read,
        right_clipped6_din,
        right_clipped6_full_n,
        right_clipped6_write,
        height_dout,
        height_empty_n,
        height_read,
        width_dout,
        width_empty_n,
        width_read
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] in_sobel_x_i_43_dout;
input   in_sobel_x_i_43_empty_n;
output   in_sobel_x_i_43_read;
output  [7:0] right_clipped6_din;
input   right_clipped6_full_n;
output   right_clipped6_write;
input  [9:0] height_dout;
input   height_empty_n;
output   height_read;
input  [10:0] width_dout;
input   width_empty_n;
output   width_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_sobel_x_i_43_read;
reg right_clipped6_write;
reg height_read;
reg width_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    height_blk_n;
reg    width_blk_n;
reg   [10:0] width_read_reg_107;
reg   [9:0] height_read_reg_112;
reg   [9:0] i_8_reg_118;
wire    ap_CS_fsm_state2;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_start;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_done;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_idle;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_ready;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_in_sobel_x_i_43_read;
wire   [7:0] grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_right_clipped6_din;
wire    grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_right_clipped6_write;
reg    grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_start_reg;
wire   [0:0] icmp_ln615_fu_84_p2;
wire    ap_CS_fsm_state3;
reg   [9:0] i_fu_48;
wire   [9:0] i_9_fu_89_p2;
reg    ap_block_state1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_start_reg = 1'b0;
end

stereolbm_accel_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_start),
    .ap_done(grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_done),
    .ap_idle(grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_idle),
    .ap_ready(grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_ready),
    .in_sobel_x_i_43_dout(in_sobel_x_i_43_dout),
    .in_sobel_x_i_43_empty_n(in_sobel_x_i_43_empty_n),
    .in_sobel_x_i_43_read(grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_in_sobel_x_i_43_read),
    .right_clipped6_din(grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_right_clipped6_din),
    .right_clipped6_full_n(right_clipped6_full_n),
    .right_clipped6_write(grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_right_clipped6_write),
    .width_load(width_read_reg_107),
    .i(i_8_reg_118),
    .height_load(height_read_reg_112)
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
        end else if (((icmp_ln615_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln615_fu_84_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_start_reg <= 1'b1;
        end else if ((grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_ready == 1'b1)) begin
            grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_48 <= 10'd0;
    end else if (((icmp_ln615_fu_84_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_48 <= i_9_fu_89_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        height_read_reg_112 <= height_dout;
        width_read_reg_107 <= width_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_8_reg_118 <= i_fu_48;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln615_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln615_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_blk_n = height_empty_n;
    end else begin
        height_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_read = 1'b1;
    end else begin
        height_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_sobel_x_i_43_read = grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_in_sobel_x_i_43_read;
    end else begin
        in_sobel_x_i_43_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        right_clipped6_write = grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_right_clipped6_write;
    end else begin
        right_clipped6_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_blk_n = width_empty_n;
    end else begin
        width_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_read = 1'b1;
    end else begin
        width_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln615_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    ap_block_state1 = ((ap_start == 1'b0) | (width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_start = grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_ap_start_reg;

assign i_9_fu_89_p2 = (i_fu_48 + 10'd1);

assign icmp_ln615_fu_84_p2 = ((i_fu_48 == height_read_reg_112) ? 1'b1 : 1'b0);

assign right_clipped6_din = grp_xFImageClip_720_1280_1_3_0_2_0_1280_127_Pipeline_loop_col_clip_fu_64_right_clipped6_din;

endmodule //stereolbm_accel_xFImageClip_720_1280_1_3_0_2_0_1280_127
