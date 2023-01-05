set_svf STOTO.svf

read_verilog STOTO.v

# The RTL design includes a "trap" to make sure you remeber to set the correct top-level 
# design, STOTO, as the current_design. If you forget to do so, the current_design will
# be an "empty" design called "INCORRECT".
#
current_design STOTO

link
check_design

source STOTO.con
check_timing

source STOTO.pcon

# Determine clock name and period to apply 10% critical range to clock group
#
report_clock

# Apply compile focus on the reg-to-reg paths while ensuring 
# that the I/O paths are also compiled, but with less emphasis
#
group_path -name clk -critical 0.21 -weight 5
group_path -name INPUTS -from [all_inputs] 
group_path -name OUTPUTS -to [all_output]
group_path -name COMBO -from [all_inputs] -to [all_output]

# Verify that the corect path groups were defined. If you have incorrectly specifed 
# a path or group name, redirect the path to the "default" group
# using "-default" instead of "-name XYZ", then re-apply the correct group_path command
#
report_path_group

# Ensure that the PIPELINE design hierarchy is maintained so that it can
# undergo "register-retiming"; Per the Design Specification, maintain
# the INPUT block hierarchy for verification purpose.
#
set_ungroup [get_designs "INPUT"] false

# Verify that the "ungroup" attribute was correctly applied to the design.
# Expect this command to return "false".
# If you get message "Attribute 'ungroup' does not exist on design .." then apply the
# set_ungroup command. If applied to the wrong design, remove with 
# remove_attribute [get_designs "ABC"] ungroup. 
# Note: Do not use "set_ungroup .. true" as this will force the designs to be ungrouped 
# during compile, no matter what, instead of allowing auto-ungroup to make a possibly 
# smarter decision.
get_attribute [get_designs "INPUT"] ungroup

# Do NOT retime the DONT_PIPELINE block as per spec
set_dont_retime [get_cells I_MIDDLE/I_DONT_PIPELINE] true

# Check that the dont_retime attribute is correctly applied
get_attribute [get_cells I_MIDDLE/I_DONT_PIPELINE] dont_retime

# Retime the PIPELINE block 
set_optimize_registers true -design PIPELINE

# While retiming the PIPELINE block, make sure its output registers are 
# not mopved
set_dont_retime [get_cells I_MIDDLE/I_PIPELINE/z_reg*] true

# Check that the dont_retime attribute is correctly applied
get_attribute [get_cells I_MIDDLE/I_PIPELINE/z_reg*] dont_retime

# Save the un-compiled design
#
write -f ddc -hier -out unmapped/STOTO.ddc

# Based on the available resources (Number of CPU cores and licenses)
# specify and report multi core optimization setting

set_host_options -max_cores 4

report_host_options

# Compile the design. Since the design is timing-critical, and is expected to 
# have scan-chains inserted, include the "-scan" and the "-timing" options.
# Enable adaptive retiming to retime the non-pipelined parts of the design
compile_ultra  -scan  -timing -retime 

# Examine the number and names of License Features used
list_licenses

# Find out what blocks have been auto-ungrouped: MIDDLE, OUTPUT, DONT_PIPELINE, 
# GLUE, ARITH and RANDOM; The only remaining designs in the hierarchy should be STOTO, PIPELINE, 
# and INPUT. If you get different results, verify that you correctly
# specified the "set_ungroup" attribute.
#
report_hierarchy -noleaf

# Generate a constraints report (remember to include "-all").
# Expect to see max-delay violations in the INPUTS and COMBO groups.
#
# We should not be too concerned about these max-dealy violations because
# the Design Specification warned us that the I/O constraints are "estimates and have 
# been conservatively constrained".
#
# You SHOULD NOT see any max-delay violations in the "clk" group!
#
# Notice too that cell names, by default, retain their hierarchical name even though 
# their parent block(s) may have been ungrouped (e.g. I_MIDDLE/I_DONT_PIPELINE/I_RANDOM/int1_reg*).
#
redirect -tee -file rc_compile_ultra.rpt {report_constraint -all}
redirect -tee -file rt_compile_ultra.rpt {report_timing}


# Save the design
#
write -f ddc -hier -out mapped/STOTO.ddc


#  Stop recording SVF changes
#
set_svf -off

# Verify that register retiming moved registers in the PIPELINE design:
# Since this command returns specific cell names this proves that registers retiming did
# in fact move some registers. Since every single cell name starts with "I_MIDDLE/I_PIPELINE"
# you can conclude that only PIPELINE registers were moved. Lastly, since all the register 
# cells end with "S1" we can conclude that only z1_reg*, the first stage registers, were moved.
# The latter can be further verified with additional checks. 
#
get_cells -hier *r_REG*_S*

# Verify that the instance name I_MIDDLE/I_PIPELINE corresponds to the 
# design or "reference" name PIPELINE:
#
report_cell -nosplit I_MIDDLE/I_PIPELINE

# Verify that the second stage "z_reg" registers have not been moved
#
get_cells -hier *z_reg*

# You can also show that the output of PIPELINE is regsitered with:
report_timing -from I_MIDDLE/I_PIPELINE/z_reg*/*

# Verify that registers in INPUTS were moved by adaptive retiming:
get_cells -hier R_*

# Verify that the instance name I_IN corresponds to the 
# design or "reference" name INPUT:
#
report_cell -nosplit I_IN

# Verify that not ALL the registers in INPUT were affected or moved by adaptive retiming:
#
get_cells  I_IN/*_reg* 

exit
