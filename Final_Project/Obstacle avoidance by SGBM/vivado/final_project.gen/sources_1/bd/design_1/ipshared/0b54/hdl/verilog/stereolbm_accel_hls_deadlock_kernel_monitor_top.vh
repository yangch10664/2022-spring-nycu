
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [1:0] axis_block_sigs;
wire [20:0] inst_idle_sigs;
wire [15:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AXIstream2xfMat_0_720_1280_1_U0.grp_AXIstream2xfMat_0_720_1280_1_Pipeline_loop_col_axi2mat_fu_90.stream_inL_TDATA_blk_n;
assign axis_block_sigs[1] = ~AXIstream2xfMat_0_720_1280_1_1_U0.grp_AXIstream2xfMat_0_720_1280_1_1_Pipeline_loop_col_axi2mat_fu_90.stream_inR_TDATA_blk_n;

assign inst_idle_sigs[0] = Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0.ap_idle;
assign inst_block_sigs[0] = (Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0.ap_done & ~Block_ZN2xf2cv3MatILi0ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc_U0.ap_continue);
assign inst_idle_sigs[1] = AXIstream2xfMat_0_720_1280_1_U0.ap_idle;
assign inst_block_sigs[1] = (AXIstream2xfMat_0_720_1280_1_U0.ap_done & ~AXIstream2xfMat_0_720_1280_1_U0.ap_continue) | ~AXIstream2xfMat_0_720_1280_1_U0.grp_AXIstream2xfMat_0_720_1280_1_Pipeline_loop_col_axi2mat_fu_90.imgInputL_435_blk_n | ~AXIstream2xfMat_0_720_1280_1_U0.imgInputL_rows_c_blk_n | ~AXIstream2xfMat_0_720_1280_1_U0.imgInputL_cols_c_blk_n;
assign inst_idle_sigs[2] = AXIstream2xfMat_0_720_1280_1_1_U0.ap_idle;
assign inst_block_sigs[2] = (AXIstream2xfMat_0_720_1280_1_1_U0.ap_done & ~AXIstream2xfMat_0_720_1280_1_1_U0.ap_continue) | ~AXIstream2xfMat_0_720_1280_1_1_U0.grp_AXIstream2xfMat_0_720_1280_1_1_Pipeline_loop_col_axi2mat_fu_90.imgInputR_436_blk_n | ~AXIstream2xfMat_0_720_1280_1_1_U0.imgInputR_rows_c_blk_n | ~AXIstream2xfMat_0_720_1280_1_1_U0.imgInputR_cols_c_blk_n;
assign inst_idle_sigs[3] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.ap_idle;
assign inst_block_sigs[3] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.ap_continue) | ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.p_left_mat_rows_blk_n | ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.p_left_mat_cols_blk_n | ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_s_fu_34.grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148.imgInputR_436_blk_n | ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_s_fu_34.grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157.imgInputR_436_blk_n | ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.p_right_mat_rows_blk_n | ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.p_right_mat_cols_blk_n | ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_1_U0.grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_s_fu_34.grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Clear_Row_Loop_fu_148.imgInputR_436_blk_n | ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_1_U0.grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_s_fu_34.grp_xFSobelFilter3x3_0_2_720_1280_1_0_3_1_1_5_1280_false_Pipeline_Col_Loop_fu_157.imgInputR_436_blk_n | ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_Loop_VITIS_LOOP_800_1_proc_U0.imgOutput_437_blk_n;
assign inst_idle_sigs[4] = xfMat2AXILaser_1_720_1280_1_U0.ap_idle;
assign inst_block_sigs[4] = (xfMat2AXILaser_1_720_1280_1_U0.ap_done & ~xfMat2AXILaser_1_720_1280_1_U0.ap_continue) | ~xfMat2AXILaser_1_720_1280_1_U0.grp_xfMat2AXILaser_1_720_1280_1_Pipeline_loop_rows_loop_cols_fu_2213.imgOutput_437_blk_n | ~xfMat2AXILaser_1_720_1280_1_U0.grp_xfMat2AXILaser_1_720_1280_1_Pipeline_loop_ls_2axi_fu_2703.AXI_Laser_blk_n;
assign inst_idle_sigs[5] = AXILaser2Cmd_U0.ap_idle;
assign inst_block_sigs[5] = (AXILaser2Cmd_U0.ap_done & ~AXILaser2Cmd_U0.ap_continue) | ~AXILaser2Cmd_U0.AXI_Laser_blk_n;
assign inst_idle_sigs[6] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.entry_proc_U0.ap_idle;
assign inst_block_sigs[6] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.entry_proc_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.entry_proc_U0.ap_continue);
assign inst_idle_sigs[7] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_Block_ZN2xf2cv3MatILi2ELi720ELi1280ELi1ELi2EEC2Eii_exit_i265_proc_U0.ap_idle;
assign inst_block_sigs[7] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_Block_ZN2xf2cv3MatILi2ELi720ELi1280ELi1ELi2EEC2Eii_exit_i265_proc_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_Block_ZN2xf2cv3MatILi2ELi720ELi1280ELi1ELi2EEC2Eii_exit_i265_proc_U0.ap_continue);
assign inst_idle_sigs[8] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_U0.ap_idle;
assign inst_block_sigs[8] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_U0.ap_continue);
assign inst_idle_sigs[9] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFImageClip_720_1280_1_3_0_2_0_1280_26_U0.ap_idle;
assign inst_block_sigs[9] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFImageClip_720_1280_1_3_0_2_0_1280_26_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFImageClip_720_1280_1_3_0_2_0_1280_26_U0.ap_continue);
assign inst_idle_sigs[10] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFReadOutStream_720_1280_1_3_0_2_1280_U0.ap_idle;
assign inst_block_sigs[10] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFReadOutStream_720_1280_1_3_0_2_1280_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFReadOutStream_720_1280_1_3_0_2_1280_U0.ap_continue);
assign inst_idle_sigs[11] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_1_U0.ap_idle;
assign inst_block_sigs[11] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_1_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.Sobel_0_3_0_2_720_1280_1_false_1_U0.ap_continue);
assign inst_idle_sigs[12] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFImageClip_720_1280_1_3_0_2_0_1280_127_U0.ap_idle;
assign inst_block_sigs[12] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFImageClip_720_1280_1_3_0_2_0_1280_127_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFImageClip_720_1280_1_3_0_2_0_1280_127_U0.ap_continue);
assign inst_idle_sigs[13] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFReadOutStream_720_1280_1_3_0_2_1280_1_U0.ap_idle;
assign inst_block_sigs[13] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFReadOutStream_720_1280_1_3_0_2_1280_1_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFReadOutStream_720_1280_1_3_0_2_1280_1_U0.ap_continue);
assign inst_idle_sigs[14] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFSADBlockMatching_720_1280_0_1_11_32_32_1_730_1290_1290_11_42_5_12_false_U0.ap_idle;
assign inst_block_sigs[14] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFSADBlockMatching_720_1280_0_1_11_32_32_1_730_1290_1290_11_42_5_12_false_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFSADBlockMatching_720_1280_0_1_11_32_32_1_730_1290_1290_11_42_5_12_false_U0.ap_continue);
assign inst_idle_sigs[15] = StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_Loop_VITIS_LOOP_800_1_proc_U0.ap_idle;
assign inst_block_sigs[15] = (StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_Loop_VITIS_LOOP_800_1_proc_U0.ap_done & ~StereoBM_11_32_32_0_1_720_1280_1_false_U0.grp_xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_s_fu_60.xFFindStereoCorrespondenceLBMNO_720_1280_0_1_1_11_32_32_1_false_Loop_VITIS_LOOP_800_1_proc_U0.ap_continue);

assign inst_idle_sigs[16] = 1'b0;
assign inst_idle_sigs[17] = AXIstream2xfMat_0_720_1280_1_U0.ap_idle;
assign inst_idle_sigs[18] = AXIstream2xfMat_0_720_1280_1_U0.grp_AXIstream2xfMat_0_720_1280_1_Pipeline_loop_col_axi2mat_fu_90.ap_idle;
assign inst_idle_sigs[19] = AXIstream2xfMat_0_720_1280_1_1_U0.ap_idle;
assign inst_idle_sigs[20] = AXIstream2xfMat_0_720_1280_1_1_U0.grp_AXIstream2xfMat_0_720_1280_1_1_Pipeline_loop_col_axi2mat_fu_90.ap_idle;

stereolbm_accel_hls_deadlock_idx0_monitor stereolbm_accel_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
