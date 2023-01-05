## Run Script

read_verilog my_design.v
current_design MY_DESIGN 
link
check_design

## Turn off "page mode" so that the following commands execute
## without requiring the user to hit [ENTER] or [SPACEBAR]
set sh_enable_page_mode false


source -echo -ver .solutions/lab6.con 

check_timing
report_clock
report_clock -skew
report_port -verbose
report_design

## Turn "page mode" back on
set sh_enable_page_mode true

write_script -out scripts/lab6.wscr

write -format ddc -hier -out unmapped/MY_DESIGN.ddc
exit
