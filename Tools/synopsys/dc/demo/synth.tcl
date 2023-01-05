# read design
read_verilog ./design/sign_mult_8x8.v

# delay constraint
set_max_delay 5.00 -from [all_inputs] -to [all_outputs]

# synthesize and map
compile_ultra

# report
report_area  > ./sign_mult_8x8.rpt
report_timing >> ./sign_mult_8x8.rpt
report_power >> ./sign_mult_8x8.rpt

# output design
write -format verilog -hierarchy -output ./design/sign_mult_8x8_gate_netlist.v
