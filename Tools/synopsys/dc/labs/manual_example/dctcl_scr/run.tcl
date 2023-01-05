# Initial compile with estimated constraints
source "${script_path}initial_compile.tcl"

current_design ChipLevel
write -hierarchy -out "${db_path}ChipLevel_init.db"

# Characterize and write_script for all modules 
source "${script_path}characterize.tcl"

# Recompile all modules using write_script constraints 
remove_design -all
source "${script_path}recompile.tcl"

current_design ChipLevel
write -hierarchy -out "${db_path}ChipLevel_final.db"
