set_svf STOTO.svf

read_verilog STOTO.v

current_design STOTO

link
check_design

source STOTO.con
check_timing

source STOTO.pcon

group_path -name clk -critical 0.21 -weight 5
group_path -name INPUTS -from [all_inputs] 
group_path -name OUTPUTS -to [all_output]
group_path -name COMBO -from [all_inputs] -to [all_output]

set_ungroup [get_designs "INPUT"] false

set_dont_retime [get_cells I_MIDDLE/I_DONT_PIPELINE] true

set_optimize_registers true -design PIPELINE

set_dont_retime [get_cells I_MIDDLE/I_PIPELINE/z_reg*] true

write -f ddc -hier -out unmapped/STOTO.ddc

set_host_options -max_cores 4

compile_ultra  -scan  -timing -retime 

report_hierarchy -noleaf

redirect -tee -file rc_compile_ultra.rpt {report_constraint -all}
redirect -tee -file rt_compile_ultra.rpt {report_timing}

write -f ddc -hier -out mapped/STOTO.ddc

set_svf -off

get_cells -hier *r_REG*_S*

report_cell -nosplit I_MIDDLE/I_PIPELINE

get_cells -hier *z_reg*

report_timing -from I_MIDDLE/I_PIPELINE/z_reg*/*

get_cells -hier R_*

report_cell -nosplit I_IN

get_cells  I_IN/*_reg* 

exit
