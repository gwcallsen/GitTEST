open_project -project {C:\PULSAR\Projects\PPI\PoweredRail\Common_Module_SOC\CommonModule_Rev1_5_Unified\designer\m2s010_som\m2s010_som_fp\m2s010_som.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2S060T} \
    -fpga {C:\PULSAR\Projects\PPI\PoweredRail\Common_Module_SOC\CommonModule_Rev1_5_Unified\designer\m2s010_som\m2s010_som.map} \
    -header {C:\PULSAR\Projects\PPI\PoweredRail\Common_Module_SOC\CommonModule_Rev1_5_Unified\designer\m2s010_som\m2s010_som.hdr } \
    -envm {C:\PULSAR\Projects\PPI\PoweredRail\Common_Module_SOC\CommonModule_Rev1_5_Unified\designer\m2s010_som\m2s010_som.efc}  \
    -spm {C:\PULSAR\Projects\PPI\PoweredRail\Common_Module_SOC\CommonModule_Rev1_5_Unified\designer\m2s010_som\m2s010_som.spm} \
    -dca {C:\PULSAR\Projects\PPI\PoweredRail\Common_Module_SOC\CommonModule_Rev1_5_Unified\designer\m2s010_som\m2s010_som.dca}
export_single_stapl \
    -name {M2S060T} \
    -file {C:\PULSAR\Projects\PPI\PoweredRail\Common_Module_SOC\CommonModule_Rev1_5_Unified\designer\m2s010_som\export\m2s010_som_Rev1_5_Unified.stp} \
    -secured
export_single_dat \
    -name {M2S060T} \
    -file {C:\PULSAR\Projects\PPI\PoweredRail\Common_Module_SOC\CommonModule_Rev1_5_Unified\designer\m2s010_som\export\m2s010_som_Rev1_5_Unified.dat} \
    -secured
set_programming_file -name {M2S060T} -no_file
save_project
close_project
