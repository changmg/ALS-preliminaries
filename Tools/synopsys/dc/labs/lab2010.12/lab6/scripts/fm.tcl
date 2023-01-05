source common_setup.tcl

set search_path "$search_path $ADDITIONAL_SEARCH_PATH"
set target_library $TARGET_LIBRARY_FILES

#set Synopsys Auto Setup flow from minimum setup
set synopsys_auto_setup true

read_db -tech sc_max.db

set_svf STOTO.svf			;# SVF file

read_verilog -r  STOTO.v		;# Reference RTL file
set_top STOTO

read_ddc -i STOTO.ddc			;# Implementation Gate level file
set_top STOTO

match
verify

report_guidance -summary
