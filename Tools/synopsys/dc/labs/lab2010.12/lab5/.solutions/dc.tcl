## Run Script

read_verilog MY_DESIGN.v
link

source .solutions/MY_DESIGN.con 

report_port -verbose
report_design

write_script -out scripts/MY_DESIGN.wscr

write -format ddc -hier -out unmapped/MY_DESIGN.ddc
exit
