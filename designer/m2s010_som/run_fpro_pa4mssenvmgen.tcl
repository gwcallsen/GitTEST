set_device \
    -fam SmartFusion2 \
    -die PA4M6000 \
    -pkg fcs325
set_input_cfg \
	-path {C:/Users/gcallsen/Documents/Projects/FPGA/PPI.IRail.SoC.FPGA/component/work/m2s010_som_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {C:\Users\gcallsen\Documents\Projects\FPGA\PPI.IRail.SoC.FPGA\designer\m2s010_som\m2s010_som.efc}
set_proj_dir \
    -path {C:\Users\gcallsen\Documents\Projects\FPGA\PPI.IRail.SoC.FPGA}
gen_prg -use_init false
