read_verilog stoto.v

current_design STOTO

link
check_design

source stoto.con
check_timing

group_path -name clk -critical 0.21 -weight 5
group_path -name INPUTS -from [all_inputs] 
group_path -name OUTPUTS -to [all_output]
group_path -name COMBO -from [all_inputs] -to [all_output]

set compile_auto_ungroup_delay_num_cells 99999999
set compile_auto_ungroup_count_leaf_cells true
set compile_auto_ungroup_override_wlm true

set_ungroup [get_designs "PIPELINE INPUT"] false

set_multicycle_path -setup 2 -to I_MIDDLE/I_PIPELINE/z1_reg*

write -f ddc -hier -out mapped/pre_compile.ddc

compile_ultra -scan -timing

write -f ddc -hier -out mapped/compile_ultra.ddc

reset_path -to I_MIDDLE/I_PIPELINE/z1_reg*

set_dont_touch [get_cells I_MIDDLE/I_PIPELINE/z_reg*] true

set_optimize_registers true -design PIPELINE
optimize_registers -only_attr

write -f ddc -hier -out mapped/optimize_reg.ddc
