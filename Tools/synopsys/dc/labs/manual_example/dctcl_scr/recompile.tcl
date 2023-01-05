source "${script_path}read.tcl"

current_design ChipLevel
source "${script_path}defaults.con"

source "${script_path}adder16.wtcl"
compile
write -f ddc -hier -o "${ddc_path}adder16_wtcl.ddc"
set rpt_file adder16_wtcl.rpt
source "${script_path}report.tcl"

source "${script_path}cascademod.wtcl"
dont_touch u12
uniquify
compile
write -f ddc -hier -o "${ddc_path}cascademod_wtcl.ddc"
set rpt_file cascade_wtcl.rpt
source "${script_path}report.tcl"

source "${script_path}comp16.wtcl"
compile
write -f ddc -hier -o "${ddc_path}comp16_wtcl.ddc"
set rpt_file comp16_wtcl.rpt
source "${script_path}report.tcl"

source "${script_path}mult8.wtcl"
compile
write -f ddc -hier -o "${ddc_path}mult8_wtcl.ddc"
set rpt_file mult8_wtcl.rpt
source "${script_path}report.tcl"

source "${script_path}mult16.wtcl"
compile -ungroup_all
write -f ddc -hier -o "${ddc_path}mult16_wtcl.ddc"
set rpt_file mult16_wtcl.rpt
source "${script_path}report.tcl"
report_timing_requirements -ignore \
   >> "${log_path}${rpt_file}"
source "${script_path}muxmod.wtcl"
compile
write -f ddc -hier -o "${ddc_path}muxmod_wtcl.ddc"
set rpt_file muxmod_wtcl.rpt
source "${script_path}report.tcl"

source "${script_path}pathseg.wtcl"
compile
write -f ddc -hier -o "${ddc_path}pathseg_wtcl.ddc"
set rpt_file pathseg_wtcl.rpt
source "${script_path}report.tcl"
report_timing_requirements -ignore \
   >> "${log_path}${rpt_file}"
