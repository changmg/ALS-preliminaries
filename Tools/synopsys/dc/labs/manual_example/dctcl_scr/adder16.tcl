# Script file for constraining Adder16 
set rpt_file "adder16.rpt"
set design "adder16"

current_design Adder16
source "${script_path}defaults.con"

# Define design environment 
set_load 2.2 sout
set_load 1.5 cout
set_driving_cell -lib_cell FD1 [all_inputs]
set_drive 0 $clk_name

# Define design constraints 
set_input_delay 1.35 -clock $clk_name {ain bin}
set_input_delay 3.5 -clock $clk_name cin
set_max_area 0

compile
# write -f db -hierarchy -o "${db_path}${design}.db"
write -f ddc -hierarchy -output "${ddc_path}${design}.ddc"
source "${script_path}report.tcl"
