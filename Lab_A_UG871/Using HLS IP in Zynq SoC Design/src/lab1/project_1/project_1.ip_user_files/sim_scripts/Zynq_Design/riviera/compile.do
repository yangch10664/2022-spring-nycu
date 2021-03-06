vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_11
vlib riviera/processing_system7_vip_v1_0_13
vlib riviera/xil_defaultlib
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_6
vlib riviera/axi_data_fifo_v2_1_24
vlib riviera/axi_register_slice_v2_1_25
vlib riviera/axi_protocol_converter_v2_1_25
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 riviera/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 riviera/processing_system7_vip_v1_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_6 riviera/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 riviera/axi_data_fifo_v2_1_24
vmap axi_register_slice_v2_1_25 riviera/axi_register_slice_v2_1_25
vmap axi_protocol_converter_v2_1_25 riviera/axi_protocol_converter_v2_1_25
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0/sim/Zynq_Design_processing_system7_0_0.v" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ca09/hdl/verilog/hls_macc_HLS_MACC_PERIPH_BUS_s_axi.v" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ca09/hdl/verilog/hls_macc_mul_32s_32s_32_5_1.v" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ca09/hdl/verilog/hls_macc.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/sim/Zynq_Design_hls_macc_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_auto_pc_0/sim/Zynq_Design_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/ip/Zynq_Design_rst_ps7_0_50M_0/sim/Zynq_Design_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/Zynq_Design/ip/Zynq_Design_hls_macc_0_0/drivers/hls_macc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/sim/Zynq_Design.v" \

vlog -work xil_defaultlib \
"glbl.v"

