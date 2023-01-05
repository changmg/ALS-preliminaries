## Run Script

## TASK 1:

read_db sc_max.db
list_libs
redirect -file lib.rpt {report_lib cb13fs120_tsmc_max}




## TASK 3:

read_verilog MY_DESIGN.v
current_design MY_DESIGN 
link
check_design

#source scripts/MY_DESIGN.con 
source .solutions/MY_DESIGN.con 

check_timing
report_clock
report_clock -skew
report_port -verbose

write_script -out scripts/MY_DESIGN.wscr

write -format ddc -hier -out unmapped/MY_DESIGN.ddc
exit
