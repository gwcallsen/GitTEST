quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "C:/Users/gcallsen/Documents/GitHub/FPGA_v1.5_w_Libero_v11.8"
source "${PROJECT_DIR}/simulation/CM3_compile_bfm.tcl";source "${PROJECT_DIR}/simulation/bfmtovec_compile.tcl";

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap SmartFusion2 "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion2"
if {[file exists COREFIFO_LIB/_info]} {
   echo "INFO: Simulation library COREFIFO_LIB already exists"
} else {
   file delete -force COREFIFO_LIB 
   vlib COREFIFO_LIB
}
vmap COREFIFO_LIB "COREFIFO_LIB"
if {[file exists COREAPB3_LIB/_info]} {
   echo "INFO: Simulation library COREAPB3_LIB already exists"
} else {
   file delete -force COREAPB3_LIB 
   vlib COREAPB3_LIB
}
vmap COREAPB3_LIB "COREAPB3_LIB"

vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8_0/rtl/vhdl/core/corefifo_doubleSync.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8_0/rtl/vhdl/core/corefifo_grayToBinConv.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIFO/2.5.106/rtl/vhdl/core/fifo_pkg.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8_0/rtl/vhdl/core/corefifo_async.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8_0/rtl/vhdl/core/corefifo_fwft.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8_0/rtl/vhdl/core/corefifo_sync.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8_0/rtl/vhdl/core/corefifo_sync_scntr.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8_0/rtl/vhdl/core/FIFO_2Kx8_FIFO_2Kx8_0_LSRAM_top.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8_0/rtl/vhdl/core/FIFO_2Kx8_FIFO_2Kx8_0_ram_wrapper.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8_0/rtl/vhdl/core/COREFIFO.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/FIFO_2Kx8/FIFO_2Kx8.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9_0/rtl/vhdl/core/corefifo_doubleSync.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9_0/rtl/vhdl/core/corefifo_grayToBinConv.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9_0/rtl/vhdl/core/corefifo_async.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9_0/rtl/vhdl/core/corefifo_fwft.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9_0/rtl/vhdl/core/corefifo_sync.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9_0/rtl/vhdl/core/corefifo_sync_scntr.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9_0/rtl/vhdl/core/FIFO_8Kx9_FIFO_8Kx9_0_LSRAM_top.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9_0/rtl/vhdl/core/FIFO_8Kx9_FIFO_8Kx9_0_ram_wrapper.vhd"
vcom -2008 -explicit  -work COREFIFO_LIB "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9_0/rtl/vhdl/core/COREFIFO.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/FIFO_8Kx9/FIFO_8Kx9.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/FIFOs.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/AFE_RX_SM.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/IdleLineDetector.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/ManchesDecoder_Adapter.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/CRC16_Generator.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/ReadFIFO_Write_SM.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/ManchesDecoder.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/TX_Collision_Detector.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/TX_SM.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/ManchesEncoder.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/Debounce.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/TriDebounce.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/Interrupts.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/uP_if.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/CommsFPGA_top.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som/CommsFPGA_CCC_0/m2s010_som_CommsFPGA_CCC_0_FCCC.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som/ID_RES_0/m2s010_som_ID_RES_0_IO.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreConfigP/7.0.105/rtl/vhdl/core/coreconfigp.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreResetP/7.0.104/rtl/vhdl/core/coreresetp_pcie_hotreset.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreResetP/7.0.104/rtl/vhdl/core/coreresetp.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb/CAM_SPI_1_CLK/m2s010_som_sb_CAM_SPI_1_CLK_IO.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb/CAM_SPI_1_SS0/m2s010_som_sb_CAM_SPI_1_SS0_IO.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb/CCC_0/m2s010_som_sb_CCC_0_FCCC.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb/FABOSC_0/m2s010_som_sb_FABOSC_0_OSC.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb/GPIO_1/m2s010_som_sb_GPIO_1_IO.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb/GPIO_6/m2s010_som_sb_GPIO_6_IO.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb/GPIO_7/m2s010_som_sb_GPIO_7_IO.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb_MSS/m2s010_som_sb_MSS.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb/OTH_SPI_1_SS0/m2s010_som_sb_OTH_SPI_1_SS0_IO.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som_sb/m2s010_som_sb.vhd"
vcom -2008 -explicit  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vhdl/core/coreapb3_muxptob3.vhd"
vcom -2008 -explicit  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vhdl/core/coreapb3_iaddr_reg.vhd"
vcom -2008 -explicit  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vhdl/core/coreapb3.vhd"
vcom -2008 -explicit  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vhdl/core/components.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/m2s010_som/m2s010_som.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1/CLK_GEN.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1/RESET_GEN.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/TB_iRail/TB_iRail.vhd"

vsim -L SmartFusion2 -L presynth -L COREFIFO_LIB -L COREAPB3_LIB  -t 1fs presynth.TB_iRail
do "wave.do"
run 3ms
