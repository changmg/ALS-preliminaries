## Run Script

## TASK 1:

read_db sc_max.db
list_libs
redirect -file lib.rpt {report_lib cb13fs120_tsmc_max}




## TASK 3:

read_verilog my_design.v
current_design MY_DESIGN 
link
check_design

## Turn off "page mode" so that the following commands execute
## without requiring the user to hit [ENTER] or [SPACEBAR]
set sh_enable_page_mode false


source -echo -ver .solutions/lab4.con 

check_timing
report_clock
report_clock -skew
report_port -verbose

## Turn "page mode" back on
set sh_enable_page_mode true

write_script -out scripts/lab4.wscr

write -format ddc -hier -out unmapped/MY_DESIGN.ddc
exit
