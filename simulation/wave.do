onerror {resume}
quietly virtual signal -install /tb_irail/m2s010_som_0 { (context /tb_irail/m2s010_som_0 )(CommsFPGA_top_0/ID_RES & CommsFPGA_top_0/OTHERS_NODE & CommsFPGA_top_0/CAMERA_NODE & m2s010_som_sb_0/SPI_1_CLK & m2s010_som_sb_0/SPI_1_DI_CAM & m2s010_som_sb_0/SPI_1_DI_OTH & m2s010_som_sb_0/SPI_1_DI & m2s010_som_sb_0/SPI_1_DO_CAM & m2s010_som_sb_0/SPI_1_DO_OTH & m2s010_som_sb_0/SPI_1_SS0_CAM & m2s010_som_sb_0/SPI_1_SS0_OTH )} SPI_1
quietly virtual signal -install /tb_irail/m2s010_som_0/CommsFPGA_top_0 { (context /tb_irail/m2s010_som_0/CommsFPGA_top_0 )(APB3_ADDR & APB3_CLK & APB3_ENABLE &APB3_RDATA & APB3_READY & APB3_SEL &APB3_WDATA & APB3_WRITE )} APB_BUS
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {ReadFIFO Write SM}
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/RX_EarlyTerm
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/RX_FIFO_DIN
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/RX_FIFO_DIN_pipe
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/RX_FIFO_DIN_pipe_i
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/RX_FIFO_TxColDetDis_wr_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/RX_FIFO_wr_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/RX_InProcess
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/RX_InProcess_d1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/ReadFIFO_WR_STATE
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/SM_advance
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/SM_advance_i
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/SM_advancebit_cntr
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/TX_Enable
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/TX_collision_detect
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/bit_cntr
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/clk16x
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/clk1x_enable
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/consumer_type
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/consumer_type1_reg
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/consumer_type2_reg
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/consumer_type3_reg
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/consumer_type4_reg
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/hold_collision
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/iRX_EarlyTerm
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/iRX_FIFO_wr_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/idle_line
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/irx_packet_end
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/packet_avail
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rst
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_CRC_error
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_EndOfPacket_2FIFO
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_byte_cntr
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_crc_Byte_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_crc_HighByte_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_crc_LowByte_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_crc_data_calc
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_crc_data_store
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_crc_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_crc_gen
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_crc_reset
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_end_rst
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_fifo_din_d1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_fifo_din_d2
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_fifo_din_d3
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_packet_complt
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_packet_end
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/rx_packet_length
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/sampler_clk1x_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_DECODER_INST/ReadFIFO_Write_SM_PROC/tx_col_detect_en
add wave -noupdate -divider {Receive FIFO}
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/DATA
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/RCLOCK
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/RE
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/RESET
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/WCLOCK
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/WE
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/AEMPTY
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/AFULL
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/EMPTY
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/FULL
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/OVERFLOW
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/Q
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/UNDERFLOW
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/AEMPTY_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/AFULL_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/EMPTY_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/FULL_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/OVERFLOW_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/Q_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/UNDERFLOW_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/FULL_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/EMPTY_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/Q_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/AFULL_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/AEMPTY_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/OVERFLOW_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/UNDERFLOW_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/GND_net
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/RECEIVE_FIFO/MEMRD_const_net_0
add wave -noupdate -divider {Transmit FIFO}
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/AEMPTY
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/AEMPTY_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/AEMPTY_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/AFULL
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/AFULL_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/AFULL_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/DATA
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/EMPTY
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/EMPTY_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/EMPTY_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/FULL
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/FULL_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/FULL_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/GND_net
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/MEMRD_const_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/OVERFLOW
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/OVERFLOW_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/OVERFLOW_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/Q
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/Q_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/Q_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/RCLOCK
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/RE
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/RESET
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/UNDERFLOW
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/UNDERFLOW_net_0
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/UNDERFLOW_net_1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/WCLOCK
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/FIFOS_INST/TRANSMIT_FIFO/WE
add wave -noupdate -divider {MANCHESTER Encoder}
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/CLK_BIT_5MHz
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/MANCHESTER_OUT
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/POSTAMBLE_LENGTH
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/PREAMBLE_LENGTH
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/RX_FIFO_DIN
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/RX_FIFO_wr_clk
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/RX_FIFO_wr_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/START_BYTE_SYMBOL
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_DataEn
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_DataEn_d1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_Enable
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_FIFO_DOUT
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_FIFO_Empty
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_FIFO_rd_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_PostAmble
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_PostAmble_d1
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_PreAmble
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/TX_collision_detect
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/bit_clk2x
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/byte_clk_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/byte_clk_en_d
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/clk16x
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/external_loopback
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/iTX_Enable
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/iTX_FIFO_rd_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/iTX_PreAmble
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/internal_loopback
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/itx_packet_complt
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/man_data
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/manches_in_dly
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/p2s_data
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/reset
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/rx_crc_Byte_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/start_tx_FIFO
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/tx_col_detect_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/tx_crc_byte1_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/tx_crc_byte2_en
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/tx_crc_data
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/tx_crc_gen
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/tx_crc_reset
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/tx_packet_complt
add wave -noupdate /tb_irail/m2s010_som_0/CommsFPGA_top_0/MANCHESTER_ENCODER_INST/tx_preamble_pat_en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {212853171224 fs} 1} {{Cursor 2} {172129035645 fs} 0}
quietly wave cursor active 2
configure wave -namecolwidth 343
configure wave -valuecolwidth 99
configure wave -justifyvalue right
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {170815647232 fs} {181549200812 fs}