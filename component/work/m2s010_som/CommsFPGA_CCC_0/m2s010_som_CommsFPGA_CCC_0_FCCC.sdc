set_component m2s010_som_CommsFPGA_CCC_0_FCCC
create_clock -period 50 [ get_pins {CCC_INST/XTLOSC} ]
create_generated_clock -multiply_by 49 -divide_by 6 -source [ get_pins {CCC_INST/XTLOSC} ] [ get_pins {CCC_INST/GL0} ]
create_generated_clock -multiply_by 49 -divide_by 49 -source [ get_pins {CCC_INST/XTLOSC} ] [ get_pins {CCC_INST/GL1} ]
