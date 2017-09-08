new_project \
         -name {m2s010_som} \
         -location {C:\PULSAR\Projects\PPI\PoweredRail\Common_Module_SOC\CommonModule_Rev1a\designer\m2s010_som\m2s010_som_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S060T} \
         -name {M2S060T}
enable_device \
         -name {M2S060T} \
         -enable {TRUE}
save_project
close_project
