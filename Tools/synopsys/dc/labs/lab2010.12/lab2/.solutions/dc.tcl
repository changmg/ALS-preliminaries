# This file has been edited to keep it simple

printvar target_library
printvar link_library
alias
check_library
check_tlu_plus_files
read_file -format verilog ./rtl/TOP.v
current_design TOP
link
write -hierarchy -f ddc -out unmapped/TOP.ddc
list_designs
list_libs
source TOP.con
compile_ultra
report_constraint -all
report_timing
report_area
write -hierarchy -format ddc -output ./mapped/TOP.ddc
remove_design -all
