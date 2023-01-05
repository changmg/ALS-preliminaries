## Run Script


read_verilog my_design.v
current_design MY_DESIGN 
link
check_design

## Turn off "page mode" so that the following commands execute
## without requiring the user to hit [ENTER] or [SPACEBAR]
set sh_enable_page_mode false


source -echo -ver .solutions/lab9A.con 

check_design
check_timing
report_design
report_clock
report_clock -skew
report_port -verbose


write_script -out scripts/lab9A.wscr

compile_ultra -scan -timing


report_constraint -all_violators
report_area
report_timing -to [get_ports out1] -input -trans -sig 6 -nets
report_timing -from [get_ports sel] -to [get_ports Cout] -input -trans -sig 6


## Turn "page mode" back on
set sh_enable_page_mode true


## Save and exit
write -format ddc -hier -out mapped/MY_DESIGN.ddc
exit
