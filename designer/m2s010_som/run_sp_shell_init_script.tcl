set_device \
    -family  SmartFusion2 \
    -die     PA4M6000 \
    -package fcs325 \
    -speed   STD \
    -tempr   {IND} \
    -voltr   {IND}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {PLL_SUPPLY} {PLL_SUPPLY_25}
set_def {VPP_SUPPLY_25_33} {VPP_SUPPLY_25}
set_def {MDDR_REGISTERS} {C:/Users/gcallsen/Documents/Projects/FPGA/PPI.IRail.SoC.FPGA/component/work/m2s010_som_sb_MSS/MDDR_init.reg}
set_def {PA4_URAM_FF_CONFIG} {SUSPEND}
set_def {PA4_SRAM_FF_CONFIG} {SUSPEND}
set_def {PA4_MSS_FF_CLOCK} {RCOSC_1MHZ}
set_netlist -afl {C:\Users\gcallsen\Documents\Projects\FPGA\PPI.IRail.SoC.FPGA\designer\m2s010_som\m2s010_som.afl} -adl {C:\Users\gcallsen\Documents\Projects\FPGA\PPI.IRail.SoC.FPGA\designer\m2s010_som\m2s010_som.adl}
set_placement   {C:\Users\gcallsen\Documents\Projects\FPGA\PPI.IRail.SoC.FPGA\designer\m2s010_som\m2s010_som.loc}
set_routing     {C:\Users\gcallsen\Documents\Projects\FPGA\PPI.IRail.SoC.FPGA\designer\m2s010_som\m2s010_som.seg}
