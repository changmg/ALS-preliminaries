set circName sign_mult_8x8
set tech 28nm
set prec acc
set delay 5.00
read_verilog ./${circName}/${tech}/beh/${circName}_${prec}_beh_comb.v

set_max_delay ${delay} -from [all_inputs] -to [all_outputs]
compile_ultra
report_area  > ./${circName}/${tech}/report/${circName}_${prec}_comb.rpt
report_timing >> ./${circName}/${tech}/report/${circName}_${prec}_comb.rpt
report_power >> ./${circName}/${tech}/report/${circName}_${prec}_comb.rpt
ungroup -all -flatten
write -format verilog -hierarchy -output ./${circName}/${tech}/gate/${circName}_${prec}_gate_comb.v
