# Written by Synplify Pro version map201503actrcp1, Build 002R. Synopsys Run ID: sid1487702721 
# Top Level Design Parameters 

# Clocks 
create_clock -period 1000.000 -waveform {0.000 500.000} -name {ident_coreinst.comm_block_INST.dr2_tck} [get_pins {ident_coreinst/comm_block_INST/jtagi/jtag_clkint_prim:Y}] 
create_clock -period 1000.000 -waveform {0.000 500.000} -name {ident_coreinst.comm_block_INST.tck} [get_pins {ident_coreinst/comm_block_INST/jtagi/jtag_clkint_prim:Y}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {m2s010_som_sb_CCC_0_FCCC|GL0_net_inferred_clock} [get_pins {m2s010_som_sb_0/CCC_0/CCC_INST:GL0}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {m2s010_som_CommsFPGA_CCC_0_FCCC|GL0_net_inferred_clock} [get_pins {CommsFPGA_CCC_0/CCC_INST:GL0}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {m2s010_som_CommsFPGA_CCC_0_FCCC|GL1_net_inferred_clock} [get_pins {CommsFPGA_CCC_0/CCC_INST:GL1}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {CommsFPGA_top|BIT_CLK_inferred_clock} [get_pins {CommsFPGA_top_0/BIT_CLK:Q}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {m2s010_som_sb_MSS|FIC_2_APB_M_PCLK_inferred_clock} [get_pins {m2s010_som_sb_0/m2s010_som_sb_MSS_0/MSS_ADLIB_INST:CLK_CONFIG_APB}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {m2s010_som|MAC_MII_TX_CLK} [get_ports {MAC_MII_TX_CLK}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {m2s010_som|MAC_MII_RX_CLK} [get_ports {MAC_MII_RX_CLK}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {TX_Collision_Detector|TX_collision_detect_inferred_clock} [get_pins {CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_COLLISION_DETECTOR_INST/TX_collision_detect:Q}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {ReadFIFO_Write_SM|rx_CRC_error_inferred_clock} [get_pins {CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_CRC_error:Q}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {FIFO_8Kx9_FIFO_8Kx9_0_corefifo_async|RX_FIFO_OVERFLOW_inferred_clock} [get_pins {CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/FIFO_8Kx9_0/L31.U_corefifo_async/overflow_r:Q}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {FIFO_8Kx9_FIFO_8Kx9_0_corefifo_async|RX_FIFO_UNDERRUN_inferred_clock} [get_pins {CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/FIFO_8Kx9_0/L31.U_corefifo_async/underflow_r:Q}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {FIFO_2Kx8_FIFO_2Kx8_0_corefifo_async|TX_FIFO_OVERFLOW_inferred_clock} [get_pins {CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/FIFO_2Kx8_0/L31.U_corefifo_async/overflow_r:Q}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {FIFO_2Kx8_FIFO_2Kx8_0_corefifo_async|TX_FIFO_UNDERRUN_inferred_clock} [get_pins {CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/FIFO_2Kx8_0/L31.U_corefifo_async/underflow_r:Q}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {ReadFIFO_Write_SM|rx_packet_complt_inferred_clock} [get_pins {CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_packet_complt:Q}] 
create_clock -period 5.988 -waveform {0.000 2.994} -name {CommsFPGA_top|long_reset_0_inferred_clock} [get_pins {CommsFPGA_top_0/long_reset:Q}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_6 [list m2s010_som|MAC_MII_RX_CLK]
set Inferred_clkgroup_5 [list m2s010_som|MAC_MII_TX_CLK]
set Inferred_clkgroup_1 [list m2s010_som_CommsFPGA_CCC_0_FCCC|GL0_net_inferred_clock]
set Inferred_clkgroup_2 [list m2s010_som_CommsFPGA_CCC_0_FCCC|GL1_net_inferred_clock]
set Inferred_clkgroup_0 [list m2s010_som_sb_CCC_0_FCCC|GL0_net_inferred_clock]
set Inferred_clkgroup_4 [list m2s010_som_sb_MSS|FIC_2_APB_M_PCLK_inferred_clock]
set Inferred_clkgroup_15 [list CommsFPGA_top|long_reset_0_inferred_clock]
set Inferred_clkgroup_3 [list CommsFPGA_top|BIT_CLK_inferred_clock]
set Inferred_clkgroup_13 [list FIFO_2Kx8_FIFO_2Kx8_0_corefifo_async|TX_FIFO_UNDERRUN_inferred_clock]
set Inferred_clkgroup_12 [list FIFO_2Kx8_FIFO_2Kx8_0_corefifo_async|TX_FIFO_OVERFLOW_inferred_clock]
set Inferred_clkgroup_11 [list FIFO_8Kx9_FIFO_8Kx9_0_corefifo_async|RX_FIFO_UNDERRUN_inferred_clock]
set Inferred_clkgroup_10 [list FIFO_8Kx9_FIFO_8Kx9_0_corefifo_async|RX_FIFO_OVERFLOW_inferred_clock]
set Inferred_clkgroup_8 [list TX_Collision_Detector|TX_collision_detect_inferred_clock]
set Inferred_clkgroup_14 [list ReadFIFO_Write_SM|rx_packet_complt_inferred_clock]
set Inferred_clkgroup_9 [list ReadFIFO_Write_SM|rx_CRC_error_inferred_clock]
set identify_jtag_group1 [list ident_coreinst.comm_block_INST.tck \
                                 ident_coreinst.comm_block_INST.dr2_tck]
set_clock_groups -asynchronous -group $Inferred_clkgroup_6
set_clock_groups -asynchronous -group $Inferred_clkgroup_5
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $Inferred_clkgroup_2
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_4
set_clock_groups -asynchronous -group $Inferred_clkgroup_15
set_clock_groups -asynchronous -group $Inferred_clkgroup_3
set_clock_groups -asynchronous -group $Inferred_clkgroup_13
set_clock_groups -asynchronous -group $Inferred_clkgroup_12
set_clock_groups -asynchronous -group $Inferred_clkgroup_11
set_clock_groups -asynchronous -group $Inferred_clkgroup_10
set_clock_groups -asynchronous -group $Inferred_clkgroup_8
set_clock_groups -asynchronous -group $Inferred_clkgroup_14
set_clock_groups -asynchronous -group $Inferred_clkgroup_9
set_clock_groups -asynchronous -group $identify_jtag_group1


# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 

# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

