# This file has been edited to keep it simple

read_vhdl rtl/TOP.vhd
current_design TOP
link
write -h -f ddc -o unmapped/TOP.ddc
list_designs
list_libs
source TOP.con
compile
report_constraint -all
report_timing
report_area
write -hierarchy -format ddc -output mapped/TOP.ddc
remove_design -designs
