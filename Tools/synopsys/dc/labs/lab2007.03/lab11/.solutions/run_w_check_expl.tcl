read_verilog stoto.v


# The RTL design includes a "trap" to make sure you remeber to set the correct top-level 
# design, STOTO, as the current_design. If you forget to do so, the current_design will
# be an "empty" design called "INCORRECT".
#
current_design STOTO


link
check_design
source stoto.con
check_timing


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


# Set the recommended auto-ungrouping variable values.
# If you see the message "Information: Defining new variable 'cmpile_auto...'
# this means that you have mis-spelled the varibale. "unset" the incorrect
# variable and set the correct one.
#
set compile_auto_ungroup_delay_num_cells 99999999
set compile_auto_ungroup_count_leaf_cells true
set compile_auto_ungroup_override_wlm true


# Verify the values of the auto-ungrouping variales.
# Note: You can ignore the default value of 30 for the
# "compile_auto_ungroup_area_num_cells variable" - it 
# is not being used in this flow.
#
printvar compile_auto_ungroup*


# Ensure that the PIPELINE design hierarchy is maintained so that it can
# undergo "register-repositioning"; Per the Design Specification, maintain
# the INPUT block hierarchy for verification purpose.
#
set_ungroup [get_designs "PIPELINE INPUT"] false


# Verify that the "ungroup" attribute was correctly applied to the designs.
# Expect this command to return "false false".
# If you get message "Attribute 'ungroup' does not exist on design .." then apply the
# set_ungroup command. If applied to the wrong design, remove with 
# remove_attribute [get_designs "XYX ABC"] ungroup. 
# Note: Do not use "set_ungroup .. true" as this will force the designs to be ungrouped 
# during compile, no matter what, instead of allowing auto-ungroup to make a possibly 
# smarter decision.
get_attribute [get_designs "PIPELINE INPUT"] ungroup


# By design, the arithmetic logic in PIPELINE is expected to take almost 2 clock cycles.
# Since the RTL design of PIPELINE starts off with two pipeline registers placed AFTER 
# the arithmetic logic, compile_ultra will surely not be able to meet timing along this path.
# Instead, optimize_registers will be used to perform "register-repositioning".
# We must therefore relax the setup timing constraint on the arithmetic logic in PIPELINE
# prior to performing compile_ultra, by applying a multi-cycle "timing exception".
#
set_multicycle_path -setup 2 -to I_MIDDLE/I_PIPELINE/z1_reg*


# Verify that the multi-cycle path was applied. You should see the correct number of
# "setup cycles" (2), as well as the specified start and/or end points.
# 
report_timing_requirements


# Make sure that the applied multi-cycle path directive is not being ignored
# due to an incorrect or non-existent start- or end-point.
# This report should return nothing if the directive was correctly defined.
# If the multi-cycle path IS being ignored, use "reset_path" to remove it and
# re-apply with the correct path.
#
report_timing_requirements -ignored


# Save the un-compiled design
#
write -f ddc -hier -out mapped/pre_compile.ddc


# Compile the design. Since the design is timing-critical, and is expected to 
# have scan-chains inserted, include the "-scan" and the "-timing" options.
#
compile_ultra -scan -timing


# Find out what blocks have been auto-ungrouped: MIDDLE, OUTPUT, DONT_PIPELINE, 
# GLUE, ARITH and RANDOM; The only designs in memory should be STOTO, PIPELINE, 
# INPUTS and INCORRECT. If you get different results, verify that you correctly
# specified the "compile_auto_ungroup" variables and the "set_ungroup" attribute.
#
get_designs *
report_hierarchy -noleaf
report_auto_ungroup


# Generate a constraints report (remember to include "-all").
# Expect to see max-delay violations in the INPUTS group and min-delay violations
# in the "clk" group. 
#
# We don't care about min-delay violations in general, since these are expected to 
# be addressed during layout (Place & Route) or physical design.
# Furthermore, these min-delay violations in particular are in the PIPELINE sub-design, 
# and are being caused by the "set_multicycle_path" command: We changed the "setup" cycle
# to 2, but left the "hold" cycle at the default value of 0, which means that the hold
# check is being performed one clock cycle later, just like teh setup check. This
# "artificial" violation will dissapear as soon as we remove the multi-cycle path directive.
#
# We are also not too concerned about the max-dealy violations in the INPUTS group because
# the Design Specification warned us that the I/O constraints are estimates and have 
# been conservatively constrained.
#
# You SHOULD NOT see any max-delay violations in the "clk" group!
#
# Notice too that cell names, by default, retain their hierarchical name even though 
# their parent block(s) may have been ungrouped (e.g. I_MIDDLE/I_PIPELINE/z1_reg*).
#
redirect -tee -file rc_compile_ultra.rpt {report_constraint -all}


# Save the design
#
write -f ddc -hier -out mapped/compile_ultra.ddc


# Remove the multi-cycle path directive or "timing exception" from the arithmetic 
# PIPELINE path, in preparation for executing "optimize_registers".
#
reset_path -to I_MIDDLE/I_PIPELINE/z1_reg*


# Confirm that no timing exceptions exist.
#
report_timing_requirements


# Generate another constraints report. You should now see BIG max-delay violations in 
# the "clk" group, ending at the "z1_reg" registers in the PIPELINE sub-design.
#
# You should also see the same max-delay violations in the INPUTS group, and you should 
# notice that min-delay violations are gone.
#
report_constraint -all


# Per the Design Specification, ensure that the output of the PIPELINE sub-design 
# remains registered.
#
set_dont_touch [get_cells I_MIDDLE/I_PIPELINE/z_reg*] true


# Verify that the "dont_touch" attribute was correctly applied. 
# The command should return 8 "true" values. 
#
get_attribute [get_cells I_MIDDLE/I_PIPELINE/z_reg*] dont_touch


# Per the Design Specification, ensure that only registers in the PIPELINE sub-design
# can be "repositioned" - not in any other sub-design.
#
set_optimize_registers true -design PIPELINE


# Verify the attribute setting. Expect "true".
#
get_attribute PIPELINE optimize_registers


# Perform register-repositioning on the PIPELINE sub-design
#
optimize_registers -only_attr


# Since this command returns specific cell names this proves that optimize_registers did
# in fact move some registers. Since every single cell name starts with "I_MIDDLE/I_PIPELINE"
# you can conclude that only PIPELINE registers were moved. Lastly, since all the register 
# cells end with "S1" we can conclude that only z1_reg, the first stage register, was moved.
# The latter can be further verified with additional checks. 
#
get_cell -hier *REG*_S*


# Verify that the second stage "z_reg" registers have not been moved
#
get_cell -hier *z_reg*


# You can also generate a timing report which shows that the PIPELINE output is registered
#
report_timing -from I_MIDDLE/I_PIPELINE/z_reg[*]/*


# All the "clk" group violations related to the PIPELINE registers are gone. The remaining
# violations are only max-delay violations in the INPUTS group.
#
report_constraint -all


# Save the design
#
write -f ddc -hier -out mapped/optimize_reg.ddc


# The Design Specification goal is to meet all reg-to-reg timing, which has been satisfied.
# Since the Design Specification also states that the I/O constraints have been conservatively
# constrained, it does not make sense to use the group_path command to "apply more focus
# on violating critical paths" or to perform an incremental compile.
# 
