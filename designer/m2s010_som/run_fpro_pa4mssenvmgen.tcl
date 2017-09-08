set_device \
    -fam SmartFusion2 \
    -die PA4M6000 \
    -pkg fcs325
set_input_cfg \
	-path {C:/Users/gcallsen/Documents/GitHub/FPGA_v1.5_w_Libero_v11.8/component/work/m2s010_som_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {C:\Users\gcallsen\Documents\GitHub\FPGA_v1.5_w_Libero_v11.8\designer\m2s010_som\m2s010_som.efc}
set_proj_dir \
    -path {C:\Users\gcallsen\Documents\GitHub\FPGA_v1.5_w_Libero_v11.8}
gen_prg -use_init false
