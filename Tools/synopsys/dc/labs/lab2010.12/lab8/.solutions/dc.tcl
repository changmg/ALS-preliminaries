## Run Script


read_verilog MY_DESIGN.v
link

source .solutions/MY_DESIGN.con 

check_timing
report_design
report_clock
report_clock -skew
report_port -verbose


write_script -out scripts/MY_DESIGN.wscr

compile_ultra -scan -timing -retime

report_constraint -all_violators
report_timing -to [get_ports out1] -input -trans -sig 6 -nets
report_timing -from [get_ports sel] -to [get_ports Cout] -input -trans -sig 6
report_timing -from [get_ports Cin*] -to [get_ports Cout]


write -format ddc -hier -out mapped/MY_DESIGN.ddc
exit
