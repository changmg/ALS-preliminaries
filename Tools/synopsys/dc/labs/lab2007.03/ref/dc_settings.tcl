# This file needs to be sourced from within the .synopsys_dc.setup file
# 
puts "\n### Executing common setup file 'ref/dc_settings.tcl' ..."

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Other setup
#   - This could go into the .synopsys_dc.setup file in your home 
#     directory, so it is available no matter where the tool is launched
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Load useful functions
source ../ref/tools/procs.tcl

# Command-line editing is on by default
# set sh_enable_line_editing true
# emacs is the default line-editing mode. The other mode is "vi"
# set sh_line_editing_mode emacs
# Disable more-like page mode
set enable_page_mode false

# Don't want to see CMD-041 when creating new variables
set sh_new_variable_message false

# Some aliases to make use of view nicer (defined in tools/procs.tcl)
alias v view
alias rt  "report_timing -nosplit"
alias rtm "report_timing -nosplit -delay min"
alias rc  "report_constraint -all_violators -nosplit"
alias rq report_qor


# Increase history buffer
history keep 200
alias h history

# Time Stamped Log file
#set timestamp [clock format [clock scan now] -format "%Y-%m-%d_%H:%M"]
#set sh_command_log_file "logfiles/${synopsys_program_name}.[pid].log.$timestamp"
#set command_log_file $sh_command_log_file

